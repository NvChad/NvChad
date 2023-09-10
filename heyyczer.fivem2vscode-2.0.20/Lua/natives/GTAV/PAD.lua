---@meta

---[Control values and meaning](https://docs.fivem.net/docs/game-references/controls/#controls)
---
---Example: `CONTROLS::DISABLE_CONTROL_ACTION(2, 19, true)` disables the switching UI from appearing both when using a keyboard and Xbox 360 controller. Needs to be executed each frame.
---Control group 1 and 0 gives the same results as 2. Same results for all players.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE99B66D079CF6BC)
---@param padIndex number 
---@param control number 
---@param disable boolean 
function DisableControlAction(padIndex, control, disable) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F4B6931816E599B)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
function DisableAllControlActions(padIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7F4724035FDCA1DD)
---@param padIndex number 
function DisableInputGroup(padIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7F4724035FDCA1DD)
---@param padIndex number 
function N_0x7F4724035FDCA1DD(padIndex) end

---```
---padIndex: 
---0 - PLAYER_CONTROL
---1 - Unknown 
---2 - FRONTEND_CONTROL
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA5FFE9B05F199DE7)
---@param padIndex number The control system instance to use.
function EnableAllControlActions(padIndex) end

---```
---Returns profile setting 17.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC859E2374407556)
---@return boolean retval 
function GetAllowMovementWhileZoomed() end

---```
---Returns profile setting 17.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC859E2374407556)
---@return boolean retval 
function N_0xFC859E2374407556() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x80C2FD58D720C801)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param controlGroup number 
---@param p2 boolean 
---@return string retval 
function GetControlGroupInstructionalButton(padIndex, controlGroup, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x80C2FD58D720C801)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param controlGroup number 
---@param p2 boolean 
---@return string retval 
function N_0x80C2FD58D720C801(padIndex, controlGroup, p2) end

---```
---control values and meaning: github.com/crosire/scripthookvdotnet/blob/dev_v3/source/scripting/Control.cs  
---and  
---https://docs.fivem.net/game-references/controls/
---0, 1 and 2 used in the scripts.  
---Control values from the decompiled scripts:   
---0,1,2,3,4,5,6,8,9,10,11,14,15,16,17,19,21,22,24,25,26,30,31,32,33,34,35,36,  
---37,44,46,47,59,60,65,68,69,70,71,72,73,74,75,76,79,80,81,82,86,95,98,99,100  
---,101,114,140,141,143,172,173,174,175,176,177,178,179,180,181,187,188,189,19  
---0,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,217,218,219,2  
---20,221,225,228,229,230,231,234,235,236,237,238,239,240,241,242,245,246,257,  
---261,262,263,264,286,287,288,289,337,338,339,340,341,342,343  
---INPUTGROUP_MOVE  
---INPUTGROUP_LOOK  
---INPUTGROUP_WHEEL  
---INPUTGROUP_CELLPHONE_NAVIGATE  
---INPUTGROUP_CELLPHONE_NAVIGATE_UD  
---INPUTGROUP_CELLPHONE_NAVIGATE_LR  
---INPUTGROUP_FRONTEND_DPAD_ALL  
---INPUTGROUP_FRONTEND_DPAD_UD  
---INPUTGROUP_FRONTEND_DPAD_LR  
---INPUTGROUP_FRONTEND_LSTICK_ALL  
---INPUTGROUP_FRONTEND_RSTICK_ALL  
---INPUTGROUP_FRONTEND_GENERIC_UD  
---INPUTGROUP_FRONTEND_GENERIC_LR  
---INPUTGROUP_FRONTEND_GENERIC_ALL  
---INPUTGROUP_FRONTEND_BUMPERS  
---INPUTGROUP_FRONTEND_TRIGGERS  
---INPUTGROUP_FRONTEND_STICKS  
---INPUTGROUP_SCRIPT_DPAD_ALL  
---INPUTGROUP_SCRIPT_DPAD_UD  
---INPUTGROUP_SCRIPT_DPAD_LR  
---INPUTGROUP_SCRIPT_LSTICK_ALL  
---INPUTGROUP_SCRIPT_RSTICK_ALL  
---INPUTGROUP_SCRIPT_BUMPERS  
---INPUTGROUP_SCRIPT_TRIGGERS  
---INPUTGROUP_WEAPON_WHEEL_CYCLE  
---INPUTGROUP_FLY  
---INPUTGROUP_SUB  
---INPUTGROUP_VEH_MOVE_ALL  
---INPUTGROUP_CURSOR  
---INPUTGROUP_CURSOR_SCROLL  
---INPUTGROUP_SNIPER_ZOOM_SECONDARY  
---INPUTGROUP_VEH_HYDRAULICS_CONTROL  
---Took those in IDA Pro.Not sure in which order they go  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x351220255D64C155)
---@param padIndex number 
---@param control number 
---@param enable boolean 
function EnableControlAction(padIndex, control, enable) end

---```
---Seems to return values between -1 and 1 for controls like gas and steering.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B84D09CEC5209C5)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number retval 
function GetControlUnboundNormal(padIndex, control) end

---```
---Seems to return values between -1 and 1 for controls like gas and steering.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B84D09CEC5209C5)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number retval 
function N_0x5B84D09CEC5209C5(padIndex, control) end

---```
---Returns profile setting 225.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0F70731BACCFBB96)
---@return boolean retval 
function GetIsUsingAlternateDriveby() end

---```
---Returns profile setting 225.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0F70731BACCFBB96)
---@return boolean retval 
function N_0x0F70731BACCFBB96() end

---```
---formerly called _GET_CONTROL_ACTION_NAME incorrectly  
---p2 appears to always be true.  
---p2 is unused variable in function.  
---EG:  
---GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 201, 1) /*INPUT_FRONTEND_ACCEPT (e.g. Enter button)*/  
---GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 202, 1) /*INPUT_FRONTEND_CANCEL (e.g. ESC button)*/  
---GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 51, 1) /*INPUT_CONTEXT (e.g. E button)*/  
---gtaforums.com/topic/819070-c-draw-instructional-buttons-scaleform-movie/#entry1068197378  
---0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0499D7B09FC9B407)
---@param padIndex number 
---@param control number 
---@param p2 boolean 
---@return string retval 
function GetControlInstructionalButton(padIndex, control, p2) end

---```
---formerly called _GET_CONTROL_ACTION_NAME incorrectly  
---p2 appears to always be true.  
---p2 is unused variable in function.  
---EG:  
---GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 201, 1) /*INPUT_FRONTEND_ACCEPT (e.g. Enter button)*/  
---GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 202, 1) /*INPUT_FRONTEND_CANCEL (e.g. ESC button)*/  
---GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 51, 1) /*INPUT_CONTEXT (e.g. E button)*/  
---gtaforums.com/topic/819070-c-draw-instructional-buttons-scaleform-movie/#entry1068197378  
---0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0499D7B09FC9B407)
---@param padIndex number 
---@param control number 
---@param p2 boolean 
---@return string retval 
function N_0x0499D7B09FC9B407(padIndex, control, p2) end

---Returns the local player's targeting mode. See [`SET_PLAYER_TARGETING_MODE`](#\_0xB1906895227793F3).
---[Native Documentation](https://docs.fivem.net/natives/?_0xBB41AFBBBC0A0287)
---@return number retval 
function GetLocalPlayerAimState() end

---```
---Same behavior as GET_LOCAL_PLAYER_AIM_STATE but only used on the PC version.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x59B9A7AF4C95133C)
---@return number retval 
function GetLocalPlayerAimState2() end

---```
---Same behavior as GET_LOCAL_PLAYER_AIM_STATE but only used on the PC version.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x59B9A7AF4C95133C)
---@return number retval 
function N_0x59B9A7AF4C95133C() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC3C9B8D5327B563)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number retval Returns the value of [`GET_CONTROL_VALUE`](#\_0xD95E79E8686D2C27) normalized, i.e. a real number value between -1.0 and 1.0
function GetControlNormal(padIndex, control) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1CEA6BFDF248E5D9)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean retval 
function IsControlEnabled(padIndex, control) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD95E79E8686D2C27)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number retval 
function GetControlValue(padIndex, control) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x11E65974A982637C)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number retval 
function GetDisabledControlNormal(padIndex, control) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4F8A26A890FD62FB)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number retval 
function GetDisabledControlUnboundNormal(padIndex, control) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4F8A26A890FD62FB)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number retval 
function N_0x4F8A26A890FD62FB(padIndex, control) end

---```
---The number of milliseconds since last padIndex registered pressed
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7D22F5592AED8BA)
---@param padIndex number 
---@return number retval 
function GetTimeSinceLastInput(padIndex) end

---```
---The number of milliseconds since last padIndex registered pressed
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7D22F5592AED8BA)
---@param padIndex number 
---@return number retval 
function N_0xD7D22F5592AED8BA(padIndex) end

---Returns whether a control was newly released since the last check.
---[Native Documentation](https://docs.fivem.net/natives/?_0x50F940259D3841E6)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean retval True if the control was recently released.
function IsControlJustReleased(padIndex, control) end

---Returns whether a control is currently *not* pressed.
---[Native Documentation](https://docs.fivem.net/natives/?_0x648EE3E7F38877DD)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean retval True if the control is not pressed.
function IsControlReleased(padIndex, control) end

---Returns whether a control was newly pressed since the last check.
---[Native Documentation](https://docs.fivem.net/natives/?_0x580417101DDB492F)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean retval True if the control was pressed.
function IsControlJustPressed(padIndex, control) end

---Returns whether a control is currently pressed.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF3A21BCD95725A4A)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean retval True if the control was pressed.
function IsControlPressed(padIndex, control) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x305C8DCD79DA8B0F)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean retval 
function IsDisabledControlJustReleased(padIndex, control) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x91AEF906BCA88877)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean retval 
function IsDisabledControlJustPressed(padIndex, control) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE2587F8CBBD87B1D)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean retval 
function IsDisabledControlPressed(padIndex, control) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x77B612531280010D)
---@return boolean retval 
function IsLookInverted() end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x14D29BB12D47F68C)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
function N_0x14D29BB12D47F68C(p0, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB6C4072E9A32E92)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean retval 
function IsDisabledControlReleased(padIndex, control) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB6C4072E9A32E92)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean retval 
function N_0xFB6C4072E9A32E92(padIndex, control) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B73C77D9EB66E24)
---@param p0 boolean 
function N_0x5B73C77D9EB66E24(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA571D46727E2B718)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean retval 
function IsUsingKeyboard(padIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA571D46727E2B718)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean retval 
function GetLastInputMethod(padIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA571D46727E2B718)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean retval 
function IsInputDisabled(padIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0CEFCEA390AAB9B)
---@param p0 any 
function N_0xA0CEFCEA390AAB9B(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCB0360EFEFB2580D)
---@param padIndex number 
function N_0xCB0360EFEFB2580D(padIndex) end

---```
---Used with IS_LOOK_INVERTED() and negates its affect.
-----
---Not sure how the person above got that description, but here's an actual example:
---if (PAD::_GET_LAST_INPUT_METHOD(2)) {
---    if (a_5) {
---        if (PAD::IS_LOOK_INVERTED()) {
---            a_3 *= -1;
---        }
---        if (PAD::_E1615EC03B3BB4FD()) {
---            a_3 *= -1;
---        }
---    }
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE1615EC03B3BB4FD)
---@return boolean retval 
function N_0xE1615EC03B3BB4FD() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x13337B38DB572509)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean retval 
function IsUsingKeyboard2(padIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x13337B38DB572509)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean retval 
function N_0x13337B38DB572509(padIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x13337B38DB572509)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean retval 
function IsInputJustDisabled(padIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF239400E16C23E08)
---@param padIndex number 
---@param p1 number 
function N_0xF239400E16C23E08(padIndex, p1) end

---This is for simulating player input.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE8A25867FBA3B05E)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@param amount number An unbounded normal value.
---@return boolean retval 
function SetControlNormal(padIndex, control, amount) end

---This is for simulating player input.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE8A25867FBA3B05E)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@param amount number An unbounded normal value.
---@return boolean retval 
function N_0xE8A25867FBA3B05E(padIndex, control, amount) end

---Hardcoded to return false.
---[Native Documentation](https://docs.fivem.net/natives/?_0x23F09EADC01449D6)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean retval 
function N_0x23F09EADC01449D6(padIndex) end

---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x25AAA32BDC98F2A3)
---@return any retval 
function N_0x25AAA32BDC98F2A3() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC695459D4D0E219)
---@param x number 
---@param y number 
---@return boolean retval 
function SetCursorLocation(x, y) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC695459D4D0E219)
---@param x number 
---@param y number 
---@return boolean retval 
function N_0xFC695459D4D0E219(x, y) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6CD79468A1E595C6)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean retval 
function N_0x6CD79468A1E595C6(padIndex) end

---```
---p0 always seems to be 0  
---duration in milliseconds   
---frequency should range from about 10 (slow vibration) to 255 (very fast)  
---example:  
---SET_PAD_SHAKE(0, 100, 200);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x48B3886C1358D0D5)
---@param padIndex number 
---@param duration number 
---@param frequency number 
function SetPadShake(padIndex, duration, frequency) end

---```
---S*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x643ED62D5EA3BEBD)
function ResetInputMappingScheme() end

---```
---S*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x643ED62D5EA3BEBD)
function N_0x643ED62D5EA3BEBD() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8290252FFF36ACB5)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param red number 
---@param green number 
---@param blue number 
function SetControlLightEffectColor(padIndex, red, green, blue) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8290252FFF36ACB5)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param red number 
---@param green number 
---@param blue number 
function N_0x8290252FFF36ACB5(padIndex, red, green, blue) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8290252FFF36ACB5)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param red number 
---@param green number 
---@param blue number 
function SetControlGroupColor(padIndex, red, green, blue) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEDE476E5EE29EDB1)
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
function SetInputExclusive(padIndex, control) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x38C16A305E8CDC8D)
---@param padIndex number 
function StopPadShake(padIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x798FDEB5B1575088)
---@param toggle boolean 
function SetPlayerpadShakesWhenControllerDisabled(toggle) end

---```
---Used in carsteal3 script with p0 = "Carsteal4_spycar".
---S*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3D42B92563939375)
---@param name string 
---@return boolean retval 
function SwitchToInputMappingScheme(name) end

---```
---Used in carsteal3 script with p0 = "Carsteal4_spycar".
---S*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3D42B92563939375)
---@param name string 
---@return boolean retval 
function N_0x3D42B92563939375(name) end

---```
---Same as 0x3D42B92563939375
---
---S*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4683149ED1DDE7A1)
---@param name string 
---@return boolean retval 
function SwitchToInputMappingScheme2(name) end

---```
---Same as 0x3D42B92563939375
---
---S*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4683149ED1DDE7A1)
---@param name string 
---@return boolean retval 
function N_0x4683149ED1DDE7A1(name) end

