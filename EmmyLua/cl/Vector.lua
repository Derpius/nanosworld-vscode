---@param _X any
---@param _Y any
---@param _Z any
---@return Vector
function Vector(_X, _Y, _Z) end

---@class Vector
local cls = {}

---@return any
function cls:Siz) end

---@return any
function cls:__un) end

---@param other any
---@return any
function cls:DistanceSquared(other) end

---@return any
function cls:GetUnsafeNorma) end

---@type table<string, any>
Vector.__index = nil

---@param _X any
---@param _Y any
---@param _Z any
---@return Vector
function Vector.new(_X, _Y, _Z) end

---@param other any
---@return any
function cls:__add(other) end

---@param other any
---@return any
function cls:__div(other) end

---@return any
function cls:IsZer) end

---@return any
function cls:__tostrin) end

---@param other any
---@return any
function cls:__pow(other) end

---@param other any
---@return any
function cls:__sub(other) end

---@return any
function cls:Rotatio) end

---@param tolerance any
---@return any
function cls:GetSafeNormal(tolerance) end

---@param tolerance any
---@return any
function cls:Normalize(tolerance) end

---@param other any
---@return any
function cls:Distance(other) end

---@param other any
---@return any
function cls:__eq(other) end

---@param other any
---@return any
function cls:__mul(other) end

---@param other any
---@param tolerance any
---@return any
function cls:Equals(other, tolerance) end

---@return any
function cls:SizeSquare) end

---@param tolerance any
---@return any
function cls:IsNearlyZero(tolerance) end

