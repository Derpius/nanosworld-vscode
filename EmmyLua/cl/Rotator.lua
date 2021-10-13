Rotator = {}

---@param self any
---@return any
function Rotator.IsZero(self) end

---@param roll any
---@return any
function Rotator.Random(roll) end

---@param self any
---@return any
function Rotator.Normalize(self) end

---@param self any
---@return any
function Rotator.GetNormalized(self) end

---@param self any
---@param other any
---@param tolerance any
---@return any
function Rotator.Equals(self, other, tolerance) end

---@param self any
---@return any
function Rotator.Quaternion(self) end

---@param self any
---@param tolerance any
---@return any
function Rotator.IsNearlyZero(self, tolerance) end

---@param self any
---@param other any
---@return any
function Rotator.__add(self, other) end

---@param self any
---@param V any
---@return any
function Rotator.RotateVector(self, V) end

---@param self any
---@return any
function Rotator.GetForwardVector(self) end

---@param _pitch any
---@param _yaw any
---@param _roll any
---@return any
function Rotator.new(_pitch, _yaw, _roll) end

---@param self any
---@param other any
---@return any
function Rotator.__sub(self, other) end

---@param self any
---@param V any
---@return any
function Rotator.UnrotateVector(self, V) end

---@param self any
---@param other any
---@return any
function Rotator.__mul(self, other) end

---@param self any
---@return any
function Rotator.__tostring(self) end

