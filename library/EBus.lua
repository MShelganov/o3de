---@meta

---@class EBus
---@field Event Interface
---@field Broadcast Interface ...
EBus = {}

--- Connect to Event Bus
---@param func any
---@return Disconnectable # Disconnect function have to be called
function EBus.Connect(func) end

function EBus.GetCurrentBusId() end

function EBus.CreateHandler() end
