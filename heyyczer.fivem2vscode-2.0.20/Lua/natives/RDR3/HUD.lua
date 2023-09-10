---@meta

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function EnableReducedMenuTimeScale() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function DisableReducedMenuTimeScale() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param component number | string 
function EnableHudContextThisFrame(component) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param component number | string 
function EnableHudContext(component) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param component number | string 
function DisableHudContext(component) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param text const char 
function BusyspinnerSetText(text) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function BusyspinnerOff() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function BusyspinnerIsOn() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param text const char 
---@param position number 
---@param length number 
function GetCharacterFromAudioConversationFilename(text, position, length) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param labelName const char 
function GetFilenameForAudioConversation(labelName) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function ClearAllHelpMessages() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param textBlock const char 
function TextBlockIsLoaded(textBlock) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param textBlock const char 
function TextBlockIsStreamed(textBlock) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param textBlock const char 
function TextBlockRequest(textBlock) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param textBlock const char 
function TextBlockDelete(textBlock) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param textDatabase const char 
function DoesTextBlockExist(textDatabase) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param label const char 
function DoesTextLabelExist(label) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param label const char 
function GetLabelText2(label) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param text const char 
---@param length number 
function GetTextSubstring2(text, length) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param string const char 
function GetLengthOfLiteralString(string) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param string const char 
function GetLengthOfLiteralStringInBytes(string) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param labelHash number | string 
function GetStringFromHashKey(labelHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function IsRadarPreferenceSwitchedOn() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function IsSubtitlePreferenceSwitchedOn() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param toggle boolean 
function DisplayHud(toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function IsHudHidden() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function IsRadarHidden() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function IsRadarHiddenByScript() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param colorNameHash number | string 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function GetColorFromName(colorNameHash, red, green, blue, alpha) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param text const char 
---@param xPos number 
---@param yPos number 
function DisplayText(text, xPos, yPos) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param r number 
---@param g number 
---@param b number 
---@param a number 
function SetTextColor(r, g, b, a) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param renderId number 
function SetTextRenderId(renderId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param name const char 
---@param p1 boolean 
function RegisterNamedRendertarget(name, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param name const char 
function IsNamedRendertargetRegistered(name) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param name const char 
function ReleaseNamedRendertarget(name) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param modelHash number | string 
function LinkNamedRendertarget(modelHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param name const char 
function GetNamedRendertargetRenderId(name) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param modelHash number | string 
function IsNamedRendertargetLinked(modelHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function HideLoadingOnFadeThisFrame() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function HideHudAndRadarThisFrame() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

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
function N_undefined() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function N_undefined() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 boolean 
---@param name const char 
function SetMissionName(p0, name) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 boolean 
---@param name const char 
function SetMissionNameForUgcMission(p0, name) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
function N_undefined(p0, p1, p2, p3, p4) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param worldX number 
---@param worldY number 
---@param worldZ number 
---@param screenX number 
---@param screenY number 
function GetHudScreenPositionFromWorldPosition(worldX, worldY, worldZ, screenX, screenY) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function HideHudThisFrame() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function DisableFrontendThisFrame() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function N_undefined() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function AllowPauseWhenNotInStateOfPlayThisFrame() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param active boolean 
function SetFrontendActive(active) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function IsPauseMenuActive() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param state boolean 
function ShowPlayerCores(state) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param state boolean 
function ShowHorseCores(state) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function JournalWriteEntry(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function JournalCanWriteEntry(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function JournalGetEntryCount() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function JournalGetEntryAtIndex(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function JournalGetGrimeAtIndex(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function JournalGetEntryInfo(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function JournalGetTextureWithLayout(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function JournalMarkRead(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function JournalClearAllProgress() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function UiRequestScene(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param uiscene number 
function N_undefined(uiscene) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function UiGetSceneUiobject(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function UiMovieviewSetRenderTarget(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inputHash number | string 
---@param labelName const char 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 number 
function UiPromptCreate(inputHash, labelName, p2, p3, p4, p5) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function UiPromptRegisterBegin() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptRegisterEnd(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param priority number 
function UiPromptSetPriority(prompt, priority) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param action number | string 
function UiPromptSetControlAction(prompt, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param action number | string 
function UiPromptSetAllowedAction(prompt, action) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param releaseMode boolean 
function UiPromptSetStandardMode(prompt, releaseMode) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 number 
function UiPromptHasStandardModeCompleted(prompt, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param depletionTimeMs number 
function UiPromptSetPressedTimedMode(prompt, depletionTimeMs) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptHasPressedTimedModeCompleted(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptHasPressedTimedModeFailed(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param holdTimeMs number 
function UiPromptSetHoldMode(prompt, holdTimeMs) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param timedEventHash number | string 
function UiPromptSetStandardizedHoldMode(prompt, timedEventHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptSetHoldIndefinitelyMode(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param autoFillTimeMs number 
---@param holdTimeMs number 
function UiPromptSetHoldAutoFillMode(prompt, autoFillTimeMs, holdTimeMs) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param autoFillTimeMs number 
---@param holdTimeMs number 
function UiPromptSetHoldAutoFillWithDecayMode(prompt, autoFillTimeMs, holdTimeMs) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptHasHoldAutoFillMode(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptHasHoldMode(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptIsHoldModeRunning(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptHasHoldModeCompleted(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param mashes number 
function UiPromptSetMashMode(prompt, mashes) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptSetMashIndefinitelyMode(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param mashes number 
---@param p2 number 
---@param p3 number 
function UiPromptSetMashWithResistanceMode(prompt, mashes, p2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param mashes number 
---@param p2 number 
---@param p3 number 
function UiPromptSetMashWithResistanceCanFailMode(prompt, mashes, p2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param autoFillTimeMs number 
---@param mashes number 
function UiPromptSetMashAutoFillMode(prompt, autoFillTimeMs, mashes) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 any 
function UiPromptSetMashManualMode(prompt, p1, p2, p3, p4) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 any 
function UiPromptSetMashManualCanFailMode(prompt, p1, p2, p3, p4) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptHasManualMashMode(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptHasMashMode(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptHasMashModeCompleted(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptHasMashModeFailed(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptGetMashModeProgress(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param rate number 
function UiPromptSetMashManualModeIncreasePerPress(prompt, rate) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param speed number 
function UiPromptSetMashManualModeDecaySpeed(prompt, speed) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param speed number 
function UiPromptSetMashManualModePressedGrowthSpeed(prompt, speed) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 number 
---@param counterclockwise boolean 
function UiPromptSetRotateMode(prompt, p1, counterclockwise) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 number 
---@param p2 number 
---@param p3 any 
function UiPromptSetTargetMode(prompt, p1, p2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 number 
---@param p2 number 
function UiPromptSetTargetModeTarget(prompt, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param progress number 
function UiPromptSetTargetModeProgress(prompt, progress) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param toggle boolean 
function UiPromptSetBeatMode(prompt, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptWasBeatModePressedInTimeWindow(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 any 
function UiPromptSetBeatModeGrayedOut(prompt, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptRestartModes(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 any 
function UiPromptSetSpinnerSpeed(prompt, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 any 
function UiPromptSetSpinnerPosition(prompt, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param toggle boolean 
function UiPromptSetUrgentPulsingEnabled(prompt, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptGetUrgentPulsingEnabled(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 any 
function UiPromptSetTag(prompt, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param entity number 
function UiPromptGetGroupIdForTargetEntity(entity) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 number 
function UiPromptGetGroupIdForScenarioPoint(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param groupId number 
---@param tabIndex number 
function UiPromptSetGroup(prompt, groupId, tabIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 any 
function UiPromptRemoveGroup(prompt, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param hash number | string 
---@param name const char 
---@param tabAmount number 
---@param tabDefaultIndex number 
---@param p4 number 
---@param prompt prompt 
function UiPromptSetActiveGroupThisFrame(hash, name, tabAmount, tabDefaultIndex, p4, prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param hash number | string 
function UiPromptGetGroupActivePage(hash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param entity number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number | string 
---@param name const char 
---@param p6 number 
function UiPromptSetAmbientGroupThisFrame(entity, p1, p2, p3, p4, name, p6) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param groupId number 
---@param volume volume 
---@param p2 const char 
---@param p3 any 
---@param p4 any 
---@param p5 any 
function N_undefined(groupId, volume, p2, p3, p4, p5) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param hash number | string 
function UiPromptDoesAmbientGroupExist(hash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param prompt prompt 
---@param p2 any 
function UiPromptAddGroupLink(p0, prompt, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param prompt prompt 
function UiPromptAddGroupReturnLink(p0, prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param mode number 
function UiPromptSetTransportMode(prompt, mode) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function UiPromptDisablePromptsThisFrame() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptDelete(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptIsValid(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptIsActive(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param toggle boolean 
function UiPromptSetVisible(prompt, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param toggle boolean 
function UiPromptSetEnabled(prompt, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param text const char 
function UiPromptSetText(prompt, text) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param attribute number 
---@param enabled boolean 
function UiPromptSetAttribute(prompt, attribute, enabled) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param type number 
function UiPromptSetType(prompt, type) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 any 
function N_undefined(prompt, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 any 
function UiPromptSetManualResolved(prompt, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param volume volume 
function UiPromptContextSetVolume(prompt, volume) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param x number 
---@param y number 
---@param z number 
function UiPromptContextSetPoint(prompt, x, y, z) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param radius number 
function UiPromptContextSetRadius(prompt, radius) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptIsPressed(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptIsJustPressed(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptIsJustReleased(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptIsReleased(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number 
function UiPromptEnablePromptTypeThisFrame(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number 
function UiPromptDisablePromptTypeThisFrame(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function UiPromptFilterClear() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ped number 
function UiPromptSetPromptPriorityPreference(ped) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function UiPromptClearPromptPriorityPreference() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
function UiPromptIsEnabled(prompt) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param controlAction number | string 
function UiPromptIsControlActionActive(controlAction) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function UiPromptSetRegisterHorizontalOrientation() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param id number 
function UiPromptClearHorizontalOrientation(id) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param prompt prompt 
---@param p1 any 
function UiPromptSetOrderingAsInputType(prompt, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function N_undefined() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param player number 
---@param username const char 
---@param pointedClanTag boolean 
---@param isRockstarClan boolean 
---@param clanTag const char 
---@param clanFlag number 
function CreateMpGamerTag(player, username, pointedClanTag, isRockstarClan, clanTag, clanFlag) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ped number 
---@param username const char 
---@param pointedClanTag boolean 
---@param isRockstarClan boolean 
---@param clanTag const char 
---@param clanFlag number 
function CreateFakeMpGamerTag(ped, username, pointedClanTag, isRockstarClan, clanTag, clanFlag) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param entity number 
---@param text const char 
function CreateMpGamerTagOnEntity(entity, text) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
function RemoveMpGamerTag(gamerTagId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
function IsMpGamerTagActive(gamerTagId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
---@param entity number 
function IsMpGamerTagActiveOnEntity(gamerTagId, entity) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
---@param visibility number 
function SetMpGamerTagVisibility(gamerTagId, visibility) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
---@param type number | string 
function SetMpGamerTagType(gamerTagId, type) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
---@param colour number | string 
function SetMpGamerTagColour(gamerTagId, colour) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
---@param allow boolean 
function SetMpGamerTagUnkAllowLocalized(gamerTagId, allow) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
---@param string const char 
function SetMpGamerTagName(gamerTagId, string) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
---@param text const char 
function SetMpGamerTagNamePosse(gamerTagId, text) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
---@param string const char 
function SetMpGamerTagBigText(gamerTagId, string) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
---@param icon number | string 
function SetMpGamerTagTopIcon(gamerTagId, icon) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
---@param icon number | string 
function SetMpGamerTagSecondaryIcon(gamerTagId, icon) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
function MpGamerTagEnableReviveTopIcon(gamerTagId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param gamerTagId number 
function MpGamerTagDisableReviveTopIcon(gamerTagId) end

