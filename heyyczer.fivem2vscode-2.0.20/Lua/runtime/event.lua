---@meta

---@type unknown
source = nil

---@overload fun(name: string, method: function)
exports = {}

---Trigger a coroutine when the event is called.
---[Documentation](https://docs.fivem.net/docs/scripting-manual/working-with-events/listening-for-events/)
---@async
---@param eventName string
---@param eventRoutine async function
---@return { key: number, name : string}
function AddEventHandler(eventName, eventRoutine) end

---@param eventData { key: number, name: string} the return value of AddEventHandler
function RemoveEventHandler(eventData) end

---Registers an event as safe for network, allowing it to be triggered by both the client and server.
---[Documentation](https://docs.fivem.net/docs/scripting-manual/working-with-events/listening-for-events/)
---@param eventName string
---@param cb? async function trigger a coroutine when the event is called.
---@return { key: number, name : string}?
function RegisterNetEvent(eventName, cb) end

---@deprecated
RegisterServerEvent = RegisterNetEvent

---Triggers an event, sending additional parameters as arguments.
---[Documentation](https://docs.fivem.net/docs/scripting-manual/working-with-events/triggering-events/)
---@param eventName string
function TriggerEvent(eventName, ...) end

---Triggers an event for the given playerId, sending additional parameters as arguments.
---[Documentation](https://docs.fivem.net/docs/scripting-manual/working-with-events/triggering-events/)
---@param eventName string
---@param playerId number
function TriggerClientEvent(eventName, playerId, ...) end

---@param eventName string
---@param playerId number
---@param bps number
function TriggerLatentClientEvent(eventName, playerId, bps, ...) end

---Triggers an event on the server, sending additional parameters as arguments.
---[Documentation](https://docs.fivem.net/docs/scripting-manual/working-with-events/triggering-events/)
---@param eventName string
function TriggerServerEvent(eventName, ...) end

---@param eventName string
---@param bps number
function TriggerLatentServerEvent(eventName, bps, ...) end
