---@meta

--- The unique identifier for an entity in the game world. This ID is used to reference and manipulate entities.

---@class EntityId
EntityId = {}

--- Returns a string representation of the EntityId.
---@return string
function EntityId:ToString() end

--- Checks if the EntityId is valid (i.e., not null or invalid).
---@return boolean
function EntityId:IsValid() end
