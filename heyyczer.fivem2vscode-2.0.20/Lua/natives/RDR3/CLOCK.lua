---@meta

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param hour number 
---@param minute number 
---@param second number 
function SetClockTime(hour, minute, second) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param toggle boolean 
---@param unused any 
function PauseClock(toggle, unused) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param toggle boolean 
function PauseClockThisFrame(toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param hour number 
---@param minute number 
---@param second number 
function AdvanceClockTimeTo(hour, minute, second) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param hours number 
---@param minutes number 
---@param seconds number 
function AddToClockTime(hours, minutes, seconds) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetClockHours() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetClockMinutes() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetClockSeconds() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ms number 
function SetMillisecondsPerGameMinute(ms) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetSecondsSinceBaseYear() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param day number 
---@param month number 
---@param year number 
function SetClockDate(day, month, year) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetClockDayOfWeek() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetClockDayOfMonth() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetClockMonth() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetClockYear() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetMillisecondsPerGameMinute() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param year number 
---@param month number 
---@param day number 
---@param hour number 
---@param minute number 
---@param second number 
function GetPosixTime(year, month, day, hour, minute, second) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param outTime any 
function GetPosixTimeStruct(outTime) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inDateTime any 
---@param timeToAdd any 
---@param outDateTime any 
function AddTimeToDateTime(inDateTime, timeToAdd, outDateTime) end

