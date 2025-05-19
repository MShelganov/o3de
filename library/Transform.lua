---@meta

--- The basic transformation class, represented using a quaternion rotation, float scale and vector translation. By design, cannot represent skew transformations.
---@class Transform
Transform = {}

---* GetBasis(int index) const
---@param index number
---@return Vector3
function Transform:GetBasis(index) end

---* GetBasisX() const
---@return Vector3
function Transform:GetBasisX() end

---* GetBasisY() const
---@return Vector3
function Transform:GetBasisY() end

---* GetBasisZ() const
---@return Vector3
function Transform:GetBasisZ() end

---* GetBasisAndTranslation(Vector3 *basisX, Vector3 *basisY, Vector3 *basisZ, Vector3 *pos) const
---@param basisX Vector3
---@param basisY Vector3
---@param basisZ Vector3
---@param pos Vector3
function Transform:GetBasisAndTranslation(basisX, basisY, basisZ, pos) end

---* 
---@return Vector3
function Transform:GetTranslation() end

---* SetTranslation(float x, float y, float z)
---@param x number
---@param y number
---@param z number
function Transform:SetTranslation(x, y, z) end

---* SetTranslation(const Vector3 &v)
---@param v Vector3
function Transform:SetTranslation(v) end

---* GetRotation() const
---@return Quaternion
function Transform:GetRotation() end

---* SetRotation(const Quaternion &rotation)
---@param rotation Quaternion
function Transform:SetRotation(rotation) end

---* GetUniformScale() const
---@return number
function Transform:GetUniformScale() end

---* SetUniformScale(const float scale)
---@param scale number
function Transform:SetUniformScale(scale) end

---* ExtractUniformScale()
---@return number
function Transform:ExtractUniformScale() end

---* MultiplyByUniformScale(float scale)
---@param scale number
function Transform:MultiplyByUniformScale(scale) end

---* TransformPoint(const Vector3 &rhs) const
---@param rhs Vector3
---@return Vector3
function Transform:TransformPoint(rhs) end

---* TransformPoint(const Vector4 &rhs) const
---@param rhs Vector4
---@return Vector4
function Transform:TransformPoint(rhs) end

---* TransformVector(const Vector3 &rhs) const
---@param rhs Vector3
---@return Vector3
function Transform:TransformVector(rhs) end

---* GetInverse() const
---@return Transform
function Transform:GetInverse() end

---* Invert()
function Transform:Invert() end

---* IsOrthogonal(float tolerance=Constants::Tolerance) const
---@param tolerance number
---@return boolean
function Transform:IsOrthogonal(tolerance) end

---* GetOrthogonalized() const
---@return Transform
function Transform:GetOrthogonalized() end

---* Orthogonalize()
function Transform:Orthogonalize() end

---* IsClose(const Transform &rhs, float tolerance=Constants::Tolerance) const
---@param rhs Transform
---@param tolerance number
---@return boolean
function Transform:IsClose(rhs, tolerance) end

---* GetEulerDegrees() const
---@return Vector3
function Transform:GetEulerDegrees() end

---* GetEulerRadians() const
---@return Vector3
function Transform:GetEulerRadians() end

---* SetFromEulerDegrees(const Vector3 &eulerDegrees)
---@param eulerDegrees Vector3
function Transform:SetFromEulerDegrees(eulerDegrees) end

---* SetFromEulerRadians(const Vector3 &eulerRadians)
---@param eulerRadians Vector3
function Transform:SetFromEulerRadians(eulerRadians) end

---* IsFinite() const
---@return boolean
function Transform:IsFinite() end

---* Reflect (ReflectContext *context)
---@param context ReflectContext
function Transform.Reflect(context) end

---* CreateIdentity()
---@return Transform
function Transform.CreateIdentity() end

---* Sets the matrix from a quaternion, translation is set to zero.
---@param q Quaternion
---@return Transform
function Transform.CreateFromQuaternion(q) end

---* Sets the matrix from a quaternion and a translation.
---@param q Quaternion
---@param p Vector3
---@return Transform
function Transform.CreateFromQuaternionAndTranslation(q, p) end

---* 
---@param value Matrix3x3
---@return Transform
function Transform.CreateFromMatrix3x3(value) end

---* 
---@param value Matrix3x3
---@param p Vector3
---@return Transform
function Transform.CreateFromMatrix3x3AndTranslation(value, p) end

---* 
---@param value Matrix3x4
---@return Transform
function Transform.CreateFromMatrix3x4(value) end

---* Sets the transform to apply (uniform) scale only, no rotation or translation.
---@param scale number
---@return Transform
function Transform.CreateUniformScale(scale) end

---* Sets the matrix to be a translation matrix, rotation part is set to identity.
---@param translation Vector3
---@return Transform
function Transform.CreateTranslation(translation) end

---* Creates a "look at" transform. Given a source position and target position, computes a transform at the source position that points toward the target along a chosen local-space axis.
---@param from Vector3
---@param to Vector3
---@param forwardAxis AxisType
---@return Transform
function Transform.CreateLookAt(from, to, forwardAxis) end

---* static const Transform & Identity()
---@return Transform
function Transform.Identity() end

---* 
---@param angle number
---@return Transform
function Transform.CreateRotationX(angle) end

---* 
---@param angle number
---@return Transform
function Transform.CreateRotationY(angle) end

---* 
---@param angle number
---@return Transform
function Transform.CreateRotationZ(angle) end
