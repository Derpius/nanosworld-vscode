---@param _X any
---@param _Y any
---@param _Z any
---@param _W any
---@return Vector4
function Vector4(_X, _Y, _Z, _W) end

---@class Vector4
local cls = {}

---@return any
function cls:__tostring(...) end

---@type table<string, any>
Vector4.__index = nil

---@param _X any
---@param _Y any
---@param _Z any
---@param _W any
---@return Vector4
function Vector4.new(_X, _Y, _Z, _W) end

