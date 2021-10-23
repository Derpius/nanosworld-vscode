---@param _X any
---@param _Y any
---@return Vector2D
function Vector2D(_X, _Y) end

---@class Vector2D
local cls = {}

---@param other any
---@return any
function cls:__eq(other) end

---@return any
function cls:__unm(...) end

---@return any
function cls:__tostring(...) end

---@param other any
---@return any
function cls:__div(other) end

---@param _X any
---@param _Y any
---@return Vector2D
function Vector2D.new(_X, _Y) end

---@param other any
---@return any
function cls:__mul(other) end

---@param other any
---@return any
function cls:__sub(other) end

---@param other any
---@return any
function cls:__add(other) end

---@type table<string, any>
Vector2D.__index = nil

