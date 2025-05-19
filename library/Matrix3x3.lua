---@meta

--- Matrix with 3 rows and 3 columns. See Matrix4x4 for general information about matrices.
---@class Matrix3x3
Matrix3x3 = {}

---* Calculates (this->GetTranspose() * rhs).
---@param rhs Matrix3x3
---@return Matrix3x3
function Matrix3x3:TransposedMultiply(rhs) end

---* Gets the scale part of the transformation, i.e. the length of the scale components.
---@return Vector3
function Matrix3x3:RetrieveScale() end

---* Gets the squared scale part of the transformation (the squared length of the basis vectors).
---@return Vector3
function Matrix3x3:RetrieveScaleSq() end

---* Gets the scale part of the transformation as in RetrieveScale, and also removes this scaling from the matrix.
---@return Vector3
function Matrix3x3:ExtractScale() end

---* Quick multiplication by a scale matrix, equivalent to m*=Matrix3x3::CreateScale(scale).
---@param scale Vector3
---@return nil
function Matrix3x3:MultiplyByScale(scale) end

---* Returns a matrix with the reciprocal scale, keeping the same rotation and translation.
---@return Matrix3x3
function Matrix3x3:GetReciprocalScaled() end

---* Polar decomposition, M=U*H, U is orthogonal (unitary) and H is symmetric (hermitian).
---@return Matrix3x3
function Matrix3x3:GetPolarDecomposition() end

---* Polar decomposition, M=U*H, U is orthogonal (unitary) and H is symmetric (hermitian).
---@param orthogonalOut Matrix3x3
---@param symmetricOut Matrix3x3
---@return nil
function Matrix3x3:GetPolarDecomposition(orthogonalOut, symmetricOut) end

---* Checks if the matrix is orthogonal within a tolerance.
---@param tolerance number
---@return boolean
function Matrix3x3:IsOrthogonal(tolerance) end

---* Adjusts an almost orthogonal matrix to be orthogonal.
---@return Matrix3x3
function Matrix3x3:GetOrthogonalized() end

---* Adjusts an almost orthogonal matrix to be orthogonal.
---@return nil
function Matrix3x3:Orthogonalize() end

---* Checks if this matrix is close to another with a given tolerance.
---@param rhs Matrix3x3
---@param tolerance number
---@return boolean
function Matrix3x3:IsClose(rhs, tolerance) end

---* Sets the rotation part from a quaternion.
---@param q Quaternion
---@return nil
function Matrix3x3:SetRotationPartFromQuaternion(q) end

---* Gets the diagonal elements of the matrix.
---@return Vector3
function Matrix3x3:GetDiagonal() end

---* Calculates the determinant of the matrix.
---@return number
function Matrix3x3:GetDeterminant() end

---* Gets the adjugate (classical adjoint) of the matrix.
---@return Matrix3x3
function Matrix3x3:GetAdjugate() end

---* Checks if all elements are finite.
---@return boolean
function Matrix3x3:IsFinite() end

---* Indexed access using operator().
---@param row number
---@param col number
---@return number
function Matrix3x3:GetElement(row, col) end

---* Sets a matrix element by index.
---@param row number
---@param col number
---@param value number
---@return nil
function Matrix3x3:SetElement(row, col, value) end

---* Gets a row as a Vector3.
---@param row number
---@return Vector3
function Matrix3x3:GetRow(row) end

---* Sets a row with individual components.
---@param row number
---@param x number
---@param y number
---@param z number
---@return nil
function Matrix3x3:SetRow(row, x, y, z) end

---* Sets a row from a Vector3.
---@param row number
---@param v Vector3
---@return nil
function Matrix3x3:SetRow(row, v) end

---* Retrieves all rows.
---@param row0 Vector3
---@param row1 Vector3
---@param row2 Vector3
---@return nil
function Matrix3x3:GetRows(row0, row1, row2) end

---* Sets all rows.
---@param row0 Vector3
---@param row1 Vector3
---@param row2 Vector3
---@return nil
function Matrix3x3:SetRows(row0, row1, row2) end

---* Gets a column as a Vector3.
---@param col number
---@return Vector3
function Matrix3x3:GetColumn(col) end

---* Sets a column with individual components.
---@param col number
---@param x number
---@param y number
---@param z number
---@return nil
function Matrix3x3:SetColumn(col, x, y, z) end

---* Sets a column from a Vector3.
---@param col number
---@param v Vector3
---@return nil
function Matrix3x3:SetColumn(col, v) end

---* Retrieves all columns.
---@param col0 Vector3
---@param col1 Vector3
---@param col2 Vector3
---@return nil
function Matrix3x3:GetColumns(col0, col1, col2) end

---* Sets all columns.
---@param col0 Vector3
---@param col1 Vector3
---@param col2 Vector3
---@return nil
function Matrix3x3:SetColumns(col0, col1, col2) end

---* Gets the X basis vector.
---@return Vector3
function Matrix3x3:GetBasisX() end

---* Sets the X basis vector with components.
---@param x number
---@param y number
---@param z number
---@return nil
function Matrix3x3:SetBasisX(x, y, z) end

---* Sets the X basis vector from a Vector3.
---@param v Vector3
---@return nil
function Matrix3x3:SetBasisX(v) end

---* Gets the Y basis vector.
---@return Vector3
function Matrix3x3:GetBasisY() end

---* Sets the Y basis vector with components.
---@param x number
---@param y number
---@param z number
---@return nil
function Matrix3x3:SetBasisY(x, y, z) end

---* Sets the Y basis vector from a Vector3.
---@param v Vector3
---@return nil
function Matrix3x3:SetBasisY(v) end

---* Gets the Z basis vector.
---@return Vector3
function Matrix3x3:GetBasisZ() end

---* Sets the Z basis vector with components.
---@param x number
---@param y number
---@param z number
---@return nil
function Matrix3x3:SetBasisZ(x, y, z) end

---* Sets the Z basis vector from a Vector3.
---@param v Vector3
---@return nil
function Matrix3x3:SetBasisZ(v) end

---* Retrieves all basis vectors.
---@param basisX Vector3
---@param basisY Vector3
---@param basisZ Vector3
---@return nil
function Matrix3x3:GetBasis(basisX, basisY, basisZ) end

---* Sets all basis vectors.
---@param basisX Vector3
---@param basisY Vector3
---@param basisZ Vector3
---@return nil
function Matrix3x3:SetBasis(basisX, basisY, basisZ) end

---* Gets the transpose of the matrix.
---@return Matrix3x3
function Matrix3x3:GetTranspose() end

---* Transposes the matrix in-place.
---@return nil
function Matrix3x3:Transpose() end

---* Gets the full inverse of the matrix.
---@return Matrix3x3
function Matrix3x3:GetInverseFull() end

---* Inverts the matrix in-place using full decomposition.
---@return nil
function Matrix3x3:InvertFull() end

---* Gets a fast approximate inverse.
---@return Matrix3x3
function Matrix3x3:GetInverseFast() end

---* Inverts the matrix in-place using fast approximation.
---@return nil
function Matrix3x3:InvertFast() end

---* Reflects the class properties.
---@param context ReflectContext
---@return nil
function Matrix3x3:Reflect(context) end

---* Creates an identity matrix.
---@return Matrix3x3
function Matrix3x3:CreateIdentity() end

---* Creates a zero matrix.
---@return Matrix3x3
function Matrix3x3:CreateZero() end

---* Constructs a matrix with all components set to the specified value.
---@param value number
---@return Matrix3x3
function Matrix3x3:CreateFromValue(value) end

---* Constructs from an array of 9 floats stored in row-major order.
---@param values number
---@return Matrix3x3
function Matrix3x3:CreateFromRowMajorFloat9(values) end

---* Constructs from three row vectors.
---@param row0 Vector3
---@param row1 Vector3
---@param row2 Vector3
---@return Matrix3x3
function Matrix3x3:CreateFromRows(row0, row1, row2) end

---* Constructs from an array of 9 floats stored in column-major order.
---@param values number
---@return Matrix3x3
function Matrix3x3:CreateFromColumnMajorFloat9(values) end

---* Constructs from three column vectors.
---@param col0 Vector3
---@param col1 Vector3
---@param col2 Vector3
---@return Matrix3x3
function Matrix3x3:CreateFromColumns(col0, col1, col2) end

---* Sets the matrix from the left 3x3 sub-matrix of a Matrix3x4.
---@param m Matrix3x4
---@return Matrix3x3
function Matrix3x3:CreateFromMatrix3x4(m) end

---* Sets the matrix from the upper 3x3 sub-matrix of a Matrix4x4.
---@param m Matrix4x4
---@return Matrix3x3
function Matrix3x3:CreateFromMatrix4x4(m) end

---* Creates a matrix using the scale and orientation portions of a Transform.
---@param t Transform
---@return Matrix3x3
function Matrix3x3:CreateFromTransform(t) end

---* Sets the matrix from a quaternion.
---@param q Quaternion
---@return Matrix3x3
function Matrix3x3:CreateFromQuaternion(q) end

---* Sets the matrix to be a scale matrix.
---@param scale Vector3
---@return Matrix3x3
function Matrix3x3:CreateScale(scale) end

---* Sets the matrix to be a diagonal matrix.
---@param diagonal Vector3
---@return Matrix3x3
function Matrix3x3:CreateDiagonal(diagonal) end

---* Creates the skew-symmetric cross product matrix, i.e. M*a=p.Cross(a).
---@param p Vector3
---@return Matrix3x3
function Matrix3x3:CreateCrossProduct(p) end

---* Creates a rotation matrix around the X-axis.
---@param angle number
---@return Matrix3x3
function Matrix3x3:CreateRotationX(angle) end

---* Creates a rotation matrix around the Y-axis.
---@param angle number
---@return Matrix3x3
function Matrix3x3:CreateRotationY(angle) end

---* Creates a rotation matrix around the Z-axis.
---@param angle number
---@return Matrix3x3
function Matrix3x3:CreateRotationZ(angle) end
