-- Fixed version of https://stackoverflow.com/a/29246308/  
--- '(*temporary)' should've been a check for any opening bracket at the first char   
--- math.huge shouldn't be so big, just incase something breaks, the chance of a function legitimately having 129 individual arguments is so low that this shouldn't matter
--- info can be nil, possibly due to some fuckery with Events.CallRemote, given the stacktrace shows this erroring from the event callback AFTER this should be called
return function(fun)
	local args, numArgs = {}, 0
	local hook = debug.gethook()

	local argHook = function(...)
		local info = debug.getinfo(3)
		if not info or 'pcall' ~= info.name then return end

		for i = 1, 128 do
			local name = debug.getlocal(2, i)
			if name:sub(1, 1) == "(" then
				debug.sethook(hook)
				error('')
				return
			end
			numArgs = numArgs + 1
			args[numArgs] = name
		end
	end

	debug.sethook(argHook, "c")
	pcall(fun)

	return args, numArgs
end
