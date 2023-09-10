---@meta

---@alias HttpMethod 'GET'|'HEAD'|'POST'|'PUT'|'DELETE'|'CONNECT'|'OPTIONS'|'TRACE'|'PATCH'

---@alias HttpHeader table<string, string>

---Triggers an event on the specified client(s), and passes on any additional arguments.
---
---**Reference:** [TriggerClientEvent](https://docs.fivem.net/docs/scripting-reference/runtimes/lua/functions/TriggerClientEvent/)
---
---@param eventName string A string representing the event name to call on the client.
---@param playerId Player The ID of the player to call the event for. Specify -1 for all clients.
---@param ... any Any additional data that should be passed along.
function TriggerClientEvent(eventName, playerId, ...) end

---Latent events should be used when needing to transfer a large amount of data from server -> client, as latent events
---do not block the clients entire network channel, unlike TriggerClientEvent.
---
---This is important for timeout functionality, as sending a large amount of data blocks the network for the client,
---and if blocked for too long, will result in the client timing out.
---
---Latent events take an extra paramater 'bps' which stands for 'bytes per second', this defines how fast it should
---send data to the client.
---
---**Document**: [Triggering latent client events](https://docs.fivem.net/docs/scripting-manual/working-with-events/triggering-events/#triggering-latent-client-events)
---
---@param eventName string A string representing the event name to call on the client.
---@param playerId number The ID of the player to call the event for. Specify -1 for all clients.
---@param bps number How fast it should send data to the client (bytes per second).
---@param ... any Any additional data that should be passed along.
function TriggerLatentClientEvent(eventName, playerId, bps, ...) end

---@deprecated
RegisterServerEvent = RegisterNetEvent

---@deprecated
RconPrint = Citizen.Trace

---**`CFX` `server` [`0xFEE404F9`](https://docs.fivem.net/natives/?_0xFEE404F9)**
---
---@param playerSrc string
---@return string
---@deprecated
function GetPlayerEP(playerSrc) end

---@deprecated
function RconLog() end

---Returns an array containing all of the player’s identifiers.
---
---**Reference:** [GetPlayerIdentifiers](https://docs.fivem.net/docs/scripting-reference/runtimes/lua/functions/GetPlayerIdentifiers/)
---
---@param player Player The ID of the player to get the identifiers from.
---@return string[]
function GetPlayerIdentifiers(player) end

---Returns an array containing all of the player’s tokens.
---
---@param player Player The ID of the player to get the tokens from.
---@return string[]
function GetPlayerTokens(player) end

---Returns a table of all connected players (server ID’s).
---
---@return Player[]
function GetPlayers() end

---Performs a HTTP request using the specified parameters and returns the HTTP response in a callback.
---
---@param url string A string of the URL to request
---@param cb fun(status: integer, body?: string, headers: table<string, string>, errorData?: string) The callback function to call after the request is finished
---@param method? HttpMethod The HTTP method to use. default: `'GET'`
---@param data? string A string of data to send with the request. default: `''`
---@param headers? HttpHeader A table of request headers. default: `{}`
---@param options? table
function PerformHttpRequest(url, cb, method, data, headers, options) end
