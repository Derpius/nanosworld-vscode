---@param _X any
---@param _Y any
---@param _Z any
---@return Vector
function Vector(_X, _Y, _Z) end

---@class Vector
local cls = {}

---@param other any
---@return any
function cls:Distance(other) end

---@param other any
---@return any
function cls:__eq(other) end

---@return any
function cls:GetUnsafeNormal(...) end

---@return any
function cls:Rotation(...) end

---@return any
function cls:SizeSquared(...) end

---@param tolerance any
---@return any
function cls:GetSafeNormal(tolerance) end

---@param other any
---@return any
function cls:__sub(other) end

---@param tolerance any
---@return any
function cls:IsNearlyZero(tolerance) end

---@param _X any
---@param _Y any
---@param _Z any
---@return Vector
function Vector.new(_X, _Y, _Z) end

---@return any
function cls:IsZero(...) end

---@param other any
---@return any
function cls:__pow(other) end

---@type table<string, any>
Vector.__index = nil

---@param other any
---@return any
function cls:DistanceSquared(other) end

---@param other any
---@return any
function cls:__add(other) end

---@return any
function cls:__tostring(...) end

---@param other any
---@param tolerance any
---@return any
function cls:Equals(other, tolerance) end

---@param other any
---@return any
function cls:__mul(other) end

---@return any
function cls:Size(...) end

---@return any
function cls:__unm(...) end

---@param tolerance any
---@return any
function cls:Normalize(tolerance) end

---@param other any
---@return any
function cls:__div(other) end

