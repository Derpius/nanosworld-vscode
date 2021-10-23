---@param rotation any
---@param origin any
---@return Matrix
function Matrix(rotation, origin) end

---@class Matrix
local cls = {}

---@return any
function cls:GetTransposed(...) end

---@param vector any
---@return any
function cls:TransformVector4(vector) end

---@return any
function cls:__tostring(...) end

---@param rotation any
---@param origin any
---@return Matrix
function Matrix.new(rotation, origin) end

---@param vector any
---@return any
function cls:TransformVector(vector) end

---@type table<string, any>
Matrix.__index = nil

