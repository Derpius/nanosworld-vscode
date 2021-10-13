Rotator = {}

function Rotator.__sub(self, other) end

function Rotator.Quaternion(self) end

function Rotator.__add(self, other) end

function Rotator.Equals(self, other, tolerance) end

function Rotator.GetNormalized(self) end

function Rotator.__tostring(self) end

function Rotator.__mul(self, other) end

function Rotator.GetForwardVector(self) end

function Rotator.Random(roll) end

function Rotator.IsNearlyZero(self, tolerance) end

function Rotator.UnrotateVector(self, V) end

function Rotator.RotateVector(self, V) end

function Rotator.IsZero(self) end

function Rotator.Normalize(self) end

function Rotator.new(_pitch, _yaw, _roll) end

