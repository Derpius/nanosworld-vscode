local OUTPUT_PATH = "D:\\Programming\\GitHub\\nanosworld" -- Path to output generated documentation to

for library, data in Package.Require("Globals.lua") do
	local f = assert(io.open(OUTPUT_PATH .. "\\EmmyLua\\sv\\" .. library .. ".lua", "w"))
	f:write(data)
	f:close()
end
