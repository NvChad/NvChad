---@meta

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param entity number 
---@param p1 any 
function N_undefined(entity, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param enabled boolean 
function SetVehicleIsInHurry(vehicle, enabled) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param modelHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param heading number 
---@param isNetwork boolean 
---@param bScriptHostVeh boolean 
---@param bDontAutoCreateDraftAnimals boolean 
---@param p8 boolean 
function CreateVehicle(modelHash, x, y, z, heading, isNetwork, bScriptHostVeh, bDontAutoCreateDraftAnimals, p8) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param modelHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param heading number 
---@param isNetwork boolean 
---@param bScriptHostVeh boolean 
---@param bDontAutoCreateDraftAnimals boolean 
---@param draftAnimalPopGroup number | string 
---@param p9 boolean 
function CreateDraftVehicle(modelHash, x, y, z, heading, isNetwork, bScriptHostVeh, bDontAutoCreateDraftAnimals, draftAnimalPopGroup, p9) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function DeleteVehicle(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function FadeAndDestroyVehicle(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsVehicleFadingOut(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleAllowHomingMissleLockon(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleAllowNoPassengersLockon(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param model number | string 
function IsVehicleModel(vehicle, model) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param volume volume 
---@param toggle boolean 
function SetAllVehicleGeneratorsDisabledForVolume(volume, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param p6 boolean 
---@param p7 boolean 
function SetAllVehicleGeneratorsActiveInArea(x1, y1, z1, x2, y2, z2, p6, p7) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function SetAllVehicleGeneratorsActive() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetVehicleOnGroundProperly(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsVehicleStopped(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetVehicleNumberOfPassengers(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetVehicleMaxNumberOfPassengers(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param modelHash number | string 
function GetVehicleModelNumberOfSeats(modelHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param seatIndex number 
function IsSeatWarpOnly(vehicle, seatIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param seatIndex number 
function GetVehicleTurretSeat(vehicle, seatIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param multiplier number 
function SetVehicleDensityMultiplierThisFrame(multiplier) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param multiplier number 
function SetRandomVehicleDensityMultiplierThisFrame(multiplier) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param multiplier number 
function SetParkedVehicleDensityMultiplierThisFrame(multiplier) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param toggle boolean 
function SetDisableRandomTrainsThisFrame(toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param doorLockStatus number 
function SetVehicleDoorsLocked(vehicle, doorLockStatus) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param doorId number 
---@param doorLockStatus number 
function SetVehicleIndividualDoorsLocked(vehicle, doorId, doorLockStatus) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param player number 
---@param toggle boolean 
function SetVehicleDoorsLockedForPlayer(vehicle, player, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param player number 
function GetVehicleDoorsLockedForPlayer(vehicle, player) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleDoorsLockedForAllPlayers(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param team number 
---@param toggle boolean 
function SetVehicleDoorsLockedForTeam(vehicle, team, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param team number 
function GetVehicleDoorsLockedForTeam(vehicle, team) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param isAudible boolean 
---@param isInvisible boolean 
---@param p3 any 
---@param p4 any 
function ExplodeVehicle(vehicle, isAudible, isInvisible, p3, p4) end

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
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function HideHorseReins(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function ShowHorseReins(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetBoatAnchor(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function N_undefined(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function CanAnchorBoatHere(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
---@param p2 boolean 
function SetBoatRemainsAnchoredWhilePlayerIsDriver(vehicle, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetForceLowLodAnchorMode(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param value number 
function SetBoatLowLodAnchorDistance(vehicle, value) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetBoatSinksWhenWrecked(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetForceHighLodVehicle(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleStrong(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param seatIndex number 
function IsVehicleSeatFree(vehicle, seatIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param seatIndex number 
function GetPedInVehicleSeat(vehicle, seatIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param seatIndex number 
function GetLastPedInVehicleSeat(vehicle, seatIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsDraftVehicle(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param harnessId number 
function GetPedInDraftHarness(vehicle, harnessId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param speed number 
function SetVehicleForwardSpeed(vehicle, speed) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param distance number 
---@param duration number 
---@param unknown boolean 
function BringVehicleToHalt(vehicle, distance, duration, unknown) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsVehicleBroughtToHalt(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function StopBringingVehicleToHalt(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param closeInstantly boolean 
function SetVehicleDoorsShut(vehicle, closeInstantly) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleTyresCanBurst(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param enabled boolean 
function SetVehicleWheelsCanBreak(vehicle, enabled) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleDoorsToOpenAtAnyDistance(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param doorId number 
---@param loose boolean 
---@param openInstantly boolean 
function SetVehicleDoorOpen(vehicle, doorId, loose, openInstantly) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param windowIndex number 
function RemoveVehicleWindow(vehicle, windowIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param dirtLevel number 
function SetVehicleDirtLevel2(vehicle, dirtLevel) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param mudLevel number 
function SetVehicleMudLevel(vehicle, mudLevel) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param state number 
function SetVehicleLights(vehicle, state) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param toggle boolean 
function SetRandomTrains(toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param configHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param direction boolean 
---@param p5 boolean 
function N_undefined(configHash, x, y, z, direction, p5) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
function N_undefined(trackIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function GetTrainTrackFromTrainVehicle(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
function GetTrainVehicleFromTrackIndex(trackIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param p1 number 
function N_undefined(trackIndex, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param p1 number 
function N_undefined(trackIndex, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param p1 number 
function N_undefined(trackIndex, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param p1 boolean 
function N_undefined(train, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param p1 number 
function N_undefined(trackIndex, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param p1 number 
function N_undefined(trackIndex, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param p1 number 
function N_undefined(trackIndex, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
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
function N_undefined(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param p1 number 
function N_undefined(trackIndex, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param p1 number 
function N_undefined(trackIndex, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param p1 number 
function N_undefined(trackIndex, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
function DoesTrainExistOnTrack(trackIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
function GetTrainPositionOnTrack(trackIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
function N_undefined(trackIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
function N_undefined(trackIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
function N_undefined(trackIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trainConfig number | string 
---@param x number 
---@param y number 
---@param z number 
---@param direction boolean 
---@param p5 boolean 
function N_undefined(trainConfig, x, y, z, direction, p5) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@param p6 any 
function N_undefined(p0, p1, p2, p3, p4, p5, p6) end

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
function N_undefined() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function N_undefined() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param x number 
---@param y number 
---@param z number 
function N_undefined(x, y, z) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param x number 
---@param y number 
---@param z number 
function GetTrackIndexFromCoords(x, y, z) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param x number 
---@param y number 
---@param z number 
function GetNearestTrainTrackPosition(x, y, z) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function DeleteAllTrains() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param speed number 
function SetTrainSpeed(train, speed) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param speed number 
function SetTrainMaxSpeed(train, speed) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param speed number 
function SetTrainCruiseSpeed(train, speed) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function GetTrainCarriageTrailerNumber(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trainConfig number | string 
---@param trainCarIndex number 
function GetTrainModelFromTrainConfigByCarIndex(trainConfig, trainCarIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trainConfig number | string 
function GetNumCarsFromTrainConfig(trainConfig) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function GetTrainCar(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param toggle boolean 
function SetTrainStopsForStations(train, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param p1 number 
function N_undefined(train, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function IsTrainWaitingAtStation(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function SetTrainHalt(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function SetTrainLeaveStation(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param toggle boolean 
function SetRandomBoats(toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param recording number 
---@param script const char 
function RequestVehicleRecording(recording, script) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param recording number 
---@param script const char 
function HasVehicleRecordingBeenLoaded(recording, script) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function RemoveVehicleRecording(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param recording number 
---@param time number 
---@param script const char 
function GetPositionOfVehicleRecordingAtTime(recording, time, script) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param recording number 
---@param time number 
---@param script const char 
function GetRotationOfVehicleRecordingAtTime(recording, time, script) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetTimePositionInRecording(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param recording number 
---@param script const char 
---@param p3 boolean 
function StartPlaybackRecordedVehicle(vehicle, recording, script, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function ForcePlaybackRecordedVehicleUpdate(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function StopPlaybackRecordedVehicle(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsPlaybackGoingOnForVehicle(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsPlaybackUsingAiGoingOnForVehicle(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param speed number 
function SetPlaybackSpeed(vehicle, speed) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param time number 
function SkipTimeInPlaybackRecordedVehicle(vehicle, time) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param modelHash number | string 
---@param flags number 
function GetClosestVehicle(x, y, z, radius, modelHash, flags) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param trailerNumber number 
function GetTrainCarriage(train, trailerNumber) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function DeleteMissionTrain(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param p1 boolean 
function SetMissionTrainAsNoLongerNeeded(train, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param x number 
---@param y number 
---@param z number 
function SetMissionTrainCoords(train, x, y, z) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param x number 
---@param y number 
---@param z number 
---@param direction boolean 
function SetMissionTrainWarpToCoords(train, x, y, z, direction) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param p1 boolean 
function N_undefined(train, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param model number | string 
function IsThisModelADraftVehicle(model) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param model number | string 
function IsThisModelABoat(model) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param model number | string 
function IsThisModelATrain(model) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param state boolean 
function SetVehicleCanBeTargetted(vehicle, state) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetDontAllowPlayerToEnterVehicleIfLockedForPlayer(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param state boolean 
function SetVehicleCanBeVisiblyDamaged(vehicle, state) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetVehicleHasUnbreakableLights(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetVehicleRespectsLocksWhenHasDriver(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetVehicleCanEjectPassengersIfLocked(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param dirtLevel number 
function SetVehicleDirtLevel(vehicle, dirtLevel) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param doorId number 
function IsVehicleDoorFullyOpen(vehicle, doorId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param value boolean 
---@param instantly boolean 
function SetVehicleEngineOn(vehicle, value, instantly) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleUndriveable(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleProvidesCover(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param doorId number 
---@param speed number 
---@param angle number 
function SetVehicleDoorControl(vehicle, doorId, speed, angle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param doorId number 
---@param p2 boolean 
---@param p3 boolean 
---@param p4 boolean 
function SetVehicleDoorLatched(vehicle, doorId, p2, p3, p4) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param doorId number 
---@param closeInstantly boolean 
function SetVehicleDoorShut(vehicle, doorId, closeInstantly) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param doorId number 
---@param deleteDoor boolean 
function SetVehicleDoorBroken(vehicle, doorId, deleteDoor) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleCanBreak(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleIsConsideredByPlayer(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetVehicleMayBeUsedByGotoPointAnyMeans(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetVehicleDoorLockStatus(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param doorId number 
---@param isBreakable boolean 
function SetDoorAllowedToBeBrokenOff(vehicle, doorId, isBreakable) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsVehicleOnAllWheels(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function GetTrainDirection(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
function GetTrainDirectionFromIndex(trackIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param trainTrack number | string 
---@param junctionIndex number 
function N_undefined(train, trainTrack, junctionIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trainTrack number | string 
---@param x number 
---@param y number 
---@param z number 
---@param junctionIndex number 
function GetTrainTrackJunctionAtCoords(trainTrack, x, y, z, junctionIndex) end

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
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trainTrack number | string 
---@param junctionIndex number 
---@param enabled boolean 
function SetTrainTrackJunctionSwitch(trainTrack, junctionIndex, enabled) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trainTrack number | string 
---@param junctionIndex number 
---@param enabled boolean 
function N_undefined(trainTrack, junctionIndex, enabled) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function SetAllJunctionsCleared() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param p1 any 
function N_undefined(trackIndex, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param x number 
---@param y number 
---@param z number 
---@param p4 any 
function N_undefined(trackIndex, x, y, z, p4) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param offset number 
function SetTrainOffsetFromStation(train, offset) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param p1 boolean 
function N_undefined(train, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param entity number 
function DetachWagonEntityFromTrain(entity) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function N_undefined(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function GetCurrentStationForTrain(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param stationIndex number 
function N_undefined(trackIndex, stationIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function N_undefined(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function GetCurrentTrackForTrain(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param stationIndex number 
function GetStationCoordsFromTrainStationData(trackIndex, stationIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function GetTrackIndexOfTrain(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param p1 boolean 
function N_undefined(train, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param p1 boolean 
function N_undefined(trackIndex, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param whistleSequence const char 
---@param p2 boolean 
---@param p3 boolean 
function TriggerTrainWhistle(train, whistleSequence, p2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param p1 boolean 
function N_undefined(train, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
function N_undefined(p0, p1, p2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function SetVehicleFixed(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetDisableVehiclePetrolTankFires(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetDisableVehiclePetrolTankDamage(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetDisableVehicleEngineFires(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetVehicleLimitSpeedWhenPlayerInactive(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetVehicleStopInstantlyWhenPlayerInactive(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
function RemoveVehiclesFromGeneratorsInArea(p0, p1, p2, p3, p4, p5) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param value number 
function SetVehicleSteerBias(vehicle, value) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param extraId number 
function IsVehicleExtraTurnedOn(vehicle, extraId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param extraId number 
---@param disable boolean 
function SetVehicleExtra(vehicle, extraId, disable) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param extraId number 
function DoesExtraExist(vehicle, extraId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param xOffset number 
---@param yOffset number 
---@param zOffset number 
---@param damage number 
---@param radius number 
---@param p6 boolean 
function SetVehicleDamage(vehicle, xOffset, yOffset, zOffset, damage, radius, p6) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetVehicleEngineHealth(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param health number 
function SetVehicleEngineHealth(vehicle, health) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetVehiclePetrolTankHealth(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param health number 
function SetVehiclePetrolTankHealth(vehicle, health) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param stuckType number 
---@param ms number 
function IsVehicleStuckTimerUp(vehicle, stuckType, ms) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param nullAttributes number 
function ResetVehicleStuckTimer(vehicle, nullAttributes) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
---@param p2 boolean 
function IsVehicleDriveable(vehicle, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsVehicleWrecked(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsVehicleOnFire(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param owned boolean 
function SetVehicleHasBeenOwnedByPlayer(vehicle, owned) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param duration number 
---@param mode number | string 
---@param forever boolean 
function StartVehicleHorn(vehicle, duration, mode, forever) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleHasStrongAxles(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param snowLevel number 
function SetVehicleSnowLevel(vehicle, snowLevel) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param wetLevel number 
function SetVehicleWetLevel(vehicle, wetLevel) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param tintId number 
function SetVehicleTint(vehicle, tintId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param liveryIndex number 
function SetVehicleLivery(vehicle, liveryIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetVehicleTint(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetVehicleLivery(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param windowIndex number 
function IsVehicleWindowIntact(vehicle, windowIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function AreAnyVehicleSeatsFree(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleExplodesOnHighExplosionDamage(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetAllowVehicleExplodesOnContact(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
function IsAnyVehicleNearPoint(x, y, z, radius) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function RequestVehicleHighDetailModel(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicleHash number | string 
---@param vehicleAsset number 
function RequestVehicleAsset(vehicleHash, vehicleAsset) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicleAsset number 
function HasVehicleAssetLoaded(vehicleAsset) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicleAsset number 
function RemoveVehicleAsset(vehicleAsset) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
---@param p2 any 
function SetVehicleAutomaticallyAttaches(vehicle, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 number 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsVehicleInBurnout(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleHandbrake(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function InstantlyFillVehiclePopulation() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function HasInstantFillVehiclePopulationFinished() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param trailer number 
function GetVehicleTrailerVehicle(vehicle, trailer) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetVehicleEstimatedMaxSpeed(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
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
function AddRoadNodeSpeedZone(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param speedzone number 
function RemoveRoadNodeSpeedZone(speedzone) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ped number 
---@param vehicle number 
---@param seatIndex number 
---@param side boolean 
---@param onEnter boolean 
function IsEntryPointForSeatClear(ped, vehicle, seatIndex, side, onEnter) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param seatIndex number 
function CanShuffleSeat(vehicle, seatIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param value number 
function ModifyVehicleTopSpeed(vehicle, value) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleStaysFrozenWhenCleanedUp(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleInfluencesWantedLevel(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsBoatGrounded(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetVehicleNotStealableAmbiently(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function LockDoorsWhenNoLongerNeeded(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function GetLastDrivenVehicle() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function ClearLastDrivenVehicle() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ped number 
---@param vehicle number 
function SetPedOwnsVehicle(ped, vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetVehicleOwner(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param multiplier number 
function SetVehicleLodMultiplier(vehicle, multiplier) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param lodLevel number 
function SetVehicleLodLevel(vehicle, lodLevel) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetForceVehicleEngineDamageByBullet(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param sourceVehicle number 
---@param targetVehicle number 
function CopyVehicleDamages(sourceVehicle, targetVehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
function SetVehicleShootAtTarget(p0, p1, p2, p3, p4, p5) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetForceHdVehicle(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function TrackVehicleVisibility(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsVehicleVisible(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 boolean 
function SetEnableVehicleSlipstreaming(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleInactiveDuringPlayback(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleEngineCanDegrade(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param isStolen boolean 
function SetVehicleIsStolen(vehicle, isStolen) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

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
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param disabled boolean 
---@param weaponHash number | string 
---@param vehicle number 
---@param owner number 
function DisableVehicleWeapon(disabled, weaponHash, vehicle, owner) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleCanBeUsedByFleeingPeds(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleKeepEngineOnWhenAbandoned(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleWheelsCanBreakOffWhenBlowUp(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 number 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleAiCanUseExclusiveSeats(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param ped number 
---@param index number 
function SetVehicleExclusiveDriver(vehicle, ped, index) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ped number 
---@param vehicle number 
---@param outIndex number 
function IsPedExclusiveDriverOfVehicle(ped, vehicle, outIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param disable boolean 
function SetDisableSuperdummy(vehicle, disable) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetVehicleBodyHealth(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param value number 
function SetVehicleBodyHealth(vehicle, value) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function SetVehicleBrokenPartsDontAffectAiHandling(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number 
---@param p1 number 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function N_undefined() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
function SetHorseTrafficGroupingDistribution(p0, p1, p2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param mount number 
---@param draft number 
---@param harnessId number 
function AttachDraftVehicleHarnessPed(mount, draft, harnessId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param draft number 
---@param harnessId number 
function DetachDraftVehicleHarnessFromIndex(draft, harnessId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param draft number 
---@param ped number 
function DetachDraftVehicleHarnessPed(draft, ped) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param modelHash number | string 
function GetNumDraftVehicleHarnessPed(modelHash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
---@param x number 
---@param y number 
---@param z number 
---@param distance number 
---@param direction boolean 
function GetCheckpointTrainSpawnLocation(trackIndex, x, y, z, distance, direction) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param left number 
---@param right number 
function GetRowingOars(vehicle, left, right) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetDriverOfVehicle(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param coachrobberyLoot number | string 
function SetForceCoachRobberyLoot(vehicle, coachrobberyLoot) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param x number 
---@param y number 
---@param z number 
---@param p4 boolean 
---@param p5 number 
function N_undefined(vehicle, x, y, z, p4, p5) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param x number 
---@param y number 
---@param z number 
function N_undefined(vehicle, x, y, z) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetBreakableVehicleLocksState(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param index number 
function GetBreakableVehicleLockObject(vehicle, index) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetNumBreakableVehicleLockObjects(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param toggle boolean 
function SetBreakableVehicleLocksUnbreakable(vehicle, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 any 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 any 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param wheelIndex number 
---@param destroyingForce number 
function BreakOffDraftWheel(vehicle, wheelIndex, destroyingForce) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param expected number 
---@param actual number 
function GetDraftAnimalCount(vehicle, expected, actual) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param draft number 
---@param canDetach boolean 
function SetDraftVehicleAnimalsCanDetach(draft, canDetach) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param draft number 
---@param canBreak boolean 
function SetDraftVehicleYokeCanBreak(draft, canBreak) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param trackIndex number 
---@param x number 
---@param y number 
---@param z number 
function AddTrainTemporaryStop(train, trackIndex, x, y, z) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param wagon number 
---@param p1 boolean 
function N_undefined(wagon, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param wagon number 
---@param p1 number 
---@param p2 boolean 
function N_undefined(wagon, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param wagon number 
---@param p1 number 
function N_undefined(wagon, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param wheel number 
function IsVehicleWheelDestroyed(vehicle, wheel) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function N_undefined(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param wagon number 
function N_undefined(wagon) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param amount number 
---@param p2 number 
---@param p3 boolean 
function SetVehicleDeterioration(vehicle, amount, p2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param doorId number 
function IsVehicleDoorBroken(vehicle, doorId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param wheelIndex number 
function BreakOffVehicleWheel(vehicle, wheelIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function DeleteVehicleLanterns(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param speed number 
function SetDraftVehicleDesiredSpeed(vehicle, speed) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetDraftVehicleDesiredSpeed(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 number 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param p1 boolean 
function N_undefined(train, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param p1 boolean 
function N_undefined(train, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
---@param p1 boolean 
function N_undefined(train, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function N_undefined(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param x number 
---@param y number 
---@param z number 
function N_undefined(vehicle, x, y, z) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param p1 boolean 
function N_undefined(vehicle, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param train number 
function HasTrainLoaded(train) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param configHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param direction boolean 
---@param passengers boolean 
---@param p6 boolean 
---@param conductor boolean 
function CreateMissionTrain(configHash, x, y, z, direction, passengers, p6, conductor) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
function N_undefined(p0, p1, p2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

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
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param balloon number 
---@param p1 number 
function SetBalloonHoverState(balloon, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param allow boolean 
function SetDraftVehicleAllowDraftAnimalAutoCreation(vehicle, allow) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param seed number 
function SetDraftAnimalRandomSeed(vehicle, seed) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

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
---@param vehicle number 
function GetVehicleIsPropSetApplied(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param height number 
---@param immediately boolean 
function SetBatchTarpHeight(vehicle, height, immediately) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@param p6 any 
function N_undefined(p0, p1, p2, p3, p4, p5, p6) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

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
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trackIndex number 
function N_undefined(trackIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trainCarriage number 
---@param p1 boolean 
function N_undefined(trainCarriage, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

