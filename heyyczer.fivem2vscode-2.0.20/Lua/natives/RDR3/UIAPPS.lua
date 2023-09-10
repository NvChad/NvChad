---@meta

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appNameHash number | string 
function IsUiappActiveByHash(appNameHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function IsAnyUiappActive() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appNameHash number | string 
function IsUiappRunningByHash(appNameHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appName const char 
function IsUiappRunning(appName) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function IsAnyUiappRunning() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appNameHash number | string 
function GetUiappCurrentActivityByHash(appNameHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appNameHash number | string 
function CloseUiappByHash(appNameHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appNameHash number | string 
function CloseUiappByHashImmediate(appNameHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appName const char 
function CloseUiapp(appName) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appName const char 
function CloseUiappImmediate(appName) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function CloseAllUiapps() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function CloseAllUiappsImmediate() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appNameHash number | string 
---@param entryHash number | string 
function LaunchUiappByHashWithEntry(appNameHash, entryHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appNameHash number | string 
function LaunchUiappByHash(appNameHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appName const char 
---@param entry const char 
function LaunchUiappWithEntry(appName, entry) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appNameHash number | string 
---@param entryHash number | string 
function CanLaunchUiappByHashWithEntry(appNameHash, entryHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appNameHash number | string 
function CanLaunchUiappByHash(appNameHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appNameHash number | string 
---@param transitionHash number | string 
function RequestUiappTransitionByHash(appNameHash, transitionHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param appNameHash number | string 
function IsUiappTransitioningByHash(appNameHash) end

