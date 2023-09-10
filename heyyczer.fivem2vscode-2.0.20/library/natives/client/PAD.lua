---@meta
---**`PAD` `client` [`0x14D29BB12D47F68C`](https://docs.fivem.net/natives/?_0x14D29BB12D47F68C)**
---
---**This native does absolutely nothing, just a nullsub**
---
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function N_0x14d29bb12d47f68c(p0, p1, p2, p3, p4) end

---**`PAD` `client` [`0x23F09EADC01449D6`](https://docs.fivem.net/natives/?_0x23F09EADC01449D6)**
---
---Hardcoded to return false.
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean
function N_0x23f09eadc01449d6(padIndex) end

---**`PAD` `client` [`0x25AAA32BDC98F2A3`](https://docs.fivem.net/natives/?_0x25AAA32BDC98F2A3)**
---
---```
---NativeDB Introduced: v1365
---```
---
---@return any
function N_0x25aaa32bdc98f2a3() end

---**`PAD` `client` [`0x5B73C77D9EB66E24`](https://docs.fivem.net/natives/?_0x5B73C77D9EB66E24)**
---
---@param p0 boolean
function N_0x5b73c77d9eb66e24(p0) end

---**`PAD` `client` [`0x6CD79468A1E595C6`](https://docs.fivem.net/natives/?_0x6CD79468A1E595C6)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean
function N_0x6cd79468a1e595c6(padIndex) end

---**`PAD` `client` [`0xA0CEFCEA390AAB9B`](https://docs.fivem.net/natives/?_0xA0CEFCEA390AAB9B)**
---
---@param p0 any
function N_0xa0cefcea390aab9b(p0) end

---**`PAD` `client` [`0xCB0360EFEFB2580D`](https://docs.fivem.net/natives/?_0xCB0360EFEFB2580D)**
---
---@param padIndex number
function N_0xcb0360efefb2580d(padIndex) end

---**`PAD` `client` [`0xE1615EC03B3BB4FD`](https://docs.fivem.net/natives/?_0xE1615EC03B3BB4FD)**
---
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
---
---@return boolean
function N_0xe1615ec03b3bb4fd() end

---**`PAD` `client` [`0xF239400E16C23E08`](https://docs.fivem.net/natives/?_0xF239400E16C23E08)**
---
---@param padIndex number
---@param p1 number
function N_0xf239400e16c23e08(padIndex, p1) end

---**`PAD` `client` [`0x5F4B6931816E599B`](https://docs.fivem.net/natives/?_0x5F4B6931816E599B)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
function DisableAllControlActions(padIndex) end

---**`PAD` `client` [`0xFE99B66D079CF6BC`](https://docs.fivem.net/natives/?_0xFE99B66D079CF6BC)**
---
---[Control values and meaning](https://docs.fivem.net/docs/game-references/controls/#controls)
---
---Example: `CONTROLS::DISABLE_CONTROL_ACTION(2, 19, true)` disables the switching UI from appearing both when using a keyboard and Xbox 360 controller. Needs to be executed each frame.
---Control group 1 and 0 gives the same results as 2. Same results for all players.
---
---@param padIndex number
---@param control number
---@param disable boolean
function DisableControlAction(padIndex, control, disable) end

---**`PAD` `client` [`0xA5FFE9B05F199DE7`](https://docs.fivem.net/natives/?_0xA5FFE9B05F199DE7)**
---
---```
---padIndex:
---0 - PLAYER_CONTROL
---1 - Unknown
---2 - FRONTEND_CONTROL
---```
---
---@param padIndex number The control system instance to use.
function EnableAllControlActions(padIndex) end

---**`PAD` `client` [`0x351220255D64C155`](https://docs.fivem.net/natives/?_0x351220255D64C155)**
---
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
---
---@param padIndex number
---@param control number
---@param enable boolean
function EnableControlAction(padIndex, control, enable) end

---**`PAD` `client` [`0xFC859E2374407556`](https://docs.fivem.net/natives/?_0xFC859E2374407556)**
---
---```
---Returns profile setting 17.
---```
---
---@return boolean
function GetAllowMovementWhileZoomed() end

---**`PAD` `client` [`0x80C2FD58D720C801`](https://docs.fivem.net/natives/?_0x80C2FD58D720C801)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param controlGroup number
---@param p2 boolean
---@return string
function GetControlGroupInstructionalButton(padIndex, controlGroup, p2) end

---**`PAD` `client` [`0x0499D7B09FC9B407`](https://docs.fivem.net/natives/?_0x0499D7B09FC9B407)**
---
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
---
---@param padIndex number
---@param control number
---@param p2 boolean
---@return string
function GetControlInstructionalButton(padIndex, control, p2) end

---**`PAD` `client` [`0xEC3C9B8D5327B563`](https://docs.fivem.net/natives/?_0xEC3C9B8D5327B563)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number # Returns the value of [`GET_CONTROL_VALUE`](#\_0xD95E79E8686D2C27) normalized, i.e. a real number value between -1.0 and 1.0
function GetControlNormal(padIndex, control) end

---**`PAD` `client` [`0x5B84D09CEC5209C5`](https://docs.fivem.net/natives/?_0x5B84D09CEC5209C5)**
---
---```
---Seems to return values between -1 and 1 for controls like gas and steering.
---```
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number
function GetControlUnboundNormal(padIndex, control) end

---**`PAD` `client` [`0xD95E79E8686D2C27`](https://docs.fivem.net/natives/?_0xD95E79E8686D2C27)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number
function GetControlValue(padIndex, control) end

---**`PAD` `client` [`0x11E65974A982637C`](https://docs.fivem.net/natives/?_0x11E65974A982637C)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number
function GetDisabledControlNormal(padIndex, control) end

---**`PAD` `client` [`0x4F8A26A890FD62FB`](https://docs.fivem.net/natives/?_0x4F8A26A890FD62FB)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number
function GetDisabledControlUnboundNormal(padIndex, control) end

---**`PAD` `client` [`0x0F70731BACCFBB96`](https://docs.fivem.net/natives/?_0x0F70731BACCFBB96)**
---
---```
---Returns profile setting 225.
---```
---
---@return boolean
function GetIsUsingAlternateDriveby() end

---**`PAD` `client` [`0xBB41AFBBBC0A0287`](https://docs.fivem.net/natives/?_0xBB41AFBBBC0A0287)**
---
---Returns the local player's targeting mode. See [`SET_PLAYER_TARGETING_MODE`](#\_0xB1906895227793F3).
---
---@return number
function GetLocalPlayerAimState() end

---**`PAD` `client` [`0x1CEA6BFDF248E5D9`](https://docs.fivem.net/natives/?_0x1CEA6BFDF248E5D9)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean
function IsControlEnabled(padIndex, control) end

---**`PAD` `client` [`0x580417101DDB492F`](https://docs.fivem.net/natives/?_0x580417101DDB492F)**
---
---Returns whether a control was newly pressed since the last check.
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean # True if the control was pressed.
function IsControlJustPressed(padIndex, control) end

---**`PAD` `client` [`0x50F940259D3841E6`](https://docs.fivem.net/natives/?_0x50F940259D3841E6)**
---
---Returns whether a control was newly released since the last check.
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean # True if the control was recently released.
function IsControlJustReleased(padIndex, control) end

---**`PAD` `client` [`0xF3A21BCD95725A4A`](https://docs.fivem.net/natives/?_0xF3A21BCD95725A4A)**
---
---Returns whether a control is currently pressed.
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean # True if the control was pressed.
function IsControlPressed(padIndex, control) end

---**`PAD` `client` [`0x648EE3E7F38877DD`](https://docs.fivem.net/natives/?_0x648EE3E7F38877DD)**
---
---Returns whether a control is currently *not* pressed.
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean # True if the control is not pressed.
function IsControlReleased(padIndex, control) end

---**`PAD` `client` [`0x91AEF906BCA88877`](https://docs.fivem.net/natives/?_0x91AEF906BCA88877)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean
function IsDisabledControlJustPressed(padIndex, control) end

---**`PAD` `client` [`0x305C8DCD79DA8B0F`](https://docs.fivem.net/natives/?_0x305C8DCD79DA8B0F)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean
function IsDisabledControlJustReleased(padIndex, control) end

---**`PAD` `client` [`0xE2587F8CBBD87B1D`](https://docs.fivem.net/natives/?_0xE2587F8CBBD87B1D)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean
function IsDisabledControlPressed(padIndex, control) end

---**`PAD` `client` [`0x77B612531280010D`](https://docs.fivem.net/natives/?_0x77B612531280010D)**
---
---@return boolean
function IsLookInverted() end

---**`PAD` `client` [`0xEDE476E5EE29EDB1`](https://docs.fivem.net/natives/?_0xEDE476E5EE29EDB1)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
function SetInputExclusive(padIndex, control) end

---**`PAD` `client` [`0x48B3886C1358D0D5`](https://docs.fivem.net/natives/?_0x48B3886C1358D0D5)**
---
---```
---p0 always seems to be 0
---duration in milliseconds
---frequency should range from about 10 (slow vibration) to 255 (very fast)
---example:
---SET_PAD_SHAKE(0, 100, 200);
---```
---
---@param padIndex number
---@param duration number
---@param frequency number
function SetPadShake(padIndex, duration, frequency) end

---**`PAD` `client` [`0x798FDEB5B1575088`](https://docs.fivem.net/natives/?_0x798FDEB5B1575088)**
---
---@param toggle boolean
function SetPlayerpadShakesWhenControllerDisabled(toggle) end

---**`PAD` `client` [`0x38C16A305E8CDC8D`](https://docs.fivem.net/natives/?_0x38C16A305E8CDC8D)**
---
---@param padIndex number
function StopPadShake(padIndex) end

---**`PAD` `client` [`0x7F4724035FDCA1DD`](https://docs.fivem.net/natives/?_0x7F4724035FDCA1DD)**
---
---@param padIndex number
function DisableInputGroup(padIndex) end

---**`PAD` `client` [`0x59B9A7AF4C95133C`](https://docs.fivem.net/natives/?_0x59B9A7AF4C95133C)**
---
---```
---Same behavior as GET_LOCAL_PLAYER_AIM_STATE but only used on the PC version.
---```
---
---@return number
function GetLocalPlayerAimState_2() end

---**`PAD` `client` [`0xD7D22F5592AED8BA`](https://docs.fivem.net/natives/?_0xD7D22F5592AED8BA)**
---
---```
---The number of milliseconds since last padIndex registered pressed
---```
---
---@param padIndex number
---@return number
function GetTimeSinceLastInput(padIndex) end

---**`PAD` `client` [`0xFB6C4072E9A32E92`](https://docs.fivem.net/natives/?_0xFB6C4072E9A32E92)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean
function IsDisabledControlReleased(padIndex, control) end

---**`PAD` `client` [`0xA571D46727E2B718`](https://docs.fivem.net/natives/?_0xA571D46727E2B718)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean
function IsUsingKeyboard(padIndex) end

---**`PAD` `client` [`0x13337B38DB572509`](https://docs.fivem.net/natives/?_0x13337B38DB572509)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean
function IsUsingKeyboard_2(padIndex) end

---**`PAD` `client` [`0x643ED62D5EA3BEBD`](https://docs.fivem.net/natives/?_0x643ED62D5EA3BEBD)**
---
---```
---S*
---```
---
function ResetInputMappingScheme() end

---**`PAD` `client` [`0x8290252FFF36ACB5`](https://docs.fivem.net/natives/?_0x8290252FFF36ACB5)**
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param red number
---@param green number
---@param blue number
function SetControlLightEffectColor(padIndex, red, green, blue) end

---**`PAD` `client` [`0xE8A25867FBA3B05E`](https://docs.fivem.net/natives/?_0xE8A25867FBA3B05E)**
---
---This is for simulating player input.
---
---@param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@param amount number An unbounded normal value.
---@return boolean
function SetControlNormal(padIndex, control, amount) end

---**`PAD` `client` [`0xFC695459D4D0E219`](https://docs.fivem.net/natives/?_0xFC695459D4D0E219)**
---
---@param x number
---@param y number
---@return boolean
function SetCursorLocation(x, y) end

---**`PAD` `client` [`0x3D42B92563939375`](https://docs.fivem.net/natives/?_0x3D42B92563939375)**
---
---```
---Used in carsteal3 script with p0 = "Carsteal4_spycar".
---S*
---```
---
---@param name string
---@return boolean
function SwitchToInputMappingScheme(name) end

---**`PAD` `client` [`0x4683149ED1DDE7A1`](https://docs.fivem.net/natives/?_0x4683149ED1DDE7A1)**
---
---```
---Same as 0x3D42B92563939375
---
---S*
---```
---
---@param name string
---@return boolean
function SwitchToInputMappingScheme_2(name) end
