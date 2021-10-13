Timer = {}

Timer.__timeouts = {}

function Timer.ClearTimeout(id) end

function Timer.Bind(id, actor) end

function Timer.IsValid(id) end

function Timer.__set(func, run_once, time, args) end

function Timer.SetTimeout(func, time) end

function Timer.ClearInterval(id) end

function Timer.SetInterval(func, time) end

