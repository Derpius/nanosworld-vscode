---@param _pitch any
---@param _yaw any
---@param _roll any
---@return Rotator
function Rotator(_pitch, _yaw, _roll) end

---@class Rotator
local cls = {}

---@param other any
---@return any
function cls:__mul(other) end

---@param other any
---@return any
function cls:__add(other) end

---@return any
function cls:Normalize(...) end

---@return any
function cls:__tostring(...) end

---@type table<string, any>
Rotator.__index = nil

---@return any
function cls:GetForwardVector(...) end

---@param V any
---@return any
function cls:UnrotateVector(V) end

---@return any
function cls:IsZero(...) end

---@param other any
---@return any
function cls:__sub(other) end

---@param _pitch any
---@param _yaw any
---@param _roll any
---@return Rotator
function Rotator.new(_pitch, _yaw, _roll) end

---@param other any
---@param tolerance any
---@return any
function cls:Equals(other, tolerance) end

---@return any
function cls:GetNormalized(...) end

---@param V any
---@return any
function cls:RotateVector(V) end

---@param roll any
---@return any
function Rotator.Random(roll) end

---@param tolerance any
---@return any
function cls:IsNearlyZero(tolerance) end

---@return any
function cls:Quaternion(...) end

