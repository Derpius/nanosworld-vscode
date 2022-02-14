// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';

// Cleaned up version of https://github.com/sumneko/lua-language-server/wiki/EmmyLua-Libraries
export function setExternalLibrary(extension: vscode.Extension<any>, folder: string, enable: boolean) {
	const extensionPath = extension.extensionPath;
	const folderPath = extensionPath + "\\" + folder;

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

		const index = library.indexOf(folderPath);
		if (enable) {
			if (index === -1) {
				library.push(folderPath);
			}
		} else {
			if (index > -1) {
				library.splice(index, 1);
			}
		}

		config.update("workspace.library", library, true);
	}
}

// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {
	setExternalLibrary(context.extension, "EmmyLua", true);
	console.log("Nanos World sumneko bindings loaded!");
}

// this method is called when your extension is deactivated
export function deactivate(context: vscode.ExtensionContext) {
	setExternalLibrary(context.extension, "EmmyLua", false);
	console.log("Nanos World sumneko bindings unloaded");
}
