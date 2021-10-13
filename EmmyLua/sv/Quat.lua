---@param _X any
---@param _Y any
---@param _Z any
---@param _W any
---@return Quat
function Quat(_X, _Y, _Z, _W) end

---@class Quat
local cls = {}

---@param _X any
---@param _Y any
---@param _Z any
---@param _W any
---@return Quat
function Quat.new(_X, _Y, _Z, _W) end

---@type table<string, any>
Quat.__index = nil

---@param tolerance any
---@return any
function cls:Normalize(tolerance) end

---@return any
function cls:Inverse() end

---@return any
function cls:Rotator() end

---@param other any
---@return any
function cls:__sub(other) end

---@return any
function cls:__tostring() end

---@param other any
---@return any
function cls:__add(other) end

---@param other any
---@return any
function cls:__mul(other) end

