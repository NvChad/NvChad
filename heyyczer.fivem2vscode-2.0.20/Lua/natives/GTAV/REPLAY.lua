---@meta

---Please note that you will need to call DO_SCREEN_FADE_IN after exiting the Rockstar Editor when you call this.
---
---```
---NativeDB Added Parameter 1: int p0
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x49DA8145672B2725)
function ActivateRockstarEditor() end

---Please note that you will need to call DO_SCREEN_FADE_IN after exiting the Rockstar Editor when you call this.
---
---```
---NativeDB Added Parameter 1: int p0
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x49DA8145672B2725)
function N_0x49DA8145672B2725() end

---```
---Returns a bool if interior rendering is disabled, if yes, all "normal" rendered interiors are invisible  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x95AB8B5C992C7B58)
---@return boolean retval 
function IsInteriorRenderingDisabled() end

---**This native does absolutely nothing, just a nullsub**
---
---```
---Something to do with phone cameras.  
---startup.c4:  
---void sub_2a3d() {  
---    UNK2::_7E2BD3EF6C205F09("No_Filter", 1);  
---    UNK2::_7E2BD3EF6C205F09("phone_cam1", 1);  
---    UNK2::_7E2BD3EF6C205F09("phone_cam2", 1);  
---    UNK2::_7E2BD3EF6C205F09("phone_cam3", 1);  
---    UNK2::_7E2BD3EF6C205F09("phone_cam4", 1);  
---    UNK2::_7E2BD3EF6C205F09("phone_cam5", 1);  
---    UNK2::_7E2BD3EF6C205F09("phone_cam6", 1);  
---    UNK2::_7E2BD3EF6C205F09("phone_cam7", 1);  
---    UNK2::_7E2BD3EF6C205F09("phone_cam9", 1);  
---    UNK2::_7E2BD3EF6C205F09("phone_cam12", 0);  
---}  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7E2BD3EF6C205F09)
---@param p0 string 
---@param p1 boolean 
function N_0x7E2BD3EF6C205F09(p0, p1) end

---```
---Disables some other rendering (internal)  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5AD3932DAEB1E5D3)
function N_0x5AD3932DAEB1E5D3() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE058175F8EAFE79A)
---@param p0 boolean 
function N_0xE058175F8EAFE79A(p0) end

---```
---Sets (almost, not sure) all Rockstar Editor values (bIsRecording etc) to 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3353D13F09307691)
function ResetEditorValues() end

---```
---Sets (almost, not sure) all Rockstar Editor values (bIsRecording etc) to 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3353D13F09307691)
function N_0x3353D13F09307691() end

