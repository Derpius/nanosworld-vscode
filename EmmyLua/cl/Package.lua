Package = {}

---@return any
function Package.GetDirectories() end

---@return any
function Package.GetPersistentData() end

---@param key any
---@param value any
---@return any
function Package.SetPersistentData(key, value) end

---@return any
function Package.Subscribe() end

---@return any
function Package.GetName() end

Package.__PersistentData = {}

---@param param any
---@return any
function Package.Require(param) end

---@return any
function Package.Unsubscribe() end

---@param text any
---@return any
function Package.Log(text) end

---@return any
function Package.GetFiles() end

---@return any
function Package.Export() end

---@param text any
---@return any
function Package.Error(text) end

---@return any
function Package.Call() end

---@param text any
---@return any
function Package.Warn(text) end

---@param param any
---@return any
function Package.RequirePackage(param) end

---@return any
function Package.GetPath() end

