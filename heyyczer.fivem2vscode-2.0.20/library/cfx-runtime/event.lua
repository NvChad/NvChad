---@meta

---@alias EventHandlerData { key: number, name : string }

---@type Player
source = nil

---@overload fun(name: string, method: function)
exports = {}

---Triggers a coroutine when the event is called.
---
---**Documentation** [Listening for events](https://docs.fivem.net/docs/scripting-manual/working-with-events/listening-for-events/)
---
---@param eventName string The name of the event you want to listen to.
---@param handler function The function to run when the event is called.
---@return EventHandlerData
function AddEventHandler(eventName, handler) end

---Removes the provided event handler.
---
---@param data EventHandlerData The return value of AddEventHandler
function RemoveEventHandler(data) end

---Marks the event safe for network use.
---Aka, allows you to trigger the eventName event on the client, from a server side script.
---If you do not provide a callback function use AddEventHandler to listen for the event after registering it.
---
---**Reference:** [RegisterNetEvent](https://docs.fivem.net/docs/scripting-reference/runtimes/lua/functions/RegisterNetEvent/)
---
---@param eventName string A string representing the event name to register.
---@param handler? function The function to run when the event is called.
---@return EventHandlerData?
function RegisterNetEvent(eventName, handler) end

---Triggers the specified event with optional data.
---
---**Reference:** [TriggerEvent](https://docs.fivem.net/docs/scripting-reference/runtimes/lua/functions/TriggerEvent/)
---
---@param eventName string A string representing the event name to trigger.
---@param ... any Any additional data that should be passed along.
function TriggerEvent(eventName, ...) end
