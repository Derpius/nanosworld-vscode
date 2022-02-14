---@param _X any
---@param _Y any
---@param _Z any
---@param _W any
---@return Quat
function Quat(_X, _Y, _Z, _W) end

---@class Quat
local cls = {}

---@return any
function cls:Inverse(...) end

---@param other any
---@return any
function cls:__sub(other) end

---@return any
function cls:Rotator(...) end

---@param other any
---@return any
function cls:__add(other) end

---@return any
function cls:__tostring(...) end

---@type table<string, any>
Quat.__index = nil

---@param other any
---@return any
function cls:__mul(other) end

---@param tolerance any
---@return any
function cls:Normalize(tolerance) end

---@param _X any
---@param _Y any
---@param _Z any
---@param _W any
---@return Quat
function Quat.new(_X, _Y, _Z, _W) end

