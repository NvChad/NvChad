---@meta

LocalPlayer = Player(-1)

---Triggers the specified event on the server with optional data.
---
---**Reference:** [TriggerServerEvent](https://docs.fivem.net/docs/scripting-reference/runtimes/lua/functions/TriggerServerEvent/)
---
---@param eventName string A string representing the event name to call on the server.
---@param ... any Any additional data that should be passed along.
function TriggerServerEvent(eventName, ...) end

---Latent events should be used when needing to transfer a large amount of data from client -> server, as latent events
---do not block the entire network channel, unlike TriggerServerEvent.
---
---Latent events take an extra paramater 'bps' which stands for 'bytes per second', this defines how fast it should
---send data to the server.
---
---**Document:** [Triggering latent server events](https://docs.fivem.net/docs/scripting-manual/working-with-events/triggering-events/#triggering-latent-server-events)
---
---@param eventName string A string representing the event name to call on the server.
---@param bps number How fast it should send data to the client (bytes per second).
---@param ... any Any additional data that should be passed along.
function TriggerLatentServerEvent(eventName, bps, ...) end

---@param type string
---@param callback fun(body: any, resultCallback: function)
function RegisterNuiCallback(type, callback) end

---Sends data to the NUI. (NewUI)
---
---**Reference:** [SendNUIMessage](https://docs.fivem.net/docs/scripting-reference/runtimes/lua/functions/SendNUIMessage/)
---
---@param message table Data that will be sent and received in NUI
function SendNUIMessage(message) end
