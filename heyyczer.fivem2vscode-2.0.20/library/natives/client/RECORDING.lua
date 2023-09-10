---@meta
---**`RECORDING` `client` [`0x13B350B8AD0EEE10`](https://docs.fivem.net/natives/?_0x13B350B8AD0EEE10)**
---
function N_0x13b350b8ad0eee10() end

---**`RECORDING` `client` [`0x208784099002BC30`](https://docs.fivem.net/natives/?_0x208784099002BC30)**
---
---```
----This function appears to be deprecated/ unused. Tracing the call internally leads to a _nullsub -
---first one seems to be a string of a mission name, second one seems to be a bool/toggle
---p1 was always 0.
---```
---
---@param missionNameLabel string
---@param p1 any
function N_0x208784099002bc30(missionNameLabel, p1) end

---**`RECORDING` `client` [`0x293220DA1B46CEBC`](https://docs.fivem.net/natives/?_0x293220DA1B46CEBC)**
---
---@param p0 number
---@param p1 number
---@param p2 number
function N_0x293220da1b46cebc(p0, p1, p2) end

---**`RECORDING` `client` [`0x33D47E85B476ABCD`](https://docs.fivem.net/natives/?_0x33D47E85B476ABCD)**
---
---@param p0 boolean
---@return boolean
function N_0x33d47e85b476abcd(p0) end

---**`RECORDING` `client` [`0x4282E08174868BE3`](https://docs.fivem.net/natives/?_0x4282E08174868BE3)**
---
---@return any
function N_0x4282e08174868be3() end

---**`RECORDING` `client` [`0x48621C9FCA3EBD28`](https://docs.fivem.net/natives/?_0x48621C9FCA3EBD28)**
---
---@param p0 number
function N_0x48621c9fca3ebd28(p0) end

---**`RECORDING` `client` [`0x66972397E0757E7A`](https://docs.fivem.net/natives/?_0x66972397E0757E7A)**
---
---**This native does absolutely nothing, just a nullsub**
---
---@param p0 any
---@param p1 any
---@param p2 any
function N_0x66972397e0757e7a(p0, p1, p2) end

---**`RECORDING` `client` [`0x81CBAE94390F9F89`](https://docs.fivem.net/natives/?_0x81CBAE94390F9F89)**
---
function N_0x81cbae94390f9f89() end

---**`RECORDING` `client` [`0xDF4B952F7D381B95`](https://docs.fivem.net/natives/?_0xDF4B952F7D381B95)**
---
---@return any
function N_0xdf4b952f7d381b95() end

---**`RECORDING` `client` [`0xF854439EFBB3B583`](https://docs.fivem.net/natives/?_0xF854439EFBB3B583)**
---
function N_0xf854439efbb3b583() end

---**`RECORDING` `client` [`0xAF66DCEE6609B148`](https://docs.fivem.net/natives/?_0xAF66DCEE6609B148)**
---
---```
---This will disable the ability to make camera changes in R* Editor.
---
---RE*
---```
---
function DisableRockstarEditorCameraChanges() end

---**`RECORDING` `client` [`0x1897CA71995A90B4`](https://docs.fivem.net/natives/?_0x1897CA71995A90B4)**
---
---```
---Checks if you're recording, returns TRUE when you start recording (F1) or turn on action replay (F2)
---mov al, cs:g_bIsRecordingGameplay // byte_141DD0CD0 in b944
---retn
---```
---
---@return boolean
function IsRecording() end

---**`RECORDING` `client` [`0x644546EC5287471B`](https://docs.fivem.net/natives/?_0x644546EC5287471B)**
---
---@return boolean
function SaveRecordingClip() end

---**`RECORDING` `client` [`0xC3AC2FFF9612AC81`](https://docs.fivem.net/natives/?_0xC3AC2FFF9612AC81)**
---
---```
---Starts recording a replay.
---If mode is 0, turns on action replay.
---If mode is 1, starts recording.
---If already recording a replay, does nothing.
---```
---
---@param mode number
function StartRecording(mode) end

---**`RECORDING` `client` [`0x88BB3507ED41A240`](https://docs.fivem.net/natives/?_0x88BB3507ED41A240)**
---
---```
---Stops recording and discards the recorded clip.
---```
---
function StopRecordingAndDiscardClip() end

---**`RECORDING` `client` [`0x071A5197D6AFC8B3`](https://docs.fivem.net/natives/?_0x071A5197D6AFC8B3)**
---
---```
---Stops recording and saves the recorded clip.
---```
---
function StopRecordingAndSaveClip() end

---**`RECORDING` `client` [`0xEB2D525B57F42B40`](https://docs.fivem.net/natives/?_0xEB2D525B57F42B40)**
---
---This disable the recording feature and has to be called every frame.
---
function StopRecordingThisFrame() end
