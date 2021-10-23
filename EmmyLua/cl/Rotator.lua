---@param _pitch any
---@param _yaw any
---@param _roll any
---@return Rotator
function Rotator(_pitch, _yaw, _roll) end

---@class Rotator
local cls = {}

---@param other any
---@return any
function cls:__sub(other) end

---@param roll any
---@return any
function Rotator.Random(roll) end

---@param other any
---@return any
function cls:__mul(other) end

---@return any
function cls:GetNormalized(...) end

---@param other any
---@param tolerance any
---@return any
function cls:Equals(other, tolerance) end

---@return any
function cls:IsZero(...) end

---@param _pitch any
---@param _yaw any
---@param _roll any
---@return Rotator
function Rotator.new(_pitch, _yaw, _roll) end

---@param V any
---@return any
function cls:UnrotateVector(V) end

---@return any
function cls:__tostring(...) end

---@param tolerance any
---@return any
function cls:IsNearlyZero(tolerance) end

---@param other any
---@return any
function cls:__add(other) end

---@return any
function cls:GetForwardVector(...) end

---@return any
function cls:Quaternion(...) end

---@type table<string, any>
Rotator.__index = nil

---@param V any
---@return any
function cls:RotateVector(V) end

---@return any
function cls:Normalize(...) end

