Timer = {}

---@param id any
---@return any
function Timer.ClearInterval(id) end

---@param id any
---@return any
function Timer.ClearTimeout(id) end

---@param func any
---@param time any
---@return any
function Timer.SetTimeout(func, time) end

---@param func any
---@param time any
---@return any
function Timer.SetInterval(func, time) end

---@param id any
---@return any
function Timer.IsValid(id) end

---@param id any
---@param actor any
---@return any
function Timer.Bind(id, actor) end

---@param func any
---@param run_once any
---@param time any
---@param args any
---@return any
function Timer.__set(func, run_once, time, args) end

