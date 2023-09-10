---@meta

---Returns when it is safe to start applying changes to cutscene entities.
---
---Should always be used for applying components.
---
---See [`SET_CUTSCENE_PED_COMPONENT_VARIATION_FROM_PED`](#\_0x2A56C06EBEF2B0D9) and [`REGISTER_ENTITY_FOR_CUTSCENE`](#\_0xE40C1C56DF95C2E8) for an example.
---
---This will be true before the cutscene is considered loaded
---[Native Documentation](https://docs.fivem.net/natives/?_0xB56BBBCC2955D9CB)
---@return boolean retval Whether you can request assets for cutscene entities, like components.
function CanRequestAssetsForCutsceneEntity() end

---Returns when it is safe to start applying changes to cutscene entities.
---
---Should always be used for applying components.
---
---See [`SET_CUTSCENE_PED_COMPONENT_VARIATION_FROM_PED`](#\_0x2A56C06EBEF2B0D9) and [`REGISTER_ENTITY_FOR_CUTSCENE`](#\_0xE40C1C56DF95C2E8) for an example.
---
---This will be true before the cutscene is considered loaded
---[Native Documentation](https://docs.fivem.net/natives/?_0xB56BBBCC2955D9CB)
---@return boolean retval Whether you can request assets for cutscene entities, like components.
function N_0xB56BBBCC2955D9CB() end

---Whether or not it is safe to run functions on the camera,
---as the camera is now no longer being used by the cutscene.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB2CBCD0930DFB420)
---@param p0 boolean Mostly false
---@return boolean retval 
function CanSetExitStateForCamera(p0) end

---```
---modelHash (p1) was always 0 in R* scripts  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x645D0B458D8E17B5)
---@param cutsceneEntName string 
---@param modelHash number | string 
---@return boolean retval 
function CanSetEnterStateForRegisteredEntity(cutsceneEntName, modelHash) end

---Returns if the script can begin interacting with the registered entity. Primarly used for lead-outs of cutscenes.
---Returns on frame after cutscene ends, so you cannot get is while using IsCutsceneActive()
---
---Whether it is safe to start doing scripted actions on the entity, like simulating walking out of a cutscene.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C6A6451C79E4662)
---@param cutsceneEntName string i.e Michael
---@param modelHash number | string Can be 0
---@return boolean retval Whether or not it is safe to begin interacting with the entity
function CanSetExitStateForRegisteredEntity(cutsceneEntName, modelHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0ABC54DE641DC0FC)
---@param cutsceneName string 
---@return number retval 
function GetCutFileNumSections(cutsceneName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0ABC54DE641DC0FC)
---@param cutsceneName string 
---@return number retval 
function N_0x0ABC54DE641DC0FC(cutsceneName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x499EF20C5DB25C59)
---@param cutsceneEntName string 
---@param modelHash number | string 
---@return boolean retval 
function DoesCutsceneEntityExist(cutsceneEntName, modelHash) end

---Gets the total length of the cutscene irrespective of playback list in milliseconds
---To account for sections, see [`_GET_CUTSCENE_END_TIME`]()
---[Native Documentation](https://docs.fivem.net/natives/?_0xEE53B14A19E480D4)
---@return number retval Cutscene total length in milliseconds
function GetCutsceneTotalDuration() end

---Returns the time of the cutscene's end accounting for [`REQUEST_CUTSCENE_WITH_PLAYBACK_LIST`](\_0xC23DE0E91C30B58C)
---
---If a cutscene is laid out with 10 second sections, and section 0 and 1 are enabled then it would be 20000ms.
---
---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x011883f41211432a)
---@return number retval 
function GetCutsceneEndTime() end

---Returns the time of the cutscene's end accounting for [`REQUEST_CUTSCENE_WITH_PLAYBACK_LIST`](\_0xC23DE0E91C30B58C)
---
---If a cutscene is laid out with 10 second sections, and section 0 and 1 are enabled then it would be 20000ms.
---
---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x011883f41211432a)
---@return number retval 
function N_0x011883f41211432a() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x49010A6A396553D8)
---@return number retval 
function GetCutsceneSectionPlaying() end

---Gets the elapsed time of the current cutscene in
---[Native Documentation](https://docs.fivem.net/natives/?_0xE625BEABBAFFDAB9)
---@return number retval Elapsed time in milliseconds
function GetCutsceneTime() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0741A26499654CD)
---@param cutsceneEntName string 
---@param modelHash number | string 
---@return number retval 
function GetEntityIndexOfRegisteredEntity(cutsceneEntName, modelHash) end

---Returns the handle of a cutscene entity, can be ped
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A2E9FDB9A8C62F6)
---@param cutsceneEntName string I.E MP\_1, MP\_4, Michael, Trevor
---@param modelHash number | string Not strictly neccasary, can get 0
---@return number retval Returns entity handle
function GetEntityIndexOfCutsceneEntity(cutsceneEntName, modelHash) end

---```
---Simply checks if the cutscene has loaded and doesn't check via CutSceneManager as opposed to HAS_[THIS]_CUTSCENE_LOADED.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1C996C2A744262E)
---@param cutsceneName string 
---@return boolean retval 
function HasCutFileLoaded(cutsceneName) end

---```
---Simply checks if the cutscene has loaded and doesn't check via CutSceneManager as opposed to HAS_[THIS]_CUTSCENE_LOADED.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1C996C2A744262E)
---@param cutsceneName string 
---@return boolean retval 
function N_0xA1C996C2A744262E(cutsceneName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x708BDD8CD795B043)
---@return boolean retval 
function HasCutsceneCutThisFrame() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x708BDD8CD795B043)
---@return boolean retval 
function N_0x708BDD8CD795B043() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7C0A893088881D57)
---@return boolean retval 
function HasCutsceneFinished() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC59F528E9AB9F339)
---@return boolean retval 
function HasCutsceneLoaded() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x228D3D94F8A11C3C)
---@param cutsceneName string 
---@return boolean retval 
function HasThisCutsceneLoaded(cutsceneName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x991251AFC3981F84)
---@return boolean retval 
function IsCutsceneActive() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x71B74D2AE19338D0)
---@param flag number 
---@return boolean retval 
function IsCutscenePlaybackFlagSet(flag) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x71B74D2AE19338D0)
---@param flag number 
---@return boolean retval 
function N_0x71B74D2AE19338D0(flag) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3C2E180A40F031E)
---@return boolean retval 
function IsCutscenePlaying() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x011883F41211432A)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param p6 number 
function N_0x011883F41211432A(x1, y1, z1, x2, y2, z2, p6) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x20746F7B1032A3C7)
---@param p0 boolean 
---@param p1 boolean 
---@param p2 boolean 
---@param p3 boolean 
function N_0x20746F7B1032A3C7(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x06EE9048FD080382)
---@param p0 boolean 
function N_0x06EE9048FD080382(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2F137B508DE238F2)
---@param p0 boolean 
function N_0x2F137B508DE238F2(p0) end

---```
---This function is hard-coded to always return 1.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4CEBC1ED31E8925E)
---@param cutsceneName string 
---@return boolean retval 
function N_0x4CEBC1ED31E8925E(cutsceneName) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4FCD976DA686580C)
---@param p0 any 
---@return any retval 
function N_0x4FCD976DA686580C(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x583DF8E3D4AFBD98)
---@return number retval 
function N_0x583DF8E3D4AFBD98() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5EDEF0CF8C1DAB3C)
---@return boolean retval 
function N_0x5EDEF0CF8C1DAB3C() end

---```
---SET_VEHICLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7F96F23FA9B73327)
---@param modelHash number | string 
function N_0x7F96F23FA9B73327(modelHash) end

---```
---SET_SCRIPT_*
---Sets the cutscene's owning thread ID.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D9DF6ECA8768583)
---@param threadId number 
function N_0x8D9DF6ECA8768583(threadId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0FE76168A189DDB)
---@return number retval 
function N_0xA0FE76168A189DDB() end

---```
---Toggles a value (bool) for cutscenes.
---SET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC61B86C9F61EB404)
---@param toggle boolean 
function N_0xC61B86C9F61EB404(toggle) end

---This can only be run once [`CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY`](#\_0xB56BBBCC2955D9CB) is true, but can be run before [`HAS_CUTSCENE_LOADED`](#\_0xC59F528E9AB9F339)
---[Native Documentation](https://docs.fivem.net/natives/?_0xE40C1C56DF95C2E8)
---Example: 
---```    -- An example that allows for registering non player_zero peds in place, i.e MP peds.
---    RequestCutscene("family_5_mcs_5_p5", 8)
---    repeat Wait(0) until CanRequestAssetsForCutsceneEntity()
---    SetCutscenePedComponentVariationFromPed("Michael", PlayerPedId(), 0)
---    -- Registering can occur at any point past here before starting the cutscene.
---    RegisterEntityForCutscene(PlayerPedId(), "Michael", 0, 0, 64)
---    repeat Wait(0) until HasCutsceneLoaded()
---    StartCutscene(0)```
---@param cutsceneEntity number Entity to put into the cutscene.
---@param cutsceneEntName string cHandle of cutscene entity, i.e Michael, MP\_1, MP\_4, Lamar
---@param p2 number 
---@param modelHash number | string Not strictly neccasary, often 0 in R\* scripts
---@param p4 number 0 for SP, 64 for MP seemingly
function RegisterEntityForCutscene(cutsceneEntity, cutsceneEntName, p2, modelHash, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE36A98D8AB3D3C66)
---@param p0 boolean 
function N_0xE36A98D8AB3D3C66(p0) end

---Only used twice in armenian1.c
---[Native Documentation](https://docs.fivem.net/natives/?_0x2131046957F31B04)
function RegisterSynchronisedScriptSpeech() end

---```
---Simply unloads the cutscene and doesn't do extra stuff that REMOVE_CUTSCENE does.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD00D76A7DFC9D852)
---@param cutsceneName string 
function RemoveCutFile(cutsceneName) end

---```
---Simply unloads the cutscene and doesn't do extra stuff that REMOVE_CUTSCENE does.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD00D76A7DFC9D852)
---@param cutsceneName string 
function N_0xD00D76A7DFC9D852(cutsceneName) end

---```
---Simply loads the cutscene and doesn't do extra stuff that REQUEST_CUTSCENE does.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x06A3524161C502BA)
---@param cutsceneName string 
function RequestCutFile(cutsceneName) end

---```
---Simply loads the cutscene and doesn't do extra stuff that REQUEST_CUTSCENE does.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x06A3524161C502BA)
---@param cutsceneName string 
function N_0x06A3524161C502BA(cutsceneName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x440AF51A3462B86F)
function RemoveCutscene() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7A86743F475D9E09)
---@param cutsceneName string Case insensitive
---@param flags number Usually 8
function RequestCutscene(cutsceneName, flags) end

---```
---playbackFlags: Which scenes should be played.
---Example: 0x105 (bit 0, 2 and 8 set) will enable scene 1, 3 and 9.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC23DE0E91C30B58C)
---@param cutsceneName string 
---@param playbackFlags number 
---@param flags number Usually 8
function RequestCutsceneWithPlaybackList(cutsceneName, playbackFlags, flags) end

---```
---playbackFlags: Which scenes should be played.
---Example: 0x105 (bit 0, 2 and 8 set) will enable scene 1, 3 and 9.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC23DE0E91C30B58C)
---@param cutsceneName string 
---@param playbackFlags number 
---@param flags number Usually 8
function N_0xC23DE0E91C30B58C(cutsceneName, playbackFlags, flags) end

---```
---playbackFlags: Which scenes should be played.
---Example: 0x105 (bit 0, 2 and 8 set) will enable scene 1, 3 and 9.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC23DE0E91C30B58C)
---@param cutsceneName string 
---@param playbackFlags number 
---@param flags number Usually 8
function RequestCutsceneEx(cutsceneName, playbackFlags, flags) end

---Only used in networked environment with MP cutscenes
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C61C75BEE8184C2)
---@param cutsceneEntName string MP\_1, MP\_2, etc
---@param p1 number Always 0 in R\* scripts
---@param p2 number Always 1 in R\* scripts
function SetCutsceneEntityStreamingFlags(cutsceneEntName, p1, p2) end

---Only used in networked environment with MP cutscenes
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C61C75BEE8184C2)
---@param cutsceneEntName string MP\_1, MP\_2, etc
---@param p1 number Always 0 in R\* scripts
---@param p2 number Always 1 in R\* scripts
function N_0x4C61C75BEE8184C2(cutsceneEntName, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x41FAA8FB2ECE8720)
---@param p0 boolean 
function SetCutsceneCanBeSkipped(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x41FAA8FB2ECE8720)
---@param p0 boolean 
function N_0x41FAA8FB2ECE8720(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8093F23ABACCC7D4)
---@param p0 boolean 
---@param p1 boolean 
---@param p2 boolean 
---@param p3 boolean 
function SetCutsceneFadeValues(p0, p1, p2, p3) end

---Sets cutscene location, used for multiplayer apartments/businesses.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB812B3FD1C01CF27)
---@param x number 
---@param y number 
---@param z number 
---@param heading number 
---@param p4 number Often -1, 0 or 1
function SetCutsceneOrigin(x, y, z, heading, p4) end

---See [`SET_PED_COMPONENT_VARIATION`](#\_0x262B14F48D29DE80)
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA01E7B6DEEFBBC9)
---@param cutsceneEntName string 
---@param componentId number 
---@param drawableId number 
---@param textureId number 
---@param modelHash number | string 
function SetCutscenePedComponentVariation(cutsceneEntName, componentId, drawableId, textureId, modelHash) end

---See [`SET_PED_PROP_INDEX`](\_0x93376B65A266EB5F)
---[Native Documentation](https://docs.fivem.net/natives/?_0x0546524ADE2E9723)
---@param cutsceneEntName string i.e Michael, Trevor, MP\_1, MP\_4
---@param componentId number 
---@param drawableId number 
---@param textureId number 
---@param modelHash number | string 
function SetCutscenePedPropVariation(cutsceneEntName, componentId, drawableId, textureId, modelHash) end

---See [`SET_PED_PROP_INDEX`](\_0x93376B65A266EB5F)
---[Native Documentation](https://docs.fivem.net/natives/?_0x0546524ADE2E9723)
---@param cutsceneEntName string i.e Michael, Trevor, MP\_1, MP\_4
---@param componentId number 
---@param drawableId number 
---@param textureId number 
---@param modelHash number | string 
function N_0x0546524ADE2E9723(cutsceneEntName, componentId, drawableId, textureId, modelHash) end

---```
---flags: Usually 0.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x186D5CB5E7B0FF7B)
---@param flags number 
function StartCutscene(flags) end

---Sets the components for a cutscene ped, this will take precendence over the cutscene's component overrides. This does not require the entity be registered.
---
---See
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A56C06EBEF2B0D9)
---@param cutsceneEntName string cut file cHandle, i.e Michael, Lamar, Franklin, MP\_1-MP\_4 etc
---@param ped number Ped to copy components from
---@param modelHash number | string Not strictly neccasary, can be 0
function SetCutscenePedComponentVariationFromPed(cutsceneEntName, ped, modelHash) end

---Sets the components for a cutscene ped, this will take precendence over the cutscene's component overrides. This does not require the entity be registered.
---
---See
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A56C06EBEF2B0D9)
---@param cutsceneEntName string cut file cHandle, i.e Michael, Lamar, Franklin, MP\_1-MP\_4 etc
---@param ped number Ped to copy components from
---@param modelHash number | string Not strictly neccasary, can be 0
function N_0x2A56C06EBEF2B0D9(cutsceneEntName, ped, modelHash) end

---```
---Only used twice in R* scripts  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9896CE4721BE84BA)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
function SetCutsceneTriggerArea(p0, p1, p2, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7272775B4DC786E)
---@param p0 boolean Always false
function StopCutscene(p0) end

---Similar to [`SET_CUTSCENE_ORIGIN`](\_0xB812B3FD1C01CF27) but without heading and doesn't need [`START_CUTSCENE`](\_0x186D5CB5E7B0FF7B)
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C9ADDA3244A1FBF)
---@param x number 
---@param y number 
---@param z number 
---@param flags number Usually 0
function StartCutsceneAtCoords(x, y, z, flags) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x40C8656EDAEDD569)
---@return boolean retval 
function WasCutsceneSkipped() end

---Stop cutscene instantly, will dump registered entities right where they were when ran.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD220BDD222AC4A1E)
function StopCutsceneImmediately() end

