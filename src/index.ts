import { getInput } from "@actions/core";
import { context, getOctokit } from "@actions/github";

import * as fs from "fs";
import * as path from "path";

import { Authority, Docs, DocClass, DocFunction, DocParameter, DocReturn, DocEvent } from "./schema";

console.log("Building documentation...");

const TOKEN = getInput("github-token");
const REPO_OWNER = getInput("repository-owner");
const REPO_NAME = getInput("repository-name");
const REPO_BRANCH = getInput("repository-branch");

const octokit = getOctokit(TOKEN);

function generateAuthorityString(authority: Authority) {
	switch (authority) {
		case Authority.Server:
			return "<img src=\"https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true\" height=\"10\"> `Server Side`";
		case Authority.Client:
			return "<img src=\"https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true\" height=\"10\"> `Client Side`";
		case Authority.Authority:
			return "<img src=\"https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true\" height=\"10\"> `Authority Side`";
		case Authority.Both:
			return "<img src=\"https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true\" height=\"10\"> `Client/Server Side`";
		default:
			return `Invalid authority "${authority}" in documentation`;
	}
}

function generateReturn(ret?: DocReturn): string {
	if (ret === undefined) return "";

	return `
---@return ${ret.type} @${ret.description}`;
}

function generateParams(params?: DocParameter[]): {string: string, names: string} {
	let ret = {string: "", names: ""};
	if (params === undefined) return ret;

	params.forEach(function (param) {
		if (param.name.endsWith("...")) param.name = "...";

		ret.string += `\n---@param ${param.name} ${param.type} @${param.description ? param.description.replaceAll("\n", " ") + " " : ""}`;
		if (param.default !== undefined) ret.string += `(Default: ${param.default})`;

		ret.names += param.name + ", ";
	});

	ret.names = ret.names.slice(0, -2);
	return ret;
}

function generateFunction(fun: DocFunction, accessor: string = ""): string {
	const params = generateParams(fun.parameters);
	return `

---${generateAuthorityString(fun.authority)}
---
---${fun.description.replaceAll("\n", "\n---\n---")}${params.string}${generateReturn(fun.return)}
function ${accessor}${fun.name}(${params.names}) end`;
}

function generateClassAnnotations(classes: {[key: string]: DocClass}, cls: DocClass): string {
	let inheritance = "";
	if (cls.inheritance !== undefined) {
		inheritance = ` : ${cls.inheritance.join(", ")}`;
	}

	let constructor = "";
	if (cls.hasOwnProperty("constructor")) { // JavaScript moment (also TS moment cause it doesnt think this ensures constructor is defined, requiring !. below)
		const params = generateParams(cls.constructor!);
		constructor = generateFunction({
			name: cls.name,
			authority: cls.authority,
			description: cls.description,
			return: {type: cls.name, description: `Instance of ${cls.name}`}
		});
	}

	let staticFunctions = "";

	if (cls.static_functions !== undefined) {
		cls.static_functions.forEach((fun) => {
			if ((fun.name === "Subscribe" || fun.name === "Unsubscribe") && cls.name !== "Events") return;
			staticFunctions += generateFunction(fun, `${cls.name}_meta.`);
		});
	}

	let functions = "";
	if (cls.functions !== undefined) {
		cls.functions.forEach((fun) => {
			if ((fun.name === "Subscribe" || fun.name === "Unsubscribe") && cls.name !== "Events") return;
			functions += generateFunction(fun, `${cls.name}_meta:`);
		});
	}

	let events = "";
	if (cls.events !== undefined) {
		// Handle inheritance
		let combinedEvents: {[key: string]: DocEvent} = {};
		if (cls.inheritance !== undefined) {
			cls.inheritance.forEach((clsName) => {
				classes[clsName].events?.forEach((inheritedEvent) => {
					combinedEvents[inheritedEvent.name] = inheritedEvent;
				});
			});
		}
		cls.events.forEach((event) => {
			combinedEvents[event.name] = event;
		});

		// Generate overloads
		let subOverloads = "";
		let unsubOverloads = "";
		Object.entries(combinedEvents).forEach(([_, event]) => {
			let callbackSig = event.arguments.map((param) => `${param.name}: ${param.type}`).join(", ");

			subOverloads += `
---@overload fun(${cls.staticClass ? "" : `self: ${cls.name}, `}event_name: "${event.name}", callback: fun(${callbackSig})): fun(${callbackSig}) @${event.description}`;
			unsubOverloads += `
---@overload fun(${cls.staticClass ? "" : `self: ${cls.name}, `}event_name: "${event.name}", callback: fun(${callbackSig})) @${event.description}`;
		});

		events = `

---Subscribe to an event
---@param event_name string @Name of the event to subscribe to
---@param callback function @The callback function to execute
---@return function @The callback function passed${subOverloads}
function ${cls.name}_meta${cls.staticClass ? "." : ":"}Subscribe(event_name, callback) end

---Unsubscribe from an event
---@param event_name string @Name of the event to subscribe to
---@param callback function @The callback function to execute${unsubOverloads}
function ${cls.name}_meta${cls.staticClass ? "." : ":"}Unsubscribe(event_name, callback) end`;
	}

	return `

---${generateAuthorityString(cls.authority)}
---
---${cls.description.replaceAll("\n", "\n---\n---")}
---@class ${cls.name}${inheritance}
${cls.name}_meta = {}${constructor}${staticFunctions}${functions}${events}`;
}

async function buildDocs() {

	const response = await octokit.request("GET /repos/{owner}/{repo}/git/trees/{tree_sha}", {
		owner: REPO_OWNER,
		repo: REPO_NAME,
		tree_sha: REPO_BRANCH,
		recursive: "1"
	});

	let docs: Docs = {
		classes: {},
		enums: {}
	};

	const promises = response.data.tree.filter(function (entry) {
		return entry.type === "blob" && entry.path?.endsWith(".json");
	}).map((entry) => (async () => {
		if (entry.path === undefined) return;
		console.log(`Processing ${entry.path}...`);
	
		const response = await octokit.request("GET /repos/{owner}/{repo}/contents/{path}", {
			accept: "application/vnd.github+json",
			owner: REPO_OWNER,
			repo: REPO_NAME,
			path: entry.path,
			ref: REPO_BRANCH
		});

		// Process file
		const file: any = response.data;
		if (file.content === undefined) return;

		const fileContents = JSON.parse(atob(file.content.replaceAll("\n", "")));

		// Write annotations
		if (entry.path === "Enums.json") {
			docs.enums = fileContents;
			return;
		}

		if (entry.path.startsWith("Classes") || entry.path.startsWith("StaticClasses")) {
			fileContents.staticClass = entry.path.startsWith("StaticClasses");
			docs.classes[fileContents.name] = fileContents;
			return;
		}
	})());
	await Promise.all(promises);

	let output = "---@meta";

	Object.entries(docs.classes).forEach(([_, cls]) => {
		output += generateClassAnnotations(docs.classes, cls);
	});

	await fs.promises.mkdir("./docs");
	await fs.promises.writeFile("./docs/annotations.lua", output);
}

buildDocs().then(() => console.log("Build finished"));
