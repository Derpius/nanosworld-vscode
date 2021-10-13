-- Generated with a vanilla Lua 5.4 install
local VANILLA_GLOBALS = {
    ["select"] = true,
    ["ipairs"] = true,
    ["type"] = true,
    ["_G"] = true,
    ["coroutine"] = true,
    ["package"] = true,
    ["getmetatable"] = true,
    ["table"] = true,
    ["arg"] = true,
    ["dofile"] = true,
    ["_VERSION"] = true,
    ["rawget"] = true,
    ["load"] = true,
    ["print"] = true,
    ["xpcall"] = true,
    ["setmetatable"] = true,
    ["error"] = true,
    ["require"] = true,
    ["rawset"] = true,
    ["math"] = true,
    ["rawlen"] = true,
    ["os"] = true,
    ["collectgarbage"] = true,
    ["assert"] = true,
    ["debug"] = true,
    ["tonumber"] = true,
    ["tostring"] = true,
    ["loadfile"] = true,
    ["rawequal"] = true,
    ["next"] = true,
    ["string"] = true,
    ["utf8"] = true,
    ["warn"] = true,
    ["pairs"] = true,
    ["pcall"] = true,
    ["io"] = true
}

local LITERAL_TYPES = {
	number = true,
	boolean = true
}

local GetArgs = Package.Require("GetArgs.lua")

local function parseLibrary(library, libname, traversed)
	if traversed[library] then return "" end
	traversed[library] = true

	local ret, count = {libname .. " = {}\n\n"}, 1
	local empty = true
	for k, v in pairs(library) do
		empty = false
		if type(k) == "string" then
			count = count + 1

			local type = type(v)
			if type == "table" then
				local parsed = parseLibrary(v, libname .. "." .. k, traversed)
				if parsed then ret[count] = parsed
				else count = count - 1 end
			elseif type == "function" then
				local args = GetArgs(v)

				if args[1] then
					for _, arg in ipairs(args) do
						ret[count] = "---@param " .. arg .. " any\n"
						count = count + 1
					end
				end
	
				ret[count] = string.format("---@return any\nfunction %s.%s(", libname, k)

				if args[1] then
					for _, arg in ipairs(args) do
						count = count + 1
						ret[count] = arg .. ", "
					end
					ret[count] = ret[count]:sub(1, #ret[count] - 2)
				end

				count = count + 1
				ret[count] = ") end\n\n"
			elseif type == "string" then
				ret[count] = string.format("---@type %s\n%s.%s = \"%s\"\n\n", type, libname, k, v)
			elseif LITERAL_TYPES[type] then
				ret[count] = string.format("---@type %s\n%s.%s = %s\n\n", type, libname, k, v)
			else
				ret[count] = string.format("---@type %s\n%s.%s = nil\n\n", type, libname, k)
			end
		end
	end
	if not empty then return table.concat(ret) end
end

local globals = {_G = {}}

local count = 1
for k, v in pairs(_G) do
	if not VANILLA_GLOBALS[k] and type(k) == "string" then
		Package.Log("Generating documentation for " .. k)
		local type = type(v)
		if type == "table" then
			local parsed = parseLibrary(v, k, {})
			if parsed then globals[k] = parsed end -- C side classes will still have a global table entry, but wont contain any members
		elseif type == "function" then
			local args = GetArgs(v)

			if args[1] then
				for _, arg in ipairs(args) do
					globals._G[count] = "---@param " .. arg .. " any\n"
					count = count + 1
				end
			end

			globals._G[count] = string.format("---@return any\nfunction %s(", k)

			if args[1] then
				for _, arg in ipairs(args) do
					count = count + 1
					globals._G[count] = arg .. ", "
				end
				globals._G[count] = globals._G[count]:sub(1, #globals._G[count] - 2)
			end

			globals._G[count + 1] = ") end\n\n"
			count = count + 2
		elseif type == "string" then
			globals._G[count] = string.format("---@type %s\n%s = \"%s\"\n\n", type, k, v)
			count = count + 1
		elseif LITERAL_TYPES[type] then
			globals._G[count] = string.format("---@type %s\n%s = %s\n\n", type, k, v)
			count = count + 1
		else
			globals._G[count] = string.format("---@type %s\n%s = nil\n\n", type, k)
			count = count + 1
		end
	end
end

globals._G = table.concat(globals._G)

return globals
