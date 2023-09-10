---@meta

---```
---This will disable the ability to make camera changes in R* Editor.
---
---RE*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAF66DCEE6609B148)
function DisableRockstarEditorCameraChanges() end

---```
---This will disable the ability to make camera changes in R* Editor.
---
---RE*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAF66DCEE6609B148)
function N_0xAF66DCEE6609B148() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x13B350B8AD0EEE10)
function N_0x13B350B8AD0EEE10() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x293220DA1B46CEBC)
---@param p0 number 
---@param p1 number 
---@param p2 number 
function N_0x293220DA1B46CEBC(p0, p1, p2) end

---```
---Checks if you're recording, returns TRUE when you start recording (F1) or turn on action replay (F2)  
---mov al, cs:g_bIsRecordingGameplay // byte_141DD0CD0 in b944  
---retn  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1897CA71995A90B4)
---@return boolean retval 
function IsRecording() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4282E08174868BE3)
---@return any retval 
function N_0x4282E08174868BE3() end

---```
----This function appears to be deprecated/ unused. Tracing the call internally leads to a _nullsub -  
---first one seems to be a string of a mission name, second one seems to be a bool/toggle  
---p1 was always 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x208784099002BC30)
---@param missionNameLabel string 
---@param p1 any 
function N_0x208784099002BC30(missionNameLabel, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x33D47E85B476ABCD)
---@param p0 boolean 
---@return boolean retval 
function N_0x33D47E85B476ABCD(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x48621C9FCA3EBD28)
---@param p0 number 
function N_0x48621C9FCA3EBD28(p0) end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x66972397E0757E7A)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_0x66972397E0757E7A(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x81CBAE94390F9F89)
function N_0x81CBAE94390F9F89() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF4B952F7D381B95)
---@return any retval 
function N_0xDF4B952F7D381B95() end

---```
---Starts recording a replay.  
---If mode is 0, turns on action replay.  
---If mode is 1, starts recording.  
---If already recording a replay, does nothing.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3AC2FFF9612AC81)
---@param mode number 
function StartRecording(mode) end

---```
---Starts recording a replay.  
---If mode is 0, turns on action replay.  
---If mode is 1, starts recording.  
---If already recording a replay, does nothing.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3AC2FFF9612AC81)
---@param mode number 
function N_0xC3AC2FFF9612AC81(mode) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF854439EFBB3B583)
function N_0xF854439EFBB3B583() end

---```
---Stops recording and saves the recorded clip.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x071A5197D6AFC8B3)
function StopRecordingAndSaveClip() end

---```
---Stops recording and saves the recorded clip.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x071A5197D6AFC8B3)
function StopRecording() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x644546EC5287471B)
---@return boolean retval 
function SaveRecordingClip() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x644546EC5287471B)
---@return boolean retval 
function N_0x644546EC5287471B() end

---This disable the recording feature and has to be called every frame.
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB2D525B57F42B40)
function StopRecordingThisFrame() end

---This disable the recording feature and has to be called every frame.
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB2D525B57F42B40)
function N_0xEB2D525B57F42B40() end

---```
---Stops recording and discards the recorded clip.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x88BB3507ED41A240)
function StopRecordingAndDiscardClip() end

---```
---Stops recording and discards the recorded clip.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x88BB3507ED41A240)
function N_0x88BB3507ED41A240() end

