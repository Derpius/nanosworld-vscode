import * as vscode from "vscode";
import * as fs from "fs";
import * as path from "path";
import axios, { AxiosResponse } from "axios";
import { DocClass } from "./schema";

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

function generateClassAnnotations(cls: DocClass): string {
	return "---@meta\n";
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
			axios.get(entry.url).then(function (response) {
				if (!checkResponse(response)) return;

				// Process file
				const file: File = response.data;
				const fileContents = JSON.parse(atob(file.content.replaceAll("\n", "")));
				const parsedPath = path.parse(entry.path);
				console.log(parsedPath);

				// Create required directories
				fs.mkdirSync(
					WORKING_DIRECTORY + parsedPath.dir,
					{ recursive: true }
				);

				// Write annotations
				fs.writeFileSync(
					WORKING_DIRECTORY + parsedPath.name + ".lua",
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
