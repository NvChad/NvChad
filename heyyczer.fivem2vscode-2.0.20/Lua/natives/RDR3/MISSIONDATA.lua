---@meta

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function MissiondataIsValid(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param missionId number | string 
function MissiondataGetCatagory(missionId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param missionId number | string 
function MissiondataGetTextureName(missionId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param missionId number | string 
function MissiondataGetTextureTxd(missionId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param missionId number | string 
function MissiondataWasCompleted(missionId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param missionId number | string 
function MissiondataGetRating(missionId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param missionId number | string 
---@param rating number 
function MissiondataSetMissionRating(missionId, rating) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param missionId number | string 
function MissiondataIsRequiredStoryMission(missionId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param missionId number | string 
---@param replayState number 
function MissiondataSetReplayStateLocked(missionId, replayState) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function MissiondataGetReplayState(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param missionId number | string 
---@param bronzeScore number 
---@param silverScore number 
---@param goldScore number 
function MissiondataSetRatingScores(missionId, bronzeScore, silverScore, goldScore) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param missionId number | string 
---@param score number 
function MissiondataSetHighScore(missionId, score) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param missionId number | string 
function MissiondataGetHighScore(missionId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param category number | string 
function MissiondataIsReplayCategoryLocked(category) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param category number | string 
---@param locked boolean 
function MissiondataSetReplayLockedForCategory(category, locked) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param timecycleName const char 
function MissiondataTimecycleBoxSetModifier(timecycleName) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function MissiondataTimecycleBoxDelete() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function MissiondataTimecycleBoxExists() end

