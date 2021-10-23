local OUTPUT_PATH = "D:\\Programming\\GitHub\\nanosworld-vscode\\" -- Path to output generated documentation to

local sv_globals = Package.Require("Globals.lua")
local sv_classes = Package.Require("Classes.lua")

for className, _ in pairs(sv_classes) do
	if sv_globals[className] then
		error("Global scope contains methods matching a class metatable, docgen cannot combine these reliably ")
		return
	end
end

for library, data in pairs(sv_globals) do
	local f = assert(io.open(OUTPUT_PATH .. "EmmyLua\\sv\\" .. library .. ".lua", "w"))
	f:write(data)
	f:close()
end
for class, data in pairs(sv_classes) do
	local f = assert(io.open(OUTPUT_PATH .. "EmmyLua\\sv\\" .. class .. ".lua", "w"))
	f:write(data)
	f:close()
end

local function OnClientDocgen(player, cl_globals, cl_classes)
	Package.Log("Exporting clientside stubs")
	for className, _ in pairs(cl_classes) do
		if cl_globals[className] then
			error("Global scope contains methods matching a class metatable, docgen cannot combine these reliably ")
			return
		end
	end

	for library, data in pairs(cl_globals) do
		local f = assert(io.open(OUTPUT_PATH .. "EmmyLua\\cl\\" .. library .. ".lua", "w"))
		f:write(data)
		f:close()
	end
	for class, data in pairs(cl_classes) do
		local f = assert(io.open(OUTPUT_PATH .. "EmmyLua\\cl\\" .. class .. ".lua", "w"))
		f:write(data)
		f:close()
	end
	Events.Unsubscribe("Docgen", OnClientDocgen)
end
Events.Subscribe("Docgen", OnClientDocgen)
