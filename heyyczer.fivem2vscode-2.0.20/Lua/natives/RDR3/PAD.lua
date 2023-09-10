---@meta

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param context number | string 
function SetControlContext(control, context) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
function GetCurrentControlContext(control) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param action number | string 
---@param control number 
function IsControlActionValid(action, control) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function IsControlEnabled(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function IsControlPressed(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function IsControlReleased(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function IsControlJustPressed(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function IsControlJustReleased(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function GetControlValue(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function GetControlNormal(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function GetControlUnboundNormal(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
---@param value number 
function SetControlValueNextFrame(control, action, value) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function IsDisabledControlPressed(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function IsDisabledControlJustPressed(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function IsDisabledControlJustReleased(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function GetDisabledControlNormal(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function GetDisabledControlUnboundNormal(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
function GetControlHowLongAgo(control) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
function GetDisabledControlHowLongAgo(control) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
function IsUsingKeyboardAndMouse(control) end

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
---@param control number 
function HaveControlsChanged(control) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param red number 
---@param green number 
---@param blue number 
function SetControlLightEffectColor(control, red, green, blue) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
function ClearControlLightEffect(control) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param red number 
---@param green number 
---@param blue number 
function SetControlLightEffectFlashingColor(control, red, green, blue) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param duration number 
---@param frequency number 
function SetControlShake(control, duration, frequency) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param leftDuration number 
---@param leftFrequency number 
---@param rightDuration number 
---@param rightFrequency number 
function SetControlTriggerShake(control, leftDuration, leftFrequency, rightDuration, rightFrequency) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
function StopControlShake(control) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param uniqueId number 
function SetControlShakeSuppressedId(control, uniqueId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
function ClearControlShakeSuppressedId(control) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function IsLookInverted() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
function SetInputExclusive(control, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
---@param disableRelatedActions boolean 
function DisableControlAction(control, action, disableRelatedActions) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
---@param action number | string 
---@param enableRelatedActions boolean 
function EnableControlAction(control, action, enableRelatedActions) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param control number 
function DisableAllControlActions(control) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param rumbleCurve const char 
---@param p1 number 
function N_undefined(rumbleCurve, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function N_undefined() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function N_undefined() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

