local STATICS = {
	["Assets"] = true,
	["Client"] = true,
	["Events"] = true,
	["Package"] = true,
	["Render"] = true,
	["Server"] = true,
	["Timer"] = true,
	["World"] = true
}

local INTERNAL = {
	Package_S = true,
	Timer_I = true,
	Input_S = true
}

local classes = {}

for _, class in pairs(debug.getregistry().classes) do
	if not INTERNAL[class.__name] then
		local static = STATICS[class.__name]
		local accessor = static and (class.__name .. ".") or "cls:"

		if static then
			classes[class.__name] = {class.__name .. " = {}\n\n"}
		else
			classes[class.__name] = {string.format(
				"---@return %s\nfunction %s(...) end\n\n---@class %s\nlocal cls = %s()\n\n",
				class.__name, class.__name, class.__name, class.__name
			)}
		end

		local count = 1
		for funcName, _ in pairs(class.__function) do
			if funcName ~= "Create" then
				count = count + 1
				classes[class.__name][count] = string.format("---@return any\nfunction %s%s(...) end\n\n", accessor, funcName)
			end
		end

		classes[class.__name] =  table.concat(classes[class.__name])
	end
end

return classes
