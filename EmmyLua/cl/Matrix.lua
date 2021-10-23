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

---@type table<string, any>
Matrix.__index = nil

---@param vector any
---@return any
function cls:TransformVector(vector) end

---@param rotation any
---@param origin any
---@return Matrix
function Matrix.new(rotation, origin) end

---@return any
function cls:__tostring(...) end

