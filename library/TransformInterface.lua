---@meta

---Interface for TransformBus, which is an EBus that receives requests to translate (arg, position), rotate, and scale an entity in 3D space. It also receives requests to get and set the parent of an entity and get the descendants of an entity.
---@class TransformInterface :Interface
local TransformInterface = {}
TransformBus.Event = TransformInterface

---Returns the entityIds of all descendants of the entity. The descendants are the entity's children, the children's children, and so on. The entityIds are ordered breadth-first.
---@return EntityId ... # A vector that contains the entityIds of the descendants.
function TransformInterface.GetAllDescendants(arg) end

---Returns the entityIds of the entity's immediate children.
---@return EntityId # A vector that contains the entityIds of the entity's immediate children.
function TransformInterface.GetChildren(arg) end

---Returns the entityId of the entity and all its descendants. The descendants are the entity's children, the children's children, and so on. The entityIds are ordered breadth-first and this entity's ID is the first in the list.
---@return EntityId # A vector that contains the entityId of the entity followed by the entity IDs of its descendants.
function TransformInterface.GetEntityAndAllDescendants(arg) end

---Retrieves the entity's local and world transforms.
---@param localTM Transform
---@param worldTM Transform
function TransformInterface.GetLocalAndWorld(arg, localTM, worldTM) end

---Get angles in radian for each principle axis around which the local transform is rotated in the order of x-axis and y-axis and then z-axis.
---@return Vector3 # A value of type Vector3 indicating how much in radian is rotated around each principle axis.
function TransformInterface.GetLocalRotation(arg) end

---Get the quaternion representing the local rotation.
---@return Quaternion # The rotation quaternion in local space.
function TransformInterface.GetLocalRotationQuaternion(arg) end

---Scale modifiers
---@return Vector3 # The scale value in local space.
function TransformInterface.GetLocalScale(arg) end

---Returns the entity's local transform, not including the parent transform.
---@return Transform # A three-dimensional translation vector.
function TransformInterface.GetLocalTM(arg) end

---Gets the entity's local space translation.
---@return Vector3 # A three-dimensional translation vector.
function TransformInterface.GetLocalTranslation(arg) end

---Get the uniform scale value in local space.
---@return float # The uniform scale value in local space.
function TransformInterface.GetLocalUniformScale(arg) end

---Gets the entity's X coordinate in local space.
---@return float # The entity's X coordinate in local space.
function TransformInterface.GetLocalX(arg) end

---Gets the entity's Y coordinate in local space.
---@return float # The entity's Y coordinate in local space.
function TransformInterface.GetLocalY(arg) end

---Gets the entity's Z coordinate in local space.
---@return float # The entity's Z coordinate in local space.
function TransformInterface.GetLocalZ(arg) end

---Returns the transform interface of the parent entity.
---@return TransformInterface # A pointer to the transform interface of the parent. Returns a null pointer if no parent is set or the parent entity is not currently activated.
function TransformInterface.GetParent(arg) end

---Returns the entityId of the entity's parent.
---@return EntityId # The entityId of the parent. The entityId is invalid if the entity does not have a parent with a valid entityId.
function TransformInterface.GetParentId(arg) end

---Get angles in radian for each principle axis around which the world transform is rotated in the order of z-axis and y-axis and then x-axis.
---@return Vector3 # The Euler angles in radian indicating how much is rotated around each principle axis.
function TransformInterface.GetWorldRotation(arg) end

---Get the quaternion representing the world rotation.
---@return Quaternion # The Rotation quaternion in world space.
function TransformInterface.GetWorldRotationQuaternion(arg) end

---Returns the entity's world transform, including the parent transform.
---@return Transform # A reference to a transform that represents the entity's position within the world.
function TransformInterface.GetWorldTM(arg) end

---Gets the entity's world space translation.
---@return Vector3 # A three-dimensional translation vector.
function TransformInterface.GetWorldTranslation(arg) end

---Get the uniform scale value in world space.
---@return float # The uniform scale value in world space.
function TransformInterface.GetWorldUniformScale(arg) end

---Gets the entity's X coordinate in world space.
---@return float # The entity's X coordinate in world space.
function TransformInterface.GetWorldX(arg) end

---Gets the entity's Y coordinate in world space.
---@return float # The entity's Y coordinate in world space.
function TransformInterface.GetWorldY(arg) end

---Gets the entity's Z coordinate in world space.
---@return float # The entity's Z coordinate in world space.
function TransformInterface.GetWorldZ(arg) end

---Returns whether the transform is static. A static transform is unmovable and does not respond to requests that would move it.
---@return boolean # True if the transform is static, false if the transform is movable.
function TransformInterface.IsStaticTransform(arg) end

---Moves the entity within world space.
---@param offset Vector3 A three-dimensional vector that contains the offset to apply to the entity.
function TransformInterface.MoveEntity(arg, offset) end

---Notifies a child change event.
---@param changeType ChildChangeType the type of child event, adding or removing
---@param entityId EntityId the entityId of the child being added or removed
function TransformInterface.NotifyChildChangedEvent(arg, changeType, entityId) end

---Rotate around the local x-axis for a radian angle.
---@param eulerRadianAngle float The angle to rotate around the local x-axis.
function TransformInterface.RotateAroundLocalX(arg, eulerRadianAngle) end

---Rotate around the local y-axis for a radian angle.
---@param eulerRadianAngle float The angle to rotate around the local y-axis.
function TransformInterface.RotateAroundLocalY(arg, eulerRadianAngle) end

---Rotate around the local z-axis for a radian angle.
---@param eulerRadianAngle float The angle to rotate around the local z-axis.
function TransformInterface.RotateAroundLocalZ(arg, eulerRadianAngle) end

---Set the transform to isStatic. This is needed to set a layer as static. A static transform is unmovable and does not respond to requests that would move it.
---@param isStatic boolean
function TransformInterface.SetIsStaticTransform(arg, isStatic) end

---Set the local rotation matrix using the composition of rotations around the principle axes in the order of z-axis first and y-axis and then x-axis.
---@param eulerRadianAngles Vector3 denoting radian angles of the rotations around each principle axis.
function TransformInterface.SetLocalRotation(arg, eulerRadianAngles) end

---Set the local rotation matrix using a quaternion.
---@param quaternion Quaternion A quaternion representing the rotation to set.
function TransformInterface.SetLocalRotationQuaternion(arg, quaternion) end

---Sets the entity's local transform and notifies all listeners.
---@param tm Transform A reference to a transform for positioning the entity relative to its parent entity.
function TransformInterface.SetLocalTM(arg, tm) end

---Sets the entity's local space translation, which represents how to move the entity to a new position relative to its parent.
---@param newPosition Vector3 A three-dimensional translation vector.
function TransformInterface.SetLocalTranslation(arg, newPosition) end

---Sets the entity's X coordinate in local space.
---@param x float A new value for the entity's X coordinate in local space.
function TransformInterface.SetLocalX(arg, x) end

---Sets the entity's Y coordinate in local space.
---@param y float A new value for the entity's Y coordinate in local space.
function TransformInterface.SetLocalY(arg, y) end

---Sets the entity's Z coordinate in local space.
---@param z float A new value for the entity's Z coordinate in local space.
function TransformInterface.SetLocalZ(arg, z) end

---Sets the entity's parent entity and notifies all listeners. The entity's local transform is moved into the parent entity's space to preserve the entity's world transform.
---@param id EntityId The ID of the entity to set as the parent.
function TransformInterface.SetParent(arg, id) end

---Sets the entity's parent entity, moves the transform relative to the parent entity, and notifies all listeners. This function uses the world transform as a local transform and moves the transform relative to the parent entity.
---@param id EntityId The ID of the entity to set as the parent.
function TransformInterface.SetParentRelative(arg, id) end

---Set the world rotation matrix using the composition of rotations around the principle axes in the order of z-axis first and y-axis and then x-axis.
---@param eulerRadianAngles Vector3 A Vector3 denoting radian angles of the rotations around each principle axis.
function TransformInterface.SetWorldRotation(arg, eulerRadianAngles) end

---Sets the entity's rotation in the world in quaternion notation. The origin of the axes is the entity's position in world space.
---@param quaternion Quaternion A quaternion that represents the rotation to use for the entity.
function TransformInterface.SetWorldRotationQuaternion(arg, quaternion) end

---Sets the world transform and notifies all listeners.
---@param tm Transform A reference to a transform for positioning the entity within the world.
function TransformInterface.SetWorldTM(arg, tm) end

---Sets the entity's world space translation, which represents how to move the entity to a new position within the world.
---@param newPosition Vector3 A three-dimensional translation vector.
function TransformInterface.SetWorldTranslation(arg, newPosition) end

---Sets the entity's X coordinate in world space.
---@param x float A new value for the entity's X coordinate in world space.
function TransformInterface.SetWorldX(arg, x) end

---Sets the entity's Y coordinate in world space.
---@param y float A new value for the entity's Y coordinate in world space.
function TransformInterface.SetWorldY(arg, y) end

---Sets the entity's Z coordinate in world space.
---@param z float A new value for the entity's Z coordinate in world space.
function TransformInterface.SetWorldZ(arg, z) end
