import * as vscode from "vscode";
import * as fs from "fs";
import * as path from "path";
import axios, { AxiosResponse } from "axios";
import { Authority, DocClass } from "./schema";

// Cleaned up version of https://github.com/sumneko/lua-language-server/wiki/EmmyLua-Libraries
export function setExternalLibrary(extension: vscode.Extension<any>, folder: string, enable: boolean) {
	const extensionPath = extension.extensionPath;

	const config = vscode.workspace.getConfiguration("Lua");
	const library: string[] | undefined = config.get("workspace.library");

	if (library && extensionPath) {
		// remove any older versions of our path e.g. "publisher.name-0.0.1"
		for (let i = library.length - 1; i >= 0; i--) {
			const el = library[i];
			const isSelfExtension = el.indexOf(extension.id) > -1;
			const isCurrentVersion = el.indexOf(extensionPath) > -1;
			if (isSelfExtension && !isCurrentVersion) {
				library.splice(i, 1);
			}
		}

		const index = library.indexOf(folder);
		if (enable) {
			if (index === -1) {
				library.push(folder);
			}
		} else {
			if (index > -1) {
				library.splice(index, 1);
			}
		}

		config.update("workspace.library", library, true);
	}
}

interface DirectoryEntry {
	path: string,
	mode: string
	type: string,
	sha: string,
	url: string
}

interface File {
	sha: string,
	node_id: string,
	size: string,
	url: string,
	content: string,
	encoding: string
}

function checkResponse(response: AxiosResponse<any, any>) {
	if (response.status !== 200) {
		console.log(`Failed to get documentation from the Nanos World API with HTTP Error ${response.status}: ${response.statusText}`);
		return false;
	}
	if (typeof(response.data) !== "object") {
		console.log(`Failed to get documentation from the Nanos World API: Response was not JSON`);
		return false;
	}

	return true;
}

function exceptionHandler(exception: any) {
	console.log(`Failed to get documentation from the Nanos World API: ${exception}`);
}


let WORKING_DIRECTORY = "ERROR";

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
	if (cls.constructor !== undefined) {
		let params = "";
		let paramNames = "";

		cls.constructor.forEach(function (param) {
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

	return `---@meta

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

export function activate(context: vscode.ExtensionContext) {
	WORKING_DIRECTORY = context.extensionPath + "/EmmyLua/";
	fs.rmSync(WORKING_DIRECTORY, { recursive: true, force: true });
	fs.mkdirSync(WORKING_DIRECTORY);

	// Get directory listing
	axios.get("https://api.github.com/repos/nanos-world/api/git/trees/main?recursive=1").then(function (response) {
		if (!checkResponse(response)) return;

		const dirEntries: Array<DirectoryEntry> = response.data.tree;
		dirEntries.filter(function (entry) {
			return entry.type === "blob" && entry.path.endsWith(".json");
		}).forEach(function (entry) {
			console.log(entry.url);
			axios.get(entry.url).then(function (response) {
				if (!checkResponse(response)) return;

				// Process file
				const file: File = response.data;
				const fileContents = JSON.parse(atob(file.content.replaceAll("\n", "")));
				const parsedPath = path.parse(entry.path);
				console.log(entry.path);

				// Create required directories
				fs.mkdirSync(
					WORKING_DIRECTORY + parsedPath.dir,
					{ recursive: true }
				);

				// Write annotations
				fs.writeFileSync(
					`${WORKING_DIRECTORY}${parsedPath.dir}/${parsedPath.name}.lua`,
					generateClassAnnotations(fileContents),
					{ flag: "w+" }
				);
			}).catch(exceptionHandler);
		});

		// Update Lua.workspace.library
		setExternalLibrary(context.extension, WORKING_DIRECTORY, true);

		console.log("Nanos World sumneko bindings loaded!");
	}).catch(exceptionHandler);

}

// This doesnt actually do anything as it's impossible to edit the config from the deactivate (and uninstall) events
export function deactivate(context: vscode.ExtensionContext) {
	fs.rmSync(WORKING_DIRECTORY, { recursive: true, force: true });
	setExternalLibrary(context.extension, WORKING_DIRECTORY, false);
	console.log("Nanos World sumneko bindings unloaded");
}
