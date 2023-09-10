---@meta

Citizen = {}

---Creates a coroutine to handle code asynchronously.
---@async
---@param threadFunction function
function Citizen.CreateThread(threadFunction) end

CreateThread = Citizen.CreateThread

---Creates a coroutine to handle code asynchronously.
---@async
---@param threadFunction function
function Citizen.CreateThreadNow(threadFunction) end

---Executes a coroutine after the given time has passed in milliseconds.
---@async
---@param msec number
---@param callback function
function Citizen.SetTimeout(msec, callback) end

SetTimeout = Citizen.SetTimeout

---Yields a coroutine, pausing execution for the given time in milliseconds
---@param msec number
function Citizen.Wait(msec) end

Wait = Citizen.Wait

---Outputs the message to trace listeners, including the console and log file.
---@param message string
function Citizen.Trace(message) end

---Yields a coroutine until a promise has been resolved.
---@param promise promise
---@return unknown
function Citizen.Await(promise) end