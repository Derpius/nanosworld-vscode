import { getInput } from "@actions/core";
import { context, getOctokit } from "@actions/github";
import * as fs from "fs";

console.log("Building documentation...");

const TOKEN = getInput("github-token");
const REPO_OWNER = getInput("repository-owner");
const REPO_NAME = getInput("repository-name");
const REPO_BRANCH = getInput("repository-branch");

const octokit = getOctokit(TOKEN);

async function buildDocs() {
	const response = await octokit.request("GET /repos/{owner}/{repo}/git/trees/{tree_sha}", {
		owner: REPO_OWNER,
		repo: REPO_NAME,
		tree_sha: REPO_BRANCH,
		recursive: "1"
	});

	console.log(response.data.tree);

	fs.mkdirSync("./docs");
	fs.writeFileSync("./docs/annotations.lua", "---@meta\n");
}

buildDocs().then(() => console.log("Build finished"));
