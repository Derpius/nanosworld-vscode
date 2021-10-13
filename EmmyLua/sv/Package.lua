Package = {}

---@return any
function Package.GetFiles() end

---@return any
function Package.Subscribe() end

---@return any
function Package.GetName() end

---@return any
function Package.GetPersistentData() end

---@param text any
---@return any
function Package.Log(text) end

---@param key any
---@param value any
---@return any
function Package.SetPersistentData(key, value) end

---@param param any
---@return any
function Package.Require(param) end

---@return any
function Package.Unsubscribe() end

---@return any
function Package.Export() end

---@return any
function Package.Call() end

---@param param any
---@return any
function Package.RequirePackage(param) end

---@return any
function Package.GetDirectories() end

---@param text any
---@return any
function Package.Error(text) end

---@return any
function Package.GetPath() end

---@param text any
---@return any
function Package.Warn(text) end

