import { getInput } from "@actions/core";
import { context, getOctokit } from "@actions/github";

console.log("Building documentation...");

const TOKEN = getInput("github-token");
const REPO_PATH = getInput("repository-path");

console.log(`Path: ${REPO_PATH}`);

console.log(`${context.serverUrl}/${context.repo.owner}/${context.repo.repo}`);

console.log("Build finished");
