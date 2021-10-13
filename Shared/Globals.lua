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

---Parse a function into a documented stub
---@param funcName string
---@param func function
---@param accessor string
---@param returnType? string
---@return string
local function parseFuncArgs(funcName, func, accessor, returnType)
	returnType = returnType or "any"
	local args, ret, count = GetArgs(func), {}, 0

	if accessor ~= "" then
		if args[1] == "self" then
			accessor = accessor .. ":"
			table.remove(args, 1)
		else
			accessor = accessor .. "."
		end
	end

	if args[1] then
		for _, arg in ipairs(args) do
			count = count + 1
			ret[count] = "---@param " .. arg .. " any\n"
		end
	end

	count = count + 1
	ret[count] = string.format("---@return %s\nfunction %s%s(", returnType, accessor, funcName)

	if args[1] then
		for _, arg in ipairs(args) do
			count = count + 1
			ret[count] = arg .. ", "
		end
		ret[count] = ret[count]:sub(1, #ret[count] - 2)
	end

	count = count + 1
	ret[count] = ") end\n\n"

	return table.concat(ret)
end

---Parses a table as a Lua class
---@param class table<string, any>
---@param name string
---@return string parsed
local function parseLuaClass(class, name)
	local ret = {
		parseFuncArgs(name, class.new, "", name), -- Constructor
		string.format("---@class %s\nlocal cls = {}\n\n", name)
	}
	local count = 2

	for fieldName, field in pairs(class) do
		count = count + 1
		local fieldType = type(field)

		if fieldType == "function" then
			local args = GetArgs(field)
			if args[1] and args[1] == "self" then -- Non-static methods
				ret[count] = parseFuncArgs(fieldName, field, "cls")
			else
				ret[count] = parseFuncArgs(fieldName, field, name, fieldName == "new" and name or "any")
			end
		elseif fieldType == "table" then
			if getmetatable(field) == class then
				ret[count] = string.format("---@type %s\n%s.%s = nil\n\n", name, name, fieldName)
			else
				local kType, vType
				for k, v in pairs(field) do
					if not kType then kType = type(k)
					elseif kType ~= type(k) then kType = "any" end
					if not vType then vType = type(v)
					elseif vType ~= type(v) then vType = "any" end
				end
				ret[count] = string.format("---@type table<%s, %s>\n%s.%s = nil\n\n", kType, vType, name, fieldName)
			end
		else
			count = count + 1
			ret[count] = string.format("---@type %s\n%s.%s = nil\n\n", fieldType, name, fieldName)
		end
	end

	return table.concat(ret)
end

---Parses a table as a library
---@param library table
---@param libname string
---@param traversed table
---@return string parsed
local function parseLibrary(library, libname, traversed)
	if traversed[library] then return "" end
	traversed[library] = true

	local ret, count = {libname .. " = {}\n\n"}, 1
	local empty = true
	for k, v in pairs(library) do
		if type(k) == "string" then
			empty = false
			count = count + 1

			local type = type(v)
			if type == "table" then
				local parsed = parseLibrary(v, libname .. "." .. k, traversed)
				if parsed then ret[count] = parsed
				else count = count - 1 end
			elseif type == "function" then
				ret[count] = parseFuncArgs(k, v, libname)
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
	if not VANILLA_GLOBALS[k] and type(k) == "string" and k:sub(1, 2) ~= "__" then
		Package.Log("Generating documentation for " .. k)
		local type = type(v)
		if type == "table" then
			if v.new then
				globals[k] = parseLuaClass(v, k)
			else
				local parsed = parseLibrary(v, k, {})
				if parsed then globals[k] = parsed end -- C side classes will still have a global table entry, but wont contain any members
			end
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
