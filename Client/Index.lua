Client.Subscribe("Tick", function()
	Events.CallRemote("Docgen", Package.Require("Globals.lua"))
	Client.Unsubscribe("Tick")
end)