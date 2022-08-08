import { getInput } from "@actions/core";
import { context, getOctokit } from "@actions/github";

import * as fs from "fs";
import * as path from "path";

import { Authority, DocClass } from "./schema";

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

function generateClassAnnotations(cls: DocClass): string {
	let inheritance = "";
	if (cls.inheritance !== undefined) {
		inheritance = ` : ${cls.inheritance[0]}`;
		for (let i = 1; i < cls.inheritance.length; i++) {
			inheritance += `, ${cls.inheritance[i]}`;
		}
	}

	let constructor = "";
	if (cls.hasOwnProperty("constructor")) { // JavaScript moment (also TS moment cause it doesnt think this ensures constructor is defined, requiring !. below)
		let params = "";
		let paramNames = "";

		cls.constructor!.forEach(function (param) {
			params += `\n---@param ${param.name} ${param.type} ${param.description ? param.description + " " : ""}`;
			if (param.default !== undefined) params += `(Default: ${param.default})`;

			paramNames += param.name + ", ";
		});

		constructor = `
---${generateAuthorityString(cls.authority)}
---
---${cls.description}${params}
---@return ${cls.name}
local function ${cls.name}(${paramNames.slice(0, -2)}) end
`;
	}

	let staticFunctions = "";

	let functions = "";

	let events = "";

	return `
---${generateAuthorityString(cls.authority)}
---
---${cls.description.replaceAll("\n", "\n---\n---")}
---@class ${cls.name}${inheritance}
local ${cls.name}_meta = {}
${constructor}
${staticFunctions}
${functions}
${events}`;
}

async function buildDocs() {
	let output = "---@meta\n";

	const response = await octokit.request("GET /repos/{owner}/{repo}/git/trees/{tree_sha}", {
		owner: REPO_OWNER,
		repo: REPO_NAME,
		tree_sha: REPO_BRANCH,
		recursive: "1"
	});

	response.data.tree.filter(function (entry) {
		return entry.type === "blob" && entry.path?.endsWith(".json");
	}).forEach(async function (entry) {
		if (entry.path === undefined) return;
	
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
			//output += generateEnumAnnotations(fileContents);
			return;
		}

		if (entry.path.startsWith("Classes") || entry.path.startsWith("StaticClasses")) {
			output += generateClassAnnotations(fileContents);
			return;
		}
	});

	await fs.promises.mkdir("./docs");
	await fs.promises.writeFile("./docs/annotations.lua", output);
}

buildDocs().then(() => console.log("Build finished")).catch((exception) => console.log(`Error building documentation: ${exception}`));
