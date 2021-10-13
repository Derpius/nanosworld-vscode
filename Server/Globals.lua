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

local function parseLibrary(library, libname)
	local ret, count = {libname .. " = {}\n"}, 1
	for k, v in pairs(library) do
		count = count + 1

		local type = type(v)
		if type == "table" then
			ret[count] = parseLibrary(v, k)
		elseif type == "function" then
			ret[count] = string.format("function %s.%s() end\n", libname, k)
		else
			ret[count] = string.format("---@type %s\n%s.%s = nil\n", type, libname, k)
		end
	end
	return table.concat(ret)
end

local globals = {_G = {}}

for k, v in pairs(_G) do
	if not VANILLA_GLOBALS[k] then
		local type = type(v)
		if type == "table" then
			if v[1] then -- Sequential array (not implemented yet)
			else -- Library
				globals[k] = parseLibrary(v, k)
			end
		elseif type == "function" then
			table.insert(globals._G, string.format("function %s() end\n", k))
		else
			table.insert(globals._G, string.format("---@type %s\n%s = nil\n", type, k))
		end
	end
end

globals._G = table.concat(globals._G)

return globals
