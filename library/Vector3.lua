---@meta

---3-dimensional vector class.
---@class Vector3
Vector3 = {}

---Returns the x component of the vector.
---@return number
function Vector3:GetX() end

---Returns the y component of the vector.
---@return number
function Vector3:GetY() end

---Returns the z component of the vector.
---@return number
function Vector3:GetZ() end

---Sets the x component of the vector.
---@param x number
function Vector3:SetX(x) end

---Sets the y component of the vector.
---@param y number
function Vector3:SetY(y) end

---Sets the z component of the vector.
---@param z number
function Vector3:SetZ(z) end

---Sets all components to the same specified value.
---@param x number
function Vector3:Set(x) end

---Sets components from x, y, z values.
---@param x number
---@param y number
---@param z number
function Vector3:Set(x, y, z) end

---Sets components from an array of 3 floats in xyz order.
---@param values table
function Vector3:Set(values) end

---Returns squared length of the vector.
---@return number
function Vector3:GetLengthSq() end

---Returns length of the vector, full accuracy.
---@return number
function Vector3:GetLength() end

---Returns normalized vector, full accuracy.
---@return Vector3
function Vector3:GetNormalized() end

---Normalizes the vector in-place, full accuracy.
function Vector3:Normalize() end

---Scales the vector to have the specified length, full accuracy.
---@param length number
function Vector3:SetLength(length) end

---Returns squared distance to another Vector3.
---@param v Vector3
---@return number
function Vector3:GetDistanceSq(v) end

---Dot product of two vectors.
---@param rhs Vector3
---@return number
function Vector3:Dot(rhs) end

---Cross product of two vectors.
---@param rhs Vector3
---@return Vector3
function Vector3:Cross(rhs) end

---Checks if the vector is equal to another within a floating point tolerance.
---@param v Vector3
---@param tolerance number
---@return boolean
function Vector3:IsClose(v, tolerance) end

---Returns the sine of each component.
---@return Vector3
function Vector3:GetSin() end

---Returns the cosine of each component.
---@return Vector3
function Vector3:GetCos() end

---Gets the sine and cosine of each component.
---@param sin Vector3
---@param cos Vector3
function Vector3:GetSinCos(sin, cos) end

---Returns the arccosine of each component.
---@return Vector3
function Vector3:GetAcos() end

---Returns the arctangent of each component.
---@return Vector3
function Vector3:GetAtan() end

---Wraps the angle in each component into the [-pi,pi] range.
---@return Vector3
function Vector3:GetAngleMod() end

---Calculates the closest angle (radians) towards the given vector.
---@param v Vector3
---@return number
function Vector3:Angle(v) end

---Calculates the closest angle (degrees) towards the given vector.
---@param v Vector3
---@return number
function Vector3:AngleDeg(v) end

---Takes the absolute value of each component.
---@return Vector3
function Vector3:GetAbs() end

---Returns the reciprocal of each component.
---@return Vector3
function Vector3:GetReciprocal() end

---Builds a tangent basis with this vector as the normal.
---@param tangent Vector3
---@param bitangent Vector3
function Vector3:BuildTangentBasis(tangent, bitangent) end

---Project vector onto another.
---@param rhs Vector3
---@return Vector3
function Vector3:GetProjected(rhs) end

---Project vector onto a normal.
---@param normal Vector3
---@return Vector3
function Vector3:GetProjectedOnNormal(normal) end

---Returns true if the vector contains no nan or inf values.
---@return boolean
function Vector3:IsFinite() end

---Returns the underlying SIMD vector.
---@return userdata
function Vector3:GetSimdValue() end

---Directly sets the underlying SIMD vector.
---@param value userdata
function Vector3:SetSimdValue(value) end

---Static method to create a zero vector.
---@return Vector3
function Vector3.CreateZero() end

---Static method to create a one vector.
---@return Vector3
function Vector3.CreateOne() end

---Static method to create a vector along the X axis.
---@param length number
---@return Vector3
function Vector3.CreateAxisX(length) end

---Static method to create a vector along the Y axis.
---@param length number
---@return Vector3
function Vector3.CreateAxisY(length) end

---Static method to create a vector along the Z axis.
---@param length number
---@return Vector3
function Vector3.CreateAxisZ(length) end

---Static method to create from a float array.
---@param values table
---@return Vector3
function Vector3.CreateFromFloat3(values) end
