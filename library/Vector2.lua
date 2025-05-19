---@meta

---* 2-dimensional vector class.
---@class Vector2
Vector2 = {}

---* Stores the vector to an array of 2 floats. The floats need only be 4 byte aligned, 16 byte alignment is not required.
---@param values number
function Vector2:StoreToFloat2(values) end

---* Returns squared length of the vector.
---@return number # Squared length of the vector.
function Vector2:GetLengthSq() end

---* Returns length of the vector, full accuracy.
---@return number # Length of the vector.
function Vector2:GetLength() end

---* Returns length of the vector, fast but low accuracy.
---@return number # Approximate length of the vector.
function Vector2:GetLengthEstimate() end

---* Returns 1/length, full accuracy.
---@return number # Reciprocal of the vector's length.
function Vector2:GetLengthReciprocal() end

---* Returns 1/length of the vector, fast but low accuracy.
---@return number # Approximate reciprocal of the vector's length.
function Vector2:GetLengthReciprocalEstimate() end

---* Returns normalized vector, full accuracy.
---@return Vector2 # Normalized vector.
function Vector2:GetNormalized() end

---* Returns normalized vector, fast but low accuracy.
---@return Vector2 # Approximate normalized vector.
function Vector2:GetNormalizedEstimate() end

---* Normalizes the vector in-place, full accuracy.
function Vector2:Normalize() end

---* Normalizes the vector in-place, fast but low accuracy.
function Vector2:NormalizeEstimate() end

---* Checks if the vector is normalized within a tolerance.
---@param tolerance number # Default value is Constants::Tolerance.
---@return boolean # True if normalized within tolerance.
function Vector2:IsNormalized(tolerance) end

---* Scales the vector to have the specified length, full accuracy.
---@param length number
function Vector2:SetLength(length) end

---* Scales the vector to have the specified length, fast but low accuracy.
---@param length number
function Vector2:SetLengthEstimate(length) end

---* Returns squared distance to another Vector2.
---@param v Vector2
---@return number # Squared distance to v.
function Vector2:GetDistanceSq(v) end

---* Linear interpolation between this vector and a destination.
---@param dest Vector2
---@param t number
---@return Vector2 # Interpolated vector.
function Vector2:Lerp(dest, t) end

---* Spherical linear interpolation between normalized vectors.
---@param dest Vector2
---@param t number
---@return Vector2 # Spherical interpolated vector.
function Vector2:Slerp(dest, t) end

---* Normalized linear interpolation between this vector and a destination.
---@param dest Vector2
---@param t number
---@return Vector2 # Normalized interpolated vector.
function Vector2:Nlerp(dest, t) end

---* Gets perpendicular vector (rotates 90 degrees).
---@return Vector2 # Perpendicular vector.
function Vector2:GetPerpendicular() end

---* Checks if the vector is equal to another within a floating point tolerance.
---@param v Vector2
---@param tolerance number # Default value is 0.001.
---@return boolean # True if vectors are close within tolerance.
function Vector2:IsClose(v, tolerance) end

---* Checks if all components are zero within a tolerance.
---@param tolerance number # Default value is AZ::Constants::FloatEpsilon.
---@return boolean # True if all components are near zero.
function Vector2:IsZero(tolerance) end

---* Selects components based on comparison.
---@param vCmp Vector2
---@param vB Vector2
---@return Vector2 # Result of selection.
function Vector2:GetSelect(vCmp, vB) end

---* Performs select operation in-place.
---@param vCmp Vector2
---@param vB Vector2
function Vector2:Select(vCmp, vB) end

---* Returns a vector with absolute values of each component.
---@return Vector2 # Vector with absolute components.
function Vector2:GetAbs() end

---* Gets the sine of each component.
---@return Vector2 # Sine of each component.
function Vector2:GetSin() end

---* Gets the cosine of each component.
---@return Vector2 # Cosine of each component.
function Vector2:GetCos() end

---* Gets the sine and cosine of each component.
---@param sin Vector2 # Output sine vector.
---@param cos Vector2 # Output cosine vector.
function Vector2:GetSinCos(sin, cos) end

---* Gets the arccosine of each component.
---@return Vector2 # Arccosine of each component.
function Vector2:GetAcos() end

---* Gets the arctangent of each component.
---@return Vector2 # Arctangent of each component.
function Vector2:GetAtan() end

---* Gets the angle between positive x-axis and the vector.
---@return number # Angle in radians (-pi, pi].
function Vector2:GetAtan2() end

---* Wraps each component into [-pi, pi] range.
---@return Vector2 # Wrapped angle vector.
function Vector2:GetAngleMod() end

---* Calculates closest angle towards another vector in [0, pi] range.
---@param v Vector2
---@return number # Closest angle in radians.
function Vector2:Angle(v) end

---* Calculates closest angle towards another vector in [0, 180] degrees.
---@param v Vector2
---@return number # Closest angle in degrees.
function Vector2:AngleDeg(v) end

---* Returns reciprocal of each component, full accuracy.
---@return Vector2 # Reciprocal components.
function Vector2:GetReciprocal() end

---* Returns reciprocal of each component, fast but low accuracy.
---@return Vector2 # Approximate reciprocal components.
function Vector2:GetReciprocalEstimate() end

---* Computes dot product with another vector.
---@param rhs Vector2
---@return number # Dot product result.
function Vector2:Dot(rhs) end

---* Performs multiply-add operation (this = this * mul + add).
---@param mul Vector2
---@param add Vector2
---@return Vector2 # Resulting vector.
function Vector2:GetMadd(mul, add) end

---* Projects vector onto another vector.
---@param rhs Vector2
---@return Vector2 # Projection result.
function Vector2:GetProjected(rhs) end

---* Projects vector onto a normal.
---@param normal Vector2
---@return Vector2 # Projection result.
function Vector2:GetProjectedOnNormal(normal) end

---* Checks if all components are finite (no NaN or Inf).
---@return boolean # True if all components are finite.
function Vector2:IsFinite() end

---* Returns underlying SIMD vector.
---@return lightuserdata # SIMD vector value.
function Vector2:GetSimdValue() end

---* Directly sets the underlying SIMD vector.
---@param value lightuserdata # SIMD vector value.
function Vector2:SetSimdValue(value) end

---* Normalizes in-place and returns previous length.
---@return number # Previous length before normalization.
function Vector2:NormalizeWithLength() end

---* Normalizes in-place with length estimate.
---@return number # Previous length (approximate).
function Vector2:NormalizeWithLengthEstimate() end

---* Safely normalizes vector (returns (0,0) if length too small).
---@param tolerance number # Default value is Constants::Tolerance.
---@return Vector2 # Normalized vector or (0,0).
function Vector2:GetNormalizedSafe(tolerance) end

---* Safely normalizes vector with estimate.
---@param tolerance number # Default value is Constants::Tolerance.
---@return Vector2 # Approximate normalized vector or (0,0).
function Vector2:GetNormalizedSafeEstimate(tolerance) end

---* Safely normalizes in-place.
---@param tolerance number # Default value is Constants::Tolerance.
function Vector2:NormalizeSafe(tolerance) end

---* Safely normalizes in-place with estimate.
---@param tolerance number # Default value is Constants::Tolerance.
function Vector2:NormalizeSafeEstimate(tolerance) end

---* Returns distance to another vector.
---@param v Vector2
---@return number # Distance to v.
function Vector2:GetDistance(v) end

---* Returns approximate distance to another vector.
---@param v Vector2
---@return number # Approximate distance to v.
function Vector2:GetDistanceEstimate(v) end

---* Checks if all components are less than another vector's.
---@param v Vector2
---@return boolean # True if all components are less.
function Vector2:IsLessThan(v) end

---* Checks if all components are less or equal to another vector's.
---@param v Vector2
---@return boolean # True if all components are less or equal.
function Vector2:IsLessEqualThan(v) end

---* Checks if all components are greater than another vector's.
---@param v Vector2
---@return boolean # True if all components are greater.
function Vector2:IsGreaterThan(v) end

---* Checks if all components are greater or equal to another vector's.
---@param v Vector2
---@return boolean # True if all components are greater or equal.
function Vector2:IsGreaterEqualThan(v) end

---* Returns vector with floored components.
---@return Vector2 # Floored components.
function Vector2:GetFloor() end

---* Returns vector with ceiled components.
---@return Vector2 # Ceiled components.
function Vector2:GetCeil() end

---* Returns vector with rounded components.
---@return Vector2 # Rounded components.
function Vector2:GetRound() end

---* Returns vector with minimum components.
---@param v Vector2
---@return Vector2 # Minimum components.
function Vector2:GetMin(v) end

---* Returns vector with maximum components.
---@param v Vector2
---@return Vector2 # Maximum components.
function Vector2:GetMax(v) end

---* Clamps vector components between min and max.
---@param min Vector2
---@param max Vector2
---@return Vector2 # Clamped vector.
function Vector2:GetClamp(min, max) end

---* Creates a vector with all components set to zero.
---@return Vector2 # Zero vector.
function Vector2.CreateZero() end

---* Creates a vector with all components set to one.
---@return Vector2 # One vector.
function Vector2.CreateOne() end

---* Creates a vector along the X-axis with specified length.
---@param length number # Default value is 1.0f.
---@return Vector2 # Axis-aligned vector.
function Vector2.CreateAxisX(length) end

---* Creates a vector along the Y-axis with specified length.
---@param length number # Default value is 1.0f.
---@return Vector2 # Axis-aligned vector.
function Vector2.CreateAxisY(length) end

---* Sets components from an array of 2 floats.
---@param values number # Array of 2 floats.
---@return Vector2 # Constructed vector.
function Vector2.CreateFromFloat2(values) end

---* Creates a normalized vector from an angle in radians.
---@param angle number # Default value is 0.0f.
---@return Vector2 # Vector at specified angle.
function Vector2.CreateFromAngle(angle) end

---* Performs component-wise selection based on equality comparison.
---@param cmp1 Vector2
---@param cmp2 Vector2
---@param vA Vector2
---@param vB Vector2
---@return Vector2 # Selected vector.
function Vector2.CreateSelectCmpEqual(cmp1, cmp2, vA, vB) end

---* Performs component-wise selection based on greater-or-equal comparison.
---@param cmp1 Vector2
---@param cmp2 Vector2
---@param vA Vector2
---@param vB Vector2
---@return Vector2 # Selected vector.
function Vector2.CreateSelectCmpGreaterEqual(cmp1, cmp2, vA, vB) end

---* Performs component-wise selection based on greater-than comparison.
---@param cmp1 Vector2
---@param cmp2 Vector2
---@param vA Vector2
---@param vB Vector2
---@return Vector2 # Selected vector.
function Vector2.CreateSelectCmpGreater(cmp1, cmp2, vA, vB) end
