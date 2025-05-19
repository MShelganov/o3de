---@meta

--- Class representing a quaternion for rotation and transformation operations.
---@class Quaternion
local Quaternion = {}

---* Gets a component by index (slower than direct accessors).
---@param index int - Index of the component (0=x, 1=y, 2=z, 3=w)
---@return number - Component value
function Quaternion:GetElement(index) end

---* Sets a component by index (slower than direct accessors).
---@param index int - Index of the component (0=x, 1=y, 2=z, 3=w)
---@param v number - Value to set
function Quaternion:SetElement(index, v) end

---* Sets components individually.
---@param x number - X component
---@param y number - Y component
---@param z number - Z component
---@param w number - W component
function Quaternion:Set(x, y, z, w) end

---* Sets from vector and scalar.
---@param v Vector3 - Imaginary part
---@param w number - Real part
function Quaternion:Set(v, w) end

---* Sets from array of values.
---@param ... number - Array containing 4 components
function Quaternion:Set(...) end

---* Gets the conjugate quaternion.
---@return Quaternion - Conjugated quaternion
function Quaternion:GetConjugate() end

---* Calculates dot product with another quaternion.
---@param q Quaternion - Other quaternion
---@return number - Dot product result
function Quaternion:Dot(q) end

---* Gets squared length of quaternion.
---@return number - Squared length
function Quaternion:GetLengthSq() end

---* Gets full accuracy length.
---@return number - Quaternion length
function Quaternion:GetLength() end

---* Gets fast approximate length.
---@return number - Approximate length
function Quaternion:GetLengthEstimate() end

---* Gets reciprocal of full accuracy length.
---@return number - 1/length
function Quaternion:GetLengthReciprocal() end

---* Gets fast approximate reciprocal length.
---@return number - Approximate 1/length
function Quaternion:GetLengthReciprocalEstimate() end

---* Gets normalized quaternion (full accuracy).
---@return Quaternion - Normalized quaternion
function Quaternion:GetNormalized() end

---* Gets normalized quaternion (fast approximation).
---@return Quaternion - Approximate normalized quaternion
function Quaternion:GetNormalizedEstimate() end

---* Normalizes quaternion in-place (full accuracy).
function Quaternion:Normalize() end

---* Normalizes quaternion in-place (fast approximation).
function Quaternion:NormalizeEstimate() end

---* Linear interpolation between quaternions.
---@param dest Quaternion - Target quaternion
---@param t number - Interpolation factor
---@return Quaternion - Interpolated result
function Quaternion:Lerp(dest, t) end

---* Normalized linear interpolation.
---@param dest Quaternion - Target quaternion
---@param t number - Interpolation factor
---@return Quaternion - Normalized result
function Quaternion:NLerp(dest, t) end

---* Spherical linear interpolation.
---@param dest Quaternion - Target quaternion
---@param t number - Interpolation factor
---@return Quaternion - Slerp result (not normalized)
function Quaternion:Slerp(dest, t) end

---* Spherical linear interpolation, but with in/out tangent quaternions.
---* Squad(p,a,b,q,t) = Slerp(Slerp(p,q,t), Slerp(a,b,t); 2(1-t)t).
---@param dest Quaternion - Destination
---@param inTangent Quaternion - In tangent
---@param outTangent Quaternion - Out tangent
---@param t number - Interpolation factor
---@return Quaternion - Squad result
function Quaternion:Squad(dest, inTangent, outTangent, t) end

---* Checks if quaternions are close within tolerance.
---@param q Quaternion - Other quaternion
---@param tolerance number - Comparison tolerance
---@return boolean - True if close
function Quaternion:IsClose(q, tolerance) end

---* Checks if quaternion is identity.
---@param tolerance number - Comparison tolerance
---@return boolean - True if identity
function Quaternion:IsIdentity(tolerance) end

---* Checks if quaternion is zero.
---@param tolerance number - Comparison tolerance
---@return boolean - True if zero
function Quaternion:IsZero(tolerance) end

---* Transforms a vector using this rotation.
---@param v Vector3 - Input vector
---@return Vector3 - Transformed vector
function Quaternion:TransformVector(v) end

---* Gets Euler angles in degrees.
---@return Vector3 - Euler angles (XYZ)
function Quaternion:GetEulerDegrees() end

---* Gets Euler angles in radians.
---@return Vector3 - Euler angles (XYZ)
function Quaternion:GetEulerRadians() end

---* Sets from Euler radians.
---@param eulerRadians Vector3 - Euler angles (XYZ)
function Quaternion:SetFromEulerRadians(eulerRadians) end

---* Sets from Euler degrees.
---@param eulerDegrees Vector3 - Euler angles (XYZ)
function Quaternion:SetFromEulerDegrees(eulerDegrees) end

---* Converts to axis-angle representation.
---@param outAxis Vector3 - Output axis
---@param outAngle number - Output angle
function Quaternion:ConvertToAxisAngle(outAxis, outAngle) end

---* Converts to scaled axis-angle.
---@return Vector3 - Scaled axis-angle (axis * angle)
function Quaternion:ConvertToScaledAxisAngle() end

---* Gets imaginary (x/y/z) part.
---@return Vector3 - Imaginary components
function Quaternion:GetImaginary() end

---* Gets rotation angle in radians.
---@return number - Rotation angle
function Quaternion:GetAngle() end

---* Checks for finite values.
---@return boolean - True if all components are finite
function Quaternion:IsFinite() end

---* Gets X component.
---@return number - X value
function Quaternion:GetX() end

---* Gets Y component.
---@return number - Y value
function Quaternion:GetY() end

---* Gets Z component.
---@return number - Z value
function Quaternion:GetZ() end

---* Gets W component.
---@return number - W value
function Quaternion:GetW() end

---* Sets X component.
---@param x number - New X value
function Quaternion:SetX(x) end

---* Sets Y component.
---@param y number - New Y value
function Quaternion:SetY(y) end

---* Sets Z component.
---@param z number - New Z value
function Quaternion:SetZ(z) end

---* Sets W component.
---@param w number - New W value
function Quaternion:SetW(w) end

---* Fast inverse calculation.
---@return Quaternion - Inverted quaternion
function Quaternion:GetInverseFast() end

---* In-place fast inverse.
function Quaternion:InvertFast() end

---* Full inverse calculation.
---@return Quaternion - Inverted quaternion
function Quaternion:GetInverseFull() end

---* In-place full inverse.
function Quaternion:InvertFull() end

---* Normalizes and returns length.
---@return number - Original length
function Quaternion:NormalizeWithLength() end

---* Normalizes and returns approximate length.
---@return number - Approximate length
function Quaternion:NormalizeWithLengthEstimate() end

---* Gets shortest equivalent quaternion.
---@return Quaternion - Shortest path equivalent
function Quaternion:GetShortestEquivalent() end

---* Modifies to shortest equivalent.
function Quaternion:ShortestEquivalent() end

---* Creates identity quaternion.
---@return Quaternion - Identity quaternion (w=1)
function Quaternion.CreateIdentity() end

---* Creates zero quaternion.
---@return Quaternion - Zero quaternion (all components 0)
function Quaternion.CreateZero() end

---* Creates from number array. Sets components from an array of 4 floats, stored in xyzw order.
---@param values number - Array of 4 components
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromFloat4(values) end

---* Creates from vector with w=0. Sets components using a Vector3 for the imaginary part and setting the real part to zero.
---@param v Vector3 - Imaginary part
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromVector3(v) end

---* Creates from vector and w. Sets components using a Vector3 for the imaginary part and a float for the real part.
---@param v Vector3 - Imaginary part
---@param w number - Real part
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromVector3AndValue(v, w) end

---* Creates from Euler XYZ radians.
---@param eulerRadians Vector3 - Euler angles (XYZ)
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromEulerRadiansXYZ(eulerRadians) end

---* Creates from Euler YXZ radians.
---@param eulerRadians Vector3 - Euler angles (YXZ)
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromEulerRadiansYXZ(eulerRadians) end

---* Creates from Euler ZYX radians.
---@param eulerRadians Vector3 - Euler angles (ZYX)
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromEulerRadiansZYX(eulerRadians) end

---* Creates from Euler XYZ degrees.
---@param eulerDegrees Vector3 - Euler angles (XYZ)
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromEulerDegreesXYZ(eulerDegrees) end

---* Creates from Euler YXZ degrees.
---@param eulerDegrees Vector3 - Euler angles (YXZ)
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromEulerDegreesYXZ(eulerDegrees) end

---* Creates from Euler ZYX degrees.
---@param eulerDegrees Vector3 - Euler angles (ZYX)
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromEulerDegreesZYX(eulerDegrees) end

---* Creates from 3x3 matrix.
---@param m Matrix3x3 - Rotation matrix
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromMatrix3x3(m) end

---* Creates from 3x4 matrix.
---@param m Matrix3x4 - Rotation matrix
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromMatrix3x4(m) end

---* Creates from 4x4 matrix.
---@param m Matrix4x4 - Rotation matrix
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromMatrix4x4(m) end

---* Creates from basis vectors.
---@param basisX Vector3 - X basis vector
---@param basisY Vector3 - Y basis vector
---@param basisZ Vector3 - Z basis vector
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromBasis(basisX, basisY, basisZ) end

---* Creates from axis and angle.
---@param axis Vector3 - Rotation axis
---@param angle number - Rotation angle (radians)
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromAxisAngle(axis, angle) end

---* Creates from scaled axis-angle.
---@param scaledAxisAngle Vector3 - Axis * angle
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromScaledAxisAngle(scaledAxisAngle) end

---* Creates shortest arc between vectors.
---@param v1 Vector3 - Start vector
---@param v2 Vector3 - End vector
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromShortestArc(v1, v2) end

---* Creates from Euler degrees (XYZ).
---@param anglesInDegrees Vector3 - Euler angles (XYZ)
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromEulerAnglesDegrees(anglesInDegrees) end

---* Creates from Euler radians (XYZ).
---@param anglesInRadians Vector3 - Euler angles (XYZ)
---@return Quaternion - Constructed quaternion
function Quaternion.CreateFromEulerAnglesRadians(anglesInRadians) end

---* Creates rotation around X axis.
---@param angleInRadians number - Rotation angle
---@return Quaternion - Constructed quaternion
function Quaternion.CreateRotationX(angleInRadians) end

---* Creates rotation around Y axis.
---@param angleInRadians number - Rotation angle
---@return Quaternion - Constructed quaternion
function Quaternion.CreateRotationY(angleInRadians) end

---* Creates rotation around Z axis.
---@param angleInRadians number - Rotation angle
---@return Quaternion - Constructed quaternion
function Quaternion.CreateRotationZ(angleInRadians) end
