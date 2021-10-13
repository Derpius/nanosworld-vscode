---@param _pitch any
---@param _yaw any
---@param _roll any
---@return Rotator
function Rotator(_pitch, _yaw, _roll) end

---@class Rotator
local cls = {}

---@param V any
---@return any
function cls:RotateVector(V) end

---@param _pitch any
---@param _yaw any
---@param _roll any
---@return Rotator
function Rotator.new(_pitch, _yaw, _roll) end

---@param roll any
---@return any
function Rotator.Random(roll) end

---@param other any
---@param tolerance any
---@return any
function cls:Equals(other, tolerance) end

---@param other any
---@return any
function cls:__add(other) end

---@return any
function cls:Normalize() end

---@return any
function cls:GetForwardVector() end

---@param other any
---@return any
function cls:__sub(other) end

---@param other any
---@return any
function cls:__mul(other) end

---@return any
function cls:Quaternion() end

---@type table<string, any>
Rotator.__index = nil

---@return any
function cls:__tostring() end

---@param tolerance any
---@return any
function cls:IsNearlyZero(tolerance) end

---@return any
function cls:GetNormalized() end

---@return any
function cls:IsZero() end

---@param V any
---@return any
function cls:UnrotateVector(V) end

