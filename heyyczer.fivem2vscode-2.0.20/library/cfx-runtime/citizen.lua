---@meta

Citizen = {}

---Creates a new coroutine. All code inside the handler will be executed asynchronously.
---@param handler function The thread handler function.
function Citizen.CreateThread(handler) end

CreateThread = Citizen.CreateThread

---Creates a new coroutine. All code inside the handler will be executed asynchronously.
---@param handler function The thread handler function.
function Citizen.CreateThreadNow(handler) end

---Executes the specified function in other coroutine after the specified amount of mili    seconds.
---
---**Reference:** [Citizen.SetTimeout](https://docs.fivem.net/docs/scripting-reference/runtimes/lua/functions/Citizen.SetTimeout)
---
---@param milliseconds number The amount of milliseconds to pause the current thread.
---@param callback function The function to run after the timer completes.
function Citizen.SetTimeout(milliseconds, callback) end

SetTimeout = Citizen.SetTimeout

---Pauses the current thread for miliseconds amount of time.
---
---**Reference:** [Citizen.Wait](https://docs.fivem.net/docs/scripting-reference/runtimes/lua/functions/Citizen.Wait)
---
---@param milliseconds number The amount of milliseconds to pause the current thread.
function Citizen.Wait(milliseconds) end

Wait = Citizen.Wait

---Outputs the passed message to any trace listeners, including the console output and the log file.
---Does not add a newline by itself, therefore suffix a message with "\n".
---
---**Reference:** [Citizen.Trace](https://docs.fivem.net/docs/scripting-reference/runtimes/lua/functions/Citizen.Trace)
---
---@param message string
function Citizen.Trace(message) end

---Pauses the current thread until a promise has been resolved.
---
---@param promise promise
---@return unknown
function Citizen.Await(promise) end
