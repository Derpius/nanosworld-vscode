import { getInput } from "@actions/core";
import { context, getOctokit } from "@actions/github";
import * as fs from "fs";

console.log("Building documentation...");

const TOKEN = getInput("github-token");
const REPO_PATH = getInput("repository-path");

console.log(`Path: ${REPO_PATH}`);

console.log(`${context.serverUrl}/${context.repo.owner}/${context.repo.repo}`);

fs.mkdirSync("./docs");
fs.writeFileSync("./docs/annotations.lua", "---@meta\n");

console.log("Build finished");
