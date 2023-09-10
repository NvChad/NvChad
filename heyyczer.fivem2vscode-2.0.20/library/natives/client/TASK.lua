---@meta
---**`TASK` `client` [`0x0FFB3C758E8C07B9`](https://docs.fivem.net/natives/?_0x0FFB3C758E8C07B9)**
---
---Doesn't actually return anything.
---
---```
---NativeDB Introduced: v2060
---```
---
---@param ped Ped
---@param p1 boolean
---@return any
function N_0x0ffb3c758e8c07b9(ped, p1) end

---**`TASK` `client` [`0x1F351CF1C6475734`](https://docs.fivem.net/natives/?_0x1F351CF1C6475734)**
---
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
---@param p7 any
---@param p8 any
---@param p9 any
function N_0x1f351cf1c6475734(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

---**`TASK` `client` [`0x29682E2CCF21E9B5`](https://docs.fivem.net/natives/?_0x29682E2CCF21E9B5)**
---
---```
---NativeDB Introduced: v1868
---```
---
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
---@param p7 any
---@param p8 any
---@param p9 any
---@param p10 any
---@param p11 any
---@param p12 any
---@param p13 any
function N_0x29682e2ccf21e9b5(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13) end

---**`TASK` `client` [`0x3E38E28A1D80DDF6`](https://docs.fivem.net/natives/?_0x3E38E28A1D80DDF6)**
---
---```
---IS_*
---```
---
---@param ped Ped
---@return boolean
function N_0x3e38e28a1d80ddf6(ped) end

---**`TASK` `client` [`0x53DDC75BC3AC0A90`](https://docs.fivem.net/natives/?_0x53DDC75BC3AC0A90)**
---
---Related to [`_CLEAR_VEHICLE_TASKS`](#\_0xDBBC7A2432524127) and requires more research (e.g., \_CLEAR_VEHICLE_SECONDARY_TASKS).
---
---```
---CLEAR_*
---
---NativeDB Introduced: v1290
---```
---
---@param vehicle Vehicle The vehicle to have tasks cleared
function N_0x53ddc75bc3ac0a90(vehicle) end

---**`TASK` `client` [`0x6100B3CEFD43452E`](https://docs.fivem.net/natives/?_0x6100B3CEFD43452E)**
---
---```
---NativeDB Introduced: v2189
---```
---
---@param p0 any
function N_0x6100b3cefd43452e(p0) end

---**`TASK` `client` [`0x8423541E8B3A1589`](https://docs.fivem.net/natives/?_0x8423541E8B3A1589)**
---
---```
---NativeDB Introduced: v1493
---```
---
---@param p0 any
---@param p1 any
---@param p2 any
function N_0x8423541e8b3a1589(p0, p1, p2) end

---**`TASK` `client` [`0x8634CEF2522D987B`](https://docs.fivem.net/natives/?_0x8634CEF2522D987B)**
---
---```
---NativeDB Introduced: v1493
---```
---
---@param ped Ped
---@param p1 string
---@param value number
function N_0x8634cef2522d987b(ped, p1, value) end

---**`TASK` `client` [`0x9D252648778160DF`](https://docs.fivem.net/natives/?_0x9D252648778160DF)**
---
---```
---NativeDB Introduced: v1868
---```
---
---@param p0 any
---@return any
function N_0x9d252648778160df(p0) end

---**`TASK` `client` [`0xAB13A5565480B6D9`](https://docs.fivem.net/natives/?_0xAB13A5565480B6D9)**
---
---```
---Used only once in the scripts (fm_mission_controller) like so:
---
---TASK::_0xAB13A5565480B6D9(iLocal_3160, "Cutting");
---
---SET_*
---```
---
---@param ped Ped
---@param p1 string
---@return any
function N_0xab13a5565480b6d9(ped, p1) end

---**`TASK` `client` [`0xFA83CA6776038F64`](https://docs.fivem.net/natives/?_0xFA83CA6776038F64)**
---
---```
---REMOVE_*
---
---NativeDB Introduced: v1493
---```
---
---@param x number
---@param y number
---@param z number
function N_0xfa83ca6776038f64(x, y, z) end

---**`TASK` `client` [`0x45C597097DD7CB81`](https://docs.fivem.net/natives/?_0x45C597097DD7CB81)**
---
---@param playerX number
---@param playerY number
---@param playerZ number
---@param radiusX number
---@param radiusY number
---@param radiusZ number
---@param p6 boolean
---@param p7 boolean
---@param p8 boolean
---@param p9 boolean
function AddCoverBlockingArea(playerX, playerY, playerZ, radiusX, radiusY, radiusZ, p6, p7, p8, p9) end

---**`TASK` `client` [`0xD5C12A75C7B9497F`](https://docs.fivem.net/natives/?_0xD5C12A75C7B9497F)**
---
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 any
---@param p5 any
---@param p6 any
---@param p7 boolean
---@return ScrHandle
function AddCoverPoint(p0, p1, p2, p3, p4, p5, p6, p7) end

---**`TASK` `client` [`0x23083260DEC3A551`](https://docs.fivem.net/natives/?_0x23083260DEC3A551)**
---
---@param p0 any
---@param p1 any
function AddPatrolRouteLink(p0, p1) end

---**`TASK` `client` [`0x8EDF950167586B7C`](https://docs.fivem.net/natives/?_0x8EDF950167586B7C)**
---
---```
---Example:
---TASK::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", -193.4915, -2378.864990234375, 10.9719, -193.4915, -2378.864990234375, 10.9719, 3000);
---p0 is between 0 and 4 in the scripts.
---p1 is "WORLD_HUMAN_GUARD_STAND" or "StandGuard".
---p2, p3 and p4 is only one parameter sometimes in the scripts. Most likely a Vector3 hence p2, p3 and p4 are coordinates.
---Examples:
---TASK::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_739[7/*3*/], 0.0, 0.0, 0.0, 0);
---TASK::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_B0[17/*44*/]._f3, l_B0[17/*44*/]._f3, 2000);
---p5, p6 and p7 are for example set to: 1599.0406494140625, 2713.392578125, 44.4309.
---p8 is an int, often random set to for example: MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000).
---```
---
---@param p0 number
---@param p1 string
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param p8 number
function AddPatrolRouteNode(p0, p1, x1, y1, z1, x2, y2, z2, p8) end

---**`TASK` `client` [`0x5CF0D8F9BBA0DD75`](https://docs.fivem.net/natives/?_0x5CF0D8F9BBA0DD75)**
---
---```
---x, y, z: offset in world coords from some entity.
---```
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
function AddVehicleSubtaskAttackCoord(ped, x, y, z) end

---**`TASK` `client` [`0x85F462BADC7DA47F`](https://docs.fivem.net/natives/?_0x85F462BADC7DA47F)**
---
---@param ped Ped
---@param ped2 Ped
function AddVehicleSubtaskAttackPed(ped, ped2) end

---**`TASK` `client` [`0x60F9A4393A21F741`](https://docs.fivem.net/natives/?_0x60F9A4393A21F741)**
---
---@param route string
---@return boolean
function AssistedMovementIsRouteLoaded(route) end

---**`TASK` `client` [`0x13945951E16EF912`](https://docs.fivem.net/natives/?_0x13945951E16EF912)**
---
---@param dist number
function AssistedMovementOverrideLoadDistanceThisFrame(dist) end

---**`TASK` `client` [`0x3548536485DD792B`](https://docs.fivem.net/natives/?_0x3548536485DD792B)**
---
---@param route string
function AssistedMovementRemoveRoute(route) end

---**`TASK` `client` [`0x817268968605947A`](https://docs.fivem.net/natives/?_0x817268968605947A)**
---
---```
---Routes: "1_FIBStairs", "2_FIBStairs", "3_FIBStairs", "4_FIBStairs", "5_FIBStairs", "5_TowardsFire", "6a_FIBStairs", "7_FIBStairs", "8_FIBStairs", "Aprtmnt_1", "AssAfterLift", "ATM_1", "coroner2", "coroner_stairs", "f5_jimmy1", "fame1", "family5b", "family5c", "Family5d", "family5d", "FIB_Glass1", "FIB_Glass2", "FIB_Glass3", "finaBroute1A", "finalb1st", "finalB1sta", "finalbround", "finalbroute2", "Hairdresser1", "jan_foyet_ft_door", "Jo_3", "Lemar1", "Lemar2", "mansion_1", "Mansion_1", "pols_1", "pols_2", "pols_3", "pols_4", "pols_5", "pols_6", "pols_7", "pols_8", "Pro_S1", "Pro_S1a", "Pro_S2", "Towards_case", "trev_steps", "tunrs1", "tunrs2", "tunrs3", "Wave01457s"
---```
---
---@param route string
function AssistedMovementRequestRoute(route) end

---**`TASK` `client` [`0xD5002D78B7162E1B`](https://docs.fivem.net/natives/?_0xD5002D78B7162E1B)**
---
---@param route string
---@param props number
function AssistedMovementSetRouteProperties(route, props) end

---**`TASK` `client` [`0xC35B5CDB2824CF69`](https://docs.fivem.net/natives/?_0xC35B5CDB2824CF69)**
---
---@param ped Ped
function ClearDrivebyTaskUnderneathDrivingTask(ped) end

---**`TASK` `client` [`0x176CECF6F920D707`](https://docs.fivem.net/natives/?_0x176CECF6F920D707)**
---
---@param ped Ped
function ClearPedSecondaryTask(ped) end

---**`TASK` `client` [`0xE1EF3C1216AFF2CD`](https://docs.fivem.net/natives/?_0xE1EF3C1216AFF2CD)**
---
---Clear a ped's tasks. Stop animations and other tasks created by scripts.
---
---@param ped Ped Ped id. Use PlayerPedId() for your own character.
function ClearPedTasks(ped) end

---**`TASK` `client` [`0xAAA34F8A7CB32098`](https://docs.fivem.net/natives/?_0xAAA34F8A7CB32098)**
---
---Immediately stops the pedestrian from whatever it's doing. The difference between this and [CLEAR_PED_TASKS](#\_0xE1EF3C1216AFF2CD) is that this one teleports the ped but does not change the position of the ped.
---
---@param ped Ped Ped id.
function ClearPedTasksImmediately(ped) end

---**`TASK` `client` [`0x3841422E9C488D8C`](https://docs.fivem.net/natives/?_0x3841422E9C488D8C)**
---
---@param taskSequenceId number
function ClearSequenceTask(taskSequenceId) end

---**`TASK` `client` [`0xB043ECA801B8CBC1`](https://docs.fivem.net/natives/?_0xB043ECA801B8CBC1)**
---
function ClosePatrolRoute() end

---**`TASK` `client` [`0x39E72BC99E6360CB`](https://docs.fivem.net/natives/?_0x39E72BC99E6360CB)**
---
---@param taskSequenceId number
function CloseSequenceTask(taskSequenceId) end

---**`TASK` `client` [`0xDCFE42068FE0135A`](https://docs.fivem.net/natives/?_0xDCFE42068FE0135A)**
---
---```
---Forces the ped to use the mounted weapon.
---Returns false if task is not possible.
---```
---
---@param ped Ped
---@return boolean
function ControlMountedWeapon(ped) end

---**`TASK` `client` [`0xAF8A443CCC8018DC`](https://docs.fivem.net/natives/?_0xAF8A443CCC8018DC)**
---
function CreatePatrolRoute() end

---**`TASK` `client` [`0x7767DD9D65E91319`](https://docs.fivem.net/natives/?_0x7767DD9D65E91319)**
---
---```
---From the b617d scripts:
---TASK::DELETE_PATROL_ROUTE("miss_merc0");
---TASK::DELETE_PATROL_ROUTE("miss_merc1");
---TASK::DELETE_PATROL_ROUTE("miss_merc2");
---TASK::DELETE_PATROL_ROUTE("miss_dock");
---```
---
---@param patrolRoute string
function DeletePatrolRoute(patrolRoute) end

---**`TASK` `client` [`0x5A59271FFADD33C1`](https://docs.fivem.net/natives/?_0x5A59271FFADD33C1)**
---
---@param x number
---@param y number
---@param z number
---@param radius number
---@param b boolean
---@return boolean
function DoesScenarioExistInArea(x, y, z, radius, b) end

---**`TASK` `client` [`0xF9034C136C9E00D3`](https://docs.fivem.net/natives/?_0xF9034C136C9E00D3)**
---
---```
---Occurrences in the b617d scripts:
---"ARMY_GUARD",
---"ARMY_HELI",
---"Cinema_Downtown",
---"Cinema_Morningwood",
---"Cinema_Textile",
---"City_Banks",
---"Countryside_Banks",
---"DEALERSHIP",
---"GRAPESEED_PLANES",
---"KORTZ_SECURITY",
---"LOST_BIKERS",
---"LSA_Planes",
---"LSA_Planes",
---"MP_POLICE",
---"Observatory_Bikers",
---"POLICE_POUND1",
---"POLICE_POUND2",
---"POLICE_POUND3",
---"POLICE_POUND4",
---"POLICE_POUND5"
---"QUARRY",
---"SANDY_PLANES",
---"SCRAP_SECURITY",
---"SEW_MACHINE",
---"SOLOMON_GATE",
---"Triathlon_1_Start",
---"Triathlon_2_Start",
---"Triathlon_3_Start"
---Sometimes used with IS_SCENARIO_GROUP_ENABLED:
---if (TASK::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") && (!TASK::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {
---else if (TASK::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {
---```
---
---@param scenarioGroup string
---@return boolean
function DoesScenarioGroupExist(scenarioGroup) end

---**`TASK` `client` [`0x0A9D0C2A3BBC86C1`](https://docs.fivem.net/natives/?_0x0A9D0C2A3BBC86C1)**
---
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 string
---@param p4 number
---@param p5 boolean
---@return boolean
function DoesScenarioOfTypeExistInArea(p0, p1, p2, p3, p4, p5) end

---**`TASK` `client` [`0xA98B8E3C088E5A31`](https://docs.fivem.net/natives/?_0xA98B8E3C088E5A31)**
---
---```
---Checks if there is a cover point at position
---```
---
---@param x number
---@param y number
---@param z number
---@return boolean
function DoesScriptedCoverPointExistAtCoords(x, y, z) end

---**`TASK` `client` [`0x534AEBA6E5ED4CAB`](https://docs.fivem.net/natives/?_0x534AEBA6E5ED4CAB)**
---
---```
---https://alloc8or.re/gta5/doc/enums/eVehicleMissionType.txt
---```
---
---@param vehicle Vehicle
---@return number
function GetActiveVehicleMissionType(vehicle) end

---**`TASK` `client` [`0x3A8CADC7D37AACC5`](https://docs.fivem.net/natives/?_0x3A8CADC7D37AACC5)**
---
---@param p0 number
---@return string
function GetClipSetForScriptedGunTask(p0) end

---**`TASK` `client` [`0xB0760331C7AA4155`](https://docs.fivem.net/natives/?_0xB0760331C7AA4155)**
---
---```
---Task index enum: https://alloc8or.re/gta5/doc/enums/eTaskTypeIndex.txt
---```
---
---@param ped Ped
---@param taskIndex number
---@return boolean
function GetIsTaskActive(ped, taskIndex) end

---**`TASK` `client` [`0xCB4E8BE8A0063C5D`](https://docs.fivem.net/natives/?_0xCB4E8BE8A0063C5D)**
---
---@param name string
---@return boolean
function GetIsWaypointRecordingLoaded(name) end

---**`TASK` `client` [`0xC6F5C0BCDC74D62D`](https://docs.fivem.net/natives/?_0xC6F5C0BCDC74D62D)**
---
---```
---Looks like the last parameter returns true if the path has been calculated, while the first returns the remaining distance to the end of the path.
---Return value of native is the same as GET_NAVMESH_ROUTE_RESULT
---Looks like the native returns an int for the path's state:
---1 - ???
---2 - ???
---3 - Finished Generating
---```
---
---@param ped Ped
---@param distanceRemaining number
---@param isPathReady boolean
---@return number, number, boolean
function GetNavmeshRouteDistanceRemaining(ped, distanceRemaining, isPathReady) end

---**`TASK` `client` [`0x632E831F382A0FA8`](https://docs.fivem.net/natives/?_0x632E831F382A0FA8)**
---
---See [`GET_NAVMESH_ROUTE_DISTANCE_REMAINING`](#\_0xC6F5C0BCDC74D62D) for more details.
---
---@param ped Ped
---@return number
function GetNavmeshRouteResult(ped) end

---**`TASK` `client` [`0x8517D4A6CA8513ED`](https://docs.fivem.net/natives/?_0x8517D4A6CA8513ED)**
---
---@param ped Ped
---@return number
function GetPedDesiredMoveBlendRatio(ped) end

---**`TASK` `client` [`0xE6A877C64CAF1BC5`](https://docs.fivem.net/natives/?_0xE6A877C64CAF1BC5)**
---
---@param p0 any
---@return number
function GetPedWaypointDistance(p0) end

---**`TASK` `client` [`0x2720AAA75001E094`](https://docs.fivem.net/natives/?_0x2720AAA75001E094)**
---
---@param ped Ped
---@return number
function GetPedWaypointProgress(ped) end

---**`TASK` `client` [`0x47619ABE8B268C60`](https://docs.fivem.net/natives/?_0x47619ABE8B268C60)**
---
---@param ped Ped
---@return number
function GetPhoneGestureAnimCurrentTime(ped) end

---**`TASK` `client` [`0x1EE0F68A7C25DEC6`](https://docs.fivem.net/natives/?_0x1EE0F68A7C25DEC6)**
---
---@param ped Ped
---@return number
function GetPhoneGestureAnimTotalTime(ped) end

---**`TASK` `client` [`0x594A1028FC2A3E85`](https://docs.fivem.net/natives/?_0x594A1028FC2A3E85)**
---
---@param coverpoint ScrHandle
---@return vector3
function GetScriptedCoverPointCoords(coverpoint) end

---**`TASK` `client` [`0x77F1BEB8863288D5`](https://docs.fivem.net/natives/?_0x77F1BEB8863288D5)**
---
---Gets the status of a spesifed script-assigned task on the given ped. The return value is always an int between 0-7.
---
---You can set taskHash to `SCRIPT_TASK_ANY` to check if any task is active, it will return 1 for active, 3 for no active.
---`SCRIPT_TASK_INVALID` can be similarly used, it returns 7 if there are any active task, and 3 if there are no active tasks.
---
---taskHash list: https://alloc8or.re/gta5/doc/enums/eScriptTaskHash.txt
---
---Returns:
---
---```
---0 = WAITING_TO_START_TASK
---1 = PERFORMING_TASK
---2 = DORMANT_TASK
---3 = VACANT_STAGE
---7 = TASK_FINISHED_OR_NOT_FOUND
---```
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local coords = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 6.0, 0.0)
---TaskGoStraightToCoord(playerPed, coords, 1.0, 5000, GetEntityHeading(playerPed), 0.15)
---
---Citizen.CreateThread(function()
---    while true do
---        local taskStatus = GetScriptTaskStatus(PlayerPedId(), "SCRIPT_TASK_GO_STRAIGHT_TO_COORD")
---        print(taskStatus)
---        if taskStatus == 7 then print("task was finished!"); break end
---        Citizen.Wait(250)
---    end
---end)
---```
---
---@param ped Ped The ped the task is running on
---@param taskHash Hash The hash of the task
---@return number # The status of the script-assigned task.
function GetScriptTaskStatus(ped, taskHash) end

---**`TASK` `client` [`0x00A9010CFE1E3533`](https://docs.fivem.net/natives/?_0x00A9010CFE1E3533)**
---
---```
---returned values:
---0 to 7 = task that's currently in progress, 0 meaning the first one.
----1 no task sequence in progress.
---```
---
---@param ped Ped
---@return number
function GetSequenceProgress(ped) end

---**`TASK` `client` [`0xB4F47213DF45A64C`](https://docs.fivem.net/natives/?_0xB4F47213DF45A64C)**
---
---@param ped Ped
---@param eventName string
---@return boolean
function GetTaskMoveNetworkEvent(ped, eventName) end

---**`TASK` `client` [`0xA7FFBA498E4AAF67`](https://docs.fivem.net/natives/?_0xA7FFBA498E4AAF67)**
---
---@param ped Ped
---@param signalName string
---@return boolean
function GetTaskMoveNetworkSignalBool(ped, signalName) end

---**`TASK` `client` [`0x717E4D1F2048376D`](https://docs.fivem.net/natives/?_0x717E4D1F2048376D)**
---
---@param ped Ped
---@return string
function GetTaskMoveNetworkState(ped) end

---**`TASK` `client` [`0x9824CFF8FC66E159`](https://docs.fivem.net/natives/?_0x9824CFF8FC66E159)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleWaypointProgress(vehicle) end

---**`TASK` `client` [`0x416B62AC8B9E5BBD`](https://docs.fivem.net/natives/?_0x416B62AC8B9E5BBD)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleWaypointTargetPoint(vehicle) end

---**`TASK` `client` [`0xA5B769058763E497`](https://docs.fivem.net/natives/?_0xA5B769058763E497)**
---
---@param p0 string
---@param p1 number
---@return number
function GetWaypointDistanceAlongRoute(p0, p1) end

---**`TASK` `client` [`0x8785E6E40C7A8818`](https://docs.fivem.net/natives/?_0x8785E6E40C7A8818)**
---
---@param ped Ped
---@return boolean
function IsDrivebyTaskUnderneathDrivingTask(ped) end

---**`TASK` `client` [`0xA320EF046186FA3B`](https://docs.fivem.net/natives/?_0xA320EF046186FA3B)**
---
---@param ped Ped
---@return boolean
function IsMountedWeaponTaskUnderneathDrivingTask(ped) end

---**`TASK` `client` [`0xD4D8636C0199A939`](https://docs.fivem.net/natives/?_0xD4D8636C0199A939)**
---
---@param ped Ped
---@return boolean
function IsMoveBlendRatioRunning(ped) end

---**`TASK` `client` [`0x24A2AD74FA9814E2`](https://docs.fivem.net/natives/?_0x24A2AD74FA9814E2)**
---
---@param ped Ped
---@return boolean
function IsMoveBlendRatioSprinting(ped) end

---**`TASK` `client` [`0x349CE7B56DAFD95C`](https://docs.fivem.net/natives/?_0x349CE7B56DAFD95C)**
---
---@param ped Ped
---@return boolean
function IsMoveBlendRatioStill(ped) end

---**`TASK` `client` [`0xF133BBBE91E1691F`](https://docs.fivem.net/natives/?_0xF133BBBE91E1691F)**
---
---@param ped Ped
---@return boolean
function IsMoveBlendRatioWalking(ped) end

---**`TASK` `client` [`0xAA135F9482C82CC3`](https://docs.fivem.net/natives/?_0xAA135F9482C82CC3)**
---
---When passing a ped parameter, the function returns true if the ped is currently in any scenario.
---
---@param ped Ped
---@return boolean
function IsPedActiveInScenario(ped) end

---**`TASK` `client` [`0x90A09F3A45FED688`](https://docs.fivem.net/natives/?_0x90A09F3A45FED688)**
---
---```
---This function is hard-coded to always return 0.
---```
---
---@param ped Ped
---@return boolean
function IsPedBeingArrested(ped) end

---**`TASK` `client` [`0x74E559B3BC910685`](https://docs.fivem.net/natives/?_0x74E559B3BC910685)**
---
---@param ped Ped
---@return boolean
function IsPedCuffed(ped) end

---**`TASK` `client` [`0x2A74E1D5F2F00EEC`](https://docs.fivem.net/natives/?_0x2A74E1D5F2F00EEC)**
---
---@param ped Ped
---@return boolean
function IsPedGettingUp(ped) end

---**`TASK` `client` [`0xDEB6D52126E7D640`](https://docs.fivem.net/natives/?_0xDEB6D52126E7D640)**
---
---This native checks if a ped is on the ground, in pain from a (gunshot) wound.
---
---@param ped Ped
---@return boolean # Returns `true` if the ped is in [writhe](https://dictionary.cambridge.org/dictionary/english/writhe), `false` otherwise.
function IsPedInWrithe(ped) end

---**`TASK` `client` [`0x621C6E4729388E41`](https://docs.fivem.net/natives/?_0x621C6E4729388E41)**
---
---@param ped Ped
---@return boolean
function IsPedPlayingBaseClipInScenario(ped) end

---**`TASK` `client` [`0xC5286FFC176F28A2`](https://docs.fivem.net/natives/?_0xC5286FFC176F28A2)**
---
---@param ped Ped
---@return boolean
function IsPedRunning(ped) end

---**`TASK` `client` [`0x3DC52677769B4AE0`](https://docs.fivem.net/natives/?_0x3DC52677769B4AE0)**
---
---@param ped Ped
---@return boolean
function IsPedRunningArrestTask(ped) end

---**`TASK` `client` [`0x57E457CD2C0FC168`](https://docs.fivem.net/natives/?_0x57E457CD2C0FC168)**
---
---@param ped Ped
---@return boolean
function IsPedSprinting(ped) end

---**`TASK` `client` [`0xAC29253EEF8F0180`](https://docs.fivem.net/natives/?_0xAC29253EEF8F0180)**
---
---@param ped Ped
---@return boolean
function IsPedStill(ped) end

---**`TASK` `client` [`0xE45B7F222DE47E09`](https://docs.fivem.net/natives/?_0xE45B7F222DE47E09)**
---
---```
---What's strafing?
---```
---
---@param ped Ped
---@return boolean
function IsPedStrafing(ped) end

---**`TASK` `client` [`0xDE4C184B2B9B071A`](https://docs.fivem.net/natives/?_0xDE4C184B2B9B071A)**
---
---@param ped Ped
---@return boolean
function IsPedWalking(ped) end

---**`TASK` `client` [`0xB8EBB1E9D3588C10`](https://docs.fivem.net/natives/?_0xB8EBB1E9D3588C10)**
---
---@param ped Ped
---@return boolean
function IsPlayingPhoneGestureAnim(ped) end

---**`TASK` `client` [`0x367A09DED4E05B99`](https://docs.fivem.net/natives/?_0x367A09DED4E05B99)**
---
---```
--- Occurrences in the b617d scripts:
--- "ARMY_GUARD",
--- "ARMY_HELI",
--- "BLIMP",
--- "Cinema_Downtown",
--- "Cinema_Morningwood",
--- "Cinema_Textile",
--- "City_Banks",
--- "Countryside_Banks",
--- "DEALERSHIP",
--- "KORTZ_SECURITY",
--- "LSA_Planes",
--- "MP_POLICE",
--- "Observatory_Bikers",
--- "POLICE_POUND1",
--- "POLICE_POUND2",
--- "POLICE_POUND3",
--- "POLICE_POUND4",
--- "POLICE_POUND5",
--- "Rampage1",
--- "SANDY_PLANES",
--- "SCRAP_SECURITY",
--- "SEW_MACHINE",
--- "SOLOMON_GATE"
---Sometimes used with DOES_SCENARIO_GROUP_EXIST:
---if (TASK::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") &&   (!TASK::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {
---else if (TASK::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {
---```
---
---@param scenarioGroup string
---@return boolean
function IsScenarioGroupEnabled(scenarioGroup) end

---**`TASK` `client` [`0x788756D73AC2E07C`](https://docs.fivem.net/natives/?_0x788756D73AC2E07C)**
---
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 boolean
---@return boolean
function IsScenarioOccupied(p0, p1, p2, p3, p4) end

---**`TASK` `client` [`0x3A815DB3EA088722`](https://docs.fivem.net/natives/?_0x3A815DB3EA088722)**
---
---```
---Occurrences in the b617d scripts:
---"PROP_HUMAN_SEAT_CHAIR",
---"WORLD_HUMAN_DRINKING",
---"WORLD_HUMAN_HANG_OUT_STREET",
---"WORLD_HUMAN_SMOKING",
---"WORLD_MOUNTAIN_LION_WANDER",
---"WORLD_HUMAN_DRINKING"
---Sometimes used together with MISC::IS_STRING_NULL_OR_EMPTY in the scripts.
---scenarioType could be the same as scenarioName, used in for example TASK::TASK_START_SCENARIO_AT_POSITION.
---```
---
---@param scenarioType string
---@return boolean
function IsScenarioTypeEnabled(scenarioType) end

---**`TASK` `client` [`0x921CE12C489C4C41`](https://docs.fivem.net/natives/?_0x921CE12C489C4C41)**
---
---@param ped Ped
---@return boolean
function IsTaskMoveNetworkActive(ped) end

---**`TASK` `client` [`0x30ED88D5E0C56A37`](https://docs.fivem.net/natives/?_0x30ED88D5E0C56A37)**
---
---@param ped Ped
---@return boolean
function IsTaskMoveNetworkReadyForTransition(ped) end

---**`TASK` `client` [`0xE03B3F2D3DC59B64`](https://docs.fivem.net/natives/?_0xE03B3F2D3DC59B64)**
---
---@param p0 any
---@return boolean
function IsWaypointPlaybackGoingOnForPed(p0) end

---**`TASK` `client` [`0xF5134943EA29868C`](https://docs.fivem.net/natives/?_0xF5134943EA29868C)**
---
---@param vehicle Vehicle
---@return boolean
function IsWaypointPlaybackGoingOnForVehicle(vehicle) end

---**`TASK` `client` [`0xA36BFB5EE89F3D82`](https://docs.fivem.net/natives/?_0xA36BFB5EE89F3D82)**
---
---```
---The patrol route name must starts with "miss_" to be properly created.
---
--- patrolRoutes found in the b617d scripts:
--- "miss_Ass0",
--- "miss_Ass1",
--- "miss_Ass2",
--- "miss_Ass3",
--- "miss_Ass4",
--- "miss_Ass5",
--- "miss_Ass6",
--- "MISS_PATROL_6",
--- "MISS_PATROL_7",
--- "MISS_PATROL_8",
--- "MISS_PATROL_9",
--- "miss_Tower_01",
--- "miss_Tower_02",
--- "miss_Tower_03",
--- "miss_Tower_04",
--- "miss_Tower_05",
--- "miss_Tower_06",
--- "miss_Tower_07",
--- "miss_Tower_08",
--- "miss_Tower_10"
---```
---
---@param patrolRoute string
function OpenPatrolRoute(patrolRoute) end

---**`TASK` `client` [`0xE8854A4326B9E12B`](https://docs.fivem.net/natives/?_0xE8854A4326B9E12B)**
---
---@param taskSequenceId number
function OpenSequenceTask(taskSequenceId) end

---**`TASK` `client` [`0x295E3CCEC879CCD7`](https://docs.fivem.net/natives/?_0x295E3CCEC879CCD7)**
---
---@param ped Ped
---@return boolean
function PedHasUseScenarioTask(ped) end

---**`TASK` `client` [`0x748040460F8DF5DC`](https://docs.fivem.net/natives/?_0x748040460F8DF5DC)**
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---
---@param ped Ped
---@param animDict string
---@param animName string
function PlayAnimOnRunningScenario(ped, animDict, animName) end

---**`TASK` `client` [`0x77A1EEC547E7FCF1`](https://docs.fivem.net/natives/?_0x77A1EEC547E7FCF1)**
---
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 number
---@param p5 number
function PlayEntityScriptedAnim(p0, p1, p2, p3, p4, p5) end

---**`TASK` `client` [`0xDB6708C0B46F56D8`](https://docs.fivem.net/natives/?_0xDB6708C0B46F56D8)**
---
function RemoveAllCoverBlockingAreas() end

---**`TASK` `client` [`0xAE287C923D891715`](https://docs.fivem.net/natives/?_0xAE287C923D891715)**
---
---@param coverpoint ScrHandle
function RemoveCoverPoint(coverpoint) end

---**`TASK` `client` [`0xFF1B8B4AA1C25DC8`](https://docs.fivem.net/natives/?_0xFF1B8B4AA1C25DC8)**
---
---@param name string
function RemoveWaypointRecording(name) end

---**`TASK` `client` [`0xD01015C7316AE176`](https://docs.fivem.net/natives/?_0xD01015C7316AE176)**
---
---@param ped Ped A ped handle.
---@param name string The name of the target request state in the move network file.
---@return boolean # Technically a `void`. Scripts treat this as a boolean, but the game never sets the result, so it will return the ped handle instead.
function RequestTaskMoveNetworkStateTransition(ped, name) end

---**`TASK` `client` [`0x9EEFB62EB27B5792`](https://docs.fivem.net/natives/?_0x9EEFB62EB27B5792)**
---
---```
---For a full list of the points, see here: goo.gl/wIH0vn
---Max number of loaded recordings is 32.
---```
---
---@param name string
function RequestWaypointRecording(name) end

---**`TASK` `client` [`0x4202BBCB8684563D`](https://docs.fivem.net/natives/?_0x4202BBCB8684563D)**
---
function ResetExclusiveScenarioGroup() end

---**`TASK` `client` [`0xDD902D0349AFAD3A`](https://docs.fivem.net/natives/?_0xDD902D0349AFAD3A)**
---
function ResetScenarioGroupsEnabled() end

---**`TASK` `client` [`0x0D40EE2A7F2B2D6D`](https://docs.fivem.net/natives/?_0x0D40EE2A7F2B2D6D)**
---
function ResetScenarioTypesEnabled() end

---**`TASK` `client` [`0x70033C3CC29A1FF4`](https://docs.fivem.net/natives/?_0x70033C3CC29A1FF4)**
---
---@param p0 any
---@param p1 boolean
---@param p2 any
---@param p3 boolean
function SetAnimLooped(p0, p1, p2, p3) end

---**`TASK` `client` [`0xDDF3CB5A0A4C0B49`](https://docs.fivem.net/natives/?_0xDDF3CB5A0A4C0B49)**
---
---```
---NativeDB Introduced: v2372
---```
---
---@param entity Entity
---@param p1 number
---@param p2 any
---@param p3 boolean
function SetAnimPhase(entity, p1, p2, p3) end

---**`TASK` `client` [`0x032D49C5E359C847`](https://docs.fivem.net/natives/?_0x032D49C5E359C847)**
---
---@param p0 any
---@param p1 number
---@param p2 any
---@param p3 boolean
function SetAnimRate(p0, p1, p2, p3) end

---**`TASK` `client` [`0x207F1A47C0342F48`](https://docs.fivem.net/natives/?_0x207F1A47C0342F48)**
---
---@param p0 any
---@param p1 number
---@param p2 any
---@param p3 any
---@param p4 boolean
function SetAnimWeight(p0, p1, p2, p3, p4) end

---**`TASK` `client` [`0xE5B302114D8162EE`](https://docs.fivem.net/natives/?_0xE5B302114D8162EE)**
---
---```
---For p1 & p2 (Ped, Vehicle). I could be wrong, as the only time this native is called in scripts is once and both are 0, but I assume this native will work like SET_MOUNTED_WEAPON_TARGET in which has the same exact amount of parameters and the 1st and last 3 parameters are right and the same for both natives.
---```
---
---@param shootingPed Ped
---@param targetPed Ped
---@param targetVehicle Vehicle
---@param x number
---@param y number
---@param z number
function SetDrivebyTaskTarget(shootingPed, targetPed, targetVehicle, x, y, z) end

---**`TASK` `client` [`0x5C9B84BD7D31D908`](https://docs.fivem.net/natives/?_0x5C9B84BD7D31D908)**
---
---@param driver Ped
---@param cruiseSpeed number
function SetDriveTaskCruiseSpeed(driver, cruiseSpeed) end

---**`TASK` `client` [`0xDACE1BE37D88AF67`](https://docs.fivem.net/natives/?_0xDACE1BE37D88AF67)**
---
---```
---This native is used to set the driving style for specific ped.
---Driving styles id seems to be:
---786468
---262144
---786469
---http://gtaforums.com/topic/822314-guide-driving-styles/
---```
---
---@param ped Ped
---@param drivingStyle number
function SetDriveTaskDrivingStyle(ped, drivingStyle) end

---**`TASK` `client` [`0x404A5AA9B9F0B746`](https://docs.fivem.net/natives/?_0x404A5AA9B9F0B746)**
---
---@param p0 any
---@param p1 number
function SetDriveTaskMaxCruiseSpeed(p0, p1) end

---**`TASK` `client` [`0x535E97E1F7FC0C6A`](https://docs.fivem.net/natives/?_0x535E97E1F7FC0C6A)**
---
---```
---Groups found in the scripts used with this native:
---"AMMUNATION",
---"QUARRY",
---"Triathlon_1",
---"Triathlon_2",
---"Triathlon_3"
---```
---
---@param scenarioGroup string
function SetExclusiveScenarioGroup(scenarioGroup) end

---**`TASK` `client` [`0x6C6B148586F934F7`](https://docs.fivem.net/natives/?_0x6C6B148586F934F7)**
---
---```
---Birds will try to reach the given height.
---```
---
---@param height number
function SetGlobalMinBirdFlightHeight(height) end

---**`TASK` `client` [`0x8C825BDC7741D37C`](https://docs.fivem.net/natives/?_0x8C825BDC7741D37C)**
---
---@param ped Ped
---@param duration any
---@param p2 any
---@param p3 any
function SetHighFallTask(ped, duration, p2, p3) end

---**`TASK` `client` [`0xCCD892192C6D2BB9`](https://docs.fivem.net/natives/?_0xCCD892192C6D2BB9)**
---
---```
---Note: Look in decompiled scripts and the times that p1 and p2 aren't 0. They are filled with vars. If you look through out that script what other natives those vars are used in, you can tell p1 is a ped and p2 is a vehicle. Which most likely means if you want the mounted weapon to target a ped set targetVehicle to 0 or vice-versa.
---```
---
---```
---NativeDB Added Parameter 7: Any p6
---NativeDB Added Parameter 8: Any p7
---```
---
---@param shootingPed Ped
---@param targetPed Ped
---@param targetVehicle Vehicle
---@param x number
---@param y number
---@param z number
function SetMountedWeaponTarget(shootingPed, targetPed, targetVehicle, x, y, z) end

---**`TASK` `client` [`0xF1B9F16E89E2C93A`](https://docs.fivem.net/natives/?_0xF1B9F16E89E2C93A)**
---
---**This native does absolutely nothing, just a nullsub**
---
---@param p0 number
function SetNextDesiredMoveState(p0) end

---**`TASK` `client` [`0xC313379AF0FCEDA7`](https://docs.fivem.net/natives/?_0xC313379AF0FCEDA7)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
function SetParachuteTaskTarget(ped, x, y, z) end

---**`TASK` `client` [`0x0729BAC1B8C64317`](https://docs.fivem.net/natives/?_0x0729BAC1B8C64317)**
---
---@param ped Ped
---@param thrust number
function SetParachuteTaskThrust(ped, thrust) end

---**`TASK` `client` [`0x8FD89A6240813FD0`](https://docs.fivem.net/natives/?_0x8FD89A6240813FD0)**
---
---```
---Appears only in fm_mission_controller and used only 3 times.
---ped was always PLAYER_PED_ID()
---p1 was always true
---p2 was always true
---```
---
---@param ped Ped
---@param p1 boolean
---@param p2 boolean
function SetPedCanPlayAmbientIdles(ped, p1, p2) end

---**`TASK` `client` [`0x1E982AC8716912C5`](https://docs.fivem.net/natives/?_0x1E982AC8716912C5)**
---
---@param ped Ped
---@param p1 number
function SetPedDesiredMoveBlendRatio(ped, p1) end

---**`TASK` `client` [`0x4455517B28441E60`](https://docs.fivem.net/natives/?_0x4455517B28441E60)**
---
---@param ped Ped
---@param avoidFire boolean
function SetPedPathAvoidFire(ped, avoidFire) end

---**`TASK` `client` [`0xE361C5C71C431A4F`](https://docs.fivem.net/natives/?_0xE361C5C71C431A4F)**
---
---@param ped Ped
---@param Toggle boolean
function SetPedPathCanDropFromHeight(ped, Toggle) end

---**`TASK` `client` [`0x8E06A6FE76C9EFF4`](https://docs.fivem.net/natives/?_0x8E06A6FE76C9EFF4)**
---
---@param ped Ped
---@param Toggle boolean
function SetPedPathCanUseClimbovers(ped, Toggle) end

---**`TASK` `client` [`0x77A5B103C87F476E`](https://docs.fivem.net/natives/?_0x77A5B103C87F476E)**
---
---@param ped Ped
---@param Toggle boolean
function SetPedPathCanUseLadders(ped, Toggle) end

---**`TASK` `client` [`0x88E32DB8C1A4AA4B`](https://docs.fivem.net/natives/?_0x88E32DB8C1A4AA4B)**
---
---```
---Default modifier is 1.0, minimum is 0.0 and maximum is 10.0.
---```
---
---@param ped Ped
---@param modifier number
function SetPedPathClimbCostModifier(ped, modifier) end

---**`TASK` `client` [`0xF35425A4204367EC`](https://docs.fivem.net/natives/?_0xF35425A4204367EC)**
---
---@param ped Ped
---@param mayEnterWater boolean
function SetPedPathMayEnterWater(ped, mayEnterWater) end

---**`TASK` `client` [`0x38FE1EC73743793C`](https://docs.fivem.net/natives/?_0x38FE1EC73743793C)**
---
---@param ped Ped
---@param avoidWater boolean
function SetPedPathPreferToAvoidWater(ped, avoidWater) end

---**`TASK` `client` [`0xED98E10B0AFCE4B4`](https://docs.fivem.net/natives/?_0xED98E10B0AFCE4B4)**
---
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@return any
function SetPedWaypointRouteOffset(p0, p1, p2, p3) end

---**`TASK` `client` [`0x02C8E5B49848664E`](https://docs.fivem.net/natives/?_0x02C8E5B49848664E)**
---
---```
---Occurrences in the b617d scripts: pastebin.com/Tvg2PRHU
---```
---
---@param scenarioGroup string
---@param p1 boolean
function SetScenarioGroupEnabled(scenarioGroup, p1) end

---**`TASK` `client` [`0xEB47EC4E34FB7EE1`](https://docs.fivem.net/natives/?_0xEB47EC4E34FB7EE1)**
---
---```
---seems to enable/disable specific scenario-types from happening in the game world.
---Here are some scenario types from the scripts:
---"WORLD_MOUNTAIN_LION_REST"
---"WORLD_MOUNTAIN_LION_WANDER"
---"DRIVE"
---"WORLD_VEHICLE_POLICE_BIKE"
---"WORLD_VEHICLE_POLICE_CAR"
---"WORLD_VEHICLE_POLICE_NEXT_TO_CAR"
---"WORLD_VEHICLE_DRIVE_SOLO"
---"WORLD_VEHICLE_BIKER"
---"WORLD_VEHICLE_DRIVE_PASSENGERS"
---"WORLD_VEHICLE_SALTON_DIRT_BIKE"
---"WORLD_VEHICLE_BICYCLE_MOUNTAIN"
---"PROP_HUMAN_SEAT_CHAIR"
---"WORLD_VEHICLE_ATTRACTOR"
---"WORLD_HUMAN_LEANING"
---"WORLD_HUMAN_HANG_OUT_STREET"
---"WORLD_HUMAN_DRINKING"
---"WORLD_HUMAN_SMOKING"
---"WORLD_HUMAN_GUARD_STAND"
---"WORLD_HUMAN_CLIPBOARD"
---"WORLD_HUMAN_HIKER"
---"WORLD_VEHICLE_EMPTY"
---"WORLD_VEHICLE_BIKE_OFF_ROAD_RACE"
---"WORLD_HUMAN_PAPARAZZI"
---"WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN"
---"WORLD_VEHICLE_PARK_PARALLEL"
---"WORLD_VEHICLE_CONSTRUCTION_SOLO"
---"WORLD_VEHICLE_CONSTRUCTION_PASSENGERS"
---"WORLD_VEHICLE_TRUCK_LOGS"
---scenarioType could be the same as scenarioName, used in for example TASK::TASK_START_SCENARIO_AT_POSITION.
---```
---
---@param scenarioType string
---@param toggle boolean
function SetScenarioTypeEnabled(scenarioType, toggle) end

---**`TASK` `client` [`0x58C70CF3A41E4AE7`](https://docs.fivem.net/natives/?_0x58C70CF3A41E4AE7)**
---
---@param taskSequenceId number
---@param repeat_ boolean
function SetSequenceToRepeat(taskSequenceId, repeat_) end

---**`TASK` `client` [`0xB0A6CFD2C69C1088`](https://docs.fivem.net/natives/?_0xB0A6CFD2C69C1088)**
---
---@param ped Ped The ped that's performing the task.
---@param signalName string The property name.
---@param value boolean The property value to set.
function SetTaskMoveNetworkSignalBool(ped, signalName, value) end

---**`TASK` `client` [`0xD5BB4025AE449A4E`](https://docs.fivem.net/natives/?_0xD5BB4025AE449A4E)**
---
---```
---p0 - PLAYER::PLAYER_PED_ID();
---p1 - "Phase", "Wobble", "x_axis","y_axis","introphase","speed".
---p2 - From what i can see it goes up to 1f (maybe).
----LcGamingHD
---Example: TASK::_D5BB4025AE449A4E(PLAYER::PLAYER_PED_ID(), "Phase", 0.5);
---```
---
---@param ped Ped The ped on which the task is playing.
---@param signalName string The property name.
---@param value number The property value to set.
function SetTaskMoveNetworkSignalFloat(ped, signalName, value) end

---**`TASK` `client` [`0xCC665AAC360D31E7`](https://docs.fivem.net/natives/?_0xCC665AAC360D31E7)**
---
---```
---* Flag 1: Aggressive ramming of suspect
---* Flag 2: Ram attempts
---* Flag 8: Medium-aggressive boxing tactic with a bit of PIT
---* Flag 16: Ramming, seems to be slightly less aggressive than 1-2.
---* Flag 32: Stay back from suspect, no tactical contact. Convoy-like.
---```
---
---@param ped Ped
---@param flag number
---@param set boolean
function SetTaskVehicleChaseBehaviorFlag(ped, flag, set) end

---**`TASK` `client` [`0x639B642FACBE4EDD`](https://docs.fivem.net/natives/?_0x639B642FACBE4EDD)**
---
---@param ped Ped
---@param distance number
function SetTaskVehicleChaseIdealPursuitDistance(ped, distance) end

---**`TASK` `client` [`0xEE08C992D238C5D1`](https://docs.fivem.net/natives/?_0xEE08C992D238C5D1)**
---
---```
---Looks like p1 may be a flag, still need to do some research, though.
---```
---
---@param ped Ped
---@param p1 number
---@param p2 boolean
function StopAnimPlayback(ped, p1, p2) end

---**`TASK` `client` [`0x97FF36A1D40EA00A`](https://docs.fivem.net/natives/?_0x97FF36A1D40EA00A)**
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---
---@param ped Ped
---@param animDictionary string
---@param animationName string
---@param animExitSpeed number Greater than `0.0`, higher is faster. Setting to `0.0` or using an integer, will cause animation lockout - requiring the animation to be played again or the player be killed.
function StopAnimTask(ped, animDictionary, animationName, animExitSpeed) end

---**`TASK` `client` [`0x93B93A37987F1F3D`](https://docs.fivem.net/natives/?_0x93B93A37987F1F3D)**
---
---```
---Makes the specified ped achieve the specified heading.
---pedHandle: The handle of the ped to assign the task to.
---heading: The desired heading.
---timeout: The time, in milliseconds, to allow the task to complete. If the task times out, it is cancelled, and the ped will stay at the heading it managed to reach in the time.
---```
---
---@param ped Ped
---@param heading number
---@param timeout number
function TaskAchieveHeading(ped, heading, timeout) end

---**`TASK` `client` [`0x6671F3EEC681BDA1`](https://docs.fivem.net/natives/?_0x6671F3EEC681BDA1)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param time number
---@param p5 boolean
---@param p6 boolean
function TaskAimGunAtCoord(ped, x, y, z, time, p5, p6) end

---**`TASK` `client` [`0x9B53BB6E8943AF53`](https://docs.fivem.net/natives/?_0x9B53BB6E8943AF53)**
---
---```
---duration: the amount of time in milliseconds to do the task.  -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped
---```
---
---@param ped Ped
---@param entity Entity
---@param duration number
---@param p3 boolean
function TaskAimGunAtEntity(ped, entity, duration, p3) end

---**`TASK` `client` [`0x7A192BE16D373D00`](https://docs.fivem.net/natives/?_0x7A192BE16D373D00)**
---
---@param ped Ped
---@param scriptTask Hash
---@param p2 boolean
---@param p3 boolean
function TaskAimGunScripted(ped, scriptTask, p2, p3) end

---**`TASK` `client` [`0x8605AF0DE8B3A5AC`](https://docs.fivem.net/natives/?_0x8605AF0DE8B3A5AC)**
---
---@param p0 any
---@param p1 any
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 any
---@param p6 boolean
---@param p7 boolean
function TaskAimGunScriptedWithTarget(p0, p1, p2, p3, p4, p5, p6, p7) end

---**`TASK` `client` [`0xF3B9A78A178572B1`](https://docs.fivem.net/natives/?_0xF3B9A78A178572B1)**
---
---```
---Example from "me_amanda1.ysc.c4":
---TASK::TASK_ARREST_PED(l_19F /* This is a Ped */ , PLAYER::PLAYER_PED_ID());
---Example from "armenian1.ysc.c4":
---if (!PED::IS_PED_INJURED(l_B18[0/*1*/])) {
---    TASK::TASK_ARREST_PED(l_B18[0/*1*/], PLAYER::PLAYER_PED_ID());
---}
---I would love to have time to experiment to see if a player Ped can arrest another Ped. Might make for a good cop mod.
---Looks like only the player can be arrested this way. Peds react and try to arrest you if you task them, but the player charater doesn't do anything if tasked to arrest another ped.
---```
---
---@param ped Ped
---@param target Ped
function TaskArrestPed(ped, target) end

---**`TASK` `client` [`0x15C86013127CE63F`](https://docs.fivem.net/natives/?_0x15C86013127CE63F)**
---
---```
---You need to call PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS after TASK_BOAT_MISSION in order for the task to execute.
---Working example
---float vehicleMaxSpeed = VEHICLE::_GET_VEHICLE_MAX_SPEED(ENTITY::GET_ENTITY_MODEL(pedVehicle));
---TASK::TASK_BOAT_MISSION(pedDriver, pedVehicle, 0, 0, waypointCoord.x, waypointCoord.y, waypointCoord.z, 4, vehicleMaxSpeed, 786469, -1.0, 7);
---PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(pedDriver, 1);
---P8 appears to be driving style flag - see gtaforums.com/topic/822314-guide-driving-styles/ for documentation
---```
---
---@param pedDriver Ped
---@param boat Vehicle
---@param p2 any
---@param p3 any
---@param x number
---@param y number
---@param z number
---@param p7 any
---@param maxSpeed number
---@param drivingStyle number
---@param p10 number
---@param p11 any
function TaskBoatMission(pedDriver, boat, p2, p3, x, y, z, p7, maxSpeed, drivingStyle, p10, p11) end

---**`TASK` `client` [`0x8C338E0263E4FD19`](https://docs.fivem.net/natives/?_0x8C338E0263E4FD19)**
---
---```
---p2 tend to be 16, 17 or 1
---p3 to p7 tend to be 0.0
---```
---
---@param ped Ped
---@param target Ped
---@param p2 any
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
function TaskChatToPed(ped, target, p2, p3, p4, p5, p6, p7) end

---**`TASK` `client` [`0x95A6C46A31D1917D`](https://docs.fivem.net/natives/?_0x95A6C46A31D1917D)**
---
---@param p0 any
function TaskClearDefensiveArea(p0) end

---**`TASK` `client` [`0x0F804F1DB19B9689`](https://docs.fivem.net/natives/?_0x0F804F1DB19B9689)**
---
---```
---Not clear what it actually does, but here's how script uses it -
---if (OBJECT::HAS_PICKUP_BEEN_COLLECTED(...)
---{
--- if(ENTITY::DOES_ENTITY_EXIST(PLAYER::PLAYER_PED_ID()))
---    {
---     TASK::TASK_CLEAR_LOOK_AT(PLAYER::PLAYER_PED_ID());
---  }
--- ...
---}
---Another one where it doesn't "look" at current player -
---TASK::TASK_PLAY_ANIM(l_3ED, "missheist_agency2aig_2", "look_at_phone_a", 1000.0, -2.0, -1, 48, v_2, 0, 0, 0);
---PED::_2208438012482A1A(l_3ED, 0, 0);
---TASK::TASK_CLEAR_LOOK_AT(l_3ED);
---```
---
---@param ped Ped
function TaskClearLookAt(ped) end

---**`TASK` `client` [`0x89D9FCC2435112F1`](https://docs.fivem.net/natives/?_0x89D9FCC2435112F1)**
---
---```
---Climbs or vaults the nearest thing.
---```
---
---@param ped Ped
---@param unused boolean
function TaskClimb(ped, unused) end

---**`TASK` `client` [`0xB6C987F9285A3814`](https://docs.fivem.net/natives/?_0xB6C987F9285A3814)**
---
---@param ped Ped
---@param p1 number
function TaskClimbLadder(ped, p1) end

---**`TASK` `client` [`0x7BF835BB9E2698C8`](https://docs.fivem.net/natives/?_0x7BF835BB9E2698C8)**
---
---```
---Despite its name, it only attacks ONE hated target. The one closest hated target.
---p2 seems to be always 0
---```
---
---@param ped Ped
---@param radius number
---@param p2 number
function TaskCombatHatedTargetsAroundPed(ped, radius, p2) end

---**`TASK` `client` [`0x2BBA30B854534A0C`](https://docs.fivem.net/natives/?_0x2BBA30B854534A0C)**
---
---@param p0 any
---@param p1 number
---@param p2 any
---@param p3 any
function TaskCombatHatedTargetsAroundPedTimed(p0, p1, p2, p3) end

---**`TASK` `client` [`0x4CF5F55DAC3280A0`](https://docs.fivem.net/natives/?_0x4CF5F55DAC3280A0)**
---
---```
---Despite its name, it only attacks ONE hated target. The one closest to the specified position.
---```
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param radius number
---@param p5 any
function TaskCombatHatedTargetsInArea(ped, x, y, z, radius, p5) end

---**`TASK` `client` [`0xF166E48407BAC484`](https://docs.fivem.net/natives/?_0xF166E48407BAC484)**
---
---```
---Makes the specified ped attack the target ped.
---p2 should be 0
---p3 should be 16
---```
---
---@param ped Ped
---@param targetPed Ped
---@param p2 number
---@param p3 number
function TaskCombatPed(ped, targetPed, p2, p3) end

---**`TASK` `client` [`0x944F30DCB7096BDE`](https://docs.fivem.net/natives/?_0x944F30DCB7096BDE)**
---
---@param p0 any
---@param ped Ped
---@param p2 number
---@param p3 any
function TaskCombatPedTimed(p0, ped, p2, p3) end

---**`TASK` `client` [`0x3EB1FE9E8E908E15`](https://docs.fivem.net/natives/?_0x3EB1FE9E8E908E15)**
---
---The ped will act like NPC's involved in a gunfight. The ped will squat down with their heads held in place and look around.
---
---@param ped Ped Ped id.
---@param duration number Duration of the animation in ms. Set to -1 if you do not want a duration.
function TaskCower(ped, duration) end

---**`TASK` `client` [`0x2F8AF0E82773A171`](https://docs.fivem.net/natives/?_0x2F8AF0E82773A171)**
---
---```
---Example:
---TASK::TASK_DRIVE_BY(l_467[1/*22*/], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});
---Needs working example. Doesn't seem to do anything.
---I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.
---I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.
---I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.
---```
---
---@param driverPed Ped
---@param targetPed Ped
---@param targetVehicle Vehicle
---@param targetX number
---@param targetY number
---@param targetZ number
---@param distanceToShoot number
---@param pedAccuracy number
---@param p8 boolean
---@param firingPattern Hash
function TaskDriveBy(
	driverPed,
	targetPed,
	targetVehicle,
	targetX,
	targetY,
	targetZ,
	distanceToShoot,
	pedAccuracy,
	p8,
	firingPattern
)
end

---**`TASK` `client` [`0xC20E50AA46D09CA8`](https://docs.fivem.net/natives/?_0xC20E50AA46D09CA8)**
---
---```
---speed 1.0 = walk, 2.0 = run
---p5 1 = normal, 3 = teleport to vehicle, 8 = normal/carjack ped from seat, 16 = teleport directly into vehicle
---p6 is always 0
---```
---
---@param ped Ped
---@param vehicle Vehicle
---@param timeout number
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@param speed number
---@param flag number
---@param p6 any
function TaskEnterVehicle(ped, vehicle, timeout, seatIndex, speed, flag, p6) end

---**`TASK` `client` [`0x7F93691AB4B92272`](https://docs.fivem.net/natives/?_0x7F93691AB4B92272)**
---
---@param vehicle Vehicle
function TaskEveryoneLeaveVehicle(vehicle) end

---**`TASK` `client` [`0x79B258E397854D29`](https://docs.fivem.net/natives/?_0x79B258E397854D29)**
---
---@param p0 any
---@param p1 any
---@param p2 number
---@param p3 number
---@param p4 number
function TaskExitCover(p0, p1, p2, p3, p4) end

---**`TASK` `client` [`0x1E7889778264843A`](https://docs.fivem.net/natives/?_0x1E7889778264843A)**
---
---Adds a new point to the current point route; a maximum of 8 points can be added.
---
---Call [TASK_FLUSH_ROUTE](#\_0x841142A1376E9006) before the first call to this. Call [TASK_FOLLOW_POINT_ROUTE](#\_0x595583281858626E) to make the Ped go the route.
---
---@param x number
---@param y number
---@param z number
function TaskExtendRoute(x, y, z) end

---**`TASK` `client` [`0x841142A1376E9006`](https://docs.fivem.net/natives/?_0x841142A1376E9006)**
---
---Clears the current point route. Call this before [TASK_EXTEND_ROUTE](#\_0x1E7889778264843A) and [TASK_FOLLOW_POINT_ROUTE](#\_0x595583281858626E).
---
function TaskFlushRoute() end

---**`TASK` `client` [`0x15D3A79D4E44B913`](https://docs.fivem.net/natives/?_0x15D3A79D4E44B913)**
---
---```
---If no timeout, set timeout to -1.
---```
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param speed number
---@param timeout number
---@param stoppingRange number
---@param persistFollowing boolean
---@param unk number
function TaskFollowNavMeshToCoord(ped, x, y, z, speed, timeout, stoppingRange, persistFollowing, unk) end

---**`TASK` `client` [`0x17F58B88D085DBAC`](https://docs.fivem.net/natives/?_0x17F58B88D085DBAC)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param speed number
---@param timeout number
---@param unkFloat number
---@param unkInt number
---@param unkX number
---@param unkY number
---@param unkZ number
---@param unk_40000f number
function TaskFollowNavMeshToCoordAdvanced(
	ped,
	x,
	y,
	z,
	speed,
	timeout,
	unkFloat,
	unkInt,
	unkX,
	unkY,
	unkZ,
	unk_40000f
)
end

---**`TASK` `client` [`0x595583281858626E`](https://docs.fivem.net/natives/?_0x595583281858626E)**
---
---```
---MulleKD19: Makes the ped go on the created point route.
---ped: The ped to give the task to.
---speed: The speed to move at in m/s.
---int: Unknown. Can be 0, 1, 2 or 3.
---Example:
---TASK_FLUSH_ROUTE();
---TASK_EXTEND_ROUTE(0f, 0f, 70f);
---TASK_EXTEND_ROUTE(10f, 0f, 70f);
---TASK_EXTEND_ROUTE(10f, 10f, 70f);
---TASK_FOLLOW_POINT_ROUTE(GET_PLAYER_PED(), 1f, 0);
---```
---
---@param ped Ped The ped to give the task to.
---@param speed number The speed to move at in m/s.
---@param unknown number Unknown. Can be 0, 1, 2 or 3.
function TaskFollowPointRoute(ped, speed, unknown) end

---**`TASK` `client` [`0x304AE42E357B8C7E`](https://docs.fivem.net/natives/?_0x304AE42E357B8C7E)**
---
---```
---p6 always -1
---p7 always 10.0
---p8 always 1
---```
---
---@param ped Ped
---@param entity Entity
---@param offsetX number
---@param offsetY number
---@param offsetZ number
---@param movementSpeed number
---@param timeout number
---@param stoppingRange number
---@param persistFollowing boolean
function TaskFollowToOffsetOfEntity(
	ped,
	entity,
	offsetX,
	offsetY,
	offsetZ,
	movementSpeed,
	timeout,
	stoppingRange,
	persistFollowing
)
end

---**`TASK` `client` [`0x0759591819534F7B`](https://docs.fivem.net/natives/?_0x0759591819534F7B)**
---
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function TaskFollowWaypointRecording(p0, p1, p2, p3, p4) end

---**`TASK` `client` [`0x4F056E1AFFEF17AB`](https://docs.fivem.net/natives/?_0x4F056E1AFFEF17AB)**
---
---See [`FORCE_PED_MOTION_STATE`](#\_0xF28965D04F570DCA)
---
---@param ped Ped
---@param state Hash
---@param p2 boolean
function TaskForceMotionState(ped, state, p2) end

---**`TASK` `client` [`0x9C00E77AF14B2DFF`](https://docs.fivem.net/natives/?_0x9C00E77AF14B2DFF)**
---
---@param ped Ped
---@param boat Vehicle
function TaskGetOffBoat(ped, boat) end

---**`TASK` `client` [`0xA9DA48FAB8A76C12`](https://docs.fivem.net/natives/?_0xA9DA48FAB8A76C12)**
---
---```
---eg
--- TASK::TASK_GOTO_ENTITY_AIMING(v_2, PLAYER::PLAYER_PED_ID(), 5.0, 25.0);
---ped = Ped you want to perform this task.
---target = the Entity they should aim at.
---distanceToStopAt = distance from the target, where the ped should stop to aim.
---StartAimingDist = distance where the ped should start to aim.
---```
---
---@param ped Ped
---@param target Entity
---@param distanceToStopAt number
---@param StartAimingDist number
function TaskGotoEntityAiming(ped, target, distanceToStopAt, StartAimingDist) end

---**`TASK` `client` [`0xE39B4FF4FDEBDE27`](https://docs.fivem.net/natives/?_0xE39B4FF4FDEBDE27)**
---
---@param ped Ped
---@param p1 any
---@param p2 any
---@param x number
---@param y number
---@param z number
---@param duration number
function TaskGotoEntityOffset(ped, p1, p2, x, y, z, duration) end

---**`TASK` `client` [`0x338E7EF52B6095A9`](https://docs.fivem.net/natives/?_0x338E7EF52B6095A9)**
---
---@param ped Ped
---@param entity Entity
---@param duration number
---@param xOffset number
---@param yOffset number
---@param zOffset number
---@param moveBlendRatio number
---@param useNavmesh boolean
function TaskGotoEntityOffsetXy(ped, entity, duration, xOffset, yOffset, zOffset, moveBlendRatio, useNavmesh) end

---**`TASK` `client` [`0xD76B57B44F1E6F8B`](https://docs.fivem.net/natives/?_0xD76B57B44F1E6F8B)**
---
---@param ped Ped The ped handle.
---@param x number The x coordinate.
---@param y number The y coordinate.
---@param z number The z coordinate.
---@param speed number The ped movement speed.
---@param timeout number \-1 , other values appear to break the ped movement.
---@param targetHeading number The heading you want the ped to be on x,y,z coord.
---@param distanceToSlide number The distance from x,y,z where the ped will start sliding.
function TaskGoStraightToCoord(ped, x, y, z, speed, timeout, targetHeading, distanceToSlide) end

---**`TASK` `client` [`0x61E360B7E040D12E`](https://docs.fivem.net/natives/?_0x61E360B7E040D12E)**
---
---@param entity1 Entity
---@param entity2 Entity
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 any
function TaskGoStraightToCoordRelativeToEntity(entity1, entity2, p2, p3, p4, p5, p6) end

---**`TASK` `client` [`0xA55547801EB331FC`](https://docs.fivem.net/natives/?_0xA55547801EB331FC)**
---
---```
---The ped will walk or run towards goToLocation, aiming towards goToLocation or focusLocation (depending on the aimingFlag) and shooting if shootAtEnemies = true to any enemy in his path.
---If the ped is closer than noRoadsDistance, the ped will ignore pathing/navmesh and go towards goToLocation directly. This could cause the ped to get stuck behind tall walls if the goToLocation is on the other side. To avoid this, use 0.0f and the ped will always use pathing/navmesh to reach his destination.
---If the speed is set to 0.0f, the ped will just stand there while aiming, if set to 1.0f he will walk while aiming, 2.0f will run while aiming.
---The ped will stop aiming when he is closer than distanceToStopAt to goToLocation.
---I still can't figure out what unkTrue is used for. I don't notice any difference if I set it to false but in the decompiled scripts is always true.
---I think that unkFlag, like the driving styles, could be a flag that "work as a list of 32 bits converted to a decimal integer. Each bit acts as a flag, and enables or disables a function". What leads me to this conclusion is the fact that in the decompiled scripts, unkFlag takes values like: 0, 1, 5 (101 in binary) and 4097 (4096 + 1 or 1000000000001 in binary). For now, I don't know what behavior enable or disable this possible flag so I leave it at 0.
---Note: After some testing, using unkFlag = 16 (0x10) enables the use of sidewalks while moving towards goToLocation.
---The aimingFlag takes 2 values: 0 to aim at the focusLocation, 1 to aim at where the ped is heading (goToLocation).
---Example:
---enum AimFlag
---{
---   AimAtFocusLocation,
---   AimAtGoToLocation
---};
---Vector3 goToLocation1 = { 996.2867f, 0, -2143.044f, 0, 28.4763f, 0 }; // remember the padding.
---Vector3 goToLocation2 = { 990.2867f, 0, -2140.044f, 0, 28.4763f, 0 }; // remember the padding.
---Vector3 focusLocation = { 994.3478f, 0, -2136.118f, 0, 29.2463f, 0 }; // the coord z should be a little higher, around +1.0f to avoid aiming at the ground
---// 1st example
---TASK::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation1.x, goToLocation1.y, goToLocation1.z, focusLocation.x, focusLocation.y, focusLocation.z, 2.0f /*run*/, true /*shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtGoToLocation, -957453492 /*FullAuto pattern*/);
---// 2nd example
---TASK::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation2.x, goToLocation2.y, goToLocation2.z, focusLocation.x, focusLocation.y, focusLocation.z, 1.0f /*walk*/, false /*don't shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtFocusLocation, -957453492 /*FullAuto pattern*/);
---1st example: The ped (pedhandle) will run towards goToLocation1. While running and aiming towards goToLocation1, the ped will shoot on sight to any enemy in his path, using "FullAuto" firing pattern. The ped will stop once he is closer than distanceToStopAt to goToLocation1.
---2nd example: The ped will walk towards goToLocation2. This time, while walking towards goToLocation2 and aiming at focusLocation, the ped will point his weapon on sight to any enemy in his path without shooting. The ped will stop once he is closer than distanceToStopAt to goToLocation2.
---```
---
---@param pedHandle Ped
---@param goToLocationX number
---@param goToLocationY number
---@param goToLocationZ number
---@param focusLocationX number
---@param focusLocationY number
---@param focusLocationZ number
---@param speed number
---@param shootAtEnemies boolean
---@param distanceToStopAt number
---@param noRoadsDistance number
---@param unkTrue boolean
---@param unkFlag number
---@param aimingFlag number
---@param firingPattern Hash
function TaskGoToCoordAndAimAtHatedEntitiesNearCoord(
	pedHandle,
	goToLocationX,
	goToLocationY,
	goToLocationZ,
	focusLocationX,
	focusLocationY,
	focusLocationZ,
	speed,
	shootAtEnemies,
	distanceToStopAt,
	noRoadsDistance,
	unkTrue,
	unkFlag,
	aimingFlag,
	firingPattern
)
end

---**`TASK` `client` [`0x5BC448CB78FA3E88`](https://docs.fivem.net/natives/?_0x5BC448CB78FA3E88)**
---
---```
---example from fm_mission_controller
---TASK::TASK_GO_TO_COORD_ANY_MEANS(l_649, sub_f7e86(-1, 0), 1.0, 0, 0, 786603, 0xbf800000);
---```
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param speed number
---@param p5 any
---@param p6 boolean
---@param walkingStyle number
---@param p8 number
function TaskGoToCoordAnyMeans(ped, x, y, z, speed, p5, p6, walkingStyle, p8) end

---**`TASK` `client` [`0x1DD45F9ECFDB1BC9`](https://docs.fivem.net/natives/?_0x1DD45F9ECFDB1BC9)**
---
---```
---NativeDB Added Parameter 13: Any p12
---```
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param speed number
---@param p5 any
---@param p6 boolean
---@param walkingStyle number
---@param p8 number
---@param p9 any
---@param p10 any
---@param p11 any
function TaskGoToCoordAnyMeansExtraParams(ped, x, y, z, speed, p5, p6, walkingStyle, p8, p9, p10, p11) end

---**`TASK` `client` [`0xB8ECD61F531A7B02`](https://docs.fivem.net/natives/?_0xB8ECD61F531A7B02)**
---
---```
---NativeDB Added Parameter 14: Any p13
---```
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param speed number
---@param p5 any
---@param p6 boolean
---@param walkingStyle number
---@param p8 number
---@param p9 any
---@param p10 any
---@param p11 any
---@param p12 any
function TaskGoToCoordAnyMeansExtraParamsWithCruiseSpeed(
	ped,
	x,
	y,
	z,
	speed,
	p5,
	p6,
	walkingStyle,
	p8,
	p9,
	p10,
	p11,
	p12
)
end

---**`TASK` `client` [`0x11315AB3385B8AC0`](https://docs.fivem.net/natives/?_0x11315AB3385B8AC0)**
---
---Will make the ped move to a coordinate while aiming (and optionally shooting) at given coordinates.
---
---@param ped Ped Ped to task
---@param x number Destination X position
---@param y number Destination Y position
---@param z number Destination Z position
---@param aimAtX number Aim at target x position
---@param aimAtY number Aim at target Y position
---@param aimAtZ number Aim at target Z position
---@param moveSpeed number mostly 2f, but also 1/1.2f, etc.
---@param shoot boolean If true ped will shoot; false - will not
---@param p9 number Usually 2.0f
---@param p10 number Usually 0.5f
---@param p11 boolean If true ped will stay still; false - will not
---@param flags any 0 / 512 / 513, etc
---@param p13 boolean
---@param firingPattern Hash ${firing_pattern_full_auto}, 0xC6EE6B4C
function TaskGoToCoordWhileAimingAtCoord(
	ped,
	x,
	y,
	z,
	aimAtX,
	aimAtY,
	aimAtZ,
	moveSpeed,
	shoot,
	p9,
	p10,
	p11,
	flags,
	p13,
	firingPattern
)
end

---**`TASK` `client` [`0xB2A16444EAD9AE47`](https://docs.fivem.net/natives/?_0xB2A16444EAD9AE47)**
---
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 any
---@param p5 number
---@param p6 boolean
---@param p7 number
---@param p8 number
---@param p9 boolean
---@param p10 any
---@param p11 boolean
---@param p12 any
---@param p13 any
function TaskGoToCoordWhileAimingAtEntity(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13) end

---**`TASK` `client` [`0x6A071245EB0D1882`](https://docs.fivem.net/natives/?_0x6A071245EB0D1882)**
---
---```
---The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0
---Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.
---Example: TASK::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)
---Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).
---```
---
---@param entity Entity
---@param target Entity
---@param duration number
---@param distance number
---@param speed number
---@param p5 number
---@param p6 number
function TaskGoToEntity(entity, target, duration, distance, speed, p5, p6) end

---**`TASK` `client` [`0x04701832B739DCE5`](https://docs.fivem.net/natives/?_0x04701832B739DCE5)**
---
---@param p0 any
---@param p1 any
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 boolean
---@param p7 number
---@param p8 number
---@param p9 boolean
---@param p10 boolean
---@param p11 any
function TaskGoToEntityWhileAimingAtCoord(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

---**`TASK` `client` [`0x97465886D35210E9`](https://docs.fivem.net/natives/?_0x97465886D35210E9)**
---
---```
---shootatEntity:
---If true, peds will shoot at Entity till it is dead.
---If false, peds will just walk till they reach the entity and will cease shooting.
---```
---
---@param ped Ped
---@param entityToWalkTo Entity
---@param entityToAimAt Entity
---@param speed number
---@param shootatEntity boolean
---@param p5 number
---@param p6 number
---@param p7 boolean
---@param p8 boolean
---@param firingPattern Hash
function TaskGoToEntityWhileAimingAtEntity(
	ped,
	entityToWalkTo,
	entityToAimAt,
	speed,
	shootatEntity,
	p5,
	p6,
	p7,
	p8,
	firingPattern
)
end

---**`TASK` `client` [`0xD2A207EEBDF9889B`](https://docs.fivem.net/natives/?_0xD2A207EEBDF9889B)**
---
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 any
function TaskGuardAssignedDefensiveArea(p0, p1, p2, p3, p4, p5, p6) end

---**`TASK` `client` [`0x4A58A47A72E3FCB4`](https://docs.fivem.net/natives/?_0x4A58A47A72E3FCB4)**
---
---```
---From re_prisonvanbreak:
---TASK::TASK_GUARD_CURRENT_POSITION(l_DD, 35.0, 35.0, 1);
---```
---
---@param p0 Ped
---@param p1 number
---@param p2 number
---@param p3 boolean
function TaskGuardCurrentPosition(p0, p1, p2, p3) end

---**`TASK` `client` [`0xC946FE14BE0EB5E2`](https://docs.fivem.net/natives/?_0xC946FE14BE0EB5E2)**
---
---```
---p0 - Guessing PedID
---p1, p2, p3 - XYZ?
---p4 - ???
---p5 - Maybe the size of sphere from XYZ?
---p6 - ???
---p7, p8, p9 - XYZ again?
---p10 - Maybe the size of sphere from second XYZ?
---```
---
---@param p0 Ped
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 any
---@param p7 number
---@param p8 number
---@param p9 number
---@param p10 number
function TaskGuardSphereDefensiveArea(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

---**`TASK` `client` [`0xF2EAB31979A7F910`](https://docs.fivem.net/natives/?_0xF2EAB31979A7F910)**
---
---```
---In the scripts, p3 was always -1.
---p3 seems to be duration or timeout of turn animation.
---Also facingPed can be 0 or -1 so ped will just raise hands up.
---```
---
---@param ped Ped
---@param duration number
---@param facingPed Ped
---@param p3 number
---@param p4 boolean
function TaskHandsUp(ped, duration, facingPed, p3, p4) end

---**`TASK` `client` [`0xAC83B1DB38D0ADA0`](https://docs.fivem.net/natives/?_0xAC83B1DB38D0ADA0)**
---
---```
---Ped pilot should be in a heli.
---EntityToFollow can be a vehicle or Ped.
---x,y,z appear to be how close to the EntityToFollow the heli should be. Scripts use 0.0, 0.0, 80.0. Then the heli tries to position itself 80 units above the EntityToFollow. If you reduce it to -5.0, it tries to go below (if the EntityToFollow is a heli or plane)
---NOTE: If the pilot finds enemies, it will engage them, then remain there idle, not continuing to chase the Entity given.
---```
---
---@param pilot Ped
---@param entityToFollow Entity
---@param x number
---@param y number
---@param z number
function TaskHeliChase(pilot, entityToFollow, x, y, z) end

---**`TASK` `client` [`0xDAD029E187A2BEB4`](https://docs.fivem.net/natives/?_0xDAD029E187A2BEB4)**
---
---```
---Needs more research.
---Default value of p13 is -1.0 or 0xBF800000.
---Default value of p14 is 0.
---Modified examples from "fm_mission_controller.ysc", line ~203551:
---TASK::TASK_HELI_MISSION(ped, vehicle, 0, 0, posX, posY, posZ, 4, 1.0, -1.0, -1.0, 10, 10, 5.0, 0);
---TASK::TASK_HELI_MISSION(ped, vehicle, 0, 0, posX, posY, posZ, 4, 1.0, -1.0, -1.0, 0, ?, 5.0, 4096);
---int mode seams to set mission type 4 = coords target, 23 = ped target.
---int 14 set to 32 = ped will land at destination.
---My findings:
---mode 4 or 7 forces heli to snap to the heading set
---8 makes the heli flee from the ped.
---9 circles around ped with angle set
---10, 11 normal + imitate ped heading
---20 makes the heli land when he's near the ped. It won't resume chasing.
---21 emulates an helicopter crash
---23 makes the heli circle erratically around ped
---I change p2 to 'vehicleToFollow' as it seems to work like the task natives to set targets. In the heli_taxi script where as the merryweather heli takes you to your waypoint it has no need to follow a vehicle or a ped, so of course both have 0 set.
---```
---
---@param pilot Ped
---@param aircraft Vehicle
---@param targetVehicle Vehicle
---@param targetPed Ped
---@param destinationX number
---@param destinationY number
---@param destinationZ number
---@param missionFlag number
---@param maxSpeed number
---@param landingRadius number
---@param targetHeading number
---@param unk1 number
---@param unk2 number
---@param unk3 number
---@param landingFlags number
function TaskHeliMission(
	pilot,
	aircraft,
	targetVehicle,
	targetPed,
	destinationX,
	destinationY,
	destinationZ,
	missionFlag,
	maxSpeed,
	landingRadius,
	targetHeading,
	unk1,
	unk2,
	unk3,
	landingFlags
)
end

---**`TASK` `client` [`0x0AE4086104E067B1`](https://docs.fivem.net/natives/?_0x0AE4086104E067B1)**
---
---```
---Definition is wrong. This has 4 parameters (Not sure when they were added. v350 has 2, v678 has 4).
---v350: Ped ped, bool unused
---v678: Ped ped, bool unused, bool flag1, bool flag2
---flag1 = super jump, flag2 = do nothing if flag1 is false and doubles super jump height if flag1 is true.
---```
---
---```
---NativeDB Added Parameter 3: Any p2
---NativeDB Added Parameter 4: Any p3
---```
---
---@param ped Ped
---@param unused boolean
function TaskJump(ped, unused) end

---**`TASK` `client` [`0x504D54DF3F6F2247`](https://docs.fivem.net/natives/?_0x504D54DF3F6F2247)**
---
---Flags are the same flags used in [`TASK_LEAVE_VEHICLE`](#\_0xD3DBCE61A490BE02)
---
---@param ped Ped
---@param p1 number
---@param flags number
function TaskLeaveAnyVehicle(ped, p1, flags) end

---**`TASK` `client` [`0xD3DBCE61A490BE02`](https://docs.fivem.net/natives/?_0xD3DBCE61A490BE02)**
---
---```
---Flags from decompiled scripts:
---0 = normal exit and closes door.
---1 = normal exit and closes door.
---16 = teleports outside, door kept closed.  (This flag does not seem to work for the front seats in buses, NPCs continue to exit normally)
---64 = normal exit and closes door, maybe a bit slower animation than 0.
---256 = normal exit but does not close the door.
---4160 = ped is throwing himself out, even when the vehicle is still.
---262144 = ped moves to passenger seat first, then exits normally
---Others to be tried out: 320, 512, 131072.
---```
---
---@param ped Ped
---@param vehicle Vehicle
---@param flags number
function TaskLeaveVehicle(ped, vehicle, flags) end

---**`TASK` `client` [`0x6FA46612594F7973`](https://docs.fivem.net/natives/?_0x6FA46612594F7973)**
---
---@param entity Entity
---@param x number
---@param y number
---@param z number
---@param duration number
---@param p5 any
---@param p6 any
function TaskLookAtCoord(entity, x, y, z, duration, p5, p6) end

---**`TASK` `client` [`0x69F4BE8C8CC4796C`](https://docs.fivem.net/natives/?_0x69F4BE8C8CC4796C)**
---
---```
---param3: duration in ms, use -1 to look forever
---param4: using 2048 is fine
---param5: using 3 is fine
---```
---
---@param ped Ped
---@param lookAt Entity
---@param duration number
---@param unknown1 number
---@param unknown2 number
function TaskLookAtEntity(ped, lookAt, duration, unknown1, unknown2) end

---**`TASK` `client` [`0xD5B35BEA41919ACB`](https://docs.fivem.net/natives/?_0xD5B35BEA41919ACB)**
---
---```
---Example:
---TASK::TASK_MOVE_NETWORK_ADVANCED_BY_NAME(PLAYER::PLAYER_PED_ID(), "minigame_tattoo_michael_parts", 324.13f, 181.29f, 102.6f, 0.0f, 0.0f, 22.32f, 2, 0, false, 0, 0);
---```
---
---@param ped Ped
---@param p1 string
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 any
---@param p9 number
---@param p10 boolean
---@param animDict string
---@param flags number
function TaskMoveNetworkAdvancedByName(ped, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, animDict, flags) end

---**`TASK` `client` [`0x2D537BA194896636`](https://docs.fivem.net/natives/?_0x2D537BA194896636)**
---
---```
---Example:
---TASK::TASK_MOVE_NETWORK_BY_NAME(PLAYER::PLAYER_PED_ID(), "arm_wrestling_sweep_paired_a_rev3", 0.0f, true, "mini@arm_wrestling", 0);
---```
---
---@param ped Ped
---@param task string
---@param multiplier number
---@param p3 boolean
---@param animDict string
---@param flags number
function TaskMoveNetworkByName(ped, task, multiplier, p3, animDict, flags) end

---**`TASK` `client` [`0x965791A9A488A062`](https://docs.fivem.net/natives/?_0x965791A9A488A062)**
---
---The given ped will try to open the nearest door to 'seat'.
---
---Example: telling the ped to open the door for the driver seat does not necessarily mean it will open the driver door, it may choose to open the passenger door instead if that one is closer.
---
---@param ped Ped The ped to do the task
---@param vehicle Vehicle The vehicle whose doors the ped shoud open
---@param timeOut number Sets a timeout to the task; doesn't work for 0
---@param seat number The seat index - the ped will attempt to open doors to get to the specified seat
---@param speed number
function TaskOpenVehicleDoor(ped, vehicle, timeOut, seat, speed) end

---**`TASK` `client` [`0xD2F1C53C97EE81AB`](https://docs.fivem.net/natives/?_0xD2F1C53C97EE81AB)**
---
---```
---This function has a third parameter as well (bool).
---Second parameter is unused.
---seconds parameter was for jetpack in the early stages of gta and the hard coded code is now removed
---```
---
---```
---NativeDB Added Parameter 3: BOOL p2
---```
---
---@param ped Ped
---@param p1 boolean
function TaskParachute(ped, p1) end

---**`TASK` `client` [`0xB33E291AFA6BD03A`](https://docs.fivem.net/natives/?_0xB33E291AFA6BD03A)**
---
---```
---makes ped parachute to coords x y z. Works well with PATHFIND::GET_SAFE_COORD_FOR_PED
---```
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
function TaskParachuteToTarget(ped, x, y, z) end

---**`TASK` `client` [`0xBDA5DF49D080FE4E`](https://docs.fivem.net/natives/?_0xBDA5DF49D080FE4E)**
---
---```
---After looking at some scripts the second parameter seems to be an id of some kind. Here are some I found from some R* scripts:
---"miss_Tower_01" (this went from 01 - 10)
---"miss_Ass0" (0, 4, 6, 3)
---"MISS_PATROL_8"
---I think they're patrol routes, but I'm not sure. And I believe the 3rd parameter is a BOOL, but I can't confirm other than only seeing 0 and 1 being passed.
---As far as I can see the patrol routes names such as "miss_Ass0" have been defined earlier in the scripts. This leads me to believe we can defined our own new patrol routes by following the same approach.
---From the scripts
---    TASK::OPEN_PATROL_ROUTE("miss_Ass0");
---    TASK::ADD_PATROL_ROUTE_NODE(0, "WORLD_HUMAN_GUARD_STAND", l_738[0/*3*/], -139.4076690673828, -993.4732055664062, 26.2754, MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000));
---    TASK::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_738[1/*3*/], -116.1391830444336, -987.4984130859375, 26.38541030883789, MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000));
---    TASK::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", l_738[2/*3*/], -128.46847534179688, -979.0340576171875, 26.2754, MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000));
---    TASK::ADD_PATROL_ROUTE_LINK(0, 1);
---    TASK::ADD_PATROL_ROUTE_LINK(1, 2);
---    TASK::ADD_PATROL_ROUTE_LINK(2, 0);
---    TASK::CLOSE_PATROL_ROUTE();
---    TASK::CREATE_PATROL_ROUTE();
---```
---
---@param ped Ped
---@param p1 string
---@param p2 any
---@param p3 boolean
---@param p4 boolean
function TaskPatrol(ped, p1, p2, p3, p4) end

---**`TASK` `client` [`0xE73A266DB0CA9042`](https://docs.fivem.net/natives/?_0xE73A266DB0CA9042)**
---
---This tasks the ped to do nothing for the specified amount of miliseconds.
---This is useful if you want to add a delay between tasks when using a sequence task.
---
---@param ped Ped The ped to pause. Set to this 0 when using task sequences.
---@param ms number The amount of miliseconds to wait.
function TaskPause(ped, ms) end

---**`TASK` `client` [`0xD04FE6765D990A06`](https://docs.fivem.net/natives/?_0xD04FE6765D990A06)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param heading number
---@param duration number
function TaskPedSlideToCoord(ped, x, y, z, heading, duration) end

---**`TASK` `client` [`0x5A4A6A6D3DC64F52`](https://docs.fivem.net/natives/?_0x5A4A6A6D3DC64F52)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param heading number
---@param p5 number
---@param p6 number
function TaskPedSlideToCoordHdgRate(ped, x, y, z, heading, p5, p6) end

---**`TASK` `client` [`0x5ABA3986D90D8A3B`](https://docs.fivem.net/natives/?_0x5ABA3986D90D8A3B)**
---
---@param ped Ped
---@param taskSequenceId number
function TaskPerformSequence(ped, taskSequenceId) end

---**`TASK` `client` [`0x89221B16730234F0`](https://docs.fivem.net/natives/?_0x89221B16730234F0)**
---
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function TaskPerformSequenceFromProgress(p0, p1, p2, p3) end

---**`TASK` `client` [`0x2D2386F273FF7A25`](https://docs.fivem.net/natives/?_0x2D2386F273FF7A25)**
---
---@param pilot Ped
---@param entityToFollow Entity
---@param x number
---@param y number
---@param z number
function TaskPlaneChase(pilot, entityToFollow, x, y, z) end

---**`TASK` `client` [`0xBF19721FA34D32C0`](https://docs.fivem.net/natives/?_0xBF19721FA34D32C0)**
---
---@param pilot Ped
---@param plane Vehicle
---@param runwayStartX number
---@param runwayStartY number
---@param runwayStartZ number
---@param runwayEndX number
---@param runwayEndY number
---@param runwayEndZ number
function TaskPlaneLand(pilot, plane, runwayStartX, runwayStartY, runwayStartZ, runwayEndX, runwayEndY, runwayEndZ) end

---**`TASK` `client` [`0x23703CD154E83B88`](https://docs.fivem.net/natives/?_0x23703CD154E83B88)**
---
---```
---EDITED (7/13/2017)
---NOTE: If you want air combat, AI::TASK_COMBAT_PED (while your pilot is in an aircraft) also does the same thing as this native.
---DESCRIPTION:
---Ever wish your buddy could shoot down one of your enemies for you? Ever wanted an auto-pilot? Well look no further! This is the native for you! (Ped intelligence may vary)
---USAGE:
----- REQUIRED --
---• pilot = The ped flying the aircraft.
---• aircraft = The aircraft the pilot is flying
----- OPTIONAL -- [atleast 1 must be assigned]
---• targetVehicle = The vehicle the pilot will target.
---• targetPed = The ped the pilot will target.
---• destinationX, destinationY, destinationZ = The location the pilot will target.
----- LOGIC --
---• missionFlag = The type of mission. pastebin.com/R8x73dbv
---• angularDrag = The higher the value, the slower the plane will rotate. Value ranges from 0 - Infinity.
---• unk = Set to 0, and you'll be fine.
---• targetHeading = The target angle (from world space north) that the pilot will try to acheive before executing an attack/landing.
---• maxZ = Maximum Z coordinate height for flying.
---• minZ = Minimum Z coordinate height for flying.
---Z: 2,700 is the default max height a pilot will be able to fly. Anything greater and he will fly downward until reaching 2,700 again.
---Mission Types (incase you don't like links..):
---0 = None
---1 = Unk
---2 = CTaskVehicleRam
---3 = CTaskVehicleBlock
---4 = CTaskVehicleGoToPlane
---5 = CTaskVehicleStop
---6 = CTaskVehicleAttack
---7 = CTaskVehicleFollow
---8 = CTaskVehicleFleeAirborne
---9 = CTaskVehicleCircle
---10 = CTaskVehicleEscort
---15 = CTaskVehicleFollowRecording
---16 = CTaskVehiclePoliceBehaviour
---17 = CTaskVehicleCrash
---Example C#:
---Function.Call(Hash.TASK_PLANE_MISSION, pilot, vehicle, 0, Game.Player.Character, 0, 0, 0, 6, 0f, 0f, 0f, 2500.0f, -1500f);
---Example C++
---AI::TASK_PLANE_MISSION(pilot, vehicle, 0, PLAYER::GET_PLAYER_PED(PLAYER::GET_PLAYER_INDEX()), 0, 0, 0, 6, 0.0, 0.0, 0.0, 2500.0, -1500.0);
---[DEPRECATED] EXAMPLE USAGE:
---pastebin.com/gx7Finsk
---```
---
---```
---NativeDB Added Parameter 14: Any p13
---```
---
---@param pilot Ped
---@param aircraft Vehicle
---@param targetVehicle Vehicle
---@param targetPed Ped
---@param destinationX number
---@param destinationY number
---@param destinationZ number
---@param missionFlag number
---@param angularDrag number
---@param unk number
---@param targetHeading number
---@param maxZ number
---@param minZ number
function TaskPlaneMission(
	pilot,
	aircraft,
	targetVehicle,
	targetPed,
	destinationX,
	destinationY,
	destinationZ,
	missionFlag,
	angularDrag,
	unk,
	targetHeading,
	maxZ,
	minZ
)
end

---**`TASK` `client` [`0x965FEC691D55E9BF`](https://docs.fivem.net/natives/?_0x965FEC691D55E9BF)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param heading number
function TaskPlantBomb(ped, x, y, z, heading) end

---**`TASK` `client` [`0xEA47FE3719165B94`](https://docs.fivem.net/natives/?_0xEA47FE3719165B94)**
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---
---```
---float blendInSpeed > normal speed is 8.0f
-------------------------
---float blendOutSpeed > normal speed is 8.0f
-------------------------
---int duration: time in millisecond
-------------------------
----1 _ _ _ _ _ _ _> Default (see flag)
---0 _ _ _ _ _ _ _ > Not play at all
---Small value _ _ > Slow down animation speed
---Other _ _ _ _ _ > freeze player control until specific time (ms) has
---_ _ _ _ _ _ _ _ _ passed. (No effect if flag is set to be
---_ _ _ _ _ _ _ _ _ controllable.)
---int flag:
-------------------------
---enum eAnimationFlags
---{
--- ANIM_FLAG_NORMAL = 0,
---   ANIM_FLAG_REPEAT = 1,
---   ANIM_FLAG_STOP_LAST_FRAME = 2,
---   ANIM_FLAG_UPPERBODY = 16,
---   ANIM_FLAG_ENABLE_PLAYER_CONTROL = 32,
---   ANIM_FLAG_CANCELABLE = 120,
---};
---Odd number : loop infinitely
---Even number : Freeze at last frame
---Multiple of 4: Freeze at last frame but controllable
---01 to 15 > Full body
---10 to 31 > Upper body
---32 to 47 > Full body > Controllable
---48 to 63 > Upper body > Controllable
---...
---001 to 255 > Normal
---256 to 511 > Garbled
---...
---playbackRate:
---values are between 0.0 and 1.0
---lockX:
---0 in most cases 1 for rcmepsilonism8 and rcmpaparazzo_3
---> 1 for mini@sprunk
---lockY:
---0 in most cases
---1 for missfam5_yoga, missfra1mcs_2_crew_react
---lockZ:
---    0 for single player
---    Can be 1 but only for MP
---```
---
---@param ped Ped
---@param animDictionary string
---@param animationName string
---@param blendInSpeed number
---@param blendOutSpeed number
---@param duration number
---@param flag number
---@param playbackRate number
---@param lockX boolean
---@param lockY boolean
---@param lockZ boolean
function TaskPlayAnim(
	ped,
	animDictionary,
	animationName,
	blendInSpeed,
	blendOutSpeed,
	duration,
	flag,
	playbackRate,
	lockX,
	lockY,
	lockZ
)
end

---**`TASK` `client` [`0x83CDB10EA29B370B`](https://docs.fivem.net/natives/?_0x83CDB10EA29B370B)**
---
---It's similar to the one above, except the first 6 floats let you specify the initial position and rotation of the task. (Ped gets teleported to the position).
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---
---@param ped Ped The target ped
---@param animDict string Name of the animation dictionary
---@param animName string Name of the animation
---@param posX number Initial X position of the task
---@param posY number Initial Y position of the task
---@param posZ number Initial Z position of the task
---@param rotX number Initial X rotation of the task, doesn't seem to have any effect
---@param rotY number Initial Y rotation of the task, doesn't seem to have any effect
---@param rotZ number Initial Z rotation of the task
---@param animEnterSpeed number Adjust character speed to fully enter animation
---@param animExitSpeed number Adjust character speed to fully exit animation (useless `ClearPedTasksImmediately()` is called)
---@param duration number Time in milliseconds
---@param flag any
---@param animTime number Value between 0.0 and 1.0, lets you start an animation from the given point
---@param p14 any
---@param p15 any
function TaskPlayAnimAdvanced(
	ped,
	animDict,
	animName,
	posX,
	posY,
	posZ,
	rotX,
	rotY,
	rotZ,
	animEnterSpeed,
	animExitSpeed,
	duration,
	flag,
	animTime,
	p14,
	p15
)
end

---**`TASK` `client` [`0x8FBB6758B3B3E9EC`](https://docs.fivem.net/natives/?_0x8FBB6758B3B3E9EC)**
---
---```
---Example from the scripts:
---TASK::TASK_PLAY_PHONE_GESTURE_ANIMATION(PLAYER::PLAYER_PED_ID(), v_3, v_2, v_4, 0.25, 0.25, 0, 0);
---=========================================================
---^^ No offense, but Idk how that would really help anyone.
---As for the animDict & animation, they're both store in a global in all 5 scripts. So if anyone would be so kind as to read that global and comment what strings they use. Thanks.
---Known boneMaskTypes'
---"BONEMASK_HEADONLY"
---"BONEMASK_HEAD_NECK_AND_ARMS"
---"BONEMASK_HEAD_NECK_AND_L_ARM"
---"BONEMASK_HEAD_NECK_AND_R_ARM"
---p4 known args - 0.0f, 0.5f, 0.25f
---p5 known args - 0.0f, 0.25f
---p6 known args - 1 if a global if check is passed.
---p7 known args - 1 if a global if check is passed.
---The values found above, I found within the 5 scripts this is ever called in. (fmmc_launcher, fm_deathmatch_controller, fm_impromptu_dm_controller, fm_mission_controller, and freemode).
---=========================================================
---```
---
---@param ped Ped
---@param animDict string
---@param animation string
---@param boneMaskType string
---@param p4 number
---@param p5 number
---@param p6 boolean
---@param p7 boolean
function TaskPlayPhoneGestureAnimation(ped, animDict, animation, boneMaskType, p4, p5, p6, p7) end

---**`TASK` `client` [`0x4172393E6BE1FECE`](https://docs.fivem.net/natives/?_0x4172393E6BE1FECE)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param timeout any
---@param p5 boolean
---@param p6 number
---@param p7 boolean
---@param p8 boolean
---@param p9 any
---@param p10 boolean
function TaskPutPedDirectlyIntoCover(ped, x, y, z, timeout, p5, p6, p7, p8, p9, p10) end

---**`TASK` `client` [`0x1C6CD14A876FFE39`](https://docs.fivem.net/natives/?_0x1C6CD14A876FFE39)**
---
---```
---from armenian3.c4
---TASK::TASK_PUT_PED_DIRECTLY_INTO_MELEE(PlayerPed, armenianPed, 0.0, -1.0, 0.0, 0);
---```
---
---@param ped Ped
---@param meleeTarget Ped
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 boolean
function TaskPutPedDirectlyIntoMelee(ped, meleeTarget, p2, p3, p4, p5) end

---**`TASK` `client` [`0x09693B0312F91649`](https://docs.fivem.net/natives/?_0x09693B0312F91649)**
---
---```
---Only appears twice in the scripts.
---TASK::TASK_RAPPEL_FROM_HELI(PLAYER::PLAYER_PED_ID(), 0x41200000);
---TASK::TASK_RAPPEL_FROM_HELI(a_0, 0x41200000);
---```
---
---@param ped Ped
---@param unused number
function TaskRappelFromHeli(ped, unused) end

---**`TASK` `client` [`0x72C896464915D1B1`](https://docs.fivem.net/natives/?_0x72C896464915D1B1)**
---
---@param ped Ped
---@param fleeTarget Ped
function TaskReactAndFleePed(ped, fleeTarget) end

---**`TASK` `client` [`0x62D2916F56B9CD2D`](https://docs.fivem.net/natives/?_0x62D2916F56B9CD2D)**
---
---```
---The 2nd param (unused) is not implemented.
--------------------------------------------------------------------------
---The only occurrence I found in a R* script ("assassin_construction.ysc.c4"):
---            if (((v_3 < v_4) && (TASK::GET_SCRIPT_TASK_STATUS(PLAYER::PLAYER_PED_ID(), 0x6a67a5cc) != 1)) && (v_5 > v_3)) {
---                TASK::TASK_RELOAD_WEAPON(PLAYER::PLAYER_PED_ID(), 1);
---            }
---```
---
---@param ped Ped
---@param unused boolean
function TaskReloadWeapon(ped, unused) end

---**`TASK` `client` [`0x126EF75F1E17ABE5`](https://docs.fivem.net/natives/?_0x126EF75F1E17ABE5)**
---
---```
---From fm_mission_controller.c:
---reserve_network_mission_objects(get_num_reserved_mission_objects(0) + 1);
---	vVar28 = {0.094f, 0.02f, -0.005f};
---	vVar29 = {-92.24f, 63.64f, 150.24f};
---	func_253(&uVar30, joaat("prop_ld_case_01"), Global_1592429.imm_34757[iParam1 <268>], 1, 1, 0, 1);
---	set_entity_lod_dist(net_to_ent(uVar30), 500);
---	attach_entity_to_entity(net_to_ent(uVar30), iParam0, get_ped_bone_index(iParam0, 28422), vVar28, vVar29, 1, 0, 0, 0, 2, 1);
---	Var31.imm_4 = 1065353216;
---	Var31.imm_5 = 1065353216;
---	Var31.imm_9 = 1065353216;
---	Var31.imm_10 = 1065353216;
---	Var31.imm_14 = 1065353216;
---	Var31.imm_15 = 1065353216;
---	Var31.imm_17 = 1040187392;
---	Var31.imm_18 = 1040187392;
---	Var31.imm_19 = -1;
---	Var32.imm_4 = 1065353216;
---	Var32.imm_5 = 1065353216;
---	Var32.imm_9 = 1065353216;
---	Var32.imm_10 = 1065353216;
---	Var32.imm_14 = 1065353216;
---	Var32.imm_15 = 1065353216;
---	Var32.imm_17 = 1040187392;
---	Var32.imm_18 = 1040187392;
---	Var32.imm_19 = -1;
---	Var31 = 1;
---	Var31.imm_1 = "weapons@misc@jerrycan@mp_male";
---	Var31.imm_2 = "idle";
---	Var31.imm_20 = 1048633;
---	Var31.imm_4 = 0.5f;
---	Var31.imm_16 = get_hash_key("BONEMASK_ARMONLY_R");
---	task_scripted_animation(iParam0, &Var31, &Var32, &Var32, 0f, 0.25f);
---	set_model_as_no_longer_needed(joaat("prop_ld_case_01"));
---	remove_anim_dict("anim@heists@biolab@");
---```
---
---@param ped Ped
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 number
---@param p5 number
function TaskScriptedAnimation(ped, p1, p2, p3, p4, p5) end

---**`TASK` `client` [`0x84D32B3BEC531324`](https://docs.fivem.net/natives/?_0x84D32B3BEC531324)**
---
---@param ped Ped
---@param target Ped
---@param duration number
---@param p3 boolean
function TaskSeekCoverFromPed(ped, target, duration, p3) end

---**`TASK` `client` [`0x75AC2B60386D89F2`](https://docs.fivem.net/natives/?_0x75AC2B60386D89F2)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param duration number
---@param p5 boolean
function TaskSeekCoverFromPos(ped, x, y, z, duration, p5) end

---**`TASK` `client` [`0x39246A6958EF072C`](https://docs.fivem.net/natives/?_0x39246A6958EF072C)**
---
---```
---from michael2:
---TASK::TASK_SEEK_COVER_TO_COORDS(ped, 967.5164794921875, -2121.603515625, 30.479299545288086, 978.94677734375, -2125.84130859375, 29.4752, -1, 1);
---appears to be shorter variation
---from michael3:
---TASK::TASK_SEEK_COVER_TO_COORDS(ped, -2231.011474609375, 263.6326599121094, 173.60195922851562, -1, 0);
---```
---
---@param ped Ped
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param p7 any
---@param p8 boolean
function TaskSeekCoverToCoords(ped, x1, y1, z1, x2, y2, z2, p7, p8) end

---**`TASK` `client` [`0xD43D95C7A869447F`](https://docs.fivem.net/natives/?_0xD43D95C7A869447F)**
---
---@param p0 any
---@param p1 any
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 any
---@param p6 boolean
function TaskSeekCoverToCoverPoint(p0, p1, p2, p3, p4, p5, p6) end

---**`TASK` `client` [`0x90D2156198831D69`](https://docs.fivem.net/natives/?_0x90D2156198831D69)**
---
---```
---I cant believe I have to define this, this is one of the best natives.
---It makes the ped ignore basically all shocking events around it. Occasionally the ped may comment or gesture, but other than that they just continue their daily activities. This includes shooting and wounding the ped. And - most importantly - they do not flee.
---Since it is a task, every time the native is called the ped will stop for a moment.
---```
---
---@param ped Ped
---@param toggle boolean
function TaskSetBlockingOfNonTemporaryEvents(ped, toggle) end

---**`TASK` `client` [`0xEB8517DDA73720DA`](https://docs.fivem.net/natives/?_0xEB8517DDA73720DA)**
---
---```
---p1 is always GET_HASH_KEY("empty") in scripts, for the rare times this is used
---```
---
---@param ped Ped
---@param p1 Hash
function TaskSetDecisionMaker(ped, p1) end

---**`TASK` `client` [`0x933C06518B52A9A4`](https://docs.fivem.net/natives/?_0x933C06518B52A9A4)**
---
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
function TaskSetSphereDefensiveArea(p0, p1, p2, p3, p4) end

---**`TASK` `client` [`0x452419CBD838065B`](https://docs.fivem.net/natives/?_0x452419CBD838065B)**
---
---@param ped Ped
---@param eventHandle number
function TaskShockingEventReact(ped, eventHandle) end

---**`TASK` `client` [`0x46A6CC01E0826106`](https://docs.fivem.net/natives/?_0x46A6CC01E0826106)**
---
---```
---Firing Pattern Hash Information: https://pastebin.com/Px036isB
---```
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param duration number
---@param firingPattern Hash
function TaskShootAtCoord(ped, x, y, z, duration, firingPattern) end

---**`TASK` `client` [`0x08DA95E8298AE772`](https://docs.fivem.net/natives/?_0x08DA95E8298AE772)**
---
---```
---//this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds
---Entity aimedentity;
---Player player = PLAYER::PLAYER_ID();
---PLAYER::_GET_AIMED_ENTITY(player, &aimedentity);
---//bg is an array of peds
---TASK::TASK_SHOOT_AT_ENTITY(bg[i], aimedentity, 5000, MISC::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));
---in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.
---Firing Pattern Hash Information: https://pastebin.com/Px036isB
---```
---
---@param entity Entity
---@param target Entity
---@param duration number
---@param firingPattern Hash
function TaskShootAtEntity(entity, target, duration, firingPattern) end

---**`TASK` `client` [`0x7AA80209BDA643EB`](https://docs.fivem.net/natives/?_0x7AA80209BDA643EB)**
---
---```
---Makes the specified ped shuffle to the next vehicle seat.
---The ped MUST be in a vehicle and the vehicle parameter MUST be the ped's current vehicle.
---```
---
---```
---NativeDB Added Parameter 3: Any p2
---```
---
---@param ped Ped
---@param vehicle Vehicle
function TaskShuffleToNextVehicleSeat(ped, vehicle) end

---**`TASK` `client` [`0x601736CFE536B0A0`](https://docs.fivem.net/natives/?_0x601736CFE536B0A0)**
---
---```
---NativeDB Added Parameter 2: BOOL p1
---```
---
---@param ped Ped
function TaskSkyDive(ped) end

---**`TASK` `client` [`0x94587F17E9C365D5`](https://docs.fivem.net/natives/?_0x94587F17E9C365D5)**
---
---```
---Makes the specified ped flee the specified distance from the specified position.
---```
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param distance number
---@param time number
---@param p6 boolean
---@param p7 boolean
function TaskSmartFleeCoord(ped, x, y, z, distance, time, p6, p7) end

---**`TASK` `client` [`0x22B0D0E37CCB840D`](https://docs.fivem.net/natives/?_0x22B0D0E37CCB840D)**
---
---```
---Makes a ped run away from another ped (fleeTarget).
---distance = ped will flee this distance.
---fleeTime = ped will flee for this amount of time, set to "-1" to flee forever
---```
---
---@param ped Ped
---@param fleeTarget Ped
---@param distance number
---@param fleeTime any
---@param p4 boolean
---@param p5 boolean
function TaskSmartFleePed(ped, fleeTarget, distance, fleeTime, p4, p5) end

---**`TASK` `client` [`0xAE032F8BBA959E90`](https://docs.fivem.net/natives/?_0xAE032F8BBA959E90)**
---
---```
---scenarioName example: "WORLD_HUMAN_GUARD_STAND"
---```
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param heading number
---@param scenarioName string
function TaskStandGuard(ped, x, y, z, heading, scenarioName) end

---**`TASK` `client` [`0x919BE13EED931959`](https://docs.fivem.net/natives/?_0x919BE13EED931959)**
---
---```
---Makes the specified ped stand still for (time) milliseconds.
---```
---
---@param ped Ped
---@param time number
function TaskStandStill(ped, time) end

---**`TASK` `client` [`0xFA4EFC79F69D4F07`](https://docs.fivem.net/natives/?_0xFA4EFC79F69D4F07)**
---
---```
---Also a few more listed at TASK::TASK_START_SCENARIO_IN_PLACE just above.
------------------
---The first parameter in every scenario has always been a Ped of some sort. The second like TASK_START_SCENARIO_IN_PLACE is the name of the scenario.
---The next 4 parameters were harder to decipher. After viewing "hairdo_shop_mp.ysc.c4", and being confused from seeing the case in other scripts, they passed the first three of the arguments as one array from a function, and it looked like it was obviously x, y, and z.
---I haven't seen the sixth parameter go to or over 360, making me believe that it is rotation, but I really can't confirm anything.
---I have no idea what the last 3 parameters are, but I'll try to find out.
----going on the last 3 parameters, they appear to always be "0, 0, 1"
---p6 -1 also used in scrips
---p7 used for sitting scenarios
---p8 teleports ped to position
---```
---
---@param ped Ped
---@param scenarioName string
---@param x number
---@param y number
---@param z number
---@param heading number
---@param duration number
---@param sittingScenario boolean
---@param teleport boolean
function TaskStartScenarioAtPosition(ped, scenarioName, x, y, z, heading, duration, sittingScenario, teleport) end

---**`TASK` `client` [`0x142A02425FF02BD9`](https://docs.fivem.net/natives/?_0x142A02425FF02BD9)**
---
---```
---Plays a scenario on a Ped at their current location.
---unkDelay - Usually 0 or -1, doesn't seem to have any effect. Might be a delay between sequences.
---playEnterAnim - Plays the "Enter" anim if true, otherwise plays the "Exit" anim. Scenarios that don't have any "Enter" anims won't play if this is set to true.
---
---List of scenarioNames: pastebin.com/6mrYTdQv
---
---Also these:
---WORLD_FISH_FLEE
---DRIVE
---WORLD_HUMAN_HIKER
---WORLD_VEHICLE_ATTRACTOR
---WORLD_VEHICLE_BICYCLE_MOUNTAIN
---WORLD_VEHICLE_BIKE_OFF_ROAD_RACE
---WORLD_VEHICLE_BIKER
---WORLD_VEHICLE_CONSTRUCTION_PASSENGERS
---WORLD_VEHICLE_CONSTRUCTION_SOLO
---WORLD_VEHICLE_DRIVE_PASSENGERS
---WORLD_VEHICLE_DRIVE_SOLO
---WORLD_VEHICLE_EMPTY
---WORLD_VEHICLE_PARK_PARALLEL
---WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN
---WORLD_VEHICLE_POLICE_BIKE
---WORLD_VEHICLE_POLICE_CAR
---WORLD_VEHICLE_POLICE_NEXT_TO_CAR
---WORLD_VEHICLE_SALTON_DIRT_BIKE
---WORLD_VEHICLE_TRUCK_LOGS
---```
---
---@param ped Ped
---@param scenarioName string
---@param unkDelay number
---@param playEnterAnim boolean
function TaskStartScenarioInPlace(ped, scenarioName, unkDelay, playEnterAnim) end

---**`TASK` `client` [`0xE5DA8615A6180789`](https://docs.fivem.net/natives/?_0xE5DA8615A6180789)**
---
---```
---Makes the ped run to take cover
---```
---
---@param ped Ped
function TaskStayInCover(ped) end

---**`TASK` `client` [`0xAA5DC05579D60BD9`](https://docs.fivem.net/natives/?_0xAA5DC05579D60BD9)**
---
---```
---Stealth kill action name hashes:
---stealth kills can be found here: Grand Theft Auto V\common.rpf\data\action\stealth_kills.meta
---...
---{
---    "ACT_stealth_kill_a",
---    "ACT_stealth_kill_weapon",
---    "ACT_stealth_kill_b",
---    "ACT_stealth_kill_c",
---    "ACT_stealth_kill_d",
---    "ACT_stealth_kill_a_gardener"
---}
---Only known script using this native: fbi4_prep2
---EXAMPLE:
---ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_a"), 1f, 0);ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_knife"), 1f, 0);
---Also it may be important to note, that each time this task is called, it's followed by AI::CLEAR_PED_TASKS on the target
---```
---
---@param killer Ped
---@param target Ped
---@param actionType Hash
---@param p3 number
---@param p4 any
function TaskStealthKill(killer, target, actionType, p3, p4) end

---**`TASK` `client` [`0x3FA00D4F4641BFAE`](https://docs.fivem.net/natives/?_0x3FA00D4F4641BFAE)**
---
---```
---NativeDB Added Parameter 2: Any p1
---```
---
---@param ped Ped
function TaskStopPhoneGestureAnimation(ped) end

---**`TASK` `client` [`0xA21C51255B205245`](https://docs.fivem.net/natives/?_0xA21C51255B205245)**
---
---@param ped Ped
---@param p1 boolean
function TaskSwapWeapon(ped, p1) end

---**`TASK` `client` [`0x2047C02158D6405A`](https://docs.fivem.net/natives/?_0x2047C02158D6405A)**
---
---```
---This function is called on peds in vehicles.
---anim: animation name
---p2, p3, p4: "sweep_low", "sweep_med" or "sweep_high"
---p5: no idea what it does but is usually -1
---```
---
---@param ped Ped
---@param anim string
---@param p2 string
---@param p3 string
---@param p4 string
---@param p5 number
---@param vehicle Vehicle
---@param p7 number
---@param p8 number
function TaskSweepAimEntity(ped, anim, p2, p3, p4, p5, vehicle, p7, p8) end

---**`TASK` `client` [`0x7AFE8FDC10BC07D2`](https://docs.fivem.net/natives/?_0x7AFE8FDC10BC07D2)**
---
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 number
---@param p7 number
---@param p8 number
---@param p9 number
---@param p10 number
function TaskSweepAimPosition(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

---**`TASK` `client` [`0xEEA929141F699854`](https://docs.fivem.net/natives/?_0xEEA929141F699854)**
---
---```
--- TASK::TASK_SYNCHRONIZED_SCENE(ped, scene, "creatures@rottweiler@in_vehicle@std_car", "get_in", 1000.0, -8.0, 4, 0, 0x447a0000, 0);
---```
---
---@param ped Ped
---@param scene number
---@param animDictionary string
---@param animationName string
---@param speed number
---@param speedMultiplier number
---@param duration number
---@param flag number
---@param playbackRate number
---@param p9 any
function TaskSynchronizedScene(
	ped,
	scene,
	animDictionary,
	animationName,
	speed,
	speedMultiplier,
	duration,
	flag,
	playbackRate,
	p9
)
end

---**`TASK` `client` [`0x7285951DBF6B5A51`](https://docs.fivem.net/natives/?_0x7285951DBF6B5A51)**
---
---```
---In every case of this native, I've only seen the first parameter passed as 0, although I believe it's a Ped after seeing tasks around it using 0. That's because it's used in a Sequence Task.
---The last 3 parameters are definitely coordinates after seeing them passed in other scripts, and even being used straight from the player's coordinates.
------
---It seems that - in the decompiled scripts - this native was used on a ped who was in a vehicle to throw a projectile out the window at the player. This is something any ped will naturally do if they have a throwable and they are doing driveby-combat (although not very accurately).
---It is possible, however, that this is how SWAT throws smoke grenades at the player when in cover.
-------------------------------------------------------
---The first comment is right it definately is the ped as if you look in script finale_heist2b.c line 59628 in Xbox Scripts atleast you will see task_throw_projectile and the first param is Local_559[2 <14>] if you look above it a little bit line 59622 give_weapon_to_ped uses the same exact param Local_559[2 <14>] and we all know the first param of that native is ped. So it guaranteed has to be ped. 0 just may mean to use your ped by default for some reason.
---```
---
---```
---NativeDB Added Parameter 5: Any p4
---NativeDB Added Parameter 6: Any p5
---```
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
function TaskThrowProjectile(ped, x, y, z) end

---**`TASK` `client` [`0xAC96609B9995EDF8`](https://docs.fivem.net/natives/?_0xAC96609B9995EDF8)**
---
---```
---used in sequence task
---both parameters seems to be always 0
---```
---
---@param p0 boolean
---@param p1 boolean
function TaskToggleDuck(p0, p1) end

---**`TASK` `client` [`0x1DDA930A0AC38571`](https://docs.fivem.net/natives/?_0x1DDA930A0AC38571)**
---
---```
---duration in milliseconds
---```
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param duration number
function TaskTurnPedToFaceCoord(ped, x, y, z, duration) end

---**`TASK` `client` [`0x5AD23D40115353AC`](https://docs.fivem.net/natives/?_0x5AD23D40115353AC)**
---
---```
---duration: the amount of time in milliseconds to do the task. -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped
---```
---
---@param ped Ped
---@param entity Entity
---@param duration number
function TaskTurnPedToFaceEntity(ped, entity, duration) end

---**`TASK` `client` [`0xBD2A8EC3AF4DE7DB`](https://docs.fivem.net/natives/?_0xBD2A8EC3AF4DE7DB)**
---
---```
---Actually has 3 params, not 2.
---p0: Ped
---p1: int (or bool?)
---p2: int
---```
---
---```
---NativeDB Added Parameter 3: Any p2
---```
---
---@param ped Ped
---@param p1 number
function TaskUseMobilePhone(ped, p1) end

---**`TASK` `client` [`0x5EE02954A14C69DB`](https://docs.fivem.net/natives/?_0x5EE02954A14C69DB)**
---
---@param ped Ped
---@param duration number
function TaskUseMobilePhoneTimed(ped, duration) end

---**`TASK` `client` [`0x9FDA1B3D7E7028B3`](https://docs.fivem.net/natives/?_0x9FDA1B3D7E7028B3)**
---
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 any
function TaskUseNearestScenarioChainToCoord(p0, p1, p2, p3, p4, p5) end

---**`TASK` `client` [`0x97A28E63F0BA5631`](https://docs.fivem.net/natives/?_0x97A28E63F0BA5631)**
---
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 any
function TaskUseNearestScenarioChainToCoordWarp(p0, p1, p2, p3, p4, p5) end

---**`TASK` `client` [`0x277F471BA9DB000B`](https://docs.fivem.net/natives/?_0x277F471BA9DB000B)**
---
---```
---Updated variables
---An alternative to TASK::TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP. Makes the ped walk to the scenario instead.
---```
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param distance number
---@param duration number
function TaskUseNearestScenarioToCoord(ped, x, y, z, distance, duration) end

---**`TASK` `client` [`0x58E2E0F23F6B76C3`](https://docs.fivem.net/natives/?_0x58E2E0F23F6B76C3)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param radius number
---@param p5 any
function TaskUseNearestScenarioToCoordWarp(ped, x, y, z, radius, p5) end

---**`TASK` `client` [`0x447C1E9EF844BC0F`](https://docs.fivem.net/natives/?_0x447C1E9EF844BC0F)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
function TaskVehicleAimAtCoord(ped, x, y, z) end

---**`TASK` `client` [`0xE41885592B08B097`](https://docs.fivem.net/natives/?_0xE41885592B08B097)**
---
---@param ped Ped
---@param target Ped
function TaskVehicleAimAtPed(ped, target) end

---**`TASK` `client` [`0x3C08A8E30363B353`](https://docs.fivem.net/natives/?_0x3C08A8E30363B353)**
---
---```
---chases targetEnt fast and aggressively
-----
---Makes ped (needs to be in vehicle) chase targetEnt.
---```
---
---@param driver Ped
---@param targetEnt Entity
function TaskVehicleChase(driver, targetEnt) end

---**`TASK` `client` [`0xE2A2AA2F659D77A7`](https://docs.fivem.net/natives/?_0xE2A2AA2F659D77A7)**
---
---```
---info about driving modes: HTTP://gtaforums.com/topic/822314-guide-driving-styles/
------------------------------------------------------------------
---Passing P6 value as floating value didn't throw any errors, though unsure what is it exactly, looks like radius or something.
---P10 though, it is mentioned as float, however, I used bool and set it to true, that too worked.
---Here the e.g. code I used
---Function.Call(Hash.TASK_VEHICLE_DRIVE_TO_COORD, Ped, Vehicle, Cor X, Cor Y, Cor Z, 30f, 1f, Vehicle.GetHashCode(), 16777216, 1f, true);
---```
---
---@param ped Ped
---@param vehicle Vehicle
---@param x number
---@param y number
---@param z number
---@param speed number
---@param p6 any
---@param vehicleModel Hash
---@param drivingMode number
---@param stopRange number
---@param p10 number
function TaskVehicleDriveToCoord(ped, vehicle, x, y, z, speed, p6, vehicleModel, drivingMode, stopRange, p10) end

---**`TASK` `client` [`0x158BB33F920D360C`](https://docs.fivem.net/natives/?_0x158BB33F920D360C)**
---
---You can let your character drive to the destination at the speed and driving style you set. You can use map marks to set the destination.
---
---@param ped Ped Ped id for the task.
---@param vehicle Vehicle Vehicle entity id for the task.
---@param x number Destination X coordinate.
---@param y number Destination Y coordinate.
---@param z number Destination Z coordinate.
---@param speed number Speed of driving.
---@param driveMode number More info can be found [here](https://vespura.com/fivem/drivingstyle/)
---@param stopRange number Stops in the specific range near the destination. 20.0 works fine.
function TaskVehicleDriveToCoordLongrange(ped, vehicle, x, y, z, speed, driveMode, stopRange) end

---**`TASK` `client` [`0x480142959D337D00`](https://docs.fivem.net/natives/?_0x480142959D337D00)**
---
---Drive randomly with no destination set.
---
---@param ped Ped Ped id for the task.
---@param vehicle Vehicle Vehicle entity id for the task.
---@param speed number Speed of driving.
---@param drivingStyle number More info can be found [here](https://vespura.com/fivem/drivingstyle/)
function TaskVehicleDriveWander(ped, vehicle, speed, drivingStyle) end

---**`TASK` `client` [`0x0FA6E4B75F302400`](https://docs.fivem.net/natives/?_0x0FA6E4B75F302400)**
---
---```
---Makes a ped follow the targetVehicle with <minDistance> in between.
---note: minDistance is ignored if drivingstyle is avoiding traffic, but Rushed is fine.
---Mode: The mode defines the relative position to the targetVehicle. The ped will try to position its vehicle there.
----1 = behind
---0 = ahead
---1 = left
---2 = right
---3 = back left
---4 = back right
---if the target is closer than noRoadsDistance, the driver will ignore pathing/roads and follow you directly.
---Driving Styles guide: gtaforums.com/topic/822314-guide-driving-styles/
---```
---
---@param ped Ped
---@param vehicle Vehicle
---@param targetVehicle Vehicle
---@param mode number
---@param speed number
---@param drivingStyle number
---@param minDistance number
---@param p7 number
---@param noRoadsDistance number
function TaskVehicleEscort(ped, vehicle, targetVehicle, mode, speed, drivingStyle, minDistance, p7, noRoadsDistance) end

---**`TASK` `client` [`0xFC545A9F0626E3B6`](https://docs.fivem.net/natives/?_0xFC545A9F0626E3B6)**
---
---```
---Makes a ped in a vehicle follow an entity (ped, vehicle, etc.)
---drivingStyle: http://gtaforums.com/topic/822314-guide-driving-styles/
---```
---
---@param driver Ped
---@param vehicle Vehicle
---@param targetEntity Entity
---@param speed number
---@param drivingStyle number
---@param minDistance number
function TaskVehicleFollow(driver, vehicle, targetEntity, speed, drivingStyle, minDistance) end

---**`TASK` `client` [`0x3123FAA6DB1CF7ED`](https://docs.fivem.net/natives/?_0x3123FAA6DB1CF7ED)**
---
---```
---task_vehicle_follow_waypoint_recording(Ped p0, Vehicle p1, string p2, int p3, int p4, int p5, int p6, float.x p7, float.Y p8, float.Z p9, bool p10, int p11)
---p2 = Waypoint recording string (found in update\update.rpf\x64\levels\gta5\waypointrec.rpf
---p3 = 786468
---p4 = 0
---p5 = 16
---p6 = -1 (angle?)
---p7/8/9 = usually v3.zero
---p10 = bool (repeat?)
---p11 = 1073741824
----khorio
---```
---
---@param ped Ped
---@param vehicle Vehicle
---@param WPRecording string
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 boolean
---@param p9 number
function TaskVehicleFollowWaypointRecording(ped, vehicle, WPRecording, p3, p4, p5, p6, p7, p8, p9) end

---**`TASK` `client` [`0x195AEEB13CEFE2EE`](https://docs.fivem.net/natives/?_0x195AEEB13CEFE2EE)**
---
---```
---Differs from TASK_VEHICLE_DRIVE_TO_COORDS in that it will pick the shortest possible road route without taking one-way streets and other "road laws" into consideration.
---WARNING:
---A behaviorFlag value of 0 will result in a clunky, stupid driver!
---Recommended settings:
---speed = 30.0f,
---behaviorFlag = 156,
---stoppingRange = 5.0f;
---If you simply want to have your driver move to a fixed location, call it only once, or, when necessary in the event of interruption.
---If using this to continually follow a Ped who is on foot:  You will need to run this in a tick loop.  Call it in with the Ped's updated coordinates every 20 ticks or so and you will have one hell of a smart, fast-reacting NPC driver -- provided he doesn't get stuck.  If your update frequency is too fast, the Ped may not have enough time to figure his way out of being stuck, and thus, remain stuck.  One way around this would be to implement an "anti-stuck" mechanism, which allows the driver to realize he's stuck, temporarily pause the tick, unstuck, then resume the tick.
---EDIT:  This is being discussed in more detail at http://gtaforums.com/topic/818504-any-idea-on-how-to-make-peds-clever-and-insanely-fast-c/
---```
---
---@param ped Ped
---@param vehicle Vehicle
---@param x number
---@param y number
---@param z number
---@param speed number
---@param behaviorFlag number
---@param stoppingRange number
function TaskVehicleGotoNavmesh(ped, vehicle, x, y, z, speed, behaviorFlag, stoppingRange) end

---**`TASK` `client` [`0x1E09C32048FEFD1C`](https://docs.fivem.net/natives/?_0x1E09C32048FEFD1C)**
---
---```
---pilot, vehicle and altitude are rather self-explanatory.
---p4: is unused variable in the function.
---entityToFollow: you can provide a Vehicle entity or a Ped entity, the heli will protect them.
---'targetSpeed':  The pilot will dip the nose AS MUCH AS POSSIBLE so as to reach this value AS FAST AS POSSIBLE.  As such, you'll want to modulate it as opposed to calling it via a hard-wired, constant #.
---'radius' isn't just "stop within radius of X of target" like with ground vehicles.  In this case, the pilot will fly an entire circle around 'radius' and continue to do so.
---NOT CONFIRMED:  p7 appears to be a FlyingStyle enum.  Still investigating it as of this writing, but playing around with values here appears to result in different -behavior- as opposed to offsetting coordinates, altitude, target speed, etc.
---NOTE: If the pilot finds enemies, it will engage them until it kills them, but will return to protect the ped/vehicle given shortly thereafter.
---```
---
---@param pilot Ped
---@param vehicle Vehicle
---@param entityToFollow Entity
---@param targetSpeed number
---@param p4 number
---@param radius number
---@param altitude number
---@param p7 number
function TaskVehicleHeliProtect(pilot, vehicle, entityToFollow, targetSpeed, p4, radius, altitude, p7) end

---**`TASK` `client` [`0x659427E0EF36BCDE`](https://docs.fivem.net/natives/?_0x659427E0EF36BCDE)**
---
---```
---missionType: https://alloc8or.re/gta5/doc/enums/eVehicleMissionType.txt
---```
---
---@param driver Ped
---@param vehicle Vehicle
---@param vehicleTarget Vehicle
---@param missionType number
---@param p4 number
---@param p5 any
---@param p6 number
---@param p7 number
---@param DriveAgainstTraffic boolean
function TaskVehicleMission(driver, vehicle, vehicleTarget, missionType, p4, p5, p6, p7, DriveAgainstTraffic) end

---**`TASK` `client` [`0xF0AF20AA7731F8C3`](https://docs.fivem.net/natives/?_0xF0AF20AA7731F8C3)**
---
---See [`TASK_VEHICLE_MISSION`](#\_0x659427E0EF36BCDE).
---
---@param ped Ped
---@param vehicle Vehicle
---@param x number
---@param y number
---@param z number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 number
---@param p9 number
---@param DriveAgainstTraffic boolean
function TaskVehicleMissionCoorsTarget(ped, vehicle, x, y, z, p5, p6, p7, p8, p9, DriveAgainstTraffic) end

---**`TASK` `client` [`0x9454528DF15D657A`](https://docs.fivem.net/natives/?_0x9454528DF15D657A)**
---
---See [`TASK_VEHICLE_MISSION`](#\_0x659427E0EF36BCDE).
---
---@param ped Ped
---@param vehicle Vehicle
---@param pedTarget Ped
---@param missionType number
---@param maxSpeed number
---@param drivingStyle number
---@param minDistance number
---@param p7 number
---@param DriveAgainstTraffic boolean
function TaskVehicleMissionPedTarget(
	ped,
	vehicle,
	pedTarget,
	missionType,
	maxSpeed,
	drivingStyle,
	minDistance,
	p7,
	DriveAgainstTraffic
)
end

---**`TASK` `client` [`0x0F3E34E968EA374E`](https://docs.fivem.net/natives/?_0x0F3E34E968EA374E)**
---
---```
---Modes:
---0 - ignore heading
---1 - park forward
---2 - park backwards
---Depending on the angle of approach, the vehicle can park at the specified heading or at its exact opposite (-180) angle.
---Radius seems to define how close the vehicle has to be -after parking- to the position for this task considered completed. If the value is too small, the vehicle will try to park again until it's exactly where it should be. 20.0 Works well but lower values don't, like the radius is measured in centimeters or something.
---```
---
---@param ped Ped
---@param vehicle Vehicle
---@param x number
---@param y number
---@param z number
---@param heading number
---@param mode number
---@param radius number
---@param keepEngineOn boolean
function TaskVehiclePark(ped, vehicle, x, y, z, heading, mode, radius, keepEngineOn) end

---**`TASK` `client` [`0x69F5C3BD0F3EBD89`](https://docs.fivem.net/natives/?_0x69F5C3BD0F3EBD89)**
---
---```
---Most probably plays a specific animation on vehicle. For example getting chop out of van etc...
---Here's how its used -
---TASK::TASK_VEHICLE_PLAY_ANIM(l_325, "rcmnigel1b", "idle_speedo");
---TASK::TASK_VEHICLE_PLAY_ANIM(l_556[0/*1*/], "missfra0_chop_drhome", "InCar_GetOutofBack_Speedo");
---FYI : Speedo is the name of van in which chop was put in the mission.
---```
---
---@param vehicle Vehicle
---@param animationSet string
---@param animationName string
function TaskVehiclePlayAnim(vehicle, animationSet, animationName) end

---**`TASK` `client` [`0x5190796ED39C9B6D`](https://docs.fivem.net/natives/?_0x5190796ED39C9B6D)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param p4 number
function TaskVehicleShootAtCoord(ped, x, y, z, p4) end

---**`TASK` `client` [`0x10AB107B887214D8`](https://docs.fivem.net/natives/?_0x10AB107B887214D8)**
---
---@param ped Ped
---@param target Ped
---@param p2 number
function TaskVehicleShootAtPed(ped, target, p2) end

---**`TASK` `client` [`0xC429DCEEB339E129`](https://docs.fivem.net/natives/?_0xC429DCEEB339E129)**
---
---```
---'1 - brake
---'3 - brake + reverse
---'4 - turn left 90 + braking
---'5 - turn right 90 + braking
---'6 - brake strong (handbrake?) until time ends
---'7 - turn left + accelerate
---'7 - turn right + accelerate
---'9 - weak acceleration
---'10 - turn left + restore wheel pos to center in the end
---'11 - turn right + restore wheel pos to center in the end
---'13 - turn left + go reverse
---'14 - turn left + go reverse
---'16 - crash the game after like 2 seconds :)
---'17 - keep actual state, game crashed after few tries
---'18 - game crash
---'19 - strong brake + turn left/right
---'20 - weak brake + turn left then turn right
---'21 - weak brake + turn right then turn left
---'22 - brake + reverse
---'23 - accelerate fast
---'24 - brake
---'25 - brake turning left then when almost stopping it turns left more
---'26 - brake turning right then when almost stopping it turns right more
---'27 - brake until car stop or until time ends
---'28 - brake + strong reverse acceleration
---'30 - performs a burnout (brake until stop + brake and accelerate)
---'31 - accelerate + handbrake
---'32 - accelerate very strong
---Seems to be this:
---Works on NPCs, but overrides their current task. If inside a task sequence (and not being the last task), "time" will work, otherwise the task will be performed forever until tasked with something else
---```
---
---@param driver Ped
---@param vehicle Vehicle
---@param action number
---@param time number
function TaskVehicleTempAction(driver, vehicle, action, time) end

---**`TASK` `client` [`0xE054346CA3A0F315`](https://docs.fivem.net/natives/?_0xE054346CA3A0F315)**
---
---Makes a ped wander/patrol around the specified area.
---
---The ped will continue to wander after getting distracted, but only if this additional task is temporary, ie. killing a target, after killing the target it will continue to wander around.
---
---Use `GetIsTaskActive(ped, 222)` to check if the ped is still wandering the area.
---
---Example code:
---```lua
----- Load model for panther
---local model = `a_c_panther`
---RequestModel(model)
---while not HasModelLoaded(model) do
---  Citizen.Wait(0)
---end
---
----- Spawn a panther at current coordinates
---local coords = GetEntityCoords(PlayerPedId())
---local ped = CreatePed(0, model, coords.x, coords.y, coords.z, 0.0, true)
---
----- Make sure the ped doesn't flee or gets distracted
---SetBlockingOfNonTemporaryEvents(ped, true)
---
----- Make ped wander in spawned area with radius of 100 meters, will wander at least 2 meters and wait for around 10 seconds between patrols
---TaskWanderInArea(ped, coords.x, coords.y, coords.z, 100.0, 2, 10.0)
---
----- Check if the ped is wandering
----- Tasks don't trigger instantly, so wait a bit before checking
---Citizen.Wait(1000)
---print(GetIsTaskActive(ped, 222)) -- 1
---```
---
---@param ped Ped The ped which will wander the area.
---@param x number The X coordinate.
---@param y number The Y coordinate
---@param z number The Z coordinate
---@param radius number The radius of the area to wander around in
---@param minimalLength number The minimal length it will wander before waiting timeBetweenWalks seconds before continuing
---@param timeBetweenWalks number The length of time the ped will stand still/rest between walks
function TaskWanderInArea(ped, x, y, z, radius, minimalLength, timeBetweenWalks) end

---**`TASK` `client` [`0xBB9CE077274F6A1B`](https://docs.fivem.net/natives/?_0xBB9CE077274F6A1B)**
---
---```
---Makes ped walk around the area.
---set p1 to 10.0f and p2 to 10 if you want the ped to walk anywhere without a duration.
---```
---
---@param ped Ped
---@param p1 number
---@param p2 number
function TaskWanderStandard(ped, p1, p2) end

---**`TASK` `client` [`0x9A7D091411C5F684`](https://docs.fivem.net/natives/?_0x9A7D091411C5F684)**
---
---@param ped Ped
---@param vehicle Vehicle
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
function TaskWarpPedIntoVehicle(ped, vehicle, seatIndex) end

---**`TASK` `client` [`0xCDDC2B77CE54AC6E`](https://docs.fivem.net/natives/?_0xCDDC2B77CE54AC6E)**
---
---```
---NativeDB Added Parameter 5: Any p4
---NativeDB Added Parameter 6: Any p5
---```
---
---@param ped Ped
---@param target Ped
---@param time number
---@param p3 number
function TaskWrithe(ped, target, time, p3) end

---**`TASK` `client` [`0x67406F2C8F87FC4F`](https://docs.fivem.net/natives/?_0x67406F2C8F87FC4F)**
---
---@param ped Ped
function UncuffPed(ped) end

---**`TASK` `client` [`0x9724FB59A3E72AD0`](https://docs.fivem.net/natives/?_0x9724FB59A3E72AD0)**
---
---@param p0 Ped
---@param p1 Ped
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 boolean
function UpdateTaskAimGunScriptedTarget(p0, p1, p2, p3, p4, p5) end

---**`TASK` `client` [`0xA98FCAFD7893C834`](https://docs.fivem.net/natives/?_0xA98FCAFD7893C834)**
---
---@param ped Ped
---@param duration number
function UpdateTaskHandsUpDuration(ped, duration) end

---**`TASK` `client` [`0xE4973DBDBE6E44B3`](https://docs.fivem.net/natives/?_0xE4973DBDBE6E44B3)**
---
---@param ped Ped
---@param entity Entity
function UpdateTaskSweepAimEntity(ped, entity) end

---**`TASK` `client` [`0xBB106883F5201FC4`](https://docs.fivem.net/natives/?_0xBB106883F5201FC4)**
---
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
function UpdateTaskSweepAimPosition(p0, p1, p2, p3) end

---**`TASK` `client` [`0x5A353B8E6B1095B5`](https://docs.fivem.net/natives/?_0x5A353B8E6B1095B5)**
---
---@param name string Waypoint recording name.
---@param p1 boolean
---@param p2 number
---@param p3 number
function UseWaypointRecordingAsAssistedMovementRoute(name, p1, p2, p3) end

---**`TASK` `client` [`0x121F0593E0A431D7`](https://docs.fivem.net/natives/?_0x121F0593E0A431D7)**
---
---@param vehicle Vehicle
---@param speed number
function VehicleWaypointPlaybackOverrideSpeed(vehicle, speed) end

---**`TASK` `client` [`0x8A4E6AC373666BC5`](https://docs.fivem.net/natives/?_0x8A4E6AC373666BC5)**
---
---@param vehicle Vehicle
function VehicleWaypointPlaybackPause(vehicle) end

---**`TASK` `client` [`0xDC04FCAA7839D492`](https://docs.fivem.net/natives/?_0xDC04FCAA7839D492)**
---
---@param vehicle Vehicle
function VehicleWaypointPlaybackResume(vehicle) end

---**`TASK` `client` [`0x5CEB25A7D2848963`](https://docs.fivem.net/natives/?_0x5CEB25A7D2848963)**
---
---@param vehicle Vehicle
function VehicleWaypointPlaybackUseDefaultSpeed(vehicle) end

---**`TASK` `client` [`0x701375A7D43F01CB`](https://docs.fivem.net/natives/?_0x701375A7D43F01CB)**
---
---@param p0 any
---@return boolean
function WaypointPlaybackGetIsPaused(p0) end

---**`TASK` `client` [`0x7D7D2B47FA788E85`](https://docs.fivem.net/natives/?_0x7D7D2B47FA788E85)**
---
---@param p0 any
---@param p1 number
---@param p2 boolean
function WaypointPlaybackOverrideSpeed(p0, p1, p2) end

---**`TASK` `client` [`0x0F342546AA06FED5`](https://docs.fivem.net/natives/?_0x0F342546AA06FED5)**
---
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function WaypointPlaybackPause(p0, p1, p2) end

---**`TASK` `client` [`0x244F70C84C547D2D`](https://docs.fivem.net/natives/?_0x244F70C84C547D2D)**
---
---@param p0 any
---@param p1 boolean
---@param p2 any
---@param p3 any
function WaypointPlaybackResume(p0, p1, p2, p3) end

---**`TASK` `client` [`0x8968400D900ED8B3`](https://docs.fivem.net/natives/?_0x8968400D900ED8B3)**
---
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 boolean
function WaypointPlaybackStartAimingAtCoord(p0, p1, p2, p3, p4) end

---**`TASK` `client` [`0x20E330937C399D29`](https://docs.fivem.net/natives/?_0x20E330937C399D29)**
---
---@param p0 any
---@param p1 any
---@param p2 boolean
function WaypointPlaybackStartAimingAtPed(p0, p1, p2) end

---**`TASK` `client` [`0x057A25CFCC9DB671`](https://docs.fivem.net/natives/?_0x057A25CFCC9DB671)**
---
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 boolean
---@param p5 any
function WaypointPlaybackStartShootingAtCoord(p0, p1, p2, p3, p4, p5) end

---**`TASK` `client` [`0xE70BA7B90F8390DC`](https://docs.fivem.net/natives/?_0xE70BA7B90F8390DC)**
---
---@param p0 any
---@param p1 any
---@param p2 boolean
---@param p3 any
function WaypointPlaybackStartShootingAtPed(p0, p1, p2, p3) end

---**`TASK` `client` [`0x47EFA040EBB8E2EA`](https://docs.fivem.net/natives/?_0x47EFA040EBB8E2EA)**
---
---@param p0 any
function WaypointPlaybackStopAimingOrShooting(p0) end

---**`TASK` `client` [`0x6599D834B12D0800`](https://docs.fivem.net/natives/?_0x6599D834B12D0800)**
---
---@param p0 any
function WaypointPlaybackUseDefaultSpeed(p0) end

---**`TASK` `client` [`0xB629A298081F876F`](https://docs.fivem.net/natives/?_0xB629A298081F876F)**
---
---```
---For a full list of the points, see here: goo.gl/wIH0vn
---```
---
---@param name string
---@param x number
---@param y number
---@param z number
---@param point number
---@return boolean, number
function WaypointRecordingGetClosestWaypoint(name, x, y, z, point) end

---**`TASK` `client` [`0x2FB897405C90B361`](https://docs.fivem.net/natives/?_0x2FB897405C90B361)**
---
---```
---For a full list of the points, see here: goo.gl/wIH0vn
---```
---
---@param name string
---@param point number
---@param coord vector3
---@return boolean, vector3
function WaypointRecordingGetCoord(name, point, coord) end

---**`TASK` `client` [`0x5343532C01A07234`](https://docs.fivem.net/natives/?_0x5343532C01A07234)**
---
---```
---For a full list of the points, see here: goo.gl/wIH0vn
---```
---
---@param name string
---@param points number
---@return boolean, number
function WaypointRecordingGetNumPoints(name, points) end

---**`TASK` `client` [`0x005622AEBC33ACA9`](https://docs.fivem.net/natives/?_0x005622AEBC33ACA9)**
---
---@param name string
---@param point number
---@return number
function WaypointRecordingGetSpeedAtPoint(name, point) end

---**`TASK` `client` [`0xDBBC7A2432524127`](https://docs.fivem.net/natives/?_0xDBBC7A2432524127)**
---
---```
---CLEAR_*
---
---NativeDB Introduced: v1290
---```
---
---@param vehicle Vehicle The vehicle to have tasks cleared
function ClearVehicleTasks(vehicle) end

---**`TASK` `client` [`0x44AB0B3AFECCE242`](https://docs.fivem.net/natives/?_0x44AB0B3AFECCE242)**
---
---```
---NativeDB Introduced: v1493
---```
---
---@param ped Ped
---@param signalName string
---@return number
function GetTaskMoveNetworkSignalFloat(ped, signalName) end

---**`TASK` `client` [`0x373EF409B82697A3`](https://docs.fivem.net/natives/?_0x373EF409B82697A3)**
---
---```
---NativeDB Introduced: v1493
---```
---
---@param ped Ped
---@param signalName string
---@param value number
function SetTaskMoveNetworkSignalFloat_2(ped, signalName, value) end

---**`TASK` `client` [`0x19D1B791CB3670FE`](https://docs.fivem.net/natives/?_0x19D1B791CB3670FE)**
---
---@param ped Ped
---@param ped2 Ped
function TaskAgitatedAction(ped, ped2) end

---**`TASK` `client` [`0xB385523325077210`](https://docs.fivem.net/natives/?_0xB385523325077210)**
---
---```
---NativeDB Introduced: v1290
---```
---
---@param pilot Ped
---@param heli1 Vehicle
---@param heli2 Vehicle
---@param p3 number
---@param p4 number
---@param p5 number
function TaskHeliEscortHeli(pilot, heli1, heli2, p3, p4, p5) end

---**`TASK` `client` [`0x3D45B0B355C5E0C9`](https://docs.fivem.net/natives/?_0x3D45B0B355C5E0C9)**
---
---```
---Used only once in the scripts (am_mp_nightclub)
---```
---
---```
---Used only once in the scripts (am_mp_nightclub)
---
---NativeDB Introduced: v1493
---```
---
---@param ped Ped
---@param p1 string
---@param data any
---@param p3 number
---@param p4 boolean
---@param animDict string
---@param flags number
function TaskMoveNetworkByNameWithInitParams(ped, p1, data, p3, p4, animDict, flags) end

---**`TASK` `client` [`0x8C33220C8D78CA0D`](https://docs.fivem.net/natives/?_0x8C33220C8D78CA0D)**
---
---@param ped Ped
---@param taskSequenceId number
function TaskPerformSequenceLocally(ped, taskSequenceId) end

---**`TASK` `client` [`0xF7F9DCCA89E7505B`](https://docs.fivem.net/natives/?_0xF7F9DCCA89E7505B)**
---
---```
---NativeDB Introduced: v1290
---```
---
---@param ped Ped
---@param vehicle Vehicle
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
---@param p7 any
---@param p8 any
---@param p9 any
function TaskPlaneGotoPreciseVtol(ped, vehicle, p2, p3, p4, p5, p6, p7, p8, p9) end

---**`TASK` `client` [`0x92C360B5F15D2302`](https://docs.fivem.net/natives/?_0x92C360B5F15D2302)**
---
---@param pilot Ped
---@param aircraft Vehicle
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
function TaskPlaneTaxi(pilot, aircraft, p2, p3, p4, p5, p6) end

---**`TASK` `client` [`0xEAF66ACDDC794793`](https://docs.fivem.net/natives/?_0xEAF66ACDDC794793)**
---
---Attaches a ped to a rope and allows player control to rappel down a wall.
---Disables all collisions while on the rope.
---
---NativeDB Introduced: v1868
---
---Example code:
---```lua
---local coords = vector3(258.68, -3311.5, 45.72)
---RopeLoadTextures()
---SetEntityCoords(PlayerPedId(), coords - vector3(0, 0, 10.0))
---local ropeId = AddRope(coords, -90.0, 90.0, -90.0, 78.0, 7, 78.0, 78.0, 1.2, false, false, true, 10.0, false, 0)
---TaskRappelDownWall(PlayerPedId(), coords, coords, -130.0, ropeId, "clipset@anim_heist@hs3f@ig1_rappel@male", 1)
---N_0xa1ae736541b0fca3(ropeId, true)
---PinRopeVertex(ropeId, (GetRopeVertexCount(ropeId) - 1), coords + vector3(0, 0, 1.0))
---RopeSetUpdateOrder(ropeId, 0)
---```
---
---@param ped Ped Ped to perform the task
---@param x1 number X coord to start the task
---@param y1 number Y coord to start the task
---@param z1 number Z coord to start the task
---@param x2 number Second X coord, uses the same position as above in the scripts
---@param y2 number Second Y coord
---@param z2 number Second Z coord
---@param minZ number Minimum Z that the player can descend to
---@param ropeId number Rope to attach this task to, must be created with [ADD_ROPE](#\_0xE832D760399EB220)
---@param clipset string Clipset to use for the task
---@param p10 any Usually 1 in the scripts
function TaskRappelDownWall(ped, x1, y1, z1, x2, y2, z2, minZ, ropeId, clipset, p10) end

---**`TASK` `client` [`0xC22B40579A498CA4`](https://docs.fivem.net/natives/?_0xC22B40579A498CA4)**
---
---Used in am_vehicle_spawn.ysc and am_mp_submarine.ysc.
---p0 is always 0, p5 is always 1
---p1 is the vehicle handle of the submarine. Submarine must have a driver, but the ped handle is not passed to the native.
---Speed can be set by calling SET_DRIVE_TASK_CRUISE_SPEED after
---
---```
---NativeDB Introduced: v2189
---```
---
---@param p0 any
---@param submarine Vehicle
---@param x number
---@param y number
---@param z number
---@param p5 any
function TaskSubmarineGotoAndStop(p0, submarine, x, y, z, p5) end

---**`TASK` `client` [`0x6919A2F136426098`](https://docs.fivem.net/natives/?_0x6919A2F136426098)**
---
---```
---NativeDB Introduced: v1868
---```
---
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function TaskWanderSpecific(p0, p1, p2, p3) end
