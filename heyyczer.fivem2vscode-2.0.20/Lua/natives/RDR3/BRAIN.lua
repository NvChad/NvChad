---@meta

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptName const char 
---@param modelHash number | string 
---@param p2 number 
---@param activationRange number 
---@param p4 number 
---@param p5 number 
function RegisterObjectScriptBrain(scriptName, modelHash, p2, activationRange, p4, p5) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param entity number 
---@param scriptName const char 
---@param scriptStackSize number 
---@param p3 boolean 
function StartPreloadedScriptBrain(entity, scriptName, scriptStackSize, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param entity number 
---@param scriptName const char 
---@param p2 number 
---@param p3 any 
---@param p4 number 
---@param p5 boolean 
function StartScriptBrain(entity, scriptName, p2, p3, p4, p5) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param entity number 
function RemoveScriptBrainEntity(entity) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetScriptBrainEntity() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param flag number 
function N_undefined(flag) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param flag number 
function N_undefined(flag) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param brainSet number 
function EnableScriptBrainSet(brainSet) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param brainSet number 
function DisableScriptBrainSet(brainSet) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function ReactivateAllObjectBrainsThatAreWaitingTillOutOfRange() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptName const char 
function ReactivateNamedObjectBrainsWaitingTillOutOfRange(scriptName) end

