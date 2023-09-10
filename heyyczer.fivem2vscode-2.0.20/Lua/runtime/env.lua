---@meta

---Return an array of the player's identifiers.
---@param player number|string
---@return string[]
function GetPlayerIdentifiers(player) end

---Return an array of the player's tokens.
---@param player number|string
---@return string[]
function GetPlayerTokens(player) end

---Performs a HTTP request using the specified parameters and returns the HTTP response in a callback.
---@param url string  a string of the URL to request
---@param cb fun(status: integer, body?: string, headers: table<string, string>, errorData?: string)  the callback function to call after the request is finished
---@param method? string  the HTTP method to use. default: `'GET'`
---@param data? string  a string of data to send with the request. default: `''`
---@param headers? table  a table of request headers. default: `{}`
---@param options? table
function PerformHttpRequest(url, cb, method, data, headers, options) end

---Return an array of all current players.
---@return string[]
function GetPlayers() end

---@class StateBag
---@field set fun(self, key: string, value: any, replicated?: boolean)
---@field [string] any

---@class EntityInterface
---@field state StateBag
---@field __data number

---@param entity number|string
---@return EntityInterface
function Entity(entity) end

---@param player number|string
---@return EntityInterface
function Player(player) end

LocalPlayer = Player(-1)

---@type StateBag
GlobalState = {}

---@param eventName string
---@param callback fun(body: any, resultCallback: function)
function RegisterNUICallback(eventName, callback) end

---@param message any
function SendNUIMessage(message) end
