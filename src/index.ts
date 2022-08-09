import { getInput } from "@actions/core";
import { context, getOctokit } from "@actions/github";

import * as fs from "fs";
import * as path from "path";

import { Authority, Docs, DocClass, DocFunction, DocParameter } from "./schema";

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

function generateParams(params: DocParameter[] | undefined): {string: string, names: string} {
	let ret = {string: "", names: ""};
	if (params === undefined) return ret;

	params.forEach(function (param) {
		if (param.name.endsWith("...")) param.name = "...";

		ret.string += `\n---@param ${param.name} ${param.type} ${param.description ? param.description + " " : ""}`;
		if (param.default !== undefined) ret.string += `(Default: ${param.default})`;

		ret.names += param.name + ", ";
	});

	ret.names = ret.names.slice(0, -2);
	return ret;
}

function generateFunction(fun: DocFunction, accessor: string = ""): string {
	const params = generateParams(fun.parameters);
	let retSig = "";
	if (fun.return !== undefined) {
		retSig = `
---@return ${fun.return.type} @${fun.return.description}`;
	}
	return `

---${generateAuthorityString(fun.authority)}
---
---${fun.description}${params.string}${retSig}
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
			staticFunctions += generateFunction(fun, `${cls.name}_meta.`);
		});
	}

	let functions = "";
	if (cls.functions !== undefined) {
		cls.functions.forEach((fun) => {
			functions += generateFunction(fun, `${cls.name}_meta:`);
		});
	}

	let events = "";

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
			docs.classes[fileContents.name] = fileContents;
			return;
		}
	})());

	let output = "---@meta";

	Object.entries(docs.classes).forEach(([_, cls]) => {
		output += generateClassAnnotations(docs.classes, cls);
	});

	await Promise.all(promises);
	await fs.promises.mkdir("./docs");
	await fs.promises.writeFile("./docs/annotations.lua", output);
}

buildDocs().then(() => console.log("Build finished"));
