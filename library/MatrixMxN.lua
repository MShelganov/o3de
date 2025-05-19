---@meta

---MatrixMxN represents a matrix with dynamic row and column dimensions, supporting various mathematical operations and submatrix manipulations.
---@class MatrixMxN
MatrixMxN = {}

---Returns the number of rows in the matrix.
---@return number
function MatrixMxN:GetRowCount() end

---Returns the number of columns in the matrix.
---@return number
function MatrixMxN:GetColumnCount() end

---Resizes the matrix to the provided row and column count.
---@param rowCount number The number of rows to resize to
---@param colCount number The number of columns to resize to
function MatrixMxN:Resize(rowCount, colCount) end

---Returns the transpose of the matrix.
---@return MatrixMxN
function MatrixMxN:GetTranspose() end

---Returns a new MatrixMxN containing the absolute value of all elements in the source MatrixMxN.
---@return MatrixMxN
function MatrixMxN:GetAbs() end

---Returns a new MatrixMxN containing the square of all elements in the source MatrixMxN.
---@return MatrixMxN
function MatrixMxN:GetSquare() end

---Quickly zeros all elements of the matrix to create a zero matrix.
function MatrixMxN:SetZero() end

---Returns the number blocks of 4x4 submatrices that span all the rows of the matrix.
---@return number
function MatrixMxN:GetRowGroups() end

---Returns the number blocks of 4x4 submatrices that span all the columns of the matrix.
---@return number
function MatrixMxN:GetColumnGroups() end

---Zeros out unused components of any submatrices.
function MatrixMxN:FixUnusedElements() end

---Gets a specific element in the matrix.
---@param row number Row index
---@param col number Column index
---@return number
function MatrixMxN:GetElement(row, col) end

---Sets a specific element in the matrix.
---@param row number Row index
---@param col number Column index
---@param value number The value to set the element to
function MatrixMxN:SetElement(row, col, value) end

---Returns a new matrix with floored values of all elements.
---@return MatrixMxN
function MatrixMxN:GetFloor() end

---Returns a new matrix with ceiled values of all elements.
---@return MatrixMxN
function MatrixMxN:GetCeil() end

---Returns a new matrix with rounded values of all elements.
---@return MatrixMxN
function MatrixMxN:GetRound() end

---Returns a new matrix containing the minimum values from this matrix and another.
---@param m MatrixMxN The matrix to compare with
---@return MatrixMxN
function MatrixMxN:GetMin(m) end

---Returns a new matrix containing the maximum values from this matrix and another.
---@param m MatrixMxN The matrix to compare with
---@return MatrixMxN
function MatrixMxN:GetMax(m) end

---Clamps the values of this matrix between a min and max matrix.
---@param min MatrixMxN The minimum matrix
---@param max MatrixMxN The maximum matrix
---@return MatrixMxN
function MatrixMxN:GetClamp(min, max) end

---Returns a submatrix block.
---@param rowGroup number The row group index
---@param colGroup number The column group index
---@return Matrix4x4
function MatrixMxN:GetSubmatrix(rowGroup, colGroup) end

---Sets a submatrix block.
---@param rowGroup number The row group index
---@param colGroup number The column group index
---@param subMatrix Matrix4x4 The submatrix to set
function MatrixMxN:SetSubmatrix(rowGroup, colGroup, subMatrix) end

---Returns the internal vector of submatrices.
---@return table<number, Matrix4x4>
function MatrixMxN:GetMatrixElements() end
