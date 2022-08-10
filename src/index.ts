import { getInput } from "@actions/core";
import { context, getOctokit } from "@actions/github";

import * as fs from "fs";
import * as path from "path";

import { Authority, Docs, DocClass, DocFunction, DocParameter, DocReturn, DocEvent, DocEnumValue, DocDescriptive, DocProperty, DocTyped } from "./schema";

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
		default:
			return "<img src=\"https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true\" height=\"10\"> `Client/Server Side`";
	}
}

function generateDocstring(obj: DocDescriptive): string {
	return (
		obj.description_long === undefined ? (obj.description === undefined ? "" : obj.description) : obj.description_long
	).replaceAll("\n", "<br>");
}

function generateInlineDocstring(descriptive: DocDescriptive): string {
	let docstring = generateDocstring(descriptive);
	return docstring.length > 0 ? `@${docstring}` : "";
}

function generateParamDocstring(param: DocParameter): string {
	let docstring = generateInlineDocstring(param);
	if (param.default !== undefined) docstring += `${docstring.length > 0 ? " " : "@"}(Default: ${param.default.length === 0 ? "\"\"" : param.default})`;
	return docstring;
}

interface Type {
	name: string,
	array: boolean
}

class ComplexType {
	optional: boolean = false;
	typenames: Type[] = [];

	toString = (): string => {
		let ret = "";
		this.typenames.forEach((type) => {
			console.log(type);
			ret += type.name;
			if (type.array) ret += "[]";
		});
		return this.optional ? ret + "?" : ret;
	};
}

function generateType(typed: DocTyped): ComplexType {
	let complexType: ComplexType = {
		optional: false,
		typenames: []
	};

	let typeString = typed.type;
	if (typeString.endsWith("?")) {
		complexType.optional = true;
		typeString = typeString.slice(0, -1);
	}

	typeString.split("|").forEach((typename) => {
		let type: Type = {
			name: "undefined",
			array: false
		};

		if (typename.endsWith("[]")) {
			type.array = true;
			typename = typename.slice(0, -2);
		}

		type.name = typename.endsWith("Path") ? "string" : typename;
		complexType.typenames.push(type);
	});

	return complexType;
}

function generateReturns(rets?: DocReturn[]): string {
	if (rets === undefined) return "";
	return rets.map((ret) => `\n---@return ${generateType(ret).toString()} ${generateInlineDocstring(ret)}`).join("");
}

// This can be refactored out once the overload rework on the language server is done
function generateInlineReturns(rets?: DocReturn[]): string {
	if (rets === undefined) return "";
	return ": " + rets.map((ret) => generateType(ret).toString()).join(", ");
}

function generateParams(params?: DocParameter[]): {string: string, names: string} {
	let ret = {string: "", names: ""};
	if (params === undefined) return ret;

	params.forEach(function (param) {
		if (param.name.endsWith("...")) param.name = "...";

		const type = generateType(param);
		ret.string += `\n---@param ${param.name}${type.optional ? "?" : ""} ${type.optional ? type.toString().slice(0, -1) : type.toString()} ${generateParamDocstring(param)}`;
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
---${generateDocstring(fun)}${params.string}${generateReturns(fun.return)}
function ${accessor}${fun.name}(${params.names}) end`;
}

function generateClassAnnotations(classes: {[key: string]: DocClass}, cls: DocClass): string {
	let inheritance = "";
	if (cls.inheritance !== undefined) {
		inheritance = ` : ${cls.inheritance.join(", ")}`;
	}

	let constructor = "";
	if (cls.hasOwnProperty("constructor")) { // JavaScript moment (also TS moment cause it doesnt think this ensures constructor is defined, requiring !. below)
		let signature = cls.constructor!.map((param) => {
			const type = generateType(param);
			return `${param.name}${type.optional ? "?" : ""}: ${type.optional ? type.toString().slice(0, -1) : type.toString()}`;
		}).join(", ");

		constructor = `
---@overload fun(${signature}): ${cls.name}`;
	}

	let staticFunctions = "";

	if (cls.static_functions !== undefined) {
		cls.static_functions.forEach((fun) => {
			if ((fun.name === "Subscribe" || fun.name === "Unsubscribe") && cls.name !== "Events") return;
			staticFunctions += generateFunction(fun, `${cls.name}.`);
		});
	}

	let functions = "";
	if (cls.functions !== undefined) {
		cls.functions.forEach((fun) => {
			if ((fun.name === "Subscribe" || fun.name === "Unsubscribe") && cls.name !== "Events") return;
			functions += generateFunction(fun, `${cls.name}:`);
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
			let callbackSig = "";
			if (event.arguments !== undefined) {
				callbackSig = event.arguments.map(
					(param, idx) => `${param.name}: ${(idx !== 0 || param.name !== "self") ? generateType(param).toString() : cls.name}`
				).join(", ");
			}
			callbackSig = `fun(${callbackSig})${generateInlineReturns(event.return)}`;

			subOverloads += `\n---@overload fun(${cls.staticClass ? "" : `self: ${cls.name}, `}event_name: "${event.name}", callback: ${callbackSig}): ${callbackSig} ${generateInlineDocstring(event)}`;
			unsubOverloads += `\n---@overload fun(${cls.staticClass ? "" : `self: ${cls.name}, `}event_name: "${event.name}", callback: ${callbackSig}) ${generateInlineDocstring(event)}`;
		});

		events = `

---Subscribe to an event
---@param event_name string @Name of the event to subscribe to
---@param callback function @Function to call when the event is triggered
---@return function @The callback function passed${subOverloads}
function ${cls.name}${cls.staticClass ? "." : ":"}Subscribe(event_name, callback) end

---Unsubscribe from an event
---@param event_name string @Name of the event to unsubscribe from
---@param callback? function @Optional callback to unsubscribe (if no callback is passed then all callbacks in this Package will be unsubscribed from this event)${unsubOverloads}
function ${cls.name}${cls.staticClass ? "." : ":"}Unsubscribe(event_name, callback) end`;
	}

	let fields = "";
	if (cls.properties !== undefined) {
		cls.properties.forEach((prop) => {
			fields += `\n---@field ${prop.name} ${generateType(prop).toString()} ${generateInlineDocstring(prop)}`;
		});
	}

	return `

---${generateAuthorityString(cls.authority)}
---
---${generateDocstring(cls)}
---@class ${cls.name}${inheritance}${fields}${constructor}
${cls.name} = {}${staticFunctions}${functions}${events}`;
}

function generateEnum(name: string, values: DocEnumValue[]): string {
	let valuesString = "";
	values.forEach((value) => {
		valuesString += `\n    ["${value.key}"] = ${value.value},`;
	});

	return `

---@enum ${name}
${name} = {${valuesString.slice(0, -1)}
}`;
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
		if (entry.path === undefined || entry.path.startsWith("_")) return;
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

		if (entry.path.startsWith("Classes") || entry.path.startsWith("StaticClasses") || entry.path.startsWith("Structs")) {
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
	Object.entries(docs.enums).forEach(([name, values]) => {
		output += generateEnum(name, values);
	});

	await fs.promises.mkdir("./docs");
	await fs.promises.writeFile("./docs/annotations.lua", output);
}

buildDocs().then(() => console.log("Build finished"));
