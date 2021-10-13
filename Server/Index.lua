local OUTPUT_PATH = "D:\\Programming\\GitHub\\nanosworld\\" -- Path to output generated documentation to

for library, data in pairs(Package.Require("Globals.lua")) do
	local f = assert(io.open(OUTPUT_PATH .. "EmmyLua\\sv\\" .. library .. ".lua", "w"))
	f:write(data)
	f:close()
end

local function OnClientDocgen(player, stubs)
	Package.Log("Exporting clientside stubs")
	for library, data in pairs(stubs) do
		local f = assert(io.open(OUTPUT_PATH .. "EmmyLua\\cl\\" .. library .. ".lua", "w"))
		f:write(data)
		f:close()
	end
	Events.Unsubscribe("Docgen", OnClientDocgen)
end
Events.Subscribe("Docgen", OnClientDocgen)
