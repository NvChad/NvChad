---@meta

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param value any 
---@param bitIndex number 
function SetPlayerBitAtIndex(value, bitIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param value any 
---@param bitIndex number 
function ClearPlayerBitAtIndex(value, bitIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param value any 
function SetAllPlayerBits(value) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param value any 
function ClearAllPlayerBits(value) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param value any 
---@param bitIndex number 
function IsPlayerBitSetAtIndex(value, bitIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param playerBits number 
function IsAnyPlayerBitSet(playerBits) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param value any 
---@param p1 number 
function GetBlockOfPlayerBits(value, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param value any 
---@param p1 number 
---@param p2 number 
function SetBlockOfPlayerBits(value, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param value any 
function CountPlayerBits(value) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param value any 
function CountParticipantBits(value) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptName const char 
function RequestScript(scriptName) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptName const char 
function SetScriptAsNoLongerNeeded(scriptName) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptName const char 
function HasScriptLoaded(scriptName) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptName const char 
function DoesScriptExist(scriptName) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptHash number | string 
function RequestScriptWithNameHash(scriptHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptHash number | string 
function SetScriptWithNameHashAsNoLongerNeeded(scriptHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptHash number | string 
function HasScriptWithNameHashLoaded(scriptHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptHash number | string 
function DoesScriptWithNameHashExist(scriptHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param threadId number 
function TerminateThread(threadId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param threadId number 
---@param ignoreKilledState boolean 
function IsThreadActive(threadId, ignoreKilledState) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param threadId number 
function DoesThreadExist(threadId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param threadId number 
---@param threadExists boolean 
---@param hasScriptHandler boolean 
function GetThreadExistenceDetails(threadId, threadExists, hasScriptHandler) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param threadId number 
function GetHashOfThread(threadId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function ScriptThreadIteratorReset() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function ScriptThreadIteratorGetNextThreadId() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param threadId number 
function IsBackgroundScript(threadId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetIdOfThisThread() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function TerminateThisThread() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptHash number | string 
function GetNumberOfThreadsRunningTheScriptWithThisHash(scriptHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param threadId number 
function RequestThreadExit(threadId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param nameHash number | string 
function RequestThreadExitForAllThreadsWithThisName(nameHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function IsThreadExitRequested() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param threadId number 
function IsThreadExitRequestedForThreadWithThisId(threadId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetThreadExitReason() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetHashOfThisScriptName() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param eventGroup number 
function GetNumberOfEvents(eventGroup) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param eventGroup number 
---@param eventIndex number 
function GetEventExists(eventGroup, eventIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param eventGroup number 
---@param eventIndex number 
function GetEventAtIndex(eventGroup, eventIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param eventGroup number 
---@param eventIndex number 
---@param eventData any 
---@param eventDataSize number 
function GetEventData(eventGroup, eventIndex, eventData, eventDataSize) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param eventGroup number 
---@param eventIndex number 
---@param p2 boolean 
function SetEventFlagForDeletion(eventGroup, eventIndex, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param eventGroup number 
---@param eventData any 
---@param eventDataSize number 
---@param scriptMetadataIndex number 
---@param playerBits number 
function TriggerScriptEvent(eventGroup, eventData, eventDataSize, scriptMetadataIndex, playerBits) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param eventData any 
---@param eventDataSize number 
---@param scriptMetadataIndex number 
---@param threadId number 
function TriggerScriptEvent2(eventData, eventDataSize, scriptMetadataIndex, threadId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 boolean 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 boolean 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function N_undefined() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function N_undefined() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function ShutdownLoadingScreen() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param toggle boolean 
function SetNoLoadingScreen(toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetNoLoadingScreen() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number | string 
---@param p1 number | string 
---@param p2 number | string 
---@param gamemodeName const char 
---@param title const char 
---@param subtitle const char 
function DisplayLoadingScreens(p0, p1, p2, gamemodeName, title, subtitle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 number 
---@param p3 number 
---@param p4 const char 
---@param p5 const char 
---@param p6 const char 
---@param p7 number 
function N_undefined(p0, p1, p2, p3, p4, p5, p6, p7) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function StopDisplayingMpTransitionLoadingScreens(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function IsLoadingScreenVisible() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param bailCode number 
function BailToLandingPage(bailCode) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param params const char 
function BailWithPassThroughParams(params) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function BgIsExitflagSet() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function BgSetExitflagResponse() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param contextHash number | string 
function BgStartContextHash(contextHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param contextHash number | string 
function BgEndContextHash(contextHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param contextName const char 
function BgStartContext(contextName) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param contextName const char 
function BgEndContext(contextName) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptIndex number 
---@param p1 const char 
function BgDoesLaunchParamExist(scriptIndex, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptIndex number 
---@param p1 const char 
function BgGetLaunchParamValue(scriptIndex, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number | string 
function BgGetScriptIdFromNameHash(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function BgReloadAllBackgroundScripts() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param goalContext number | string 
function ActivateGoalContext(goalContext) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param goalContext number | string 
function DeactivateGoalContext(goalContext) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param goalContext number | string 
function IsGoalContextActive(goalContext) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param netRpcGuid any 
function NetRpcGuidToString(netRpcGuid) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param rpcGuid any 
---@param awardHash number | string 
---@param itemIndex number 
---@param outResultItem any 
function AwardsGetResultItem(rpcGuid, awardHash, itemIndex, outResultItem) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param rpcGuid any 
---@param awardHash number | string 
---@param dataIndex number 
---@param outUnlockData any 
function AwardsGetUnlockClaimData(rpcGuid, awardHash, dataIndex, outUnlockData) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param rpcGuid any 
---@param itemIndex number 
---@param outResultItem any 
function LootGetResultItem(rpcGuid, itemIndex, outResultItem) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param rpcGuid any 
---@param dataIndex number 
---@param outLootData any 
function LootGetLootClaimData(rpcGuid, dataIndex, outLootData) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param index number 
function StoreGlobalBlock(index) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param index number 
function RestoreGlobalBlock(index) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param index number 
function DoesCompressedGlobalBlockBufferExist(index) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param index number 
---@param toggle boolean 
function SetGlobalBlockCanBeAccessed(index, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param index number 
function GetGlobalBlockCanBeAccessed(index) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param toggle boolean 
function SetAllGlobalBlocksHaveBeenLoaded(toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number 
function HaveAllChildScriptsTerminated(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptName const char 
---@param stackSize number 
function StartNewScript(scriptName, stackSize) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptName const char 
---@param args any 
---@param argCount number 
---@param stackSize number 
function StartNewScriptWithArgs(scriptName, args, argCount, stackSize) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptHash number | string 
---@param stackSize number 
function StartNewScriptWithNameHash(scriptHash, stackSize) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param scriptHash number | string 
---@param args any 
---@param argCount number 
---@param stackSize number 
function StartNewScriptWithNameHashAndArgs(scriptHash, args, argCount, stackSize) end

