---@meta

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2CE544C68FB812A0)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param speed number 
---@param p5 boolean 
---@return number retval 
function AddRoadNodeSpeedZone(x, y, z, radius, speed, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2CE544C68FB812A0)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param speed number 
---@param p5 boolean 
---@return number retval 
function N_0x2CE544C68FB812A0(x, y, z, radius, speed, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2CE544C68FB812A0)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param speed number 
---@param p5 boolean 
---@return number retval 
function AddSpeedZoneForCoord(x, y, z, radius, speed, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x54B0F614960F4A5F)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@return any retval 
function AddVehicleCombatAngledAvoidanceArea(p0, p1, p2, p3, p4, p5, p6) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x54B0F614960F4A5F)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@return any retval 
function N_0x54B0F614960F4A5F(p0, p1, p2, p3, p4, p5, p6) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x54B0F614960F4A5F)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@return any retval 
function AddVehicleCombatAvoidanceArea(p0, p1, p2, p3, p4, p5, p6) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2FA9923062DD396C)
---@param p0 any 
---@param p1 number 
---@param p2 any 
---@param p3 boolean 
---@param p4 boolean 
---@param p5 boolean 
---@param p6 any 
function AddVehicleStuckCheckWithWarp(p0, p1, p2, p3, p4, p5, p6) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x99AD4CCCB128CBC9)
---@param vehicle number 
function AddVehiclePhoneExplosiveDevice(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x99AD4CCCB128CBC9)
---@param vehicle number 
function N_0x99AD4CCCB128CBC9(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB72E26D81006005B)
---@param vehicle number 
function AddVehicleUpsidedownCheck(vehicle) end

---```
---Returns false if every seat is occupied.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2D34FC3BC4ADB780)
---@param vehicle number 
---@return boolean retval 
function AreAnyVehicleSeatsFree(vehicle) end

---```
---Returns false if every seat is occupied.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2D34FC3BC4ADB780)
---@param vehicle number 
---@return boolean retval 
function IsAnyVehicleSeatEmpty(vehicle) end

---```
---Appears to return false if any window is broken.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x11D862A3E977A9EF)
---@param vehicle number 
---@return boolean retval 
function AreAllVehicleWindowsIntact(vehicle) end

---```
---Appears to return false if any window is broken.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x11D862A3E977A9EF)
---@param vehicle number 
---@return boolean retval 
function AreAllVehicleWindowsIntact(vehicle) end

---Returns true when the bomb bay doors of this plane are open. False if they're closed.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD0917A423314BBA8)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---
---if AreBombBayDoorsOpen(vehicle) then
---    print("The doors are open!")
---else
---    print("The doors are closed!")
---end
---```
---@param aircraft number The vehicle to check the bomb bay doors on.
---@return boolean retval A bool indicating the state of the doors (true = open, false = closed).
function AreBombBayDoorsOpen(aircraft) end

---Returns true when the bomb bay doors of this plane are open. False if they're closed.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD0917A423314BBA8)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---
---if AreBombBayDoorsOpen(vehicle) then
---    print("The doors are open!")
---else
---    print("The doors are closed!")
---end
---```
---@param aircraft number The vehicle to check the bomb bay doors on.
---@return boolean retval A bool indicating the state of the doors (true = open, false = closed).
function N_0xD0917A423314BBA8(aircraft) end

---Returns true when the bomb bay doors of this plane are open. False if they're closed.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD0917A423314BBA8)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---
---if AreBombBayDoorsOpen(vehicle) then
---    print("The doors are open!")
---else
---    print("The doors are closed!")
---end
---```
---@param aircraft number The vehicle to check the bomb bay doors on.
---@return boolean retval A bool indicating the state of the doors (true = open, false = closed).
function GetAreBombBayDoorsOpen(aircraft) end

---Returns whether the outrigger legs are deployed for the vehicle.
---The Chernobog is one of the few vehicles with outrigger legs.
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A9128352EAC9E85)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---local deployed = AreOutriggerLegsDeployed(vehicle)
---print("deploy state:", deployed)```
---@param vehicle number 
---@return boolean retval The deployment state of the vehicle's outrigger legs
function AreOutriggerLegsDeployed(vehicle) end

---Returns whether the outrigger legs are deployed for the vehicle.
---The Chernobog is one of the few vehicles with outrigger legs.
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A9128352EAC9E85)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---local deployed = AreOutriggerLegsDeployed(vehicle)
---print("deploy state:", deployed)```
---@param vehicle number 
---@return boolean retval The deployment state of the vehicle's outrigger legs
function N_0x3A9128352EAC9E85(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6A98C2ECF57FA5D4)
---@param handler number 
---@param container number 
function AttachContainerToHandlerFrame(handler, container) end

---Only used with the "akula" in the decompiled native scripts.
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAEF12960FA943792)
---@param vehicle number 
---@return boolean retval 
function AreHeliStubWingsDeployed(vehicle) end

---Only used with the "akula" in the decompiled native scripts.
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAEF12960FA943792)
---@param vehicle number 
---@return boolean retval 
function N_0xAEF12960FA943792(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1DD82F3CCF9A01E)
---@param vehicle number 
---@param entity number 
---@param p2 number 
---@param x number 
---@param y number 
---@param z number 
function AttachEntityToCargobob(vehicle, entity, p2, x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1DD82F3CCF9A01E)
---@param vehicle number 
---@param entity number 
---@param p2 number 
---@param x number 
---@param y number 
---@param z number 
function N_0xA1DD82F3CCF9A01E(vehicle, entity, p2, x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1DD82F3CCF9A01E)
---@param vehicle number 
---@param entity number 
---@param p2 number 
---@param x number 
---@param y number 
---@param z number 
function AttachEntityToCargobob(vehicle, entity, p2, x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x755D6D5267CBBD7E)
---@param plane number 
---@return boolean retval 
function ArePlanePropellersIntact(plane) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x755D6D5267CBBD7E)
---@param plane number 
---@return boolean retval 
function N_0x755D6D5267CBBD7E(plane) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x755D6D5267CBBD7E)
---@param plane number 
---@return boolean retval 
function ArePropellersUndamaged(plane) end

---```
---HookOffset defines where the hook is attached. leave at 0 for default attachment.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x29A16F8D621C4508)
---@param towTruck number 
---@param vehicle number 
---@param rear boolean 
---@param hookOffsetX number 
---@param hookOffsetY number 
---@param hookOffsetZ number 
function AttachVehicleToTowTruck(towTruck, vehicle, rear, hookOffsetX, hookOffsetY, hookOffsetZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5991A01434CE9677)
---@param plane number 
---@return boolean retval 
function ArePlaneWingsIntact(plane) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5991A01434CE9677)
---@param plane number 
---@return boolean retval 
function N_0x5991A01434CE9677(plane) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5991A01434CE9677)
---@param plane number 
---@return boolean retval 
function AddAMarkerOverVehicle(plane) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5991A01434CE9677)
---@param plane number 
---@return boolean retval 
function AreVehicleWingsIntact(plane) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3C7D42D58F770B54)
---@param vehicle number 
---@param trailer number 
---@param radius number 
function AttachVehicleToTrailer(vehicle, trailer, radius) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x26C10ECBDA5D043B)
---@param vehicle number 
---@return boolean retval 
function CanAnchorBoatHere(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x26C10ECBDA5D043B)
---@param vehicle number 
---@return boolean retval 
function N_0x26C10ECBDA5D043B(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x26C10ECBDA5D043B)
---@param vehicle number 
---@return boolean retval 
function GetBoatAnchor(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x26C10ECBDA5D043B)
---@param vehicle number 
---@return boolean retval 
function CanBoatBeAnchored(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x30785D90C956BF35)
---@param vehicle number The vehicle to check.
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return boolean retval 
function CanShuffleSeat(vehicle, seatIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x16B5E274BDE402F8)
---Example: 
---```-- Request the model before creating it
---local truckTrailer = CreateVehicle(`tr2`, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.0), true)
---
----- Open the rear ramp so you can drive a vehicle on
---SetVehicleDoorOpen(truckTrailer, 5, false, false)
---
----- Get the vehicle you're in and it's coords and rotation
---local veh = GetVehiclePedIsIn(PlayerPedId())
---local vehCoords = GetEntityCoords(veh)
---local vehRotation = GetEntityRotation(veh)
---
----- Park the car where on the trailer you want it, you could make sure your vehicle is touching the trailer first using "IsEntityTouchingEntity"
---AttachVehicleOnToTrailer(veh, truckTrailer, 0.0, 0.0, 0.0, GetOffsetFromEntityGivenWorldCoords(truckTrailer, vehCoords), vehRotation, false)
---
----- Do the following to detach the vehicle from the trailer
---DetachEntity(veh, true, false)```
---@param vehicle number The vehicle to attach to the trailer
---@param trailer number The trailer to attach the vehicle to
---@param offsetX number The x offset of the vehicle
---@param offsetY number The y offset of the vehicle
---@param offsetZ number The z offset of the vehicle
---@param coordsX number The x coords of where you want the vehicle placed (must be an offset from the trailer itself)
---@param coordsY number The y coords of where you want the vehicle placed (must be an offset from the trailer itself)
---@param coordsZ number The z coords of where you want the vehicle placed (must be an offset from the trailer itself)
---@param rotationX number The x rotation of where you want the vehicle placed
---@param rotationY number The y rotation of where you want the vehicle placed
---@param rotationZ number The z rotation of where you want the vehicle placed
---@param disableColls number Should actually be a boolean, this will disable the collision between the vehicle you're attaching and the trailer
function AttachVehicleOnToTrailer(vehicle, trailer, offsetX, offsetY, offsetZ, coordsX, coordsY, coordsZ, rotationX, rotationY, rotationZ, disableColls) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x16B5E274BDE402F8)
---Example: 
---```-- Request the model before creating it
---local truckTrailer = CreateVehicle(`tr2`, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.0), true)
---
----- Open the rear ramp so you can drive a vehicle on
---SetVehicleDoorOpen(truckTrailer, 5, false, false)
---
----- Get the vehicle you're in and it's coords and rotation
---local veh = GetVehiclePedIsIn(PlayerPedId())
---local vehCoords = GetEntityCoords(veh)
---local vehRotation = GetEntityRotation(veh)
---
----- Park the car where on the trailer you want it, you could make sure your vehicle is touching the trailer first using "IsEntityTouchingEntity"
---AttachVehicleOnToTrailer(veh, truckTrailer, 0.0, 0.0, 0.0, GetOffsetFromEntityGivenWorldCoords(truckTrailer, vehCoords), vehRotation, false)
---
----- Do the following to detach the vehicle from the trailer
---DetachEntity(veh, true, false)```
---@param vehicle number The vehicle to attach to the trailer
---@param trailer number The trailer to attach the vehicle to
---@param offsetX number The x offset of the vehicle
---@param offsetY number The y offset of the vehicle
---@param offsetZ number The z offset of the vehicle
---@param coordsX number The x coords of where you want the vehicle placed (must be an offset from the trailer itself)
---@param coordsY number The y coords of where you want the vehicle placed (must be an offset from the trailer itself)
---@param coordsZ number The z coords of where you want the vehicle placed (must be an offset from the trailer itself)
---@param rotationX number The x rotation of where you want the vehicle placed
---@param rotationY number The y rotation of where you want the vehicle placed
---@param rotationZ number The z rotation of where you want the vehicle placed
---@param disableColls number Should actually be a boolean, this will disable the collision between the vehicle you're attaching and the trailer
function N_0x16B5E274BDE402F8(vehicle, trailer, offsetX, offsetY, offsetZ, coordsX, coordsY, coordsZ, rotationX, rotationY, rotationZ, disableColls) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x55E1D2758F34E437)
---@param vehicle number 
function ClearVehicleCustomPrimaryColour(vehicle) end

---```
---p2 is unknown and is always -1 in the script natives.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4127F1D84E347769)
---@param vehicle number The vehicle which should be attached
---@param cargobob number The cargobob
---@param p2 number 
---@param x number 
---@param y number 
---@param z number 
function AttachVehicleToCargobob(vehicle, cargobob, p2, x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5FFBDEEC3E8E2009)
---@param vehicle number 
function ClearVehicleCustomSecondaryColour(vehicle) end

---```
---This native makes the vehicle stop immediately, as happens when we enter a MP garage.  
---. distance defines how far it will travel until stopping. Garage doors use 3.0.  
---. If killEngine is set to 1, you cannot resume driving the vehicle once it stops. This looks like is a bitmapped integer.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x260BE8F09E326A20)
---@param vehicle number 
---@param distance number 
---@param duration number 
---@param unknown boolean 
function BringVehicleToHalt(vehicle, distance, duration, unknown) end

---```
---This native makes the vehicle stop immediately, as happens when we enter a MP garage.  
---. distance defines how far it will travel until stopping. Garage doors use 3.0.  
---. If killEngine is set to 1, you cannot resume driving the vehicle once it stops. This looks like is a bitmapped integer.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x260BE8F09E326A20)
---@param vehicle number 
---@param distance number 
---@param duration number 
---@param unknown boolean 
function N_0x260BE8F09E326A20(vehicle, distance, duration, unknown) end

---```
---This native makes the vehicle stop immediately, as happens when we enter a MP garage.  
---. distance defines how far it will travel until stopping. Garage doors use 3.0.  
---. If killEngine is set to 1, you cannot resume driving the vehicle once it stops. This looks like is a bitmapped integer.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x260BE8F09E326A20)
---@param vehicle number 
---@param distance number 
---@param duration number 
---@param unknown boolean 
function SetVehicleHalt(vehicle, distance, duration, unknown) end

---```
---Differs from 0x26C10ECBDA5D043B in that 0x140EFCC10 (1604 retail) is called with a2 = true.
---
---NativeDB Introduced: v678
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x24F4121D07579880)
---@param vehicle number 
---@return boolean retval 
function CanAnchorBoatHere2(vehicle) end

---```
---Differs from 0x26C10ECBDA5D043B in that 0x140EFCC10 (1604 retail) is called with a2 = true.
---
---NativeDB Introduced: v678
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x24F4121D07579880)
---@param vehicle number 
---@return boolean retval 
function CanBoatBeAnchored2(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D6AF961B72728AE)
---@param vehicle number 
function ClearVehicleRouteHistory(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D6AF961B72728AE)
---@param vehicle number 
function N_0x6D6AF961B72728AE(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE01903C47C7AC89E)
function ClearLastDrivenVehicle() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE01903C47C7AC89E)
function N_0xE01903C47C7AC89E() end

---```
---Works for vehicles with a retractable landing gear  
---landing gear states:  
---0: Deployed  
---1: Closing  
---2: Opening  
---3: Retracted  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCFC8BE9A5E1FE575)
---@param vehicle number 
---@param state number 
function ControlLandingGear(vehicle, state) end

---```
---Works for vehicles with a retractable landing gear  
---landing gear states:  
---0: Deployed  
---1: Closing  
---2: Opening  
---3: Retracted  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCFC8BE9A5E1FE575)
---@param vehicle number 
---@param state number 
function SetVehicleLandingGear(vehicle, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA3F739ABDDCF21F)
function ClearVehiclePhoneExplosiveDevice() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA3F739ABDDCF21F)
function N_0xAA3F739ABDDCF21F() end

---Copies sourceVehicle's damage (broken bumpers, broken lights, etc.) to targetVehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE44A982368A4AF23)
---@param sourceVehicle number The source to copy the vehicle damage.
---@param targetVehicle number The target to paste the vehicle damage.
function CopyVehicleDamages(sourceVehicle, targetVehicle) end

---Copies sourceVehicle's damage (broken bumpers, broken lights, etc.) to targetVehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE44A982368A4AF23)
---@param sourceVehicle number The source to copy the vehicle damage.
---@param targetVehicle number The target to paste the vehicle damage.
function N_0xE44A982368A4AF23(sourceVehicle, targetVehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3556041742A0DC74)
---@param vehicle number 
function CloseBombBayDoors(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3556041742A0DC74)
---@param vehicle number 
function N_0x3556041742A0DC74(vehicle) end

---```
---Drops the Hook/Magnet on a cargobob  
---state  
---enum eCargobobHook  
---{  
---	CARGOBOB_HOOK = 0,  
---	CARGOBOB_MAGNET = 1,  
---};  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7BEB0C7A235F6F3B)
---@param cargobob number 
---@param state number 
function CreatePickUpRopeForCargobob(cargobob, state) end

---```
---Drops the Hook/Magnet on a cargobob  
---state  
---enum eCargobobHook  
---{  
---	CARGOBOB_HOOK = 0,  
---	CARGOBOB_MAGNET = 1,  
---};  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7BEB0C7A235F6F3B)
---@param cargobob number 
---@param state number 
function EnableCargobobHook(cargobob, state) end

---Creates a vehicle with the specified model at the specified position. This vehicle will initially be owned by the creating
---script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
---
---```
---NativeDB Added Parameter 8: BOOL p7
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAF35D0D2583051B0)
---Example: 
---```local ModelHash = `adder` -- Use Compile-time hashes to get the hash of this model
---if not IsModelInCdimage(ModelHash) then return end
---RequestModel(ModelHash) -- Request the model
---while not HasModelLoaded(ModelHash) do -- Waits for the model to load
---  Wait(0)
---end
---local MyPed = PlayerPedId()
---local Vehicle = CreateVehicle(ModelHash, GetEntityCoords(MyPed), GetEntityHeading(MyPed), true, false) -- Spawns a networked vehicle on your current coords
---SetModelAsNoLongerNeeded(ModelHash) -- removes model from game memory as we no longer need it```
---@param modelHash number | string The model of vehicle to spawn.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component.
---@param heading number Heading to face towards, in degrees.
---@param isNetwork boolean Whether to create a network object for the vehicle. If false, the vehicle exists only locally.
---@param netMissionEntity boolean Whether to register the vehicle as pinned to the script host in the R\* network model.
---@return number retval A script handle (fwScriptGuid index) for the vehicle, or `0` if the vehicle failed to be created.
function CreateVehicle(modelHash, x, y, z, heading, isNetwork, netMissionEntity) end

---Train models must be [requested](#\_0x963D27A58DF860AC) before use. See trains.xml for freight and metro variations.
---
---```
---NativeDB Added Parameter 6: Any p5
---NativeDB Added Parameter 7: Any p6
---```
---
---### Train Models:
---
---*   freight
---*   freightcar
---*   freightcar2 (Added v2372)
---*   freightcont1
---*   freightcont2
---*   freightgrain
---*   metrotrain
---*   tankercar
---[Native Documentation](https://docs.fivem.net/natives/?_0x63C6CCA8E68AE8C8)
---@param variation number 
---@param x number 
---@param y number 
---@param z number 
---@param direction boolean 
---@return number retval 
function CreateMissionTrain(variation, x, y, z, direction) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B76B14AE875C795)
---@param train number 
function DeleteMissionTrain(train) end

---```
---Creates a script vehicle generator at the given coordinates. Most parameters after the model hash are unknown.  
---Parameters:  
---a/w/s - Generator position  
---heading - Generator heading  
---p4 - Unknown (always 5.0)  
---p5 - Unknown (always 3.0)  
---modelHash - Vehicle model hash  
---p7/8/9/10 - Unknown (always -1)  
---p11 - Unknown (usually TRUE, only one instance of FALSE)  
---p12/13 - Unknown (always FALSE)  
---p14 - Unknown (usally FALSE, only two instances of TRUE)  
---p15 - Unknown (always TRUE)  
---p16 - Unknown (always -1)  
---Vector3 coords = GET_ENTITY_COORDS(PLAYER_PED_ID(), 0);	CREATE_SCRIPT_VEHICLE_GENERATOR(coords.x, coords.y, coords.z, 1.0f, 5.0f, 3.0f, GET_HASH_KEY("adder"), -1. -1, -1, -1, -1, true, false, false, false, true, -1);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9DEF883114668116)
---@param x number 
---@param y number 
---@param z number 
---@param heading number 
---@param p4 number 
---@param p5 number 
---@param modelHash number | string 
---@param p7 number 
---@param p8 number 
---@param p9 number 
---@param p10 number 
---@param p11 boolean 
---@param p12 boolean 
---@param p13 boolean 
---@param p14 boolean 
---@param p15 boolean 
---@param p16 number 
---@return number retval 
function CreateScriptVehicleGenerator(x, y, z, heading, p4, p5, modelHash, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x736A718577F39C7D)
function DeleteAllTrains() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x22102C9ABFCF125D)
---@param vehicleGenerator number 
function DeleteScriptVehicleGenerator(vehicleGenerator) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7C0043FDFF6436BC)
---@param vehicle number 
function DetachContainerFromHandlerFrame(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7C0043FDFF6436BC)
---@param vehicle number 
function N_0x7C0043FDFF6436BC(vehicle) end

---```
---Deletes a vehicle.  
---The vehicle must be a mission entity to delete, so call this before deleting: SET_ENTITY_AS_MISSION_ENTITY(vehicle, true, true);  
---eg how to use:  
---SET_ENTITY_AS_MISSION_ENTITY(vehicle, true, true);  
---DELETE_VEHICLE(&vehicle);  
---Deletes the specified vehicle, then sets the handle pointed to by the pointer to NULL.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA386986E786A54F)
---@param vehicle number 
function DeleteVehicle(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xADF7BE450512C12F)
---@param vehicle number 
---@return boolean retval 
function DetachVehicleFromAnyCargobob(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAF03011701811146)
---@param vehicle number 
---@param entity number 
---@return any retval 
function DetachEntityFromCargobob(vehicle, entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAF03011701811146)
---@param vehicle number 
---@param entity number 
---@return any retval 
function N_0xAF03011701811146(vehicle, entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0E21D3DF1051399D)
---@param vehicle number 
---@param cargobob number 
function DetachVehicleFromCargobob(vehicle, cargobob) end

---```
---First two parameters swapped. Scripts verify that towTruck is the first parameter, not the second.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC2DB6B6708350ED8)
---@param towTruck number 
---@param vehicle number 
function DetachVehicleFromTowTruck(towTruck, vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF49CF0270307CBE)
function DetonateVehiclePhoneExplosiveDevice() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF49CF0270307CBE)
function N_0xEF49CF0270307CBE() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF49CF0270307CBE)
function RequestVehiclePhoneExplosion() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x23428FC53C60919C)
---@param vehicle number 
---@param p1 boolean 
---@param p2 boolean 
function DisablePlaneAileron(vehicle, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x32CAEDF24A583345)
---@param vehicle number 
function DisableVehicleTurretMovementThisFrame(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x32CAEDF24A583345)
---@param vehicle number 
function N_0x32CAEDF24A583345(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD0E9CE05A1E68CD8)
---@param vehicle number 
---@return boolean retval 
function DetachVehicleFromAnyTowTruck(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x90532EDF0D2BDD86)
---@param vehicle number 
function DetachVehicleFromTrailer(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x500873A45724C863)
---@param vehicle number 
---@param propeller number 
function DisableIndividualPlanePropeller(vehicle, propeller) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x500873A45724C863)
---@param vehicle number 
---@param propeller number 
function N_0x500873A45724C863(vehicle, propeller) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x500873A45724C863)
---@param vehicle number 
---@param propeller number 
function DisablePlanePropeller(vehicle, propeller) end

---```
---Returns true only when the hook is active, will return false if the magnet is active  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1821D91AD4B56108)
---@param cargobob number 
---@return boolean retval 
function DoesCargobobHavePickUpRope(cargobob) end

---```
---Returns true only when the hook is active, will return false if the magnet is active  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1821D91AD4B56108)
---@param cargobob number 
---@return boolean retval 
function IsCargobobHookActive(cargobob) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x83F813570FF519DE)
---@param vehicle number 
---@param toggle boolean 
function DisableVehicleNeonLights(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x83F813570FF519DE)
---@param vehicle number 
---@param toggle boolean 
function N_0x83F813570FF519DE(vehicle, toggle) end

---```
---Checks via CVehicleModelInfo  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1262D55792428154)
---@param vehicle number 
---@param extraId number 
---@return boolean retval 
function DoesExtraExist(vehicle, extraId) end

---```
---how does this work?  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF4FC6A6F67D8D856)
---@param disabled boolean 
---@param weaponHash number | string 
---@param vehicle number 
---@param owner number 
function DisableVehicleWeapon(disabled, weaponHash, vehicle, owner) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6086BC836400876)
---@param vehicleGenerator number 
---@return boolean retval 
function DoesScriptVehicleGeneratorExist(vehicleGenerator) end

---Disables collision for this vehicle (maybe it also supports other entities, not sure).
---Only world/building/fixed world objects will have their collisions disabled, props, peds, or any other entity still collides with the vehicle.
---
---[Example video](https://streamable.com/6n45d5)
---
---Not sure if there is a native (and if so, which one) that resets the collisions.
---[Native Documentation](https://docs.fivem.net/natives/?_0x75627043C6AA90AD)
---@param vehicle number the vehicle to disable world collisions for
function DisableVehicleWorldCollision(vehicle) end

---Disables collision for this vehicle (maybe it also supports other entities, not sure).
---Only world/building/fixed world objects will have their collisions disabled, props, peds, or any other entity still collides with the vehicle.
---
---[Example video](https://streamable.com/6n45d5)
---
---Not sure if there is a native (and if so, which one) that resets the collisions.
---[Native Documentation](https://docs.fivem.net/natives/?_0x75627043C6AA90AD)
---@param vehicle number the vehicle to disable world collisions for
function N_0x75627043C6AA90AD(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x956B409B984D9BF7)
---@param decorator string 
---@return boolean retval 
function DoesVehicleExistWithDecorator(decorator) end

---```
---Returns true only when the magnet is active, will return false if the hook is active  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E08BF5B3722BAC9)
---@param cargobob number 
---@return boolean retval 
function DoesCargobobHavePickupMagnet(cargobob) end

---```
---Returns true only when the magnet is active, will return false if the hook is active  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E08BF5B3722BAC9)
---@param cargobob number 
---@return boolean retval 
function IsCargobobMagnetActive(cargobob) end

---```
---Returns true only when the magnet is active, will return false if the hook is active  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E08BF5B3722BAC9)
---@param cargobob number 
---@return boolean retval 
function DoesCargobobHavePickupMagnet(cargobob) end

---```
---Returns true if the vehicle has the FLAG_ALLOWS_RAPPEL flag set.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4E417C547182C84D)
---@param vehicle number 
---@return boolean retval 
function DoesVehicleAllowRappel(vehicle) end

---```
---Returns true if the vehicle has the FLAG_ALLOWS_RAPPEL flag set.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4E417C547182C84D)
---@param vehicle number 
---@return boolean retval 
function N_0x4E417C547182C84D(vehicle) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE43701C36CAFF1A4)
---@param vehicle number 
---@return boolean retval 
function DoesVehicleHaveLandingGear(vehicle) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE43701C36CAFF1A4)
---@param vehicle number 
---@return boolean retval 
function N_0xE43701C36CAFF1A4(vehicle) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE43701C36CAFF1A4)
---@param vehicle number 
---@return boolean retval 
function GetVehicleHasLandingGear(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8AC862B0B32C5B80)
---@param vehicle number 
---@return boolean retval 
function DoesVehicleHaveRoof(vehicle) end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x99015ED7DBEA5113)
---@param vehicle number 
---@return boolean retval 
function DoesVehicleHaveSearchlight(vehicle) end

---```
---Maximum amount of vehicles with vehicle stuck check appears to be 16.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x57E4C39DE5EE8470)
---@param vehicle number 
---@return boolean retval 
function DoesVehicleHaveStuckVehicleCheck(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x786A4EB67B01BF0B)
---@param vehicle number 
---@param p1 boolean 
function ExplodeVehicleInCutscene(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x25ECB9F8017D98E0)
---@param vehicle number 
---@return boolean retval 
function DoesVehicleHaveWeapons(vehicle) end

---Native is significantly more complicated than simply generating a random vector & length.
---
---The 'point' is either 400.0 or 250.0 units away from the Ped's current coordinates; and paths into functions like rage::grcViewport\_\__IsSphereVisible.
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8DC9675797123522)
---@param ped number 
---@return vector3 retval 
function FindRandomPointInSpace(ped) end

---Native is significantly more complicated than simply generating a random vector & length.
---
---The 'point' is either 400.0 or 250.0 units away from the Ped's current coordinates; and paths into functions like rage::grcViewport\_\__IsSphereVisible.
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8DC9675797123522)
---@param ped number 
---@return vector3 retval 
function N_0x8DC9675797123522(ped) end

---```
---Checks if vehicle tyre at index exists. Also returns false if tyre was removed.
---```
---
---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x534E36D4DB9ECC5D)
---@param vehicle number 
---@param tyreIndex number 
---@return boolean retval 
function DoesVehicleTyreExist(vehicle, tyreIndex) end

---```
---Checks if vehicle tyre at index exists. Also returns false if tyre was removed.
---```
---
---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x534E36D4DB9ECC5D)
---@param vehicle number 
---@param tyreIndex number 
---@return boolean retval 
function N_0x534E36D4DB9ECC5D(vehicle, tyreIndex) end

---```
---Finds the vehicle that is carrying this entity with a handler frame.
---The model of the entity must be prop_contr_03b_ld or the function will return 0.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x375E7FC44F21C8AB)
---@param entity number 
---@return number retval 
function FindVehicleCarryingThisEntity(entity) end

---```
---Finds the vehicle that is carrying this entity with a handler frame.
---The model of the entity must be prop_contr_03b_ld or the function will return 0.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x375E7FC44F21C8AB)
---@param entity number 
---@return number retval 
function N_0x375E7FC44F21C8AB(entity) end

---```
---Finds the vehicle that is carrying this entity with a handler frame.
---The model of the entity must be prop_contr_03b_ld or the function will return 0.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x375E7FC44F21C8AB)
---@param entity number 
---@return number retval 
function GetVehicleAttachedToEntity(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE38CB9D7D39FDBCC)
---@param vehicle number 
---@param x number 
---@param y number 
---@param z number 
function EjectJb700Roof(vehicle, x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE38CB9D7D39FDBCC)
---@param vehicle number 
---@param x number 
---@param y number 
---@param z number 
function N_0xE38CB9D7D39FDBCC(vehicle, x, y, z) end

---```
---Often called after START_PLAYBACK_RECORDED_VEHICLE and SKIP_TIME_IN_PLAYBACK_RECORDED_VEHICLE; similar in use to FORCE_ENTITY_AI_AND_ANIMATION_UPDATE.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F2E4E06DEA8992B)
---@param vehicle number 
---@param p1 boolean 
function ForcePlaybackRecordedVehicleUpdate(vehicle, p1) end

---```
---Often called after START_PLAYBACK_RECORDED_VEHICLE and SKIP_TIME_IN_PLAYBACK_RECORDED_VEHICLE; similar in use to FORCE_ENTITY_AI_AND_ANIMATION_UPDATE.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F2E4E06DEA8992B)
---@param vehicle number 
---@param p1 boolean 
function N_0x1F2E4E06DEA8992B(vehicle, p1) end

---```
---Explodes a selected vehicle.  
---Vehicle vehicle = Vehicle you want to explode.  
---BOOL isAudible = If explosion makes a sound.  
---BOOL isInvisible = If the explosion is invisible or not.  
---First BOOL does not give any visual explosion, the vehicle just falls apart completely but slowly and starts to burn.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA71116ADF5B514C)
---@param vehicle number 
---@param isAudible boolean 
---@param isInvisible boolean 
function ExplodeVehicle(vehicle, isAudible, isInvisible) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B8E1BF04B51F2E8)
---@param vehArray number 
---@return number retval 
function GetAllVehicles(vehArray) end

---```
---Same call as VEHICLE::_0x0F3B4D4E43177236
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC1F981A6F74F0C23)
---@param vehicle number 
---@param p1 boolean 
function GetBoatBoomPositionRatio2(vehicle, p1) end

---```
---Same call as VEHICLE::_0x0F3B4D4E43177236
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC1F981A6F74F0C23)
---@param vehicle number 
---@param p1 boolean 
function N_0xC1F981A6F74F0C23(vehicle, p1) end

---```
---Returns true if the vehicle has the FLAG_JUMPING_CAR flag set.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9078C0C5EF8C19E9)
---@param vehicle number 
---@return boolean retval 
function GetCanVehicleJump(vehicle) end

---```
---Returns true if the vehicle has the FLAG_JUMPING_CAR flag set.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9078C0C5EF8C19E9)
---@param vehicle number 
---@return boolean retval 
function HasVehicleJumpingAbility(vehicle) end

---```
---Returns true if the vehicle has the FLAG_JUMPING_CAR flag set.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9078C0C5EF8C19E9)
---@param vehicle number 
---@return boolean retval 
function DoesVehicleHaveJumpingAbility(vehicle) end

---Gets the position of the cargobob hook, in world coords.
---[Native Documentation](https://docs.fivem.net/natives/?_0xCBDB9B923CACC92D)
---@param cargobob number 
---@return vector3 retval 
function GetCargobobHookPosition(cargobob) end

---Gets the position of the cargobob hook, in world coords.
---[Native Documentation](https://docs.fivem.net/natives/?_0xCBDB9B923CACC92D)
---@param cargobob number 
---@return vector3 retval 
function N_0xCBDB9B923CACC92D(cargobob) end

---See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
---
---This function is coded to not work on vehicles of type: `CBike`, `Bmx`, `CBoat`, `CTrain`, and `CSubmarine`.
---[Native Documentation](https://docs.fivem.net/natives/?_0x772282EBEB95E682)
---@param vehicle number 
---@param windowIndex number 
function FixVehicleWindow(vehicle, windowIndex) end

---```
---Example usage  
---VEHICLE::GET_CLOSEST_VEHICLE(x, y, z, radius, hash, unknown leave at 70)   
---x, y, z: Position to get closest vehicle to.  
---radius: Max radius to get a vehicle.  
---modelHash: Limit to vehicles with this model. 0 for any.  
---flags: The bitwise flags altering the function's behaviour.  
---Does not return police cars or helicopters.  
---It seems to return police cars for me, does not seem to return helicopters, planes or boats for some reason  
---Only returns non police cars and motorbikes with the flag set to 70 and modelHash to 0. ModelHash seems to always be 0 when not a modelHash in the scripts, as stated above.   
---These flags were found in the b617d scripts: 0,2,4,6,7,23,127,260,2146,2175,12294,16384,16386,20503,32768,67590,67711,98309,100359.  
---Converted to binary, each bit probably represents a flag as explained regarding another native here: gtaforums.com/topic/822314-guide-driving-styles  
---Conversion of found flags to binary: pastebin.com/kghNFkRi  
---At exactly 16384 which is 0100000000000000 in binary and 4000 in hexadecimal only planes are returned.   
---It's probably more convenient to use worldGetAllVehicles(int *arr, int arrSize) and check the shortest distance yourself and sort if you want by checking the vehicle type with for example VEHICLE::IS_THIS_MODEL_A_BOAT  
----------------------------------------------------------------------------  
---Conclusion: This native is not worth trying to use. Use something like this instead: pastebin.com/xiFdXa7h
---Use flag 127 to return police cars
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF73EB622C4F1689B)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param modelHash number | string 
---@param flags number 
---@return number retval 
function GetClosestVehicle(x, y, z, radius, modelHash, flags) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x33506883545AC0DF)
---@param vehicle number 
---@param toggle boolean 
function ForceSubmarineSurfaceMode(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x33506883545AC0DF)
---@param vehicle number 
---@param toggle boolean 
function N_0x33506883545AC0DF(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x42BC05C27A946054)
---@param vehicle number 
---@return number retval 
function GetCurrentPlaybackForVehicle(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6636C535F6CC2725)
---@param vehicle number 
---@return number retval 
function GetBoatBoomPositionRatio(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6636C535F6CC2725)
---@param vehicle number 
---@return number retval 
function N_0x6636C535F6CC2725(vehicle) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x71AFB258CCED3A27)
---@param vehicle number 
---@return boolean retval 
function GetDoesVehicleHaveTombstone(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0F3B4D4E43177236)
---@param vehicle number 
---@param p1 boolean 
function GetBoatBoomPositionRatio3(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0F3B4D4E43177236)
---@param vehicle number 
---@param p1 boolean 
function N_0x0F3B4D4E43177236(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x99093F60746708CA)
---@param vehicle number 
---@return number retval 
function GetEntityAttachedToCargobob(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x99093F60746708CA)
---@param vehicle number 
---@return number retval 
function N_0x99093F60746708CA(vehicle) end

---```
---enum RoofState
---{
---     ROOFSTATE_UP = 0;
---     ROOFSTATE_LOWERING,
---     ROOFSTATE_DOWN,
---     ROOFSTATE_RAISING
---};
---```
---
---Got a "6" return value but not sure about what the value means
---6 -> unknown (Stopped but not fully open ?)
---[Native Documentation](https://docs.fivem.net/natives/?_0xF8C397922FC03F41)
---@param vehicle number 
---@return number retval 
function GetConvertibleRoofState(vehicle) end

---Returns the display name/text label (`gameName` in `vehicles.meta`) for the specified vehicle model.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB215AAC32D25D019)
---@param modelHash number | string A vehicle model to check.
---@return string retval The display name for the vehicle, or `'CARNOTFOUND'` if invalid.
function GetDisplayNameFromVehicleModel(modelHash) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0572928C0ABFDA3)
---@param vehicle number 
---@param doorIndex number 
---@return vector3 retval 
function GetEntryPositionOfDoor(vehicle, doorIndex) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2F5A72430E78C8D3)
---@param vehicle number 
---@return boolean retval 
function GetDriftTyresEnabled(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x36D782F68B309BDA)
---@param vehicle number 
---@return boolean retval 
function GetHasRocketBoost(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x36D782F68B309BDA)
---@param vehicle number 
---@return boolean retval 
function HasVehicleRocketBoost(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x36D782F68B309BDA)
---@param vehicle number 
---@return boolean retval 
function DoesVehicleHaveRocketBoost(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFEA18DCF10F8F75)
---@param towTruck number 
---@return number retval 
function GetEntityAttachedToTowTruck(towTruck) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDCA174A42133F08C)
---@param vehicle number 
---@return boolean retval 
function GetHasRetractableWheels(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDCA174A42133F08C)
---@param vehicle number 
---@return boolean retval 
function GetHasLowerableWheels(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDCA174A42133F08C)
---@param vehicle number 
---@return boolean retval 
function DoesVehicleHaveRetractableWheels(vehicle) end

---```
---Max 1000.
---At -100 both helicopter rotors will stall.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAC51915D27E4A5F7)
---@param vehicle number 
---@return number retval 
function GetHeliTailBoomHealth(vehicle) end

---```
---Max 1000.
---At -100 both helicopter rotors will stall.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAC51915D27E4A5F7)
---@param vehicle number 
---@return number retval 
function GetHeliEngineHealth(vehicle) end

---```
---Max 1000.  
---At 0 the main rotor will stall.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE4CB7541F413D2C5)
---@param vehicle number 
---@return number retval 
function GetHeliMainRotorHealth(vehicle) end

---```
---Max 1000.  
---At 0 the main rotor will stall.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE4CB7541F413D2C5)
---@param vehicle number 
---@return number retval 
function GetHeliMainRotorHealth(vehicle) end

---```
---Max 1000.  
---At 0 the tail rotor will stall.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAE8CE82A4219AC8C)
---@param vehicle number 
---@return number retval 
function GetHeliTailRotorHealth(vehicle) end

---```
---Max 1000.  
---At 0 the tail rotor will stall.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAE8CE82A4219AC8C)
---@param vehicle number 
---@return number retval 
function GetHeliTailRotorHealth(vehicle) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0BB5CBDDD0F25AE3)
---@param vehicle number 
---@param wheelId number 
---@return number retval 
function GetHydraulicWheelValue(vehicle, wheelId) end

---```
---From the driver's perspective, is the left headlight broken.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5EF77C9ADD3B11A3)
---@param vehicle number 
---@return boolean retval 
function GetIsLeftVehicleHeadlightDamaged(vehicle) end

---```
---From the driver's perspective, is the left headlight broken.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5EF77C9ADD3B11A3)
---@param vehicle number 
---@return boolean retval 
function IsHeadlightLBroken(vehicle) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0x645F4B6E8499F632)
---@param vehicle number 
---@param doorIndex number 
---@return boolean retval 
function GetIsDoorValid(vehicle, doorIndex) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0x645F4B6E8499F632)
---@param vehicle number 
---@param doorIndex number 
---@return boolean retval 
function DoesVehicleHaveDoor(vehicle, doorIndex) end

---```
---Returns whether this vehicle is currently disabled by an EMP mine.
---
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0506ED94363AD905)
---@param vehicle number 
---@return boolean retval 
function GetIsVehicleEmpDisabled(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF095C0405307B21B)
---@param vehicle number 
---@return boolean retval 
function GetIsVehiclePrimaryColourCustom(vehicle) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2459F72C14E2E8D)
---@param vehicle number 
---@return boolean retval 
function GetIsVehicleShuntBoostActive(vehicle) end

---```
---Landing gear states:  
---0: Deployed  
---1: Closing (Retracting)
---3: Opening (Deploying)
---4: Retracted  
---5: Broken
---```
---
---Landing gear state 2 is never used.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B0F3DCA3DB0F4CD)
---@param vehicle number The vehicle to check.
---@return number retval The current state of the vehicles landing gear.
function GetLandingGearState(vehicle) end

---```
---Landing gear states:  
---0: Deployed  
---1: Closing (Retracting)
---3: Opening (Deploying)
---4: Retracted  
---5: Broken
---```
---
---Landing gear state 2 is never used.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B0F3DCA3DB0F4CD)
---@param vehicle number The vehicle to check.
---@return number retval The current state of the vehicles landing gear.
function GetVehicleLandingGear(vehicle) end

---```
---From the driver's perspective, is the right headlight broken.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7ECB73355EB2F20)
---@param vehicle number 
---@return boolean retval 
function GetIsRightVehicleHeadlightDamaged(vehicle) end

---```
---From the driver's perspective, is the right headlight broken.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7ECB73355EB2F20)
---@param vehicle number 
---@return boolean retval 
function IsHeadlightRBroken(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB2D06FAEDE65B577)
---@return number retval 
function GetLastDrivenVehicle() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB2D06FAEDE65B577)
---@return number retval 
function N_0xB2D06FAEDE65B577() end

---```
---Returns true when in a vehicle, false whilst entering/exiting.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAE31E7DF9B5B132E)
---@param vehicle number 
---@return boolean retval 
function GetIsVehicleEngineRunning(vehicle) end

---```
---Returns true when in a vehicle, false whilst entering/exiting.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAE31E7DF9B5B132E)
---@param vehicle number 
---@return boolean retval 
function IsVehicleEngineOn(vehicle) end

---```
---Check if Vehicle Secondary is avaliable for customize  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x910A32E7AAD2656C)
---@param vehicle number 
---@return boolean retval 
function GetIsVehicleSecondaryColourCustom(vehicle) end

---```
---Returns last vehicle that was rammed by the given vehicle using the shunt boost.
---
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x04F2FA6E234162F7)
---@param vehicle number 
---@return number retval 
function GetLastRammedVehicle(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DA0DA9CB3F0C8BF)
---@param vehicle number 
---@return boolean retval 
function GetIsWheelsLoweredStateActive(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DA0DA9CB3F0C8BF)
---@param vehicle number 
---@return boolean retval 
function N_0x1DA0DA9CB3F0C8BF(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x83F969AA1EE2A664)
---@param vehicle number The vehicle to get the ped for.
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return number retval 
function GetLastPedInVehicleSeat(vehicle, seatIndex) end

---Will return a vehicle's manufacturer display label.
---Returns "CARNOTFOUND" if the hash doesn't match a vehicle hash.
---
---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF7AF4F159FF99F97)
---@param modelHash number | string 
---@return string retval 
function GetMakeNameFromVehicleModel(modelHash) end

---```
---Second Param = LiveryIndex  
---example   
---int count = VEHICLE::GET_VEHICLE_LIVERY_COUNT(veh);  
---for (int i = 0; i < count; i++)    
---	{  
---char* LiveryName = VEHICLE::GET_LIVERY_NAME(veh, i);  
---	}  
---this example will work fine to fetch all names   
---for example for Sanchez we get   
---SANC_LV1  
---SANC_LV2  
---SANC_LV3  
---SANC_LV4  
---SANC_LV5  
---Use _GET_LABEL_TEXT, to get the localized livery name.  
--------------  
---NOTE: You may need to set the vehicle's modKit to 0 by using this function: SET_VEHICLE_MOD_KIT() before getting the name, otherwise this native may return NULL.  
---dev-c.com/nativedb/func/info/1f2aa07f00b3217a  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB4C7A93837C91A1F)
---@param vehicle number 
---@param liveryIndex number 
---@return string retval 
function GetLiveryName(vehicle, liveryIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x51F0FEB9F6AE98C0)
---@param vehicle number 
---@param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@return string retval 
function GetModSlotName(vehicle, modType) end

---```
---Returns the text label of a mod type for a given vehicle  
---Use _GET_LABEL_TEXT to get the part name in the game's language  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8935624F8C5592CC)
---@param vehicle number 
---@param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@param modValue number 
---@return string retval 
function GetModTextLabel(vehicle, modType, modValue) end

---```
---paintType:
---0: Normal
---1: Metallic
---2: Pearl
---3: Matte
---4: Metal
---5: Chrome
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA551BE18C11A476D)
---@param paintType number 
---@param p1 boolean 
---@return number retval 
function GetNumModColors(paintType, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x33F2E3FE70EAAE1D)
---@param vehicle number 
---@return number retval 
function GetNumModKits(vehicle) end

---```
---Returns how many possible mods a vehicle has for a given mod type  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE38E9162A2500646)
---@param vehicle number 
---@param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@return number retval 
function GetNumVehicleMods(vehicle, modType) end

---```
---Actually number of color combinations  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3B963160CD65D41E)
---@param vehicle number 
---@return number retval 
function GetNumberOfVehicleColours(vehicle) end

---```
---Distance traveled in the vehicles current recording.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2DACD605FC681475)
---@param vehicle number 
---@return number retval 
function GetPositionInRecording(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D1224004B3A6707)
---@return number retval 
function GetNumVehicleWindowTints() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x92523B76657A517D)
---@param id number 
---@param time number 
---@return vector3 retval 
function GetPositionOfVehicleRecordingIdAtTime(id, time) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x92523B76657A517D)
---@param id number 
---@param time number 
---@return vector3 retval 
function N_0x92523B76657A517D(id, time) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x92922A607497B14D)
---@param vehicle number 
---@return number retval 
function GetNumberOfVehicleDoors(vehicle) end

---```
---Returns the number of *types* of licence plates, enumerated below in SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C4D6B2644F458CB)
---@return number retval 
function GetNumberOfVehicleNumberPlates() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB50807EABE20A8DC)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@return number retval 
function GetRandomVehicleBackBumperInSphere(p0, p1, p2, p3, p4, p5, p6) end

---Gets the ped in the specified seat of the passed vehicle.
---
---If there is no ped in the seat, and the game considers the vehicle as ambient population, this will create a random occupant ped in the seat, which may be cleaned up by the game fairly soon if not marked as script-owned mission entity.
---
---**NativeDB Added Parameter 3**: BOOL p2 (uses a different GetOccupant function)
---[Native Documentation](https://docs.fivem.net/natives/?_0xBB40DD2270B65366)
---Example: 
---```-- Checks if the player ped is in the drivers seat of the vehicle they are in.
---if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId() then 
---  print("The player is the driver of this vehicle.")
---else
---  print("The player is not the driver of this vehicle.")
---end```
---@param vehicle number The vehicle to get the ped for.
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return number retval A handle to a ped in the specified vehicle seat, or 0 if no such ped existed.
function GetPedInVehicleSeat(vehicle, seatIndex) end

---```
---Gets a random vehicle in a sphere at the specified position, of the specified radius.  
---x: The X-component of the position of the sphere.  
---y: The Y-component of the position of the sphere.  
---z: The Z-component of the position of the sphere.  
---radius: The radius of the sphere. Max is 9999.9004.  
---modelHash: The vehicle model to limit the selection to. Pass 0 for any model.  
---flags: The bitwise flags that modifies the behaviour of this function.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x386F6CE5BAF6091C)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param modelHash number | string 
---@param flags number 
---@return number retval 
function GetRandomVehicleInSphere(x, y, z, radius, modelHash, flags) end

---```
---Not present in the retail version! It's just a nullsub.  
---p0 always true (except in one case)  
---p1 a random vehicle hash loaded in memory  
---successIndicator: 0 if success, -1 if failed
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x055BF0AC0C34F4FD)
---@param p0 boolean 
---@param modelHash number | string 
---@param successIndicator number 
function GetRandomVehicleModelInMemory(p0, modelHash, successIndicator) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0x218297BF0CFD853B)
---@param vehicle number 
---@param doorIndex number 
---@return number retval 
function GetPedUsingVehicleDoor(vehicle, doorIndex) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0x218297BF0CFD853B)
---@param vehicle number 
---@param doorIndex number 
---@return number retval 
function N_0x218297BF0CFD853B(vehicle, doorIndex) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0x218297BF0CFD853B)
---@param vehicle number 
---@param doorIndex number 
---@return number retval 
function GetPedUsingVehicleDoor(vehicle, doorIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0F2103EFAF8CBA7)
---@param id number 
---@param time number 
---@return vector3 retval 
function GetRotationOfVehicleRecordingIdAtTime(id, time) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0F2103EFAF8CBA7)
---@param id number 
---@param time number 
---@return vector3 retval 
function N_0xF0F2103EFAF8CBA7(id, time) end

---This native does no interpolation between pathpoints. The same position will be returned for all times up to the next pathpoint in the recording.
---
---See [`REQUEST_VEHICLE_RECORDING`](#\_0xAF514CABE74CBF15).
---[Native Documentation](https://docs.fivem.net/natives/?_0xD242728AA6F0FBA2)
---@param recording number 
---@param time number 
---@param script string 
---@return vector3 retval 
function GetPositionOfVehicleRecordingAtTime(recording, time, script) end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3E71D0B300B7AA79)
---@param submarine number 
---@return boolean retval 
function GetSubmarineIsBelowFirstCrushDepth(submarine) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC5574E0AEB86BA68)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@return number retval 
function GetRandomVehicleFrontBumperInSphere(p0, p1, p2, p3, p4, p5, p6) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0E48D1C262390950)
---@param recording number 
---@param script string 
---@return number retval 
function GetTotalDurationOfVehicleRecording(recording, script) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2058206FBE79A8AD)
---@param recording number 
---@param time number 
---@param script string 
---@return vector3 retval 
function GetRotationOfVehicleRecordingAtTime(recording, time, script) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x102D125411A7B6E6)
---@param id number 
---@return number retval 
function GetTotalDurationOfVehicleRecordingId(id) end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x093D6DDCA5B8FBAE)
---@param submarine number 
---@return number retval 
function GetSubmarineCrushDepthWarningState(submarine) end

---```
---Corrected p1. it's basically the 'carriage/trailer number'. So if the train has 3 trailers you'd call the native once with a var or 3 times with 1, 2, 3.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x08AAFD0814722BC3)
---@param train number 
---@param trailerNumber number 
---@return number retval 
function GetTrainCarriage(train, trailerNumber) end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x55EAB010FAEE9380)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval 
function GetTyreHealth(vehicle, wheelIndex) end

---```
---Can be used with GET_TOTAL_DURATION_OF_VEHICLE_RECORDING{_ID} to compute a percentage.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5746F3A7AB7FE544)
---@param vehicle number 
---@return number retval 
function GetTimePositionInRecording(vehicle) end

---```
---static - max acceleration  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5DD35C8D074E57AE)
---@param vehicle number 
---@return number retval 
function GetVehicleAcceleration(vehicle) end

---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E387895952F4F71)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval 
function GetTyreWearMultiplier(vehicle, wheelIndex) end

---Gets the amount of bombs that this vehicle has. As far as I know, this does *not* impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane.
---
---In decompiled scripts this is used to check if the vehicle has enough bombs before a bomb can be dropped (bombs are dropped by using [`_SHOOT_SINGLE_BULLET_BETWEEN_COORDS_WITH_EXTRA_PARAMS`](#\_0xBFE5756E7407064A)).
---
---Use [`_SET_AIRCRAFT_BOMB_COUNT`](#\_0xF4B2ED59DEB5D774) to set the amount of bombs on that vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA12BD130D7569A1)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---print("This plane has " .. GetAircraftBombCount(vehicle) .. " bombs left.")```
---@param aircraft number The vehicle to get the amount of bombs from.
---@return number retval An int indicating the amount of bombs remaining on that plane.
function GetVehicleBombCount(aircraft) end

---Gets the amount of bombs that this vehicle has. As far as I know, this does *not* impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane.
---
---In decompiled scripts this is used to check if the vehicle has enough bombs before a bomb can be dropped (bombs are dropped by using [`_SHOOT_SINGLE_BULLET_BETWEEN_COORDS_WITH_EXTRA_PARAMS`](#\_0xBFE5756E7407064A)).
---
---Use [`_SET_AIRCRAFT_BOMB_COUNT`](#\_0xF4B2ED59DEB5D774) to set the amount of bombs on that vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA12BD130D7569A1)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---print("This plane has " .. GetAircraftBombCount(vehicle) .. " bombs left.")```
---@param aircraft number The vehicle to get the amount of bombs from.
---@return number retval An int indicating the amount of bombs remaining on that plane.
function N_0xEA12BD130D7569A1(aircraft) end

---Gets the amount of bombs that this vehicle has. As far as I know, this does *not* impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane.
---
---In decompiled scripts this is used to check if the vehicle has enough bombs before a bomb can be dropped (bombs are dropped by using [`_SHOOT_SINGLE_BULLET_BETWEEN_COORDS_WITH_EXTRA_PARAMS`](#\_0xBFE5756E7407064A)).
---
---Use [`_SET_AIRCRAFT_BOMB_COUNT`](#\_0xF4B2ED59DEB5D774) to set the amount of bombs on that vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA12BD130D7569A1)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---print("This plane has " .. GetAircraftBombCount(vehicle) .. " bombs left.")```
---@param aircraft number The vehicle to get the amount of bombs from.
---@return number retval An int indicating the amount of bombs remaining on that plane.
function GetAircraftBombCount(aircraft) end

---```
---Returns attached vehicle (Vehicle in parameter must be cargobob)  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x873B82D42AC2B9E5)
---@param cargobob number 
---@return number retval 
function GetVehicleAttachedToCargobob(cargobob) end

---```
---iVar3 = get_vehicle_cause_of_destruction(uLocal_248[iVar2]);  
---if (iVar3 == joaat("weapon_stickybomb"))  
---{  
---     func_171(726);  
---     iLocal_260 = 1;  
---}  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE495D1EF4C91FD20)
---@param vehicle number 
---@return number | string retval 
function GetVehicleCauseOfDestruction(vehicle) end

---```
---Seems related to vehicle health, like the one in IV.  
---Max 1000, min 0.  
---Vehicle does not necessarily explode or become undrivable at 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF271147EB7B40F12)
---@param vehicle number 
---@return number retval 
function GetVehicleBodyHealth(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA916396DF4154EE3)
---@param vehicle number 
---@return boolean retval 
function GetVehicleCanActivateParachute(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA916396DF4154EE3)
---@param vehicle number 
---@return boolean retval 
function CanVehicleParachuteBeActivated(vehicle) end

---```
---Returns an int  
---Vehicle Classes:  
---0: Compacts  
---1: Sedans  
---2: SUVs  
---3: Coupes  
---4: Muscle  
---5: Sports Classics  
---6: Sports  
---7: Super  
---8: Motorcycles  
---9: Off-road  
---10: Industrial  
---11: Utility  
---12: Vans  
---13: Cycles  
---14: Boats  
---15: Helicopters  
---16: Planes  
---17: Service  
---18: Emergency  
---19: Military  
---20: Commercial  
---21: Trains  
---22: Open Wheel
---char buffer[128];  
---std::sprintf(buffer, "VEH_CLASS_%i", VEHICLE::GET_VEHICLE_CLASS(vehicle));  
---char* className = UI::_GET_LABEL_TEXT(buffer);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x29439776AAA00A62)
---@param vehicle number 
---@return number retval 
function GetVehicleClass(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x00C09F246ABEDD82)
---@param vehicleClass number 
---@return number retval 
function GetVehicleClassEstimatedMaxSpeed(vehicleClass) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x00C09F246ABEDD82)
---@param vehicleClass number 
---@return number retval 
function N_0x00C09F246ABEDD82(vehicleClass) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x00C09F246ABEDD82)
---@param vehicleClass number 
---@return number retval 
function GetVehicleClassMaxSpeed(vehicleClass) end

---```
---For a full enum, see here : pastebin.com/i2GGAjY0
---char buffer[128];
---std::sprintf(buffer, "VEH_CLASS_%i", VEHICLE::GET_VEHICLE_CLASS_FROM_NAME (hash));
---const char* className = HUD::_GET_LABEL_TEXT(buffer);
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDEDF1C8BD47C2200)
---@param modelHash number | string 
---@return number retval 
function GetVehicleClassFromName(modelHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2F83E7E45D9EA7AE)
---@param vehicleClass number 
---@return number retval 
function GetVehicleClassMaxAcceleration(vehicleClass) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4F930AD022D6DE3B)
---@param vehicleClass number 
---@return number retval 
function GetVehicleClassMaxAgility(vehicleClass) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4BF54C16EC8FEC03)
---@param vehicleClass number 
---@return number retval 
function GetVehicleClassMaxBraking(vehicleClass) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDBC86D85C5059461)
---@param vehicleClass number 
---@return number retval 
function GetVehicleClassMaxTraction(vehicleClass) end

---See [`SET_VEHICLE_CUSTOM_PRIMARY_COLOUR`](#\_0x7141766F91D15BEA) and [`SET_VEHICLE_CUSTOM_SECONDARY_COLOUR`](#\_0x36CED73BFED89754).
---[Native Documentation](https://docs.fivem.net/natives/?_0xF3CC740D36221548)
---@param vehicle number The target vehicle
---@param r number 
---@param g number 
---@param b number 
function GetVehicleColor(vehicle, r, g, b) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA19435F193E081AC)
---@param vehicle number 
---@param colorPrimary number 
---@param colorSecondary number 
function GetVehicleColours(vehicle, colorPrimary, colorSecondary) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB64CF2CCA9D95F52)
---@param vehicle number 
---@param r number 
---@param g number 
---@param b number 
function GetVehicleCustomPrimaryColour(vehicle, r, g, b) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7635E80A5C31BFF)
---@param vehicle number 
---@param color number 
function GetVehicleDashboardColor(vehicle, color) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7635E80A5C31BFF)
---@param vehicle number 
---@param color number 
function GetVehicleDashboardColour(vehicle, color) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6A842D197F845D56)
---@param vehicle number 
---@return number retval 
function GetVehicleColourCombination(vehicle) end

---A getter for [`SET_VEHICLE_DIRT_LEVEL`](#\_0x79D3B596FE44EE8B).
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F17BC8BA08DA62B)
---Example: 
---```local Vehicle = GetVehiclePedIsUsing(PlayerPedId())
---if GetVehicleDirtLevel(Vehicle) > 0.0 then -- if the cars dirt level is more than 0.0 then clean it.
---  SetVehicleDirtLevel(Vehicle, 0.0) -- set the vehicle dirt level to 0.0
---end```
---@param vehicle number The vehicle to check.
---@return number retval A number between 0.0 and 15.0 representing the vehicles dirt level.
function GetVehicleDirtLevel(vehicle) end

---Similar to [`_GET_AIRCRAFT_BOMB_COUNT`](#\_0xEA12BD130D7569A1), this gets the amount of countermeasures that are present on this vehicle.
---
---Use [`_SET_AIRCRAFT_COUNTERMEASURE_COUNT`](#\_0x9BDA23BF666F0855) to set the current amount.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF846AA63DF56B804)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---print("This plane has " .. GetAircraftCountermeasureCount(vehicle) .. " countermeasures left.")```
---@param aircraft number The vehicle to get the amount of countermeasures from.
---@return number retval An int indicating the amount of countermeasures remaining on that plane.
function GetVehicleCountermeasureCount(aircraft) end

---Similar to [`_GET_AIRCRAFT_BOMB_COUNT`](#\_0xEA12BD130D7569A1), this gets the amount of countermeasures that are present on this vehicle.
---
---Use [`_SET_AIRCRAFT_COUNTERMEASURE_COUNT`](#\_0x9BDA23BF666F0855) to set the current amount.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF846AA63DF56B804)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---print("This plane has " .. GetAircraftCountermeasureCount(vehicle) .. " countermeasures left.")```
---@param aircraft number The vehicle to get the amount of countermeasures from.
---@return number retval An int indicating the amount of countermeasures remaining on that plane.
function N_0xF846AA63DF56B804(aircraft) end

---Similar to [`_GET_AIRCRAFT_BOMB_COUNT`](#\_0xEA12BD130D7569A1), this gets the amount of countermeasures that are present on this vehicle.
---
---Use [`_SET_AIRCRAFT_COUNTERMEASURE_COUNT`](#\_0x9BDA23BF666F0855) to set the current amount.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF846AA63DF56B804)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---print("This plane has " .. GetAircraftCountermeasureCount(vehicle) .. " countermeasures left.")```
---@param aircraft number The vehicle to get the amount of countermeasures from.
---@return number retval An int indicating the amount of countermeasures remaining on that plane.
function GetAircraftCountermeasureCount(aircraft) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---
---Returns vehicle door destroy type previously set with \_SET_VEHICLE_DOOR_DESTROY_TYPE
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA4AC3EAAE46EC7B)
---@param vehicle number 
---@param doorIndex number 
---@return number retval 
function GetVehicleDoorDestroyType(vehicle, doorIndex) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---
---Returns vehicle door destroy type previously set with \_SET_VEHICLE_DOOR_DESTROY_TYPE
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA4AC3EAAE46EC7B)
---@param vehicle number 
---@param doorIndex number 
---@return number retval 
function N_0xCA4AC3EAAE46EC7B(vehicle, doorIndex) end

---```
---Returns a float value between 0.0 and 3.0 related to its slipstream draft (boost/speedup).
---GET_VEHICLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x36492C2F0D134C56)
---@param vehicle number 
---@return number retval 
function GetVehicleCurrentSlipstreamDraft(vehicle) end

---```
---Returns a float value between 0.0 and 3.0 related to its slipstream draft (boost/speedup).
---GET_VEHICLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x36492C2F0D134C56)
---@param vehicle number 
---@return number retval 
function N_0x36492C2F0D134C56(vehicle) end

---```
---enum VehicleLockStatus = {
---    None = 0,
---    Unlocked = 1,
---    Locked = 2,
---    LockedForPlayer = 3,
---    StickPlayerInside = 4, -- Doesn't allow players to exit the vehicle with the exit vehicle key.
---    CanBeBrokenInto = 7, -- Can be broken into the car. If the glass is broken, the value will be set to 1
---    CanBeBrokenIntoPersist = 8, -- Can be broken into persist
---    CannotBeTriedToEnter = 10, -- Cannot be tried to enter (Nothing happens when you press the vehicle enter key).
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x25BC98A59C2EA962)
---@param vehicle number 
---@return number retval 
function GetVehicleDoorLockStatus(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8389CD56CA8072DC)
---@param vehicle number 
---@param r number 
---@param g number 
---@param b number 
function GetVehicleCustomSecondaryColour(vehicle, r, g, b) end

---```
---Returns 1000.0 if the function is unable to get the address of the specified vehicle or if it's not a vehicle.  
---Minimum: -4000  
---Maximum: 1000  
----4000: Engine is destroyed  
---0 and below: Engine catches fire and health rapidly declines  
---300: Engine is smoking and losing functionality  
---1000: Engine is perfect  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC45D23BAF168AAB8)
---@param vehicle number 
---@return number retval 
function GetVehicleEngineHealth(vehicle) end

---```
---The only example I can find of this function in the scripts, is this:  
---struct _s = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(rPtr((A_0) + 4), 1.21f, 6.15f, 0.3f);  
--------------------------------------------------------------------------------------------------------------------------------------------  
---PC scripts:  
---v_5/*{3}*/ = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(a_0._f1, 1.21, 6.15, 0.3);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4EC6CFBC7B2E9536)
---@param vehicle number 
---@param offsetX number 
---@param offsetY number 
---@param offsetZ number 
---@return vector3 retval 
function GetVehicleDeformationAtPos(vehicle, offsetX, offsetY, offsetZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x53AF99BAA671CA47)
---@param vehicle number 
---@return number retval 
function GetVehicleEstimatedMaxSpeed(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x53AF99BAA671CA47)
---@param vehicle number 
---@return number retval 
function N_0x53AF99BAA671CA47(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x53AF99BAA671CA47)
---@param vehicle number 
---@return number retval 
function GetVehicleMaxSpeed(vehicle) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE3F9C29F7B32BD5)
---@param vehicle number 
---@param doorIndex number 
---@return number retval 
function GetVehicleDoorAngleRatio(vehicle, doorIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA62027C8BDB326E)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---
---if GetVehicleHoverModePercentage(vehicle) == 0.0 then
---    print("Flying normally!")
---elseif GetVehicleHoverModePercentage(vehicle) == 1.0 then
---    print("Flying in VTOL mode!")
---else
---    print("Currently switching hover mode!")
---end
---```
---@param aircraft number The vehicle to check the hover mode on.
---@return number retval A float indicating the percentage of the hover mode. 1.0 = in VTOL mode, 0.0 = in normal flying mode.
function GetVehicleFlightNozzlePosition(aircraft) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA62027C8BDB326E)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---
---if GetVehicleHoverModePercentage(vehicle) == 0.0 then
---    print("Flying normally!")
---elseif GetVehicleHoverModePercentage(vehicle) == 1.0 then
---    print("Flying in VTOL mode!")
---else
---    print("Currently switching hover mode!")
---end
---```
---@param aircraft number The vehicle to check the hover mode on.
---@return number retval A float indicating the percentage of the hover mode. 1.0 = in VTOL mode, 0.0 = in normal flying mode.
function N_0xDA62027C8BDB326E(aircraft) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA62027C8BDB326E)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---
---if GetVehicleHoverModePercentage(vehicle) == 0.0 then
---    print("Flying normally!")
---elseif GetVehicleHoverModePercentage(vehicle) == 1.0 then
---    print("Flying in VTOL mode!")
---else
---    print("Currently switching hover mode!")
---end
---```
---@param aircraft number The vehicle to check the hover mode on.
---@return number retval A float indicating the percentage of the hover mode. 1.0 = in VTOL mode, 0.0 = in normal flying mode.
function GetPlaneHoverModePercentage(aircraft) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA62027C8BDB326E)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---
---if GetVehicleHoverModePercentage(vehicle) == 0.0 then
---    print("Flying normally!")
---elseif GetVehicleHoverModePercentage(vehicle) == 1.0 then
---    print("Flying in VTOL mode!")
---else
---    print("Currently switching hover mode!")
---end
---```
---@param aircraft number The vehicle to check the hover mode on.
---@return number retval A float indicating the percentage of the hover mode. 1.0 = in VTOL mode, 0.0 = in normal flying mode.
function GetVehicleHoverModePercentage(aircraft) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA62027C8BDB326E)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---
---if GetVehicleHoverModePercentage(vehicle) == 0.0 then
---    print("Flying normally!")
---elseif GetVehicleHoverModePercentage(vehicle) == 1.0 then
---    print("Flying in VTOL mode!")
---else
---    print("Currently switching hover mode!")
---end
---```
---@param aircraft number The vehicle to check the hover mode on.
---@return number retval A float indicating the percentage of the hover mode. 1.0 = in VTOL mode, 0.0 = in normal flying mode.
function GetPlaneVtolDirection(aircraft) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6AF6CB341349015)
---@param vehicle number 
---@param player number 
---@return boolean retval 
function GetVehicleDoorsLockedForPlayer(vehicle, player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC9CFF381338CB4F)
---@param vehicle number 
---@return boolean retval 
function GetVehicleHasParachute(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC9CFF381338CB4F)
---@param vehicle number 
---@return boolean retval 
function HasVehicleParachute(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC9CFF381338CB4F)
---@param vehicle number 
---@return boolean retval 
function DoesVehicleHaveParachute(vehicle) end

---```
---formerly known as _GET_VEHICLE_PAINT_FADE
---The result is a value from 0-1, where 0 is fresh paint.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA82819CAC9C4C403)
---@param vehicle number 
---@return number retval 
function GetVehicleEnveffScale(vehicle) end

---```
---formerly known as _GET_VEHICLE_PAINT_FADE
---The result is a value from 0-1, where 0 is fresh paint.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA82819CAC9C4C403)
---@param vehicle number 
---@return number retval 
function GetVehiclePaintFade(vehicle) end

---```
---NativeDB Added Parameter 2: float maxEngineHealth
---NativeDB Added Parameter 3: float maxPetrolTankHealth
---NativeDB Added Parameter 4: float maxBodyHealth
---NativeDB Added Parameter 5: float maxMainRotorHealth
---NativeDB Added Parameter 6: float maxTailRotorHealth
---NativeDB Added Parameter 7: float maxUnkHealth
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8EF61207C2393A9)
---@param vehicle number 
---@return number retval 
function GetVehicleHealthPercentage(vehicle) end

---```
---NativeDB Added Parameter 2: float maxEngineHealth
---NativeDB Added Parameter 3: float maxPetrolTankHealth
---NativeDB Added Parameter 4: float maxBodyHealth
---NativeDB Added Parameter 5: float maxMainRotorHealth
---NativeDB Added Parameter 6: float maxTailRotorHealth
---NativeDB Added Parameter 7: float maxUnkHealth
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8EF61207C2393A9)
---@param vehicle number 
---@return number retval 
function GetVehicleBodyHealth2(vehicle) end

---```
---Returns a value depending on the lock-on state of vehicle weapons.
---0: not locked on
---1: locking on
---2: locked on
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6B0E8CFC3633BF0)
---@param vehicle number 
---@return number retval 
function GetVehicleHomingLockonState(vehicle) end

---```
---Returns a value depending on the lock-on state of vehicle weapons.
---0: not locked on
---1: locking on
---2: locked on
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6B0E8CFC3633BF0)
---@param vehicle number 
---@return number retval 
function N_0xE6B0E8CFC3633BF0(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3BC4245933A166F7)
---@param vehicle number 
---@param pearlescentColor number 
---@param wheelColor number 
function GetVehicleExtraColours(vehicle, pearlescentColor, wheelColor) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x50634E348C8D44EF)
---@param vehicle number The vehicle handle.
---@return boolean retval Returns true if the vehicle has a kers boost (for instance the lectro or the vindicator)
function GetVehicleHasKers(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x50634E348C8D44EF)
---@param vehicle number The vehicle handle.
---@return boolean retval Returns true if the vehicle has a kers boost (for instance the lectro or the vindicator)
function N_0x50634E348C8D44EF(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x50634E348C8D44EF)
---@param vehicle number The vehicle handle.
---@return boolean retval Returns true if the vehicle has a kers boost (for instance the lectro or the vindicator)
function HasVehicleKersBoost(vehicle) end

---```
---Only used like this:  
---if (VEHICLE::GET_VEHICLE_IS_MERCENARY(ENTITY::GET_VEHICLE_INDEX_FROM_ENTITY_INDEX(v_3))) {                                                        sub_157e9c(g_40001._f1868, 0);  
---}  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD4C4642CB7F50B5D)
---@param vehicle number 
---@return boolean retval 
function GetVehicleIsMercenary(vehicle) end

---```
---Only used like this:  
---if (VEHICLE::GET_VEHICLE_IS_MERCENARY(ENTITY::GET_VEHICLE_INDEX_FROM_ENTITY_INDEX(v_3))) {                                                        sub_157e9c(g_40001._f1868, 0);  
---}  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD4C4642CB7F50B5D)
---@param vehicle number 
---@return boolean retval 
function N_0xD4C4642CB7F50B5D(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7D1464D472D32136)
---@param vehicle number 
---@param color number 
function GetVehicleInteriorColor(vehicle, color) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7D1464D472D32136)
---@param vehicle number 
---@param color number 
function GetVehicleInteriorColour(vehicle, color) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB91B4C20085BD12F)
---@param vehicle number 
---@param lightsOn boolean 
---@param highbeamsOn boolean 
---@return boolean retval 
function GetVehicleLightsState(vehicle, lightsOn, highbeamsOn) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x28D37D4F71AC5C58)
---@param vehicle number 
---@return number | string retval 
function GetVehicleLayoutHash(vehicle) end

---```
---Returns -1 if the vehicle has no livery  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x87B63E25A529D526)
---@param vehicle number 
---@return number retval 
function GetVehicleLiveryCount(vehicle) end

---```
----1 = no livery  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2BB9230590DA5E8A)
---@param vehicle number 
---@return number retval 
function GetVehicleLivery(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAD7E85FC227197C4)
---@param vehicle number 
---@return number retval 
function GetVehicleMaxBraking(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F5EBAB1F260CFCE)
---@param vehicle number 
---@param entity number 
---@return boolean retval 
function GetVehicleLockOnTarget(vehicle, entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F5EBAB1F260CFCE)
---@param vehicle number 
---@param entity number 
---@return boolean retval 
function GetVehicleOwner(vehicle, entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA132FB5370554DB0)
---@param vehicle number 
---@return number retval 
function GetVehicleMaxTraction(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE8D65CA700C9A693)
---@param vehicle number 
---@param paintType number 
---@param color number 
---@param pearlescentColor number 
function GetVehicleModColor1(vehicle, paintType, color, pearlescentColor) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7C4F2C6E744A550)
---@param vehicle number 
---@return number retval 
function GetVehicleMaxNumberOfPassengers(vehicle) end

---```
---Returns -1 if the vehicle mod is stock  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x772960298DA26FDB)
---@param vehicle number 
---@param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@return number retval 
function GetVehicleMod(vehicle, modType) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x81592BE4E3878728)
---@param vehicle number 
---@param paintType number 
---@param color number 
function GetVehicleModColor2(vehicle, paintType, color) end

---```
---Can be used for IS_DLC_VEHICLE_MOD and _0xC098810437312FFF
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4593CF82AA179706)
---@param vehicle number 
---@param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@param modIndex number 
---@return number | string retval 
function GetVehicleModIdentifierHash(vehicle, modType, modIndex) end

---```
---Can be used for IS_DLC_VEHICLE_MOD and _0xC098810437312FFF
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4593CF82AA179706)
---@param vehicle number 
---@param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@param modIndex number 
---@return number | string retval 
function N_0x4593CF82AA179706(vehicle, modType, modIndex) end

---```
---Can be used for IS_DLC_VEHICLE_MOD and _0xC098810437312FFF
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4593CF82AA179706)
---@param vehicle number 
---@param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@param modIndex number 
---@return number | string retval 
function GetVehicleModData(vehicle, modType, modIndex) end

---```
---returns a string which is the codename of the vehicle's currently selected primary color  
---p1 is always 0  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB45085B721EFD38C)
---@param vehicle number 
---@param p1 boolean 
---@return string retval 
function GetVehicleModColor1Name(vehicle, p1) end

---```
---returns a string which is the codename of the vehicle's currently selected primary color  
---p1 is always 0  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB45085B721EFD38C)
---@param vehicle number 
---@param p1 boolean 
---@return string retval 
function N_0xB45085B721EFD38C(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x90A38E9838E0A8C1)
---@param vehicle number 
---@param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@param modIndex number 
---@return number retval 
function GetVehicleModModifierValue(vehicle, modType, modIndex) end

---```
---Only used for wheels(ModType = 23/24) Returns true if the wheels are custom wheels
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3924ECD70E095DC)
---@param vehicle number 
---@param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@return boolean retval 
function GetVehicleModVariation(vehicle, modType) end

---```
---returns a string which is the codename of the vehicle's currently selected secondary color  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4967A516ED23A5A1)
---@param vehicle number 
---@return string retval 
function GetVehicleModColor2Name(vehicle) end

---```
---returns a string which is the codename of the vehicle's currently selected secondary color  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4967A516ED23A5A1)
---@param vehicle number 
---@return string retval 
function N_0x4967A516ED23A5A1(vehicle) end

---Returns the acceleration of the specified model.
---[Native Documentation](https://docs.fivem.net/natives/?_0x8C044C5C84505B6A)
---@param modelHash number | string 
---@return number retval 
function GetVehicleModelAcceleration(modelHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6325D1A044AE510D)
---@param vehicle number 
---@return number retval 
function GetVehicleModKit(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC058F5121E54C32)
---@param vehicle number 
---@return number retval 
function GetVehicleModKitType(vehicle) end

---```
---Returns max speed (without mods) of the specified vehicle model in m/s.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF417C2502FFFED43)
---@param modelHash number | string 
---@return number retval 
function GetVehicleModelEstimatedMaxSpeed(modelHash) end

---```
---Returns max speed (without mods) of the specified vehicle model in m/s.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF417C2502FFFED43)
---@param modelHash number | string 
---@return number retval 
function GetVehicleModelMaxSpeed(modelHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBFBA3BA79CFF7EBF)
---@param modelHash number | string 
---@return number retval 
function GetVehicleModelMaxBrakingMaxMods(modelHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBFBA3BA79CFF7EBF)
---@param modelHash number | string 
---@return number retval 
function N_0xBFBA3BA79CFF7EBF(modelHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBFBA3BA79CFF7EBF)
---@param modelHash number | string 
---@return number retval 
function GetVehicleModelHandBrake(modelHash) end

---```
---Returns max traction of the specified vehicle model.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x539DE94D44FDFD0D)
---@param modelHash number | string 
---@return number retval 
function GetVehicleModelMaxTraction(modelHash) end

---```
---GET_VEHICLE_MODEL_*
---9.8 * thrust if air vehicle, else 0.38 + drive force?
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x53409B5163D5B846)
---@param modelHash number | string 
---@return number retval 
function GetVehicleModelEstimatedAgility(modelHash) end

---```
---GET_VEHICLE_MODEL_*
---9.8 * thrust if air vehicle, else 0.38 + drive force?
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x53409B5163D5B846)
---@param modelHash number | string 
---@return number retval 
function N_0x53409B5163D5B846(modelHash) end

---```
---GET_VEHICLE_MODEL_*
---9.8 * thrust if air vehicle, else 0.38 + drive force?
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x53409B5163D5B846)
---@param modelHash number | string 
---@return number retval 
function GetVehicleModelDownForce(modelHash) end

---```
---Returns max number of passengers (including the driver) for the specified vehicle model.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2AD93716F184EDA4)
---@param modelHash number | string 
---@return number retval 
function GetVehicleModelNumberOfSeats(modelHash) end

---```
---Returns max number of passengers (including the driver) for the specified vehicle model.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2AD93716F184EDA4)
---@param modelHash number | string 
---@return number retval 
function GetVehicleModelMaxNumberOfPassengers(modelHash) end

---```
---Returns max braking of the specified vehicle model.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC53FD41B4ED944C)
---@param modelHash number | string 
---@return number retval 
function GetVehicleModelMaxBraking(modelHash) end

---```
---Returns `nMonetaryValue` from handling.meta for specific model, which is the vehicle's monetary value.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5873C14A52D74236)
---@param vehicleModel number | string 
---@return number retval 
function GetVehicleModelValue(vehicleModel) end

---```
---Returns `nMonetaryValue` from handling.meta for specific model, which is the vehicle's monetary value.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5873C14A52D74236)
---@param vehicleModel number | string 
---@return number retval 
function N_0x5873C14A52D74236(vehicleModel) end

---```
---Returns `nMonetaryValue` from handling.meta for specific model, which is the vehicle's monetary value.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5873C14A52D74236)
---@param vehicleModel number | string 
---@return number retval 
function GetVehicleModelMonetaryValue(vehicleModel) end

---```
---GET_VEHICLE_MODEL_*
---Function pertains only to aviation vehicles.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6AD107DDC9054CC)
---@param modelHash number | string 
---@return number retval 
function GetVehicleModelMaxKnots(modelHash) end

---```
---GET_VEHICLE_MODEL_*
---Function pertains only to aviation vehicles.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6AD107DDC9054CC)
---@param modelHash number | string 
---@return number retval 
function N_0xC6AD107DDC9054CC(modelHash) end

---```
---Also includes some "turnOffBones" when vehicle mods are installed.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x42A4BEB35D372407)
---@param vehicle number 
---@return number retval 
function GetVehicleNumberOfBrokenOffBones(vehicle) end

---```
---Also includes some "turnOffBones" when vehicle mods are installed.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x42A4BEB35D372407)
---@param vehicle number 
---@return number retval 
function N_0x42A4BEB35D372407(vehicle) end

---```
---GET_VEHICLE_MODEL_*
---called if the vehicle is a boat -- returns vecMoveResistanceX?
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5AA3F878A178C4FC)
---@param modelHash number | string 
---@return number retval 
function GetVehicleModelMoveResistance(modelHash) end

---```
---GET_VEHICLE_MODEL_*
---called if the vehicle is a boat -- returns vecMoveResistanceX?
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5AA3F878A178C4FC)
---@param modelHash number | string 
---@return number retval 
function N_0x5AA3F878A178C4FC(modelHash) end

---```
---Gets the number of passengers, NOT including the driver. Use IS_VEHICLE_SEAT_FREE(Vehicle, -1) to also check for the driver  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x24CB2137731FFE89)
---@param vehicle number 
---@return number retval 
function GetVehicleNumberOfPassengers(vehicle) end

---Gets the color of the neon lights of the specified vehicle.
---
---See [`_SET_VEHICLE_NEON_LIGHTS_COLOUR`](#\_0x8E0A582209A62695) for more information
---[Native Documentation](https://docs.fivem.net/natives/?_0x7619EEE8C886757F)
---@param vehicle number 
---@param r number 
---@param g number 
---@param b number 
function GetVehicleNeonLightsColour(vehicle, r, g, b) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C8CBFE1EA5FC631)
---@param vehicle number 
---@return number retval 
function GetVehicleNumberOfBrokenBones(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C8CBFE1EA5FC631)
---@param vehicle number 
---@return number retval 
function N_0x2C8CBFE1EA5FC631(vehicle) end

---```
---Returns the license plate text from a vehicle.  8 chars maximum.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7CE1CCB9B293020E)
---@param vehicle number 
---@return string retval 
function GetVehicleNumberPlateText(vehicle) end

---```
---Returns the PlateType of a vehicle  
---Blue_on_White_1 = 3,  
---Blue_on_White_2 = 0,  
---Blue_on_White_3 = 4,  
---Yellow_on_Blue = 2,  
---Yellow_on_Black = 1,  
---North_Yankton = 5,  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF11BC2DD9A3E7195)
---@param vehicle number 
---@return number retval 
function GetVehicleNumberPlateTextIndex(vehicle) end

---Returns the plates a vehicle has.
---
---```
---enum eVehiclePlateType
---{
---	VPT_FRONT_AND_BACK_PLATES = 0,
---	VPT_FRONT_PLATES = 1,
---	VPT_BACK_PLATES = 2,
---	VPT_NONE = 3,
---};
---```
---
---Motorcycles with no visible plates will sometimes return a 2 for unknown reasons.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9CCC9525BF2408E0)
---@param vehicle number 
---@return number retval 
function GetVehiclePlateType(vehicle) end

---Returns index of the current vehicle's rooftop livery.
---A getter for [\_SET_VEHICLE_ROOF_LIVERY](#\_0xA6D3A8750DC73270).
---[Native Documentation](https://docs.fivem.net/natives/?_0x60190048C0764A26)
---@param vehicle number The vehicle handle.
---@return number retval An index of the current vehicle's rooftop livery.
function GetVehicleRoofLivery(vehicle) end

---Returns index of the current vehicle's rooftop livery.
---A getter for [\_SET_VEHICLE_ROOF_LIVERY](#\_0xA6D3A8750DC73270).
---[Native Documentation](https://docs.fivem.net/natives/?_0x60190048C0764A26)
---@param vehicle number The vehicle handle.
---@return number retval An index of the current vehicle's rooftop livery.
function N_0x60190048C0764A26(vehicle) end

---Returns a number of available rooftop liveries, or -1 if vehicle has no rooftop liveries available.
---[Native Documentation](https://docs.fivem.net/natives/?_0x5ECB40269053C0D4)
---@param vehicle number The vehicle handle.
---@return number retval A number of available rooftop liveries for vehicle.
function GetVehicleRoofLiveryCount(vehicle) end

---Returns a number of available rooftop liveries, or -1 if vehicle has no rooftop liveries available.
---[Native Documentation](https://docs.fivem.net/natives/?_0x5ECB40269053C0D4)
---@param vehicle number The vehicle handle.
---@return number retval A number of available rooftop liveries for vehicle.
function N_0x5ECB40269053C0D4(vehicle) end

---```
---1000 is max health  
---Begins leaking gas at around 650 health  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7D5DABE888D2D074)
---@param vehicle number 
---@return number retval 
function GetVehiclePetrolTankHealth(vehicle) end

---See [`REQUEST_VEHICLE_RECORDING`](#\_0xAF514CABE74CBF15).
---[Native Documentation](https://docs.fivem.net/natives/?_0x21543C612379DB3C)
---@param recording number 
---@param script string 
---@return number retval 
function GetVehicleRecordingId(recording, script) end

---```
---Outputs 2 Vector3's.
---Scripts check if out2.x - out1.x > something.x
---Could be suspension related, as in max suspension height and min suspension height, considering the natives location.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF7E3EEB29642C38)
---@param vehicle number 
---@param out1 vector3 
---@param out2 vector3 
function GetVehicleSuspensionBounds(vehicle, out1, out2) end

---```
---Outputs 2 Vector3's.
---Scripts check if out2.x - out1.x > something.x
---Could be suspension related, as in max suspension height and min suspension height, considering the natives location.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF7E3EEB29642C38)
---@param vehicle number 
---@param out1 vector3 
---@param out2 vector3 
function N_0xDF7E3EEB29642C38(vehicle, out1, out2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB635392A4938B3C3)
---@param vehicle number 
---@param r number 
---@param g number 
---@param b number 
function GetVehicleTyreSmokeColor(vehicle, r, g, b) end

---```
---Gets the height of the vehicle's suspension.  
---The higher the value the lower the suspension. Each 0.002 corresponds with one more level lowered.  
---0.000 is the stock suspension.  
---0.008 is Ultra Suspension.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x53952FD2BAA19F17)
---@param vehicle number 
---@return number retval 
function GetVehicleSuspensionHeight(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8181CE2F25CB9BB7)
---@param vehicle number 
---@param weaponIndex number 
---@return number retval 
function GetVehicleWeaponCapacity(vehicle, weaponIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8181CE2F25CB9BB7)
---@param vehicle number 
---@param weaponIndex number 
---@return number retval 
function N_0x8181CE2F25CB9BB7(vehicle, weaponIndex) end

---```
---Gets the trailer of a vehicle and puts it into the trailer parameter.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1CDD6BADC297830D)
---@param vehicle number 
---@param trailer number 
---@return boolean retval 
function GetVehicleTrailerVehicle(vehicle, trailer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0EE21293DAD47C95)
---@param vehicle number 
---@return number retval 
function GetVehicleWindowTint(vehicle) end

---```
---HAS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x91D6DD290888CBAB)
---@return boolean retval 
function HasFilledVehiclePopulation() end

---```
---HAS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x91D6DD290888CBAB)
---@return boolean retval 
function N_0x91D6DD290888CBAB() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x678B9BB8C3F58FEB)
---@param vehicle number 
---@return boolean retval 
function GetVehicleTyresCanBurst(vehicle) end

---```cpp
---enum eVehicleWheelType
---{
---    VWT_SPORT = 0,
---    VWT_MUSCLE = 1,
---    VWT_LOWRIDER = 2,
---    VWT_SUV = 3,
---    VWT_OFFROAD = 4,
---    VWT_TUNER = 5,
---    VWT_BIKE = 6,
---    VWT_HIEND = 7,
---    VWT_SUPERMOD1 = 8, // Benny's Original
---    VWT_SUPERMOD2 = 9, // Benny's Bespoke
---    VWT_SUPERMOD3 = 10, // Open Wheel
---    VWT_SUPERMOD4 = 11, // Street
---    VWT_SUPERMOD5 = 12, // Track
---};
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3ED1BFB4BE636DC)
---@param vehicle number 
---@return number retval Returns an eVehicleWheelType integer value.
function GetVehicleWheelType(vehicle) end

---Returns the headlight color index from the vehicle. Value between 0, 12.
---Use [\_SET_VEHICLE_HEADLIGHTS_COLOUR](#\_0xE41033B25D003A07) to set the headlights color for the vehicle.
---Must enable xenon headlights before it'll take affect.
---
---List of colors and ids:
---
---```
---enum headlightColors {
---    Default = -1,
---    White = 0,
---    Blue = 1,
---    Electric_Blue = 2,
---    Mint_Green = 3,
---    Lime_Green = 4,
---    Yellow = 5,
---    Golden_Shower = 6,
---    Orange = 7,
---    Red = 8,
---    Pony_Pink = 9,
---    Hot_Pink = 10,
---    Purple = 11,
---    Blacklight = 12
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3DFF319A831E0CDB)
---@param vehicle number The vehicle to get the headlight color from.
---@return number retval Returns an int, value between 0-12 or 255 if no color is set.
function GetVehicleXenonLightsColor(vehicle) end

---Returns the headlight color index from the vehicle. Value between 0, 12.
---Use [\_SET_VEHICLE_HEADLIGHTS_COLOUR](#\_0xE41033B25D003A07) to set the headlights color for the vehicle.
---Must enable xenon headlights before it'll take affect.
---
---List of colors and ids:
---
---```
---enum headlightColors {
---    Default = -1,
---    White = 0,
---    Blue = 1,
---    Electric_Blue = 2,
---    Mint_Green = 3,
---    Lime_Green = 4,
---    Yellow = 5,
---    Golden_Shower = 6,
---    Orange = 7,
---    Red = 8,
---    Pony_Pink = 9,
---    Hot_Pink = 10,
---    Purple = 11,
---    Blacklight = 12
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3DFF319A831E0CDB)
---@param vehicle number The vehicle to get the headlight color from.
---@return number retval Returns an int, value between 0-12 or 255 if no color is set.
function N_0x3DFF319A831E0CDB(vehicle) end

---Returns the headlight color index from the vehicle. Value between 0, 12.
---Use [\_SET_VEHICLE_HEADLIGHTS_COLOUR](#\_0xE41033B25D003A07) to set the headlights color for the vehicle.
---Must enable xenon headlights before it'll take affect.
---
---List of colors and ids:
---
---```
---enum headlightColors {
---    Default = -1,
---    White = 0,
---    Blue = 1,
---    Electric_Blue = 2,
---    Mint_Green = 3,
---    Lime_Green = 4,
---    Yellow = 5,
---    Golden_Shower = 6,
---    Orange = 7,
---    Red = 8,
---    Pony_Pink = 9,
---    Hot_Pink = 10,
---    Purple = 11,
---    Blacklight = 12
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3DFF319A831E0CDB)
---@param vehicle number The vehicle to get the headlight color from.
---@return number retval Returns an int, value between 0-12 or 255 if no color is set.
function GetVehicleHeadlightsColour(vehicle) end

---Returns the headlight color index from the vehicle. Value between 0, 12.
---Use [\_SET_VEHICLE_HEADLIGHTS_COLOUR](#\_0xE41033B25D003A07) to set the headlights color for the vehicle.
---Must enable xenon headlights before it'll take affect.
---
---List of colors and ids:
---
---```
---enum headlightColors {
---    Default = -1,
---    White = 0,
---    Blue = 1,
---    Electric_Blue = 2,
---    Mint_Green = 3,
---    Lime_Green = 4,
---    Yellow = 5,
---    Golden_Shower = 6,
---    Orange = 7,
---    Red = 8,
---    Pony_Pink = 9,
---    Hot_Pink = 10,
---    Purple = 11,
---    Blacklight = 12
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3DFF319A831E0CDB)
---@param vehicle number The vehicle to get the headlight color from.
---@return number retval Returns an int, value between 0-12 or 255 if no color is set.
function GetVehicleXenonLightsColour(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1BBE0523B8DB9A21)
---@param vehicleAsset number 
---@return boolean retval 
function HasVehicleAssetLoaded(vehicleAsset) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x06F43E5175EB6D96)
---@param p0 any 
---@return boolean retval 
function HasPreloadModsFinished(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6ADAABD3068C5235)
---@return boolean retval 
function HasVehiclePhoneExplosiveDevice() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6ADAABD3068C5235)
---@return boolean retval 
function N_0x6ADAABD3068C5235() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A83F5F9963775EF)
---@param vehicle number 
---@return boolean retval 
function HaveVehicleModsStreamedIn(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A83F5F9963775EF)
---@param vehicle number 
---@return boolean retval 
function N_0x9A83F5F9963775EF(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A83F5F9963775EF)
---@param vehicle number 
---@return boolean retval 
function IsVehicleModLoadDone(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x300D614A4C785FC4)
---@param recording number 
---@param script string 
---@return boolean retval 
function HasVehicleRecordingBeenLoaded(recording, script) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x291E373D483E7EE7)
---@param vehicle number 
---@return boolean retval 
function IsAnyPedRappellingFromHeli(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x291E373D483E7EE7)
---@param vehicle number 
---@return boolean retval 
function N_0x291E373D483E7EE7(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x291E373D483E7EE7)
---@param vehicle number 
---@return boolean retval 
function AnyPassengersRappeling(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x291E373D483E7EE7)
---@param vehicle number 
---@return boolean retval 
function IsAnyPassengerRappelingFromVehicle(vehicle) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAE71FB656C600587)
---@param vehicle number 
---@param toggle boolean 
function HideVehicleTombstone(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x48ADC8A773564670)
function InstantlyFillVehiclePopulation() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x48ADC8A773564670)
function N_0x48ADC8A773564670() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x61E1DD6125A3EEE6)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@return boolean retval 
function IsAnyVehicleNearPoint(x, y, z, radius) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x62CA17B74C435651)
---@param vehicle number 
---@return boolean retval 
function IsAnyEntityAttachedToHandlerFrame(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x62CA17B74C435651)
---@param vehicle number 
---@return boolean retval 
function N_0x62CA17B74C435651(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F243D3919F442FE)
---@param vehicle number 
---@return boolean retval 
function IsBigVehicle(vehicle) end

---```
---Usage:  
---public bool isCopInRange(Vector3 Location, float Range)  
---        {  
---            return Function.Call<bool>(Hash.IS_COP_PED_IN_AREA_3D, Location.X - Range, Location.Y - Range, Location.Z - Range, Location.X + Range, Location.Y + Range, Location.Z + Range);  
---        }  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7EEF65D5F153E26A)
---@param x1 number 
---@param x2 number 
---@param y1 number 
---@param y2 number 
---@param z1 number 
---@param z2 number 
---@return boolean retval 
function IsCopVehicleInArea3d(x1, x2, y1, y2, z1, z2) end

---```
---IS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB0AD1238A709B1A2)
---@param vehicle number 
---@return boolean retval 
function IsBoatAnchoredAndFrozen(vehicle) end

---```
---IS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB0AD1238A709B1A2)
---@param vehicle number 
---@return boolean retval 
function N_0xB0AD1238A709B1A2(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x89D630CF5EA96D23)
---@param handler number 
---@param container number 
---@return boolean retval 
function IsHandlerFrameAboveContainer(handler, container) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x89D630CF5EA96D23)
---@param handler number 
---@param container number 
---@return boolean retval 
function N_0x89D630CF5EA96D23(handler, container) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57715966069157AD)
---@param vehicle number 
---@param entity number 
---@return boolean retval 
function IsEntityAttachedToHandlerFrame(vehicle, entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57715966069157AD)
---@param vehicle number 
---@param entity number 
---@return boolean retval 
function SetPedEnabledBikeRingtone(vehicle, entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57715966069157AD)
---@param vehicle number 
---@param entity number 
---@return boolean retval 
function IsVehicleNearEntity(vehicle, entity) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAD464F2E18836BFC)
---@param vehicle number 
---@return boolean retval 
function IsMissionTrain(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x634148744F385576)
---@param vehicle number 
---@return boolean retval 
function IsHeliLandingAreaBlocked(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x634148744F385576)
---@param vehicle number 
---@return boolean retval 
function N_0x634148744F385576(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB09D25E77C33EB3F)
---@param ped number 
---@param vehicle number 
---@param outIndex number 
---@return boolean retval 
function IsPedExclusiveDriverOfVehicle(ped, vehicle, outIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB09D25E77C33EB3F)
---@param ped number 
---@param vehicle number 
---@param outIndex number 
---@return boolean retval 
function N_0xB09D25E77C33EB3F(ped, vehicle, outIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC74B4BE25EB6C8A)
---@param vehicle number 
---@param p1 boolean 
---@param p2 boolean 
---@param p3 boolean 
---@return boolean retval 
function IsHeliPartBroken(vehicle, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C8A4C2C19E68EEC)
---@param vehicle number 
---@return boolean retval 
function IsPlaybackGoingOnForVehicle(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4198AB0022B15F87)
---@param plane number 
---@return boolean retval 
function IsPlaneLandingGearIntact(plane) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4198AB0022B15F87)
---@param plane number 
---@return boolean retval 
function N_0x4198AB0022B15F87(plane) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4198AB0022B15F87)
---@param plane number 
---@return boolean retval 
function VehicleHasLandingGear(plane) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF7F203E31F96F6A1)
---@param vehicle number The vehicle to check.
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return boolean retval 
function IsSeatWarpOnly(vehicle, seatIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF7F203E31F96F6A1)
---@param vehicle number The vehicle to check.
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return boolean retval 
function N_0xF7F203E31F96F6A1(vehicle, seatIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAEA8FD591FAD4106)
---@param vehicle number 
---@return boolean retval 
function IsPlaybackUsingAiGoingOnForVehicle(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBF94DD42F63BDED2)
---@param model number | string 
---@return boolean retval 
function IsThisModelABicycle(model) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7504C0F113AB50FC)
---@param vehicle number 
---@return boolean retval 
function IsTaxiLightOn(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x45A9187928F4B9E3)
---@param model number | string 
---@return boolean retval 
function IsThisModelABoat(model) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB50C0B0CEDC6CE84)
---@param model number | string 
---@return boolean retval 
function IsThisModelABike(model) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDCE4334788AF94EA)
---@param model number | string 
---@return boolean retval 
function IsThisModelAHeli(model) end

---```
---To check if the model is an amphibious car, see gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/page-33#entry1069317363 (for build 944 and above only!)  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7F6DB52EEFC96DF8)
---@param model number | string 
---@return boolean retval 
function IsThisModelACar(model) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0948AB42D7BA0DE)
---@param model number | string 
---@return boolean retval 
function IsThisModelAPlane(model) end

---```
---Checks if model is a boat, then checks for FLAG_IS_JETSKI.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9537097412CF75FE)
---@param model number | string 
---@return boolean retval 
function IsThisModelAJetski(model) end

---```
---Checks if model is a boat, then checks for FLAG_IS_JETSKI.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9537097412CF75FE)
---@param model number | string 
---@return boolean retval 
function IsThisModelASubmersible(model) end

---```
---Checks if model is a boat, then checks for FLAG_IS_JETSKI.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9537097412CF75FE)
---@param model number | string 
---@return boolean retval 
function IsThisModelAnEmergencyBoat(model) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAB935175B22E822B)
---@param model number | string 
---@return boolean retval 
function IsThisModelATrain(model) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x39DAC362EE65FA28)
---@param model number | string 
---@return boolean retval 
function IsThisModelAQuadbike(model) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1A9FC1C76A6730D)
---@param model number | string 
---@return boolean retval 
function IsThisModelAnAmphibiousQuadbike(model) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1A9FC1C76A6730D)
---@param model number | string 
---@return boolean retval 
function N_0xA1A9FC1C76A6730D(model) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x633F6F44A537EBB6)
---@param model number | string 
---@return boolean retval 
function IsThisModelAnAmphibiousCar(model) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE33FFA906CE74880)
---@param vehicle number The vehicle to check.
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return boolean retval 
function IsTurretSeat(vehicle, seatIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE33FFA906CE74880)
---@param vehicle number The vehicle to check.
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return boolean retval 
function N_0xE33FFA906CE74880(vehicle, seatIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x84B233A8C8FC8AE7)
---@param vehicle number 
---@param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@return boolean retval 
function IsToggleModOn(vehicle, modType) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4319E335B71FFF34)
---@param vehicle number 
---@return boolean retval 
function IsVehicleAlarmActivated(vehicle) end

---```
---p1 is false almost always.  
---However, in launcher_carwash/carwash1/carwash2 scripts, p1 is true and is accompanied by DOES_VEHICLE_HAVE_ROOF  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x52F357A30698BCCE)
---@param vehicle number 
---@param p1 boolean 
---@return boolean retval 
function IsVehicleAConvertible(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD40148F22E81A1D9)
---@param cargobob number 
---@param vehicleAttached number 
---@return boolean retval 
function IsVehicleAttachedToCargobob(cargobob, vehicleAttached) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE7CF3C4F9F489F0C)
---@param vehicle number 
---@return boolean retval 
function IsVehicleAttachedToTrailer(vehicle) end

---```
---Scripts verify that towTruck is the first parameter, not the second.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x146DF9EC4C4B9FD4)
---@param towTruck number 
---@param vehicle number 
---@return boolean retval 
function IsVehicleAttachedToTowTruck(towTruck, vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x27B926779DEB502D)
---@param vehicle number 
---@param frontBumper boolean 
---@return boolean retval 
function IsVehicleBumperBouncing(vehicle, frontBumper) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x27B926779DEB502D)
---@param vehicle number 
---@param frontBumper boolean 
---@return boolean retval 
function N_0x27B926779DEB502D(vehicle, frontBumper) end

---```
---Appears to return true if the vehicle has any damage, including cosmetically.
---GET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBCDC5017D3CE1E9E)
---@param vehicle number 
---@return boolean retval 
function IsVehicleDamaged(vehicle) end

---```
---p1 is always 0 in the scripts.  
---p1 = check if vehicle is on fire  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C241E39B23DF959)
---@param vehicle number 
---@param isOnFireCheck boolean 
---@return boolean retval 
function IsVehicleDriveable(vehicle, isOnFireCheck) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD2E6822DBFD6C8BD)
---@param vehicle number 
---@param extraId number 
---@return boolean retval 
function IsVehicleExtraTurnedOn(vehicle, extraId) end

---```
---Returns true if vehicle is halted by BRING_VEHICLE_TO_HALT
---_IS_VEHICLE_*
---```
---
---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC69BB1D832A710EF)
---@param vehicle number 
---@return boolean retval 
function IsVehicleBeingHalted(vehicle) end

---```
---Returns true if vehicle is halted by BRING_VEHICLE_TO_HALT
---_IS_VEHICLE_*
---```
---
---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC69BB1D832A710EF)
---@param vehicle number 
---@return boolean retval 
function N_0xC69BB1D832A710EF(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x468056A6BB6F3846)
---@param vehicle number 
---@param front boolean 
---@return boolean retval 
function IsVehicleBumperBrokenOff(vehicle, front) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8E181E559464527)
---@param veh number 
---@param doorID number 
---@return boolean retval 
function IsVehicleDoorDamaged(veh, doorID) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F25887F3C104278)
---@param vehicle number 
---@return boolean retval 
function IsVehicleHighDetail(vehicle) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0x3E933CFF7B111C22)
---@param vehicle number The vehicle to check.
---@param doorIndex number The index of the door to check.
---@return boolean retval A bool indiciating if the specified door is fully open on the specified vehicle.
function IsVehicleDoorFullyOpen(vehicle, doorIndex) end

---```
---garageName example "Michael - Beverly Hills"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCEE4490CD57BB3C2)
---@param garageName string 
---@param vehicle number 
---@return boolean retval 
function IsVehicleInGarageArea(garageName, vehicle) end

---Only ever used once in decompiled scripts: **am_pi_menu**:
---Returns true if the engine is on fire, or if the vehicle engine health is < 0 and it **has been** on fire.
---
---It sometimes doesn't return true when the vehicle engine has been on fire, and has since been fixed. I'm not really sure what the exact conditions are.
---
---This usually returns true even if there are no visible flames yet (engine health > 0). However if you monitor engine health you'll see that it starts decreasing as soon as this returns true.
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC69ADF931AAE0C3)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---SetVehicleEngineHealth(vehicle, 99)
---
---CreateThread(function()
---    -- waiting for the vehicle to be on fire, usually takes one small
---    -- crash into a wall or something to do this if engine health < 100.
---    while IsVehicleEngineOnFire(vehicle) ~= 1 do
---        Wait(0)
---    end
---    print("Vehicle is now on fire!")
---end)```
---@param vehicle number The vehicle to check.
---@return boolean retval Returns true when the engine of your vehicle is on fire. Returns false if it's not on fire.
function IsVehicleEngineOnFire(vehicle) end

---Only ever used once in decompiled scripts: **am_pi_menu**:
---Returns true if the engine is on fire, or if the vehicle engine health is < 0 and it **has been** on fire.
---
---It sometimes doesn't return true when the vehicle engine has been on fire, and has since been fixed. I'm not really sure what the exact conditions are.
---
---This usually returns true even if there are no visible flames yet (engine health > 0). However if you monitor engine health you'll see that it starts decreasing as soon as this returns true.
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC69ADF931AAE0C3)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---SetVehicleEngineHealth(vehicle, 99)
---
---CreateThread(function()
---    -- waiting for the vehicle to be on fire, usually takes one small
---    -- crash into a wall or something to do this if engine health < 100.
---    while IsVehicleEngineOnFire(vehicle) ~= 1 do
---        Wait(0)
---    end
---    print("Vehicle is now on fire!")
---end)```
---@param vehicle number The vehicle to check.
---@return boolean retval Returns true when the engine of your vehicle is on fire. Returns false if it's not on fire.
function N_0xEC69ADF931AAE0C3(vehicle) end

---```
---Returns whether the specified vehicle is currently in a burnout.  
---vb.net  
---Public Function isVehicleInBurnout(vh As Vehicle) As Boolean  
---        Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_IN_BURNOUT, vh)  
---    End Function  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1297A88E081430EB)
---@param vehicle number 
---@return boolean retval 
function IsVehicleInBurnout(vehicle) end

---```
---mpsum2_g9ec
---```
---
---```
---NativeDB Introduced: v2699
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x00834EAC4A96E010)
---@param vehicle number 
---@param modType number 
---@param modIndex number 
---@return boolean retval 
function IsVehicleModHswExclusive(vehicle, modType, modIndex) end

---```
---indices:  
---0 = Left  
---1 = Right  
---2 = Front  
---3 = Back  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8C4B92553E4766A5)
---@param vehicle number 
---@param index number 
---@return boolean retval 
function IsVehicleNeonLightEnabled(vehicle, index) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA77DC70BD689A1E5)
---@param vehicle number 
---@return boolean retval 
function IsVehicleInSubmarineMode(vehicle) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA77DC70BD689A1E5)
---@param vehicle number 
---@return boolean retval 
function GetIsSubmarineVehicleTransformed(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x423E8DE37D934D89)
---@param vehicle number 
---@param model number | string 
---@return boolean retval 
function IsVehicleModel(vehicle, model) end

---Does not work for vehicle of type: CBike, CBmx, CBoat, CTrain, CSubmarine.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3DE51E9C80B116CF)
---@param vehicle number 
---@return boolean retval 
function IsVehicleParachuteActive(vehicle) end

---Does not work for vehicle of type: CBike, CBmx, CBoat, CTrain, CSubmarine.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3DE51E9C80B116CF)
---@param vehicle number 
---@return boolean retval 
function N_0x3DE51E9C80B116CF(vehicle) end

---```
---Public Function isVehicleOnAllWheels(vh As Vehicle) As Boolean  
---Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_ON_ALL_WHEELS, vh)  
---		    End Function  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB104CD1BABF302E2)
---@param vehicle number 
---@return boolean retval 
function IsVehicleOnAllWheels(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3D34E80EED4AE3BE)
---@param vehicle number 
---@return boolean retval 
function IsVehicleRocketBoostActive(vehicle) end

---```
---Possibly: Returns whether the searchlight (found on police vehicles) is toggled on.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0F97FCE55094987)
---@param vehicle number 
---@return boolean retval 
function IsVehicleSearchlightOn(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x48C633E94A8142A7)
---@param vehicle number 
---@return boolean retval True if the vehicle is being slipstreamed by another vehicle
function IsVehicleSlipstreamLeader(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x48C633E94A8142A7)
---@param vehicle number 
---@return boolean retval True if the vehicle is being slipstreamed by another vehicle
function N_0x48C633E94A8142A7(vehicle) end

---```
---Check if a vehicle seat is accessible. If you park your vehicle near a wall and the ped cannot enter/exit this side, the return value toggles from true (not blocked) to false (blocked).
---side = only relevant for bikes/motorcycles to check if the left (false)/right (true) side is blocked.
---onEnter = check if you can enter (true) or exit (false) a vehicle.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x639431E895B9AA57)
---@param ped number 
---@param vehicle number The vehicle to check.
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@param side boolean 
---@param onEnter boolean 
---@return boolean retval 
function IsVehicleSeatAccessible(ped, vehicle, seatIndex, side, onEnter) end

---```
---Check if a vehicle seat is accessible. If you park your vehicle near a wall and the ped cannot enter/exit this side, the return value toggles from true (not blocked) to false (blocked).
---side = only relevant for bikes/motorcycles to check if the left (false)/right (true) side is blocked.
---onEnter = check if you can enter (true) or exit (false) a vehicle.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x639431E895B9AA57)
---@param ped number 
---@param vehicle number The vehicle to check.
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@param side boolean 
---@param onEnter boolean 
---@return boolean retval 
function N_0x639431E895B9AA57(ped, vehicle, seatIndex, side, onEnter) end

---```
---Returns false if the vehicle has the FLAG_NO_RESPRAY flag set.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D474C8FAEFF6CDE)
---@param vehicle number 
---@return boolean retval 
function IsVehicleSprayable(vehicle) end

---```
---Returns false if the vehicle has the FLAG_NO_RESPRAY flag set.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D474C8FAEFF6CDE)
---@param vehicle number 
---@return boolean retval 
function N_0x8D474C8FAEFF6CDE(vehicle) end

---```
---Returns false if the vehicle has the FLAG_NO_RESPRAY flag set.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D474C8FAEFF6CDE)
---@param vehicle number 
---@return boolean retval 
function IsVehicleShopResprayAllowed(vehicle) end

---Seat indices range from -1 to [`GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS`](#\_0xA7C4F2C6E744A550) minus one.
---
---```cpp
---// CTaskExitVehicleSeat::eSeatPosition - 1
---enum eSeatPosition
---{
---    SF_FrontDriverSide = -1,
---    SF_FrontPassengerSide = 0,
---    SF_BackDriverSide = 1,
---    SF_BackPassengerSide = 2,
---    SF_AltFrontDriverSide = 3,
---    SF_AltFrontPassengerSide = 4,
---    SF_AltBackDriverSide = 5,
---    SF_AltBackPassengerSide = 6,
---};
---```
---
---```
---NativeDB Added Parameter 3: BOOL isTaskRunning
---
---isTaskRunning = on true the function returns already false while a task on the target seat is running (TASK_ENTER_VEHICLE/TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT) - on false only when a ped is finally sitting in the seat.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x22AC59A870E6A669)
---@param vehicle number The vehicle to check.
---@param seatIndex number The eSeatPosition or -2 for **any** vehicle seat.
---@return boolean retval 
function IsVehicleSeatFree(vehicle, seatIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB5CC40FBCB586380)
---@param vehicle number 
---@return boolean retval 
function IsVehicleSirenAudioOn(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB5CC40FBCB586380)
---@param vehicle number 
---@return boolean retval 
function N_0xB5CC40FBCB586380(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB5CC40FBCB586380)
---@param vehicle number 
---@return boolean retval 
function IsVehicleSirenSoundOn(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4AF9BD80EEBEB453)
---@param vehicle number 
---@return boolean retval 
function IsVehicleStolen(vehicle) end

---```
---Is this for red lights only?  more testing required.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2959F696AE390A99)
---@param vehicle number 
---@return boolean retval 
function IsVehicleStoppedAtTrafficLights(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C9BF537BE2634B2)
---@param vehicle number 
---@return boolean retval 
function IsVehicleSirenOn(vehicle) end

---```
---p1 can be anywhere from 0 to 3 in the scripts. p2 is generally somewhere in the 1000 to 10000 range.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x679BE1DAF71DA874)
---@param vehicle number 
---@param p1 number 
---@param p2 number 
---@return boolean retval 
function IsVehicleStuckTimerUp(vehicle, p1, p2) end

---```
---wheelID used for 4 wheelers seem to be (0, 1, 4, 5)  
---completely - is to check if tire completely gone from rim.  
---'0 = wheel_lf / bike, plane or jet front  
---'1 = wheel_rf  
---'2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left  
---'3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right  
---'4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left  
---'5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right  
---'45 = 6 wheels trailer mid wheel left  
---'47 = 6 wheels trailer mid wheel right  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA291848A0815CA9)
---@param vehicle number 
---@param wheelID number 
---@param completely boolean 
---@return boolean retval 
function IsVehicleTyreBurst(vehicle, wheelID, completely) end

---```cpp
---enum eWindowId {
---	VEH_EXT_WINDSCREEN = 0,
---	VEH_EXT_WINDSCREEN_R = 1,
---	VEH_EXT_WINDOW_LF = 2,
---	VEH_EXT_WINDOW_RF = 3,
---	VEH_EXT_WINDOW_LR = 4,
---	VEH_EXT_WINDOW_RR = 5,
---	VEH_EXT_WINDOW_LM = 6,
---	VEH_EXT_WINDOW_RM = 7,
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x46E571A0E20D01F1)
---@param vehicle number 
---@param windowIndex number 
---@return boolean retval 
function IsVehicleWindowIntact(vehicle, windowIndex) end

---```
---Returns true if the vehicle's current speed is less than, or equal to 0.0025f.
---For some vehicles it returns true if the current speed is <= 0.00039999999.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5721B434AD84D57A)
---@param vehicle number 
---@return boolean retval True if the vehicle's speed is equal to, or less than 0.02 meters per second, or 0.05 meters per second, if the vehicle's handbrake is engaged.
function IsVehicleStopped(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB497F06B288DCFDF)
---@param vehicle number 
---@return boolean retval 
function IsVehicleStuckOnRoof(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDED51F703D0FA83D)
---@param vehicle number 
---@param instantlyLower boolean 
function LowerConvertibleRoof(vehicle, instantlyLower) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x93A3996368C94158)
---@param vehicle number 
---@param value number 
function ModifyVehicleTopSpeed(vehicle, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x93A3996368C94158)
---@param vehicle number 
---@param value number 
function SetVehicleEnginePowerMultiplier(vehicle, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA0A52D24FB98293)
---@param vehicle number 
---@return boolean retval 
function IsVehicleVisible(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0419B167EE128F33)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0x0419B167EE128F33(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x563B65A643ED072E)
---@param weaponHash number | string 
---@param vehicle number 
---@param owner number 
---@return boolean retval 
function IsVehicleWeaponDisabled(weaponHash, vehicle, owner) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x563B65A643ED072E)
---@param weaponHash number | string 
---@param vehicle number 
---@param owner number 
---@return boolean retval 
function N_0x563B65A643ED072E(weaponHash, vehicle, owner) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0581730AB9380412)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
function N_0x0581730AB9380412(p0, p1, p2, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x065D03A9D6B2C6B5)
---@param p0 any 
---@param p1 any 
function N_0x065D03A9D6B2C6B5(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5335BE58C083E74E)
---@param vehicle number 
function LowerRetractableWheels(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5335BE58C083E74E)
---@param vehicle number 
function N_0x5335BE58C083E74E(vehicle) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0205F5365292D2EB)
---@param vehicle number 
---@param p1 number 
function N_0x0205F5365292D2EB(vehicle, p1) end

---```
---A vehicle recording playback flag only used in jewelry_heist
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x063AE2B2CC273588)
---@param vehicle number 
---@param p1 boolean 
function N_0x063AE2B2CC273588(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0AD9E8F87FF7C16F)
---@param p0 any 
---@param p1 boolean 
function N_0x0AD9E8F87FF7C16F(p0, p1) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A3F820A9A9A9AC5)
---@param vehicle number 
---@param x number 
---@param y number 
---@param z number 
function N_0x0A3F820A9A9A9AC5(vehicle, x, y, z) end

---```
---CLEAR_VEHICLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A436B8643716D14)
function N_0x0A436B8643716D14() end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0BBB9A7A8FFE931B)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_0x0BBB9A7A8FFE931B(p0, p1, p2) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x107A473D7A6647A9)
---@param vehicle number 
function N_0x107A473D7A6647A9(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1312DDD8385AEE4E)
---@param p0 any 
---@param p1 any 
function N_0x1312DDD8385AEE4E(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x182F266C2D9E2BEB)
---@param vehicle number 
---@param p1 number 
function N_0x182F266C2D9E2BEB(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F34B0626C594380)
---@param p0 any 
---@param p1 any 
function N_0x1F34B0626C594380(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F9FB66F3A3842D2)
---@param vehicle number 
---@param p1 boolean 
function N_0x1F9FB66F3A3842D2(vehicle, p1) end

---```
---Sets a value that appears to affect door opening behavior when damaged.
---
---SET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1B212B26DD3C04DF)
---@param vehicle number 
---@param toggle boolean 
function N_0x1B212B26DD3C04DF(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x26D99D5A82FD18E8)
---@param p0 any 
function N_0x26D99D5A82FD18E8(p0) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2310A8F9421EBF43)
---@param p0 any 
function N_0x2310A8F9421EBF43(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C1D8B3B19E517CC)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0x2C1D8B3B19E517CC(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3441CAD2F2231923)
---@param vehicle number 
---@param p1 boolean 
function N_0x3441CAD2F2231923(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x35BB21DE06784373)
---@param p0 any 
---@param p1 any 
function N_0x35BB21DE06784373(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2311DD7159F00582)
---@param vehicle number 
---@param p1 boolean 
function N_0x2311DD7159F00582(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x35E0654F4BAD7971)
---@param p0 boolean 
function N_0x35E0654F4BAD7971(p0) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x26E13D440E7F6064)
---@param vehicle number 
---@param value number 
function N_0x26E13D440E7F6064(vehicle, value) end

---```
---SET_VEHICLE_W* (next character is either H or I)
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C4A1590ABF43E8B)
---@param vehicle number 
---@param p1 boolean 
function N_0x2C4A1590ABF43E8B(vehicle, p1) end

---```
---Usually used alongside other vehicle door natives.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3B458DDB57038F08)
---@param vehicle number 
---@param doorIndex number 
---@param toggle boolean 
function N_0x3B458DDB57038F08(vehicle, doorIndex, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2FA2494B47FDD009)
---@param p0 any 
---@param p1 any 
function N_0x2FA2494B47FDD009(p0, p1) end

---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x407DC5E97DB1A4D3)
---@param p0 any 
---@param p1 any 
function N_0x407DC5E97DB1A4D3(p0, p1) end

---```
---Does nothing. It's a nullsub.
---
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x36DE109527A2C0C4)
---@param toggle boolean 
function N_0x36DE109527A2C0C4(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x41290B40FA63E6DA)
---@param p0 any 
function N_0x41290B40FA63E6DA(p0) end

---```
---SET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x428AD3E26C8D9EB0)
---@param vehicle number 
---@param x number 
---@param y number 
---@param z number 
---@param p4 number 
function N_0x428AD3E26C8D9EB0(vehicle, x, y, z, p4) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x430A7631A84C9BE7)
---@param p0 any 
function N_0x430A7631A84C9BE7(p0) end

---```
---CLEAR_VEHICLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4419966C9936071A)
---@param vehicle number 
function N_0x4419966C9936071A(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x51DB102F4A3BA5E0)
---@param toggle boolean 
function N_0x51DB102F4A3BA5E0(toggle) end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4AD280EB48B2D8E6)
---@param vehicle number 
---@param togle boolean 
function N_0x4AD280EB48B2D8E6(vehicle, togle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D9D109F63FEE1D4)
---@param p0 any 
---@param p1 boolean 
function N_0x4D9D109F63FEE1D4(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x56EB5E94318D3FB6)
---@param vehicle number 
---@param p1 boolean 
function N_0x56EB5E94318D3FB6(vehicle, p1) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5BBCF35BF6E456F7)
---@param toggle boolean 
function N_0x5BBCF35BF6E456F7(toggle) end

---Usex in decompiled scripts in combination with [`_GET_VEHICLE_SUSPENSION_BOUNDS`](#\_0xDF7E3EEB29642C38).
---
---NativeDB Introduced: v1180
---
---```
---// Example from fm_bj_race_controller.c
---if (!VEHICLE::_0x51F30DB60626A20E(uParam0->f_26, uParam0->f_12.f_3, uParam0->f_12, 2, 1) && !func_282(uParam0->f_6))
---{
---    VEHICLE::_GET_VEHICLE_SUSPENSION_BOUNDS(*uParam0, &vVar15, &uVar16);
---    VEHICLE::_GET_VEHICLE_SUSPENSION_BOUNDS(uParam0->f_26, &vVar17, &uVar18);
---    fVar19 = SYSTEM::VDIST2(0f, 0f, vVar15.z, 0f, 0f, vVar17.z);
---    uParam0->f_12.f_3.f_2 = (uParam0->f_12.f_3.f_2 + fVar19);
---    if (!VEHICLE::_0x51F30DB60626A20E(uParam0->f_26, uParam0->f_12.f_3, uParam0->f_12, 2, 1))
---    {
---        uParam0->f_12.f_3 = { uParam0->f_6 };
---        uParam0->f_12 = { uParam0->f_9 };
---    }
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x51F30DB60626A20E)
---@param vehicle number the target vehicle
---@param x number vehicle location
---@param y number vehicle location
---@param z number vehicle location
---@param rotX number some kind of vehicle rotation value
---@param rotY number some kind of vehicle rotation value
---@param rotZ number some kind of vehicle rotation value
---@param p7 number usually 2
---@param p8 any usually 1
---@return boolean retval A BOOL value, purpose unknown.
function N_0x51F30DB60626A20E(vehicle, x, y, z, rotX, rotY, rotZ, p7, p8) end

---```
---Sets some health value. Looks like it's used for helis.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5EE5632F47AE9695)
---@param vehicle number 
---@param health number 
function N_0x5EE5632F47AE9695(vehicle, health) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6501129C9E0FFA05)
---@param p0 any 
---@param p1 any 
function N_0x6501129C9E0FFA05(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5845066D8A1EA7F7)
---@param vehicle number 
---@param x number 
---@param y number 
---@param z number 
---@param p4 any 
function N_0x5845066D8A1EA7F7(vehicle, x, y, z, p4) end

---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x59C3757B3B7408E8)
---@param vehicle number 
---@param toggle boolean 
---@param p2 number 
function N_0x59C3757B3B7408E8(vehicle, toggle, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x66E3AAFACE2D1EB8)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_0x66E3AAFACE2D1EB8(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6EAAEFC76ACC311F)
---@param p0 any 
---@return any retval 
function N_0x6EAAEFC76ACC311F(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5BA68A0840D546AC)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0x5BA68A0840D546AC(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E569EC46EC21CAE)
---@param vehicle number 
---@param toggle boolean 
function N_0x5E569EC46EC21CAE(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6EBFB22D646FFC18)
---@param vehicle number 
---@param p1 boolean 
function N_0x6EBFB22D646FFC18(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x72BECCF4B829522E)
---@param p0 any 
---@param p1 any 
function N_0x72BECCF4B829522E(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x65B080555EA48149)
---@param p0 any 
function N_0x65B080555EA48149(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x73561D4425A021A2)
---@param p0 any 
---@param p1 any 
function N_0x73561D4425A021A2(p0, p1) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6A973569BA094650)
---@param vehicle number 
---@param p1 any 
function N_0x6A973569BA094650(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x737E398138550FFF)
---@param vehicle number 
---@param toggle boolean 
function N_0x737E398138550FFF(vehicle, toggle) end

---Last named native above this one is `TRACK_VEHICLE_VISIBILITY` and first named native below is `UNCUFF_PED`.
---Unknown what it does, couldn't find good examples in the decompiled scripts.
---[Native Documentation](https://docs.fivem.net/natives/?_0x725012A415DBA050)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@return any retval 
function N_0x725012A415DBA050(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x796A877E459B99EA)
---@param p0 any 
---@param p1 number 
---@param p2 number 
---@param p3 number 
function N_0x796A877E459B99EA(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7BBE7FF626A591FE)
---@param p0 any 
function N_0x7BBE7FF626A591FE(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x80E3357FDEF45C21)
---@param vehicle number 
---@param toggle boolean 
function N_0x80E3357FDEF45C21(vehicle, toggle) end

---```
---SET_VEHICLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x76D26A22750E849E)
---@param vehicle number 
function N_0x76D26A22750E849E(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x78CEEE41F49F421F)
---@param p0 any 
---@param p1 any 
function N_0x78CEEE41F49F421F(p0, p1) end

---```
---SET_VEHICLE_AL*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7D6F9A3EF26136A0)
---@param vehicle number 
---@param toggle boolean 
---@param p2 boolean 
function N_0x7D6F9A3EF26136A0(vehicle, toggle, p2) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8235F1BEAD557629)
---@param vehicle number 
---@param toggle boolean 
function N_0x8235F1BEAD557629(vehicle, toggle) end

---```
---Does nothing. It's a nullsub.
---
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x82E0AC411E41A5B4)
---@param toggle boolean 
function N_0x82E0AC411E41A5B4(toggle) end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8664170EF165C4A6)
---@param p0 any 
---@param p1 any 
function N_0x8664170EF165C4A6(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8533CAFDE1F0F336)
---@param p0 any 
---@return any retval 
function N_0x8533CAFDE1F0F336(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x870B8B7A766615C8)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_0x870B8B7A766615C8(p0, p1, p2) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8821196D91FA2DE5)
---@param vehicle number 
---@param toggle boolean 
function N_0x8821196D91FA2DE5(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x88BC673CA9E0AE99)
---@param vehicle number 
---@param p1 boolean 
function N_0x88BC673CA9E0AE99(vehicle, p1) end

---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x887FA38787DE8C72)
---@param vehicle number 
function N_0x887FA38787DE8C72(vehicle) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F0D5BA1C2CC91D7)
---@param toggle boolean 
function N_0x8F0D5BA1C2CC91D7(toggle) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x97841634EF7DF1D6)
---@param vehicle number 
---@param toggle boolean 
function N_0x97841634EF7DF1D6(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8AA9180DE2FEDD45)
---@param vehicle number 
---@param p1 boolean 
function N_0x8AA9180DE2FEDD45(vehicle, p1) end

---```
---Does nothing. It's a nullsub.
---
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x99A05839C46CE316)
---@param toggle boolean 
function N_0x99A05839C46CE316(toggle) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9640E30A7F395E4B)
---@param vehicle number 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
function N_0x9640E30A7F395E4B(vehicle, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BECD4B9FEF3F8A6)
---@param vehicle number 
---@param p1 boolean 
function N_0x9BECD4B9FEF3F8A6(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D30687C57BAA0BB)
---@param p0 any 
function N_0x9D30687C57BAA0BB(p0) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9849DE24FCF23CCC)
---@param vehicle number 
---@param toggle boolean 
function N_0x9849DE24FCF23CCC(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F3F689B814F2599)
---@param vehicle number 
---@param p1 boolean 
function N_0x9F3F689B814F2599(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x99CAD8E7AFDB60FA)
---@param vehicle number 
---@param p1 number 
---@param p2 number 
function N_0x99CAD8E7AFDB60FA(vehicle, p1, p2) end

---Gets hash related to task happening with seat index
---Native name: GET_I\*
---[Native Documentation](https://docs.fivem.net/natives/?_0xA01BC64DD4BFBBAC)
---@param vehicle number 
---@param seatIndex number 
---@return number | string retval 
function N_0xA01BC64DD4BFBBAC(vehicle, seatIndex) end

---```
---Related to car generators & CPlayerSwitchMgrLong
---SET_VEHICLE_*
---SET_VEHICLE_GENERATORS_EXPECTED_GAMEPLAY_PT ?
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A75585FB2E54FAD)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
function N_0x9A75585FB2E54FAD(x, y, z, radius) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BDDC73CC6A115D4)
---@param vehicle number 
---@param p1 boolean 
---@param p2 boolean 
function N_0x9BDDC73CC6A115D4(vehicle, p1, p2) end

---```
---Only used in R* Script fm_content_cargo
---```
---
---```
---NativeDB Introduced: v2699
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF9D388F8D377F44)
---@param vehicle number 
---@param p1 boolean 
function N_0xEF9D388F8D377F44(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA4822F1CF23F4810)
---@param outVec vector3 
---@param p1 any 
---@param outVec1 vector3 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@param p6 any 
---@param p7 any 
---@param p8 any 
---@return boolean retval 
function N_0xA4822F1CF23F4810(outVec, p1, outVec1, p3, p4, p5, p6, p7, p8) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA247F9EF01D8082E)
---@param p0 any 
function N_0xA247F9EF01D8082E(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7DCDF4DED40A8F4)
---@param vehicle number 
---@param p1 boolean 
function N_0xA7DCDF4DED40A8F4(vehicle, p1) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA4A9A4C40E615885)
---@param p0 any 
function N_0xA4A9A4C40E615885(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAB04325045427AAE)
---@param vehicle number 
---@param p1 boolean 
function N_0xAB04325045427AAE(vehicle, p1) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA653AE61924B0A0)
---@param vehicle number 
---@param toggle boolean 
function N_0xAA653AE61924B0A0(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAB31EF4DE6800CE9)
---@param p0 any 
---@param p1 any 
function N_0xAB31EF4DE6800CE9(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAF60E6A2936F982A)
---@param p0 any 
---@param p1 any 
function N_0xAF60E6A2936F982A(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAE3FEE8709B39DCB)
---@param vehicle number 
---@return boolean retval 
function N_0xAE3FEE8709B39DCB(vehicle) end

---```
---SET_C*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB2E0C0D6922D31F2)
---@param vehicle number 
---@param toggle boolean 
function N_0xB2E0C0D6922D31F2(vehicle, toggle) end

---```
---This native doesn't seem to do anything, might be a debug-only native.  
---Confirmed, it is a debug native.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB264C4D2F2B0A78B)
---@param vehicle number 
function N_0xB264C4D2F2B0A78B(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA91D045575699AD)
---@param vehicle number 
---@return boolean retval 
function N_0xBA91D045575699AD(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE5C1255A1830FF5)
---@param vehicle number 
---@param toggle boolean 
function N_0xBE5C1255A1830FF5(vehicle, toggle) end

---Vehicle must be a plane.
---Native name is between SET_VEHICLE_BRAKE_LIGHTS and SET_VEHICLE_BULLDOZER_ARM_POSITION alphabetically.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC361AA040D6637A8)
---@param vehicle number 
---@param p1 boolean 
function N_0xC361AA040D6637A8(vehicle, p1) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB68CFAF83A02768D)
---@param vehicle number 
---@param toggle boolean 
function N_0xB68CFAF83A02768D(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC4B3347BD68BD609)
---@param p0 any 
function N_0xC4B3347BD68BD609(p0) end

---```
---SET_VEHICLE_LI*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC50CE861B55EAB8B)
---@param vehicle number 
---@param p1 boolean 
function N_0xC50CE861B55EAB8B(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9562064627FF9DB)
---@param p0 any 
---@param p1 any 
function N_0xB9562064627FF9DB(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBB2333BB87DDD87F)
---@param p0 any 
---@param p1 any 
function N_0xBB2333BB87DDD87F(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF9159024555488C)
---@param p0 any 
function N_0xCF9159024555488C(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0ED6438E6D39BA8)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_0xC0ED6438E6D39BA8(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3301660A57C9272)
---@param p0 any 
function N_0xD3301660A57C9272(p0) end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC67DB108A9ADE3BE)
---@param p0 any 
---@param p1 any 
function N_0xC67DB108A9ADE3BE(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD4196117AF7BB974)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0xD4196117AF7BB974(p0, p1) end

---```
---what does this do?  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCFD778E7904C255E)
---@param vehicle number 
function N_0xCFD778E7904C255E(vehicle) end

---```
---Related to locking the vehicle or something similar.  
---In the decompiled scripts, its always called after  
---VEHICLE::_SET_EXCLUSIVE_DRIVER(a_0, 0, 0);  
---VEHICLE::SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(a_0, 1);  
---VEHICLE::SET_VEHICLE_DOORS_LOCKED_FOR_PLAYER(a_0, PLAYER::PLAYER_ID(), 0);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDBC631F109350B8C)
---@param vehicle number 
---@param p1 boolean 
function N_0xDBC631F109350B8C(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE05DD0E9707003A3)
---@param p0 any 
---@param p1 boolean 
function N_0xE05DD0E9707003A3(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3E51C0AB8C26EEE)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0xD3E51C0AB8C26EEE(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD565F438137F0E10)
---@param p0 any 
---@param p1 any 
function N_0xD565F438137F0E10(p0, p1) end

---```
---NativeDB Added Parameter 1: Vehicle vehicle
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDCE97BDF8A0EABC8)
function N_0xDCE97BDF8A0EABC8() end

---```
---RESET_*
---
---Resets the effect of 0x428AD3E26C8D9EB0
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE2F53F172B45EDE1)
function N_0xE2F53F172B45EDE1() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE5810AC70602F2F5)
---@param vehicle number 
---@param p1 number 
function N_0xE5810AC70602F2F5(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE851E480B814D4BA)
---@param vehicle number 
---@param p1 boolean 
function N_0xE851E480B814D4BA(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xED5EDE9E676643C9)
---@param p0 any 
---@param p1 any 
function N_0xED5EDE9E676643C9(p0, p1) end

---```
---GET_H*
---
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE8718FAF591FD224)
---@param vehicle number 
---@return boolean retval 
function N_0xE8718FAF591FD224(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF051D9BFB6BA39C0)
---@param p0 any 
function N_0xF051D9BFB6BA39C0(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEDBC8405B3895CC9)
---@param p0 any 
---@param p1 any 
function N_0xEDBC8405B3895CC9(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF25E02CB9C5818F8)
function N_0xF25E02CB9C5818F8() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF78F94D60248C737)
---@param vehicle number 
---@param p1 boolean 
---@return boolean retval 
function N_0xF78F94D60248C737(vehicle, p1) end

---```
---Some kind of flags.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEEBFC7A7EFDC35B4)
---@param vehicle number 
---@return number retval 
function N_0xEEBFC7A7EFDC35B4(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFAF2A78061FD9EF4)
---@param p0 any 
---@param p1 number 
---@param p2 number 
---@param p3 number 
function N_0xFAF2A78061FD9EF4(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF3B0E0AED097A3F5)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0xF3B0E0AED097A3F5(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x87E7F24270732CB1)
---@param vehicle number 
function OpenBombBayDoors(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x87E7F24270732CB1)
---@param vehicle number 
function OpenVehicleBombBay(vehicle) end

---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF8B49F5BA7F850E7)
---@param vehicle number 
---@param p1 number 
function N_0xF8B49F5BA7F850E7(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x758F49C24925568A)
---@param p0 any 
---@param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@param p2 any 
function PreloadVehicleMod(p0, modType, p2) end

---```
---Implemented only for Trains.
---```
---
---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC0C1D4922AF9754)
---@param vehicle number 
---@param toggle boolean 
function NetworkUseHighPrecisionVehicleBlending(vehicle, toggle) end

---```
---Implemented only for Trains.
---```
---
---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC0C1D4922AF9754)
---@param vehicle number 
---@param toggle boolean 
function N_0xEC0C1D4922AF9754(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F5FB35D7E88FC70)
---@param vehicle number 
---@param instantlyRaise boolean 
function RaiseConvertibleRoof(vehicle, instantlyRaise) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x632A689BF42301B1)
---@param vehicle number 
function PausePlaybackRecordedVehicle(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF660602546D27BA8)
---@param vehicle number 
function RaiseRetractableWheels(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF660602546D27BA8)
---@param vehicle number 
function RaiseLowerableWheels(vehicle) end

---Detaches the vehicle's windscreen.
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D645D59FB5F5AD3)
---@param vehicle number 
function PopOutVehicleWindscreen(vehicle) end

---Detaches the vehicle's windscreen.
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D645D59FB5F5AD3)
---@param vehicle number 
function DetachVehicleWindscreen(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x445D79F995508307)
---@param vehicle number 
function ReleasePreloadMods(vehicle) end

---```
---Retracts the hook on the cargobob.  
---Note: after you retract it the natives for dropping the hook no longer work  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9768CF648F54C804)
---@param cargobob number 
function RemovePickUpRopeForCargobob(cargobob) end

---```
---Retracts the hook on the cargobob.  
---Note: after you retract it the natives for dropping the hook no longer work  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9768CF648F54C804)
---@param cargobob number 
function RetractCargobobHook(cargobob) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xACE699C71AB9DEB5)
---@param vehicleAsset number 
function RemoveVehicleAsset(vehicleAsset) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1033371FC8E842A7)
---@param speedzone number 
---@return boolean retval 
function RemoveRoadNodeSpeedZone(speedzone) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1033371FC8E842A7)
---@param speedzone number 
---@return boolean retval 
function N_0x1033371FC8E842A7(speedzone) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1033371FC8E842A7)
---@param speedzone number 
---@return boolean retval 
function RemoveSpeedZone(speedzone) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x00689CDE5F7C6787)
---@param vehicle number 
function RemoveVehicleHighDetailModel(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE30524E1871F481D)
---@param p0 any 
function RemoveVehicleCombatAvoidanceArea(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE30524E1871F481D)
---@param p0 any 
function N_0xE30524E1871F481D(p0) end

---See [REQUEST_VEHICLE_RECORDING](#\_0xAF514CABE74CBF15)
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1160ACCF98A3FC8)
---@param recording number 
---@param script string 
function RemoveVehicleRecording(recording, script) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x92D619E420858204)
---@param vehicle number 
---@param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
function RemoveVehicleMod(vehicle, modType) end

---Remove the weird shadow applied by [\_SET_VEHICLE_SHADOW_EFFECT](#\_0x2A70BAE8883E4C81)
---[Native Documentation](https://docs.fivem.net/natives/?_0xF87D9F2301F7D206)
---@param vehicle number 
function RemoveVehicleShadowEffect(vehicle) end

---Remove the weird shadow applied by [\_SET_VEHICLE_SHADOW_EFFECT](#\_0x2A70BAE8883E4C81)
---[Native Documentation](https://docs.fivem.net/natives/?_0xF87D9F2301F7D206)
---@param vehicle number 
function N_0xF87D9F2301F7D206(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8386BFB614D06749)
---@param vehicle number 
function RemoveVehicleStuckCheck(vehicle) end

---See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
---[Native Documentation](https://docs.fivem.net/natives/?_0xA711568EEDB43069)
---@param vehicle number 
---@param windowIndex number 
function RemoveVehicleWindow(vehicle, windowIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC53EB42A499A7E90)
---@param vehicle number 
function RemoveVehicleUpsidedownCheck(vehicle) end

---```
---REQUEST_VEHICLE_ASSET(GET_HASH_KEY(cargobob3), 3);  
---vehicle found that have asset's:  
---cargobob3  
---submersible  
---blazer  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x81A15811460FAB3A)
---@param vehicleHash number | string 
---@param vehicleAsset number 
function RequestVehicleAsset(vehicleHash, vehicleAsset) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x46A1E1A299EC4BBA)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param unk any 
function RemoveVehiclesFromGeneratorsInArea(x1, y1, z1, x2, y2, z2, unk) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6E9FDCB2C76785E)
---@param vehicle number 
function RequestVehicleHighDetailModel(vehicle) end

---```
---REQUEST_VEHICLE_*  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDBA3C090E3D74690)
---@param vehicle number 
function RequestVehicleDashboardScaleformMovie(vehicle) end

---```
---REQUEST_VEHICLE_*  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDBA3C090E3D74690)
---@param vehicle number 
function N_0xDBA3C090E3D74690(vehicle) end

---```
---The inner function has a switch on the second parameter. It's the stuck timer index.  
---Here's some pseudo code I wrote for the inner function:  
---void __fastcall NATIVE_RESET_VEHICLE_STUCK_TIMER_INNER(CUnknown* unknownClassInVehicle, int timerIndex)  
---{  
---	switch (timerIndex)  
---	{  
---	case 0:  
---unknownClassInVehicle->FirstStuckTimer = (WORD)0u;  
---	case 1:  
---unknownClassInVehicle->SecondStuckTimer = (WORD)0u;  
---	case 2:  
---unknownClassInVehicle->ThirdStuckTimer = (WORD)0u;  
---	case 3:  
---unknownClassInVehicle->FourthStuckTimer = (WORD)0u;  
---	case 4:  
---unknownClassInVehicle->FirstStuckTimer = (WORD)0u;  
---unknownClassInVehicle->SecondStuckTimer = (WORD)0u;  
---unknownClassInVehicle->ThirdStuckTimer = (WORD)0u;  
---unknownClassInVehicle->FourthStuckTimer = (WORD)0u;  
---break;  
---	};  
---}  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7591B0065AFAA7A)
---@param vehicle number 
---@param nullAttributes number 
function ResetVehicleStuckTimer(vehicle, nullAttributes) end

---See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
---[Native Documentation](https://docs.fivem.net/natives/?_0x7AD9E6CE657D69E3)
---@param vehicle number 
---@param windowIndex number 
function RollDownWindow(vehicle, windowIndex) end

---```
---Request the vehicle recording defined by the lowercase format string "%s%03d.yvr". For example, REQUEST_VEHICLE_RECORDING(1, "FBIs1UBER") corresponds to fbis1uber001.yvr.
---For all vehicle recording/playback natives, "script" is a common prefix that usually corresponds to the script/mission the recording is used in, "recording" is its int suffix, and "id" (e.g., in native GET_TOTAL_DURATION_OF_VEHICLE_RECORDING_ID) corresponds to a unique identifier within the recording streaming module.
---Note that only 24 recordings (hardcoded in multiple places) can ever active at a given time before clobbering begins.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAF514CABE74CBF15)
---@param recording number 
---@param script string 
function RequestVehicleRecording(recording, script) end

---See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
---[Native Documentation](https://docs.fivem.net/natives/?_0x602E548F46E24D59)
---@param vehicle number 
---@param windowIndex number 
function RollUpWindow(vehicle, windowIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x21D2E5662C1F6FED)
---@param vehicle number 
---@param toggle boolean 
function ResetVehicleWheels(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x34AD89078831A4BC)
function SetAllVehicleGeneratorsActive() end

---```
---Roll down all the windows of the vehicle passed through the first parameter.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x85796B0549DDE156)
---@param vehicle number 
function RollDownWindows(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x90B6DA738A9A25DA)
---@param range number Most likely a value between 0.0 and 1.0.
function SetAmbientVehicleRangeMultiplierThisFrame(range) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x90B6DA738A9A25DA)
---@param range number Most likely a value between 0.0 and 1.0.
function N_0x90B6DA738A9A25DA(range) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x90B6DA738A9A25DA)
---@param range number Most likely a value between 0.0 and 1.0.
function SetSomeVehicleDensityMultiplierThisFrame(range) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x75DBEC174AEEAD10)
---@param vehicle number 
---@param toggle boolean 
function SetBoatAnchor(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A6A279F3AA4FD70)
---@param vehicle number 
---@param p1 boolean 
function SetBoatDisableAvoidance(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A6A279F3AA4FD70)
---@param vehicle number 
---@param p1 boolean 
function N_0x0A6A279F3AA4FD70(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x608207E7A8FB787C)
---@param active boolean 
function SetAllLowPriorityVehicleGeneratorsActive(active) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC12321827687FE4D)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param p6 boolean 
---@param p7 boolean 
function SetAllVehicleGeneratorsActiveInArea(x1, y1, z1, x2, y2, z2, p6, p7) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE3EBAAE484798530)
---@param vehicle number 
---@param toggle boolean 
function SetBoatFrozenWhenAnchored(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE3EBAAE484798530)
---@param vehicle number 
---@param toggle boolean 
function N_0xE3EBAAE484798530(vehicle, toggle) end

---```
---Only works on bikes, both X and Y work in the -1 - 1 range.
---X forces the bike to turn left or right (-1, 1)
---Y forces the bike to lean to the left or to the right (-1, 1)
---Example with X -1/Y 1
---http://i.imgur.com/TgIuAPJ.jpg
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9CFA4896C3A53CBB)
---@param vehicle number 
---@param x number 
---@param y number 
function SetBikeOnStand(vehicle, x, y) end

---```
---Only works on bikes, both X and Y work in the -1 - 1 range.
---X forces the bike to turn left or right (-1, 1)
---Y forces the bike to lean to the left or to the right (-1, 1)
---Example with X -1/Y 1
---http://i.imgur.com/TgIuAPJ.jpg
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9CFA4896C3A53CBB)
---@param vehicle number 
---@param x number 
---@param y number 
function SetBikeLeanAngle(vehicle, x, y) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE842A9398079BD82)
---@param vehicle number 
---@param value number 
function SetBoatMovementResistance(vehicle, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE842A9398079BD82)
---@param vehicle number 
---@param value number 
function N_0xE842A9398079BD82(vehicle, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE842A9398079BD82)
---@param vehicle number 
---@param value number 
function SetBoatAnchorBuoyancyCoefficient(vehicle, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1201E8A3290A3B98)
---@param vehicle number 
---@param toggle boolean 
function SetCamberedWheelsDisabled(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1201E8A3290A3B98)
---@param vehicle number 
---@param toggle boolean 
function N_0x1201E8A3290A3B98(vehicle, toggle) end

---Sets the boat boom position for the `TR3` trailer.
---
---Ratio value is between `0.0` and `1.0`, where `0.0` is 90 degrees to the left of the boat, and `1.0` is just slightly to the right/back of the boat.
---
---To get the current boom position ratio, use [GET_BOAT_BOOM_POSITION_RATIO](#\_0x6636C535F6CC2725).
---[Native Documentation](https://docs.fivem.net/natives/?_0xF488C566413B4232)
---@param vehicle number The TR3 vehicle.
---@param ratio number A value between 0.0 (left) and 1.0 (back)
function SetBoatBoomPositionRatio(vehicle, ratio) end

---Sets the boat boom position for the `TR3` trailer.
---
---Ratio value is between `0.0` and `1.0`, where `0.0` is 90 degrees to the left of the boat, and `1.0` is just slightly to the right/back of the boat.
---
---To get the current boom position ratio, use [GET_BOAT_BOOM_POSITION_RATIO](#\_0x6636C535F6CC2725).
---[Native Documentation](https://docs.fivem.net/natives/?_0xF488C566413B4232)
---@param vehicle number The TR3 vehicle.
---@param ratio number A value between 0.0 (left) and 1.0 (back)
function N_0xF488C566413B4232(vehicle, ratio) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBD32E46AA95C1DD2)
---@param vehicle number 
function SetBoatIsSinking(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBD32E46AA95C1DD2)
---@param vehicle number 
function N_0xBD32E46AA95C1DD2(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBD32E46AA95C1DD2)
---@param vehicle number 
function SetBoatSinking(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F719973E1445BA2)
---@param vehicle number 
---@param toggle boolean 
function SetBoatSinksWhenWrecked(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F719973E1445BA2)
---@param vehicle number 
---@param toggle boolean 
function N_0x8F719973E1445BA2(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F719973E1445BA2)
---@param vehicle number 
---@param toggle boolean 
function SetBoatExplodesOnWreckedAction(vehicle, toggle) end

---```
---Hardcoded to not work in multiplayer.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x52BBA29D5EC69356)
---@param vehicle number 
---@param state boolean 
function SetCanResprayVehicle(vehicle, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC40CBF7B90CA77C)
---@param vehicle number 
function SetCarBootOpen(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC40CBF7B90CA77C)
---@param vehicle number 
function N_0xFC40CBF7B90CA77C(vehicle) end

---Stops cargobob from being able to detach the attached vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0x571FEB383F629926)
---@param cargobob number 
---@param toggle boolean 
function SetCargobobForceDontDetachVehicle(cargobob, toggle) end

---Stops cargobob from being able to detach the attached vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0x571FEB383F629926)
---@param cargobob number 
---@param toggle boolean 
function N_0x571FEB383F629926(cargobob, toggle) end

---Stops cargobob from being able to detach the attached vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0x571FEB383F629926)
---@param cargobob number 
---@param toggle boolean 
function SetCargobobHookCanDetach(cargobob, toggle) end

---```
---Won't attract or magnetize to any helicopters or planes of course, but that's common sense.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A665550F8DA349B)
---@param cargobob number 
---@param isActive boolean 
function SetCargobobPickupMagnetActive(cargobob, isActive) end

---```
---Won't attract or magnetize to any helicopters or planes of course, but that's common sense.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A665550F8DA349B)
---@param cargobob number 
---@param isActive boolean 
function CargobobMagnetGrabVehicle(cargobob, isActive) end

---```
---Won't attract or magnetize to any helicopters or planes of course, but that's common sense.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A665550F8DA349B)
---@param cargobob number 
---@param isActive boolean 
function SetCargobobPickupMagnetActive(cargobob, isActive) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x685D5561680D088B)
---@param vehicle number 
---@param p1 number 
function SetCargobobPickupMagnetFalloff(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x685D5561680D088B)
---@param vehicle number 
---@param p1 number 
function N_0x685D5561680D088B(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE301BD63E9E13CF0)
---@param cargobob number 
---@param vehicle number 
function SetCargobobPickupMagnetReducedStrength(cargobob, vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE301BD63E9E13CF0)
---@param cargobob number 
---@param vehicle number 
function N_0xE301BD63E9E13CF0(cargobob, vehicle) end

---```
---Something to do with "high speed bump severity"?  
---if (!sub_87a46("SET_CAR_HIGH_SPEED_BUMP_SEVERITY_MULTIPLIER")) {  
---    VEHICLE::_84FD40F56075E816(0.0);  
---    sub_8795b("SET_CAR_HIGH_SPEED_BUMP_SEVERITY_MULTIPLIER", 1);  
---}  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x84FD40F56075E816)
---@param multiplier number 
function SetCarHighSpeedBumpSeverityMultiplier(multiplier) end

---```
---Something to do with "high speed bump severity"?  
---if (!sub_87a46("SET_CAR_HIGH_SPEED_BUMP_SEVERITY_MULTIPLIER")) {  
---    VEHICLE::_84FD40F56075E816(0.0);  
---    sub_8795b("SET_CAR_HIGH_SPEED_BUMP_SEVERITY_MULTIPLIER", 1);  
---}  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x84FD40F56075E816)
---@param multiplier number 
function N_0x84FD40F56075E816(multiplier) end

---```
---Stops the cargobob from being able to attach any vehicle
---```
---
---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x94A68DA412C4007D)
---@param vehicle number 
---@param toggle boolean 
function SetCargobobHookCanAttach(vehicle, toggle) end

---```
---Stops the cargobob from being able to attach any vehicle
---```
---
---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x94A68DA412C4007D)
---@param vehicle number 
---@param toggle boolean 
function N_0x94A68DA412C4007D(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA17BAD153B51547E)
---@param vehicle number 
---@param p1 number 
function SetCargobobPickupMagnetEffectRadius(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA17BAD153B51547E)
---@param vehicle number 
---@param p1 number 
function N_0xA17BAD153B51547E(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBCBFCD9D1DAC19E2)
---@param cargobob number 
---@param strength number 
function SetCargobobPickupMagnetStrength(cargobob, strength) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBCBFCD9D1DAC19E2)
---@param cargobob number 
---@param strength number 
function N_0xBCBFCD9D1DAC19E2(cargobob, strength) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBCBFCD9D1DAC19E2)
---@param cargobob number 
---@param strength number 
function SetCargobobPickupMagnetStrength(cargobob, strength) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0D5F65A8F4EBDAB5)
---@param vehicle number 
---@param state number 
function SetCargobobPickupRopeType(vehicle, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0D5F65A8F4EBDAB5)
---@param vehicle number 
---@param state number 
function N_0x0D5F65A8F4EBDAB5(vehicle, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D8EAC07506291FB)
---@param cargobob number 
---@param p1 number 
function SetCargobobPickupMagnetPullRopeLength(cargobob, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D8EAC07506291FB)
---@param cargobob number 
---@param p1 number 
function N_0x6D8EAC07506291FB(cargobob, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xED8286F71A819BAA)
---@param cargobob number 
---@param p1 number 
function SetCargobobPickupMagnetPullStrength(cargobob, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xED8286F71A819BAA)
---@param cargobob number 
---@param p1 number 
function N_0xED8286F71A819BAA(cargobob, p1) end

---Only used with the "akula" and "annihilator2" in the decompiled native scripts.
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB251E0B33E58B424)
---@param vehicle number 
---@param deploy boolean 
---@param p2 boolean 
function SetDeployHeliStubWings(vehicle, deploy, p2) end

---Only used with the "akula" and "annihilator2" in the decompiled native scripts.
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB251E0B33E58B424)
---@param vehicle number 
---@param deploy boolean 
---@param p2 boolean 
function N_0xB251E0B33E58B424(vehicle, deploy, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x25367DE49D64CF16)
---@param vehicle number 
---@param toggle boolean 
function SetDisablePretendOccupants(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x25367DE49D64CF16)
---@param vehicle number 
---@param toggle boolean 
function N_0x25367DE49D64CF16(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x66979ACF5102FD2F)
---@param cargobob number 
---@param p1 number 
function SetCargobobPickupMagnetReducedFalloff(cargobob, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x66979ACF5102FD2F)
---@param cargobob number 
---@param p1 number 
function N_0x66979ACF5102FD2F(cargobob, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD4B8E3D1917BC86B)
---@param toggle boolean 
function SetDisableRandomTrainsThisFrame(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD4B8E3D1917BC86B)
---@param toggle boolean 
function N_0xD4B8E3D1917BC86B(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD4B8E3D1917BC86B)
---@param toggle boolean 
function SetSomethingMultiplierThisFrame(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF1182F682F65307)
---@param cargobob number 
---@param p1 number 
function SetCargobobPickupRopeDampingMultiplier(cargobob, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF1182F682F65307)
---@param cargobob number 
---@param p1 number 
function N_0xCF1182F682F65307(cargobob, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF39C4F538B5124C2)
---@param vehicle number 
---@param p1 boolean 
function SetConvertibleRoof(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB088E9A47AE6EDD5)
---@param vehicle number 
---@param p1 boolean 
function SetDisableSuperdummyMode(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB088E9A47AE6EDD5)
---@param vehicle number 
---@param p1 boolean 
function N_0xB088E9A47AE6EDD5(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x91A0BD635321F145)
---@param vehicle number 
---@param toggle boolean 
function SetDisableVehicleEngineFires(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x91A0BD635321F145)
---@param vehicle number 
---@param toggle boolean 
function N_0x91A0BD635321F145(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1A78AD3D8240536F)
---@param vehicle number 
---@param state boolean 
function SetConvertibleRoofLatchState(vehicle, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1A78AD3D8240536F)
---@param vehicle number 
---@param state boolean 
function N_0x1A78AD3D8240536F(vehicle, state) end

---```
---True stops vtols from switching modes. Doesn't stop the sound though.
---```
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCE2B43770B655F8F)
---@param vehicle number 
---@param direction boolean 
function SetDisableVehicleFlightNozzlePosition(vehicle, direction) end

---```
---True stops vtols from switching modes. Doesn't stop the sound though.
---```
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCE2B43770B655F8F)
---@param vehicle number 
---@param direction boolean 
function SetPlaneVtolAnimationDisabled(vehicle, direction) end

---Disables turret movement when called in a loop. You can still fire and aim. You cannot shoot backwards though.
---
---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE615BB7A7752C76A)
---@param vehicle number 
---@param turretIdx number 
function SetDisableTurretMovementThisFrame(vehicle, turretIdx) end

---Disables turret movement when called in a loop. You can still fire and aim. You cannot shoot backwards though.
---
---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE615BB7A7752C76A)
---@param vehicle number 
---@param turretIdx number 
function N_0xE615BB7A7752C76A(vehicle, turretIdx) end

---Disables turret movement when called in a loop. You can still fire and aim. You cannot shoot backwards though.
---
---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE615BB7A7752C76A)
---@param vehicle number 
---@param turretIdx number 
function SetDisableTurretMovement(vehicle, turretIdx) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x37C8252A7C92D017)
---@param vehicle number 
---@param toggle boolean 
function SetDisableVehiclePetrolTankDamage(vehicle, toggle) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x143921E45EC44D62)
---@param toggle boolean 
function SetDisableVehicleUnk(toggle) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x211E95CE9903940C)
---@param toggle boolean 
function SetDisableVehicleUnk2(toggle) end

---R\* used it to "remove" vehicle windows when "nightshark" had some mod, which adding some kind of armored windows. When enabled, you can't break vehicles glass. All your bullets wiil shoot through glass. You also will not able to break the glass with any other way (hitting and etc)
---[Native Documentation](https://docs.fivem.net/natives/?_0x1087BC8EC540DAEB)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---
---if GetEntityModel(vehicle) == `NIGHTSHARK` then
---    -- Mod index 5 = armored window plates
---    if GetVehicleMod(vehicle, 5) ~= -1 then
---        -- The nightshark has armored plates in front of the windows
---        -- so we disable the window collisions
---        SetDisableVehicleWindowCollisions(vehicle, true)
---    else
---        -- The nightshark has no armored plates in front of the windows
---        -- so we enable the window collisions
---        SetDisableVehicleWindowCollisions(vehicle, false)
---    end
---end```
---@param vehicle number The vehicle to toggle this for.
---@param toggle boolean True disables the collision, false enables the collision
function SetDisableVehicleWindowCollisions(vehicle, toggle) end

---R\* used it to "remove" vehicle windows when "nightshark" had some mod, which adding some kind of armored windows. When enabled, you can't break vehicles glass. All your bullets wiil shoot through glass. You also will not able to break the glass with any other way (hitting and etc)
---[Native Documentation](https://docs.fivem.net/natives/?_0x1087BC8EC540DAEB)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---
---if GetEntityModel(vehicle) == `NIGHTSHARK` then
---    -- Mod index 5 = armored window plates
---    if GetVehicleMod(vehicle, 5) ~= -1 then
---        -- The nightshark has armored plates in front of the windows
---        -- so we disable the window collisions
---        SetDisableVehicleWindowCollisions(vehicle, true)
---    else
---        -- The nightshark has no armored plates in front of the windows
---        -- so we enable the window collisions
---        SetDisableVehicleWindowCollisions(vehicle, false)
---    end
---end```
---@param vehicle number The vehicle to toggle this for.
---@param toggle boolean True disables the collision, false enables the collision
function N_0x1087BC8EC540DAEB(vehicle, toggle) end

---Enable/Disables global slipstream physics
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6C0C80B8C867537)
---@param toggle boolean 
function SetEnableVehicleSlipstreaming(toggle) end

---Enable/Disables global slipstream physics
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6C0C80B8C867537)
---@param toggle boolean 
function N_0xE6C0C80B8C867537(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x465BF26AB9684352)
---@param vehicle number 
---@param toggle boolean 
function SetDisableVehiclePetrolTankFires(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x465BF26AB9684352)
---@param vehicle number 
---@param toggle boolean 
function N_0x465BF26AB9684352(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x26324F33423F3CC3)
---@param toggle boolean 
function SetFarDrawVehicles(toggle) end

---```
---Toggles to render distant vehicles. They may not be vehicles but images to look like vehicles.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF796359A959DF65D)
---@param toggle boolean 
function SetDistantCarsEnabled(toggle) end

---```
---Toggles to render distant vehicles. They may not be vehicles but images to look like vehicles.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF796359A959DF65D)
---@param toggle boolean 
function N_0xF796359A959DF65D(toggle) end

---```
---Toggles to render distant vehicles. They may not be vehicles but images to look like vehicles.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF796359A959DF65D)
---@param toggle boolean 
function DisplayDistantVehicles(toggle) end

---```
---0.0 = Lowest 1.0 = Highest. This is best to be used if you wanna pick-up a car since un-realistically on GTA V forklifts can't pick up much of anything due to vehicle mass. If you put this under a car then set it above 0.0 to a 'lifted-value' it will raise the car with no issue lol
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x37EBBF3117BD6A25)
---@param vehicle number 
---@param height number 
function SetForkliftForkHeight(vehicle, height) end

---```
---0.0 = Lowest 1.0 = Highest. This is best to be used if you wanna pick-up a car since un-realistically on GTA V forklifts can't pick up much of anything due to vehicle mass. If you put this under a car then set it above 0.0 to a 'lifted-value' it will raise the car with no issue lol
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x37EBBF3117BD6A25)
---@param vehicle number 
---@param height number 
function N_0x37EBBF3117BD6A25(vehicle, height) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5AC79C98C5C17F05)
---@param vehicle number 
---@param toggle boolean 
function SetDriftTyresEnabled(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x97CE68CB032583F0)
---@param vehicle number 
---@param toggle boolean 
function SetForceHdVehicle(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x97CE68CB032583F0)
---@param vehicle number 
---@param toggle boolean 
function N_0x97CE68CB032583F0(vehicle, toggle) end

---```
---Equivalent of SET_HELI_BLADES_SPEED(vehicleHandle, 1.0f);  
---this native works on planes to?  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA178472EBB8AE60D)
---@param vehicle number 
function SetHeliBladesFullSpeed(vehicle) end

---```
---Sets the speed of the helicopter blades in percentage of the full speed.  
---vehicleHandle: The helicopter.  
---speed: The speed in percentage, 0.0f being 0% and 1.0f being 100%.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFD280B4D7F3ABC4D)
---@param vehicle number 
---@param speed number 
function SetHeliBladesSpeed(vehicle, speed) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE205F38AAA58E5B)
---@param vehicle number 
---@param health number 
function SetHeliTailRotorHealth(vehicle, health) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE205F38AAA58E5B)
---@param vehicle number 
---@param health number 
function N_0xFE205F38AAA58E5B(vehicle, health) end

---```
---X,Y position of boat is frozen in place when anchored and its engine disabled, only the Z value changes. Requires 0xE3EBAAE484798530 to be set to true.
---SET_FORCED_ZENITH_QUADTREE?
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB28B1FE5BFADD7F5)
---@param vehicle number 
---@param toggle boolean 
function SetForcedBoatLocationWhenAnchored(vehicle, toggle) end

---```
---X,Y position of boat is frozen in place when anchored and its engine disabled, only the Z value changes. Requires 0xE3EBAAE484798530 to be set to true.
---SET_FORCED_ZENITH_QUADTREE?
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB28B1FE5BFADD7F5)
---@param vehicle number 
---@param toggle boolean 
function N_0xB28B1FE5BFADD7F5(vehicle, toggle) end

---```
---value between 0.0 and 1.0  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E0859B530A365CC)
---@param helicopter number 
---@param multiplier number 
function SetHelicopterRollPitchYawMult(helicopter, multiplier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2AFD795EEAC8D30D)
---@param toggle boolean 
function SetGarbageTrucks(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8EA86DF356801C7D)
---@param vehicle number 
---@param state number 
function SetHydraulicWheelState(vehicle, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8EA86DF356801C7D)
---@param vehicle number 
---@param state number 
function N_0x8EA86DF356801C7D(vehicle, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4056EA1105F5ABD7)
---@param vehicle number 
---@param health number 
function SetHeliMainRotorHealth(vehicle, health) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4056EA1105F5ABD7)
---@param vehicle number 
---@param health number 
function N_0x4056EA1105F5ABD7(vehicle, health) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3EC8BF18AA453FE9)
---@param vehicle number 
---@param p1 boolean 
function SetHeliTailExplodeThrowDashboard(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3EC8BF18AA453FE9)
---@param vehicle number 
---@param p1 boolean 
function WasCounterActivated(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3EC8BF18AA453FE9)
---@param vehicle number 
---@param p1 boolean 
function N_0x3EC8BF18AA453FE9(vehicle, p1) end

---```
---Sets vehicle wheel hydraulic states transition. Known states:
---0 - reset
---1 - raise wheel (uses value arg, works just like _SET_VEHICLE_HYDRAULIC_WHEEL_VALUE)
---2 - jump using wheel
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC24075310A8B9CD1)
---@param vehicle number 
---@param wheelId number 
---@param state number 
---@param value number 
---@param p4 number 
function SetHydraulicWheelStateTransition(vehicle, wheelId, state, value, p4) end

---```
---Sets vehicle wheel hydraulic states transition. Known states:
---0 - reset
---1 - raise wheel (uses value arg, works just like _SET_VEHICLE_HYDRAULIC_WHEEL_VALUE)
---2 - jump using wheel
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC24075310A8B9CD1)
---@param vehicle number 
---@param wheelId number 
---@param state number 
---@param value number 
---@param p4 number 
function N_0xC24075310A8B9CD1(vehicle, wheelId, state, value, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6F13851780394DA)
---@param vehicle number 
---@param p1 number 
function SetHeliTurbulenceScalar(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6F13851780394DA)
---@param vehicle number 
---@param p1 number 
function N_0xE6F13851780394DA(vehicle, p1) end

---```
---Works only on vehicles that support hydraulic.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x84EA99C62CB3EF0C)
---@param vehicle number 
---@param wheelId number 
---@param value number 
function SetHydraulicWheelValue(vehicle, wheelId, value) end

---```
---Works only on vehicles that support hydraulic.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x84EA99C62CB3EF0C)
---@param vehicle number 
---@param wheelId number 
---@param value number 
function N_0x84EA99C62CB3EF0C(vehicle, wheelId, value) end

---```
---Works only on vehicles that support hydraulic.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x84EA99C62CB3EF0C)
---@param vehicle number 
---@param wheelId number 
---@param value number 
function SetHydraulicState(vehicle, wheelId, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xACFB2463CC22BED2)
---@param vehicle number 
function SetLastDrivenVehicle(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xACFB2463CC22BED2)
---@param vehicle number 
function N_0xACFB2463CC22BED2(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x28B18377EB6E25F6)
---@param vehicle number 
---@param toggle boolean 
function SetHydraulicRaised(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x28B18377EB6E25F6)
---@param vehicle number 
---@param toggle boolean 
function N_0x28B18377EB6E25F6(vehicle, toggle) end

---```
---p1 is always 0  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBBE7648349B49BE8)
---@param train number 
---@param p1 boolean 
function SetMissionTrainAsNoLongerNeeded(train, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCAA15F13EBD417FF)
---@param value number 
function SetNumberOfParkedVehicles(value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC3CCA5844452B06)
---@param distance number 
function SetLightsCutoffDistanceTweak(distance) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC3CCA5844452B06)
---@param distance number 
function N_0xBC3CCA5844452B06(distance) end

---```
---min: 1.9f, max: 100.0f
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x877C1EAEAC531023)
---@param cargobob number 
---@param length1 number 
---@param length2 number 
---@param state boolean 
function SetPickupRopeLengthForCargobob(cargobob, length1, length2, state) end

---```
---min: 1.9f, max: 100.0f
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x877C1EAEAC531023)
---@param cargobob number 
---@param length1 number 
---@param length2 number 
---@param state boolean 
function N_0x877C1EAEAC531023(cargobob, length1, length2, state) end

---```
---min: 1.9f, max: 100.0f
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x877C1EAEAC531023)
---@param cargobob number 
---@param length1 number 
---@param length2 number 
---@param state boolean 
function SetCargobobHookPosition(cargobob, length1, length2, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x591CA673AA6AB736)
---@param train number 
---@param x number 
---@param y number 
---@param z number 
function SetMissionTrainCoords(train, x, y, z) end

---Set state to true to extend the wings, false to retract them.
---[Native Documentation](https://docs.fivem.net/natives/?_0x544996C0081ABDEB)
---@param vehicle number The vehicle (tested with oppressor only)
---@param extend boolean Set to true to extend the wings, false to retract them.
function SetOppressorTransformState(vehicle, extend) end

---Set state to true to extend the wings, false to retract them.
---[Native Documentation](https://docs.fivem.net/natives/?_0x544996C0081ABDEB)
---@param vehicle number The vehicle (tested with oppressor only)
---@param extend boolean Set to true to extend the wings, false to retract them.
function N_0x544996C0081ABDEB(vehicle, extend) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEAE6DCC7EEE3DB1D)
---@param multiplier number 
function SetParkedVehicleDensityMultiplierThisFrame(multiplier) end

---```
---Works just like SET_VEHICLE_ENGINE_HEALTH, didn't saw any difference. But this native works only for planes.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A86A0475B6A1434)
---@param vehicle number 
---@param health number 
function SetPlaneEngineHealth(vehicle, health) end

---```
---Works just like SET_VEHICLE_ENGINE_HEALTH, didn't saw any difference. But this native works only for planes.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A86A0475B6A1434)
---@param vehicle number 
---@param health number 
function N_0x2A86A0475B6A1434(vehicle, health) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C815EB175086F84)
---@param plane number 
---@param health number 
function SetPlanePropellersHealth(plane, health) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C815EB175086F84)
---@param plane number 
---@param health number 
function N_0x4C815EB175086F84(plane, health) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE16142B94664DEFD)
---@param vehicle number 
---@param toggle boolean 
function SetPlaneResistToExplosion(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE16142B94664DEFD)
---@param vehicle number 
---@param toggle boolean 
function N_0xE16142B94664DEFD(vehicle, toggle) end

---This native sets the turbulence multiplier. It only works for planes.
---0.0 = no turbulence at all.
---1.0 = heavy turbulence.
---
---Works by just calling it once, does not need to be called every tick.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAD2D28A1AFDFF131)
---Example: 
---```local plane = GetVehiclePedIsIn(PlayerPedId(), false)
---if IsThisModelAPlane(GetEntityModel(plane)) then
---    -- Goodbye turbulence!
---    SetPlaneTurbulenceMultiplier(plane, 0.0)
---end```
---@param vehicle number The plane to set the multiplier for
---@param multiplier number The turbulence multiplier. Value between 0.0 and 1.0
function SetPlaneTurbulenceMultiplier(vehicle, multiplier) end

---This native sets the turbulence multiplier. It only works for planes.
---0.0 = no turbulence at all.
---1.0 = heavy turbulence.
---
---Works by just calling it once, does not need to be called every tick.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAD2D28A1AFDFF131)
---Example: 
---```local plane = GetVehiclePedIsIn(PlayerPedId(), false)
---if IsThisModelAPlane(GetEntityModel(plane)) then
---    -- Goodbye turbulence!
---    SetPlaneTurbulenceMultiplier(plane, 0.0)
---end```
---@param vehicle number The plane to set the multiplier for
---@param multiplier number The turbulence multiplier. Value between 0.0 and 1.0
function N_0xAD2D28A1AFDFF131(vehicle, multiplier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6683AB880E427778)
---@param vehicle number 
---@param speed number 
function SetPlaybackSpeed(vehicle, speed) end

---```
---Time is number of milliseconds before reverting, zero for indefinitely.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E63860BBB190730)
---@param vehicle number 
---@param time number 
---@param drivingStyle number 
---@param p3 boolean 
function SetPlaybackToUseAiTryToRevertBackLater(vehicle, time, drivingStyle, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBCDF8BAF56C87B6A)
---@param vehicle number 
function SetPlayersLastVehicle(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x84436EC293B1415F)
---@param toggle boolean 
function SetRandomBoats(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3B3359379FE77D3)
---@param multiplier number 
function SetRandomVehicleDensityMultiplierThisFrame(multiplier) end

---Identical to SET_PLAYBACK_TO_USE_AI_TRY_TO_REVERT_BACK_LATER with 0 as arguments for p1 and p3.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA549C3B37EA28131)
---@param vehicle number 
---@param drivingStyle number 
function SetPlaybackToUseAi(vehicle, drivingStyle) end

---Sets flag on vehicle that changes behaviour in relation to when player gets wanted level
---[Native Documentation](https://docs.fivem.net/natives/?_0x4E74E62E0A97E901)
---@param vehicle number 
---@param p1 boolean 
function SetPoliceFocusWillTrackVehicle(vehicle, p1) end

---Sets flag on vehicle that changes behaviour in relation to when player gets wanted level
---[Native Documentation](https://docs.fivem.net/natives/?_0x4E74E62E0A97E901)
---@param vehicle number 
---@param p1 boolean 
function N_0x4E74E62E0A97E901(vehicle, p1) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA5E12F728DB30CA)
---@param toggle boolean 
function SetRandomBoatsInMp(toggle) end

---```
---Only called once in the decompiled scripts. Presumably activates the specified generator.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD9D620E0AC6DC4B0)
---@param vehicleGenerator number 
---@param enabled boolean 
function SetScriptVehicleGenerator(vehicleGenerator, enabled) end

---Enables spawning random trains on the preset tracks.
---
---Requires [`SWITCH_TRAIN_TRACK`](#\_0xFD813BB7DB977F20) and [`SET_TRAIN_TRACK_SPAWN_FREQUENCY`](#\_0x21973BBF8D17EDFA) to be set.
---[Native Documentation](https://docs.fivem.net/natives/?_0x80D9F74197EA47D9)
---Example: 
---```SwitchTrainTrack(0, true) -- Setting the Main train track(s) around LS and towards Sandy Shores active
---SwitchTrainTrack(3, true) -- Setting the Metro tracks active
---SetTrainTrackSpawnFrequency(0, 120000) -- The Train spawn frequency set for the game engine
---SetTrainTrackSpawnFrequency(3, 120000) -- The Metro spawn frequency set for the game engine
---SetRandomTrains(true) -- Telling the game we want to use randomly spawned trains```
---@param toggle boolean Whether to enable random trains.
function SetRandomTrains(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC59872A5134879C7)
---@param vehicle number 
---@param toggle boolean 
---@param depth1 number 
---@param depth2 number 
---@param depth3 number 
function SetSubmarineCrushDepths(vehicle, toggle, depth1, depth2, depth3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC59872A5134879C7)
---@param vehicle number 
---@param toggle boolean 
---@param depth1 number 
---@param depth2 number 
---@param depth3 number 
function JitterVehicle(vehicle, toggle, depth1, depth2, depth3) end

---Lowers the vehicle's stance. Only works for vehicles that support this feature.
---
---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A375167F5782A65)
---@param vehicle number 
---@param enable boolean 
function SetReduceDriftVehicleSuspension(vehicle, enable) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB893215D8D4C015B)
---@param plane number 
---@param height number 
function SetTaskVehicleGotoPlaneMinHeightAboveTerrain(plane, height) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB893215D8D4C015B)
---@param plane number 
---@param height number 
function N_0xB893215D8D4C015B(plane, height) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB893215D8D4C015B)
---@param plane number 
---@param height number 
function SetPlaneMinHeightAboveGround(plane, height) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB893215D8D4C015B)
---@param plane number 
---@param height number 
function SetPlaneMinHeightAboveTerrain(plane, height) end

---```
---makes the train all jumbled up and derailed as it moves on the tracks (though that wont stop it from its normal operations)  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x317B11A312DF5534)
---@param train number 
---@param toggle boolean 
function SetRenderTrainAsDerailed(train, toggle) end

---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x70A252F60A3E036B)
---@param vehicle number 
---@param ratio number 
function SetSpecialflightWingRatio(vehicle, ratio) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A8F319B392E7B3F)
---@param vehicle number 
---@param p1 number 
function SetTrailerInverseMassScale(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A8F319B392E7B3F)
---@param vehicle number 
---@param p1 number 
function N_0x2A8F319B392E7B3F(vehicle, p1) end

---```
---This is not tested - it's just an assumption.  
---Doesn't seem to work.  I'll try with an int instead. --JT  
---Read the scripts, im dumpass.   
---Doesn't work at all, wether with an bool neither an int  
---                            if (!VEHICLE::IS_TAXI_LIGHT_ON(l_115)) {  
---                                VEHICLE::SET_TAXI_LIGHTS(l_115, 1);  
---                            }  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x598803E85E8448D9)
---@param vehicle number 
---@param state boolean 
function SetTaxiLights(vehicle, state) end

---```
---in the decompiled scripts, seems to be always called on the vehicle right after being attached to a trailer.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x95CF53B3D687F9FA)
---@param vehicle number 
function SetTrailerLegsRaised(vehicle) end

---```
---in the decompiled scripts, seems to be always called on the vehicle right after being attached to a trailer.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x95CF53B3D687F9FA)
---@param vehicle number 
function N_0x95CF53B3D687F9FA(vehicle) end

---```
---Inverse of 0x95CF53B3D687F9FA
---```
---
---```
---NativeDB Added Parameter 1: Vehicle vehicle
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x878C75C09FBDB942)
function SetTrailerLegsLowered() end

---```
---Inverse of 0x95CF53B3D687F9FA
---```
---
---```
---NativeDB Added Parameter 1: Vehicle vehicle
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x878C75C09FBDB942)
function N_0x878C75C09FBDB942() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x16469284DB8C62B5)
---@param train number 
---@param speed number 
function SetTrainCruiseSpeed(train, speed) end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x01894E2EDE923CA2)
---@param vehicle number 
---@param wheelIndex number 
---@param multiplier number 
function SetTyreWearMultiplier(vehicle, wheelIndex, multiplier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA0BC91BE0B796E3)
---@param train number 
---@param speed number 
function SetTrainSpeed(train, speed) end

---```
---Only called once inside main_persitant with the parameters, 0  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x21973BBF8D17EDFA)
---@param trackIndex number 
---@param frequency number 
function SetTrainTrackSpawnFrequency(trackIndex, frequency) end

---```
---Only called once inside main_persitant with the parameters, 0  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x21973BBF8D17EDFA)
---@param trackIndex number 
---@param frequency number 
function N_0x21973BBF8D17EDFA(trackIndex, frequency) end

---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x41B9FB92EDED32A6)
---@param vehicle number 
---@param value boolean 
function SetUnkBool0x102ForSubmarineVehicleTask(vehicle, value) end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x74C68EF97645E79D)
---@param vehicle number 
---@param wheelIndex number 
---@param health number 
function SetTyreHealth(vehicle, wheelIndex, health) end

---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x498218259FB7C72D)
---@param vehicle number 
---@param value number 
function SetUnkFloat0x104ForSubmarineVehicleTask(vehicle, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFFCEF48E511DB48)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleActiveDuringPlayback(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFFCEF48E511DB48)
---@param vehicle number 
---@param toggle boolean 
function N_0xDFFCEF48E511DB48(vehicle, toggle) end

---```
---Controls how fast the tires wear out.
---Default values from Rockstar's Open Wheel Race JSON's:
---"owrtss" (Soft): 2.2
---"owrtsm" (Medium): 1.7
---"owrtsh" (Hard): 1.2
---Usable wheels:
---0: wheel_lf
---1: wheel_rf
---2: wheel_lm1
---3: wheel_rm1
---4: wheel_lr
---5: wheel_rr
---```
---
---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x392183BB9EA57697)
---@param vehicle number 
---@param wheelIndex number 
---@param multiplier number 
function SetTyreSoftnessMultiplier(vehicle, wheelIndex, multiplier) end

---```
---Controls how fast the tires wear out.
---Default values from Rockstar's Open Wheel Race JSON's:
---"owrtss" (Soft): 2.2
---"owrtsm" (Medium): 1.7
---"owrtsh" (Hard): 1.2
---Usable wheels:
---0: wheel_lf
---1: wheel_rf
---2: wheel_lm1
---3: wheel_rm1
---4: wheel_lr
---5: wheel_rr
---```
---
---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x392183BB9EA57697)
---@param vehicle number 
---@param wheelIndex number 
---@param multiplier number 
function N_0x392183BB9EA57697(vehicle, wheelIndex, multiplier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCDE5E70C1DDB954C)
---@param vehicle number 
---@param state boolean 
function SetVehicleAlarm(vehicle, state) end

---```
---Controls how much traction the wheel loses.
---Default values from Rockstar's Open Wheel Race JSON's:
---"owrtds" (Soft): 0.05
---"owrtdm" (Medium): 0.45
---"owrtdh" (Hard): 0.8
---Usable wheels:
---0: wheel_lf
---1: wheel_rf
---2: wheel_lm1
---3: wheel_rm1
---4: wheel_lr
---5: wheel_rr
---```
---
---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC970D0E0FC31D768)
---@param vehicle number 
---@param wheelIndex number 
---@param multiplier number 
function SetTyreTractionLossMultiplier(vehicle, wheelIndex, multiplier) end

---```
---Controls how much traction the wheel loses.
---Default values from Rockstar's Open Wheel Race JSON's:
---"owrtds" (Soft): 0.05
---"owrtdm" (Medium): 0.45
---"owrtdh" (Hard): 0.8
---Usable wheels:
---0: wheel_lf
---1: wheel_rf
---2: wheel_lm1
---3: wheel_rm1
---4: wheel_lr
---5: wheel_rr
---```
---
---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC970D0E0FC31D768)
---@param vehicle number 
---@param wheelIndex number 
---@param multiplier number 
function N_0xC970D0E0FC31D768(vehicle, wheelIndex, multiplier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BA6F76BC53A1493)
---@param vehicle number 
---@param p1 boolean 
---@param p2 any 
---@return any retval 
function SetVehicleAutomaticallyAttaches(vehicle, p1, p2) end

---```
---p2 often set to 1000.0 in the decompiled scripts.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB77D05AC8C78AADB)
---@param vehicle number 
---@param value number 
function SetVehicleBodyHealth(vehicle, value) end

---Sets the amount of bombs that this vehicle has. As far as I know, this does *not* impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane.
---
---In decompiled scripts this is used to deduct from or add to the count whenever bombs are dropped or purchased/restocked.
---
---Use [`_GET_AIRCRAFT_BOMB_COUNT`](#\_0xEA12BD130D7569A1) to get the amount of bombs on that vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF4B2ED59DEB5D774)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---SetAircraftBombCount(vehicle, 10)```
---@param aircraft number The vehicle to set the bombCount on.
---@param bombCount number The amount of bombs to set for this vehicle.
function SetVehicleBombCount(aircraft, bombCount) end

---Sets the amount of bombs that this vehicle has. As far as I know, this does *not* impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane.
---
---In decompiled scripts this is used to deduct from or add to the count whenever bombs are dropped or purchased/restocked.
---
---Use [`_GET_AIRCRAFT_BOMB_COUNT`](#\_0xEA12BD130D7569A1) to get the amount of bombs on that vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF4B2ED59DEB5D774)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---SetAircraftBombCount(vehicle, 10)```
---@param aircraft number The vehicle to set the bombCount on.
---@param bombCount number The amount of bombs to set for this vehicle.
function N_0xF4B2ED59DEB5D774(aircraft, bombCount) end

---Sets the amount of bombs that this vehicle has. As far as I know, this does *not* impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane.
---
---In decompiled scripts this is used to deduct from or add to the count whenever bombs are dropped or purchased/restocked.
---
---Use [`_GET_AIRCRAFT_BOMB_COUNT`](#\_0xEA12BD130D7569A1) to get the amount of bombs on that vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF4B2ED59DEB5D774)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---SetAircraftBombCount(vehicle, 10)```
---@param aircraft number The vehicle to set the bombCount on.
---@param bombCount number The amount of bombs to set for this vehicle.
function SetVehicleBombs(aircraft, bombCount) end

---Sets the amount of bombs that this vehicle has. As far as I know, this does *not* impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane.
---
---In decompiled scripts this is used to deduct from or add to the count whenever bombs are dropped or purchased/restocked.
---
---Use [`_GET_AIRCRAFT_BOMB_COUNT`](#\_0xEA12BD130D7569A1) to get the amount of bombs on that vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF4B2ED59DEB5D774)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---SetAircraftBombCount(vehicle, 10)```
---@param aircraft number The vehicle to set the bombCount on.
---@param bombCount number The amount of bombs to set for this vehicle.
function SetAircraftBombCount(aircraft, bombCount) end

---Allows vehicles with the FLAG_JUMPING_CAR flag to jump higher (i.e. Ruiner 2000).
---[Native Documentation](https://docs.fivem.net/natives/?_0xF06A16CA55D138D8)
---@param vehicle number 
---@param toggle boolean 
function SetUseHigherVehicleJumpForce(vehicle, toggle) end

---Allows vehicles with the FLAG_JUMPING_CAR flag to jump higher (i.e. Ruiner 2000).
---[Native Documentation](https://docs.fivem.net/natives/?_0xF06A16CA55D138D8)
---@param vehicle number 
---@param toggle boolean 
function N_0xF06A16CA55D138D8(vehicle, toggle) end

---Sets the arm position of a bulldozer. Position must be a value between 0.0 and 1.0. Ignored when `p2` is set to false, instead incrementing arm position by 0.1 (or 10%).
---[Native Documentation](https://docs.fivem.net/natives/?_0xF8EBCCC96ADB9FB7)
---@param vehicle number 
---@param position number 
---@param p2 boolean 
function SetVehicleBulldozerArmPosition(vehicle, position, p2) end

---Sets the arm position of a bulldozer. Position must be a value between 0.0 and 1.0. Ignored when `p2` is set to false, instead incrementing arm position by 0.1 (or 10%).
---[Native Documentation](https://docs.fivem.net/natives/?_0xF8EBCCC96ADB9FB7)
---@param vehicle number 
---@param position number 
---@param p2 boolean 
function N_0xF8EBCCC96ADB9FB7(vehicle, position, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x21115BCD6E44656A)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleActiveForPedNavigation(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x21115BCD6E44656A)
---@param vehicle number 
---@param toggle boolean 
function N_0x21115BCD6E44656A(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x21115BCD6E44656A)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleCloseDoorDeferedAction(vehicle, toggle) end

---```
---On accelerating, spins the driven wheels with the others braked, so you don't go anywhere.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB8794444A7D60FB)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleBurnout(vehicle, toggle) end

---```
---SET_VEHICLE_AL*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DDA078D12879EEE)
---@param vehicle number 
---@param canBeLockedOn boolean 
---@param unk boolean 
function SetVehicleCanBeLockedOn(vehicle, canBeLockedOn, unk) end

---```
---SET_VEHICLE_AL*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DDA078D12879EEE)
---@param vehicle number 
---@param canBeLockedOn boolean 
---@param unk boolean 
function N_0x1DDA078D12879EEE(vehicle, canBeLockedOn, unk) end

---```
---Makes the vehicle accept no passengers.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5D14D4154BFE7B2C)
---@param veh number 
---@param toggle boolean 
function SetVehicleAllowNoPassengersLockon(veh, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C7028F78FFD3681)
---@param vehicle number 
---@param state boolean 
function SetVehicleCanBeVisiblyDamaged(vehicle, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE4E2FD323574965C)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleBrake(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE4E2FD323574965C)
---@param vehicle number 
---@param toggle boolean 
function N_0xE4E2FD323574965C(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0CDDA42F9E360CA6)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleCanDeformWheels(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0CDDA42F9E360CA6)
---@param vehicle number 
---@param toggle boolean 
function N_0x0CDDA42F9E360CA6(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x206BC5DC9D1AC70A)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleCanEngineOperateOnFire(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x206BC5DC9D1AC70A)
---@param vehicle number 
---@param toggle boolean 
function N_0x206BC5DC9D1AC70A(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x92B35082E0B42F66)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleBrakeLights(vehicle, toggle) end

---```
---This has not yet been tested - it's just an assumption of what the types could be.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3750146A28097A82)
---@param vehicle number 
---@param state boolean 
function SetVehicleCanBeTargetted(vehicle, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x192547247864DFDD)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleCanLeakPetrol(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x192547247864DFDD)
---@param vehicle number 
---@param toggle boolean 
function N_0x192547247864DFDD(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x300504B23BD3B711)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleCanBeUsedByFleeingPeds(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x300504B23BD3B711)
---@param vehicle number 
---@param toggle boolean 
function N_0x300504B23BD3B711(vehicle, toggle) end

---```
---Previously named GET_VEHICLE_DEFORMATION_GET_TREE (hash collision)
---from Decrypted Scripts I found
---VEHICLE::SET_VEHICLE_CEILING_HEIGHT(l_BD9[2/*2*/], 420.0);
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA46413066687A328)
---@param vehicle number 
---@param height number 
function SetVehicleCeilingHeight(vehicle, height) end

---```
---Previously named GET_VEHICLE_DEFORMATION_GET_TREE (hash collision)
---from Decrypted Scripts I found
---VEHICLE::SET_VEHICLE_CEILING_HEIGHT(l_BD9[2/*2*/], 420.0);
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA46413066687A328)
---@param vehicle number 
---@param height number 
function GetVehicleDeformationGetTree(vehicle, height) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x59BF8C3D52C92F66)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleCanBreak(vehicle, toggle) end

---```
---<1.0 - Decreased torque
---=1.0 - Default torque
--->1.0 - Increased torque
---Negative values will cause the vehicle to go backwards instead of forwards while accelerating.
---value - is between 0.2 and 1.8 in the decompiled scripts.
---This needs to be called every frame to take effect.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB59E4BD37AE292DB)
---@param vehicle number 
---@param value number 
function SetVehicleCheatPowerIncrease(vehicle, value) end

---```
---<1.0 - Decreased torque
---=1.0 - Default torque
--->1.0 - Increased torque
---Negative values will cause the vehicle to go backwards instead of forwards while accelerating.
---value - is between 0.2 and 1.8 in the decompiled scripts.
---This needs to be called every frame to take effect.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB59E4BD37AE292DB)
---@param vehicle number 
---@param value number 
function SetVehicleEngineTorqueMultiplier(vehicle, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x51BB2D88D31A914B)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleCanLeakOil(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x51BB2D88D31A914B)
---@param vehicle number 
---@param toggle boolean 
function N_0x51BB2D88D31A914B(vehicle, toggle) end

---Sets the selected vehicle's colors to their default value (specific variant specified using the colorCombination parameter).
---
---Range of possible values for colorCombination is currently unknown, I couldn't find where these values are stored either (Disquse's guess was vehicles.meta but I haven't seen it in there.)
---[Native Documentation](https://docs.fivem.net/natives/?_0x33E8CD3322E2FE31)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---local index = math.random(0, 16)
---SetVehicleColourCombination(vehicle, index)```
---@param vehicle number The vehicle to modify.
---@param colorCombination number One of the default color values of the vehicle.
function SetVehicleColourCombination(vehicle, colorCombination) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x428BACCDF5E26EAD)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleCanSaveInGarage(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x428BACCDF5E26EAD)
---@param vehicle number 
---@param toggle boolean 
function N_0x428BACCDF5E26EAD(vehicle, toggle) end

---colorPrimary & colorSecondary are the paint indexes for the vehicle.
---
---For a list of valid paint indexes, view: pastebin.com/pwHci0xK
---[Native Documentation](https://docs.fivem.net/natives/?_0x4F1D4BE3A7F24601)
---@param vehicle number 
---@param colorPrimary number 
---@param colorSecondary number 
function SetVehicleColours(vehicle, colorPrimary, colorSecondary) end

---```
---Inverts vehicle's controls. So INPUT_VEH_ACCELERATE will be INPUT_VEH_BRAKE and vise versa (same for A/D controls)
---Doesn't work for planes/helis.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B91B229243351A8)
---@param vehicle number 
---@param state boolean 
function SetVehicleControlsInverted(vehicle, state) end

---```
---Inverts vehicle's controls. So INPUT_VEH_ACCELERATE will be INPUT_VEH_BRAKE and vise versa (same for A/D controls)
---Doesn't work for planes/helis.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B91B229243351A8)
---@param vehicle number 
---@param state boolean 
function N_0x5B91B229243351A8(vehicle, state) end

---Similar to [`_SET_AIRCRAFT_BOMB_COUNT`](#\_0xF4B2ED59DEB5D774), this sets the amount of countermeasures that are present on this vehicle.
---
---Use [`_GET_AIRCRAFT_COUNTERMEASURE_COUNT`](#\_0xF846AA63DF56B804) to get the current amount.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BDA23BF666F0855)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---SetAircraftCountermeasureCount(vehicle, 10)```
---@param aircraft number The vehicle to set the amount of countermeasures on.
---@param count number The amount of countermeasures to set on this vehicle.
function SetVehicleCountermeasureCount(aircraft, count) end

---Similar to [`_SET_AIRCRAFT_BOMB_COUNT`](#\_0xF4B2ED59DEB5D774), this sets the amount of countermeasures that are present on this vehicle.
---
---Use [`_GET_AIRCRAFT_COUNTERMEASURE_COUNT`](#\_0xF846AA63DF56B804) to get the current amount.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BDA23BF666F0855)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---SetAircraftCountermeasureCount(vehicle, 10)```
---@param aircraft number The vehicle to set the amount of countermeasures on.
---@param count number The amount of countermeasures to set on this vehicle.
function N_0x9BDA23BF666F0855(aircraft, count) end

---Similar to [`_SET_AIRCRAFT_BOMB_COUNT`](#\_0xF4B2ED59DEB5D774), this sets the amount of countermeasures that are present on this vehicle.
---
---Use [`_GET_AIRCRAFT_COUNTERMEASURE_COUNT`](#\_0xF846AA63DF56B804) to get the current amount.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BDA23BF666F0855)
---Example: 
---```local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---SetAircraftCountermeasureCount(vehicle, 10)```
---@param aircraft number The vehicle to set the amount of countermeasures on.
---@param count number The amount of countermeasures to set on this vehicle.
function SetAircraftCountermeasureCount(aircraft, count) end

---```
---p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7141766F91D15BEA)
---@param vehicle number 
---@param r number 
---@param g number 
---@param b number 
function SetVehicleCustomPrimaryColour(vehicle, r, g, b) end

---Apply damage to vehicle at a location. Location is relative to vehicle model (not world).
---Radius of effect damage applied in a sphere at impact location
---When `focusOnModel` set to `true`, the damage sphere will travel towards the vehicle from the given point, thus guaranteeing an impact
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1DD317EA8FD4F29)
---Example: 
---```-- Both of these are for an average sized car
---
----- nothing will be hit
---SetVehicleDamage(vehicle, 0.0, 0.0, 0.33, 200.0, 100.0, false)
---
----- will hit the first hitbox on your Z index line
---SetVehicleDamage(vehicle, 0.0, 0.0, 0.33, 200.0, 100.0, true)```
---@param vehicle number 
---@param xOffset number 
---@param yOffset number 
---@param zOffset number 
---@param damage number 
---@param radius number the size of the damage sphere to apply
---@param focusOnModel boolean when set to `true`, the damage sphere will travel towards the vehicle from the given point, thus guaranteeing an impact
function SetVehicleDamage(vehicle, xOffset, yOffset, zOffset, damage, radius, focusOnModel) end

---```
---p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x36CED73BFED89754)
---@param vehicle number 
---@param r number 
---@param g number 
---@param b number 
function SetVehicleCustomSecondaryColour(vehicle, r, g, b) end

---```
---SET_VEHICLE_D*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4E20D2A627011E8E)
---@param vehicle number 
---@param p1 number 
---@return any retval 
function SetVehicleDamageModifier(vehicle, p1) end

---```
---SET_VEHICLE_D*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4E20D2A627011E8E)
---@param vehicle number 
---@param p1 number 
---@return any retval 
function N_0x4E20D2A627011E8E(vehicle, p1) end

---```
---This fixes the deformation of a vehicle but the vehicle health doesn't improve  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x953DA1E1B12C0491)
---@param vehicle number 
function SetVehicleDeformationFixed(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6089CDF6A57F326C)
---@param vehicle number 
---@param color number 
function SetVehicleDashboardColor(vehicle, color) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6089CDF6A57F326C)
---@param vehicle number 
---@param color number 
function SetVehicleDashboardColour(vehicle, color) end

---**Usage:**
---
---*   Use this native inside a looped function.
---*   Values:
---    *   `0.0` = no vehicles on streets
---    *   `1.0` = normal vehicles on streets
---
---`1.0` Seems to be the maximum.
---[Native Documentation](https://docs.fivem.net/natives/?_0x245A6883D966D537)
---@param multiplier number 
function SetVehicleDensityMultiplierThisFrame(multiplier) end

---Sets the dirt level of the passed vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0x79D3B596FE44EE8B)
---Example: 
---```local Vehicle = GetVehiclePedIsUsing(PlayerPedId())
---SetVehicleDirtLevel(Vehicle, 0.0) -- set the vehicle dirt level to 0.0```
---@param vehicle number The vehicle to set.
---@param dirtLevel number A number between 0.0 and 15.0 representing the vehicles dirt level.
function SetVehicleDirtLevel(vehicle, dirtLevel) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0xD4D4F6A4AB575A33)
---@param vehicle number 
---@param doorIndex number 
---@param deleteDoor boolean 
function SetVehicleDoorBroken(vehicle, doorIndex, deleteDoor) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2BFA0430F0A0FCB)
---@param vehicle number 
---@param doorIndex number 
---@param speed number 5 is fast, 1 is slow 3 is medium
---@param angle number 
function SetVehicleDoorControl(vehicle, doorIndex, speed, angle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B6747FAA9DB9D6B)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleDisableTowing(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B6747FAA9DB9D6B)
---@param vehicle number 
---@param toggle boolean 
function N_0x2B6747FAA9DB9D6B(vehicle, toggle) end

---Sets the specified door index open on the passed vehicle. See [`IS_VEHICLE_DOOR_FULLY_OPEN`](#\_0x3E933CFF7B111C22).
---[Native Documentation](https://docs.fivem.net/natives/?_0x7C65DAC73C35C862)
---Example: 
---```local Vehicle = GetVehiclePedIsUsing(PlayerPedId())
---for i = 0, 5 do
---  SetVehicleDoorOpen(Vehicle, i, false, true) -- will open every door from 0-5
---end```
---@param vehicle number Vehicle.
---@param doorIndex number Index of the door you want to open (0-7)
---@param loose boolean Whether the door is "loose" (if true the doors have no "spring" and can be closed easily.)
---@param openInstantly boolean Whether the doors open instantly (if true this native seems to ignore loose)
function SetVehicleDoorOpen(vehicle, doorIndex, loose, openInstantly) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0x2FA133A4A9D37ED8)
---@param vehicle number 
---@param doorIndex number 
---@param isBreakable boolean 
function SetVehicleDoorCanBreak(vehicle, doorIndex, isBreakable) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0x2FA133A4A9D37ED8)
---@param vehicle number 
---@param doorIndex number 
---@param isBreakable boolean 
function SetVehicleDoorBreakable(vehicle, doorIndex, isBreakable) end

---```
---// Source GTA VC miss2 leak, matching constants for 0/2/4, testing
---// They use 10 in am_mp_property_int, don't know what it does atm.
---enum eCarLock {
---    CARLOCK_NONE = 0,
---    CARLOCK_UNLOCKED = 1,
---    CARLOCK_LOCKED = 2,
---    CARLOCK_LOCKOUT_PLAYER_ONLY = 3,
---    CARLOCK_LOCKED_PLAYER_INSIDE = 4,
---    CARLOCK_LOCKED_INITIALLY = 5,
---    CARLOCK_FORCE_SHUT_DOORS = 6,
---    CARLOCK_LOCKED_BUT_CAN_BE_DAMAGED = 7
---};
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB664292EAECF7FA6)
---@param vehicle number 
---@param doorLockStatus number 
function SetVehicleDoorsLocked(vehicle, doorLockStatus) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---[Native Documentation](https://docs.fivem.net/natives/?_0xA5A9653A8D2CAF48)
---@param vehicle number 
---@param doorIndex number 
---@param forceClose boolean 
---@param lock boolean 
---@param p4 boolean 
function SetVehicleDoorLatched(vehicle, doorIndex, forceClose, lock, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x517AAF684BB50CD1)
---@param vehicle number 
---@param player number 
---@param toggle boolean 
function SetVehicleDoorsLockedForPlayer(vehicle, player, toggle) end

---Sets the specified door index shut on the passed vehicle.
---
---```cpp
---enum eDoorId
---{
---	VEH_EXT_DOOR_DSIDE_F = 0,
---	VEH_EXT_DOOR_DSIDE_R = 1,
---	VEH_EXT_DOOR_PSIDE_F = 2,
---	VEH_EXT_DOOR_PSIDE_R = 3,
---	VEH_EXT_BONNET = 4,
---	VEH_EXT_BOOT = 5,
---	// 0x872E72B8 = 0xFFFFFFFF,
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x93D9BD300D7789E5)
---Example: 
---```local Vehicle = GetVehiclePedIsUsing(PlayerPedId())
---for i = 0, 5 do
---  SetVehicleDoorShut(Vehicle, i, false) -- will close all doors from 0-5
---end```
---@param vehicle number Vehicle.
---@param doorIndex number Index of the door you want to close.
---@param closeInstantly boolean Whether the doors close instantly.
function SetVehicleDoorShut(vehicle, doorIndex, closeInstantly) end

---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x203B527D1B77904C)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleDoorsLockedForUnk(vehicle, toggle) end

---```
---Money pickups are created around cars when they explode. Only works when the vehicle model is a car. A single pickup is between 1 and 18 dollars in size. All car models seem to give the same amount of money.
---youtu.be/3arlUxzHl5Y
---i.imgur.com/WrNpYFs.jpg
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x068F64F2470F9656)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleDropsMoneyWhenBlownUp(vehicle, toggle) end

---```
---Money pickups are created around cars when they explode. Only works when the vehicle model is a car. A single pickup is between 1 and 18 dollars in size. All car models seem to give the same amount of money.
---youtu.be/3arlUxzHl5Y
---i.imgur.com/WrNpYFs.jpg
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x068F64F2470F9656)
---@param vehicle number 
---@param toggle boolean 
function N_0x068F64F2470F9656(vehicle, toggle) end

---```
---Money pickups are created around cars when they explode. Only works when the vehicle model is a car. A single pickup is between 1 and 18 dollars in size. All car models seem to give the same amount of money.
---youtu.be/3arlUxzHl5Y
---i.imgur.com/WrNpYFs.jpg
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x068F64F2470F9656)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleCreatesMoneyPickupsWhenExploded(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2F80B8D040727CC)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleDoorsLockedForAllPlayers(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x983765856F2564F9)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleEngineCanDegrade(vehicle, toggle) end

---```
---1000 is max health
---Begins leaking gas at around 650 health
----999.90002441406 appears to be minimum health, although nothing special occurs <- false statement
----------------------------
---Minimum: -4000
---Maximum: 1000
----4000: Engine is destroyed
---0 and below: Engine catches fire and health rapidly declines
---300: Engine is smoking and losing functionality
---1000: Engine is perfect
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x45F6D8EEF34ABEF1)
---@param vehicle number 
---@param health number 
function SetVehicleEngineHealth(vehicle, health) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9737A37136F07E75)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleDoorsLockedForNonScriptPlayers(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9737A37136F07E75)
---@param vehicle number 
---@param toggle boolean 
function N_0x9737A37136F07E75(vehicle, toggle) end

---Examples with a besra:
---
---*   [fade value `0.0`](https://i.imgur.com/DXNk63e.jpg)
---*   [fade value `0.5`](https://i.imgur.com/2Vb35fq.jpg)
---*   [fade value `1.0`](https://i.imgur.com/aa8cxaD.jpg)
---
---The parameter fade is a value from 0-1, where 0 is fresh paint.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3AFDC536C3D01674)
---@param vehicle number Target vehicle
---@param fade number The paint fade effect strength
function SetVehicleEnveffScale(vehicle, fade) end

---Examples with a besra:
---
---*   [fade value `0.0`](https://i.imgur.com/DXNk63e.jpg)
---*   [fade value `0.5`](https://i.imgur.com/2Vb35fq.jpg)
---*   [fade value `1.0`](https://i.imgur.com/aa8cxaD.jpg)
---
---The parameter fade is a value from 0-1, where 0 is fresh paint.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3AFDC536C3D01674)
---@param vehicle number Target vehicle
---@param fade number The paint fade effect strength
function SetVehiclePaintFade(vehicle, fade) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB81F6D4A8F5EEBA8)
---@param vehicle number 
---@param team number 
---@param toggle boolean 
function SetVehicleDoorsLockedForTeam(vehicle, team, toggle) end

---```
---Closes all doors of a vehicle:  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x781B3D62BB013EF5)
---@param vehicle number 
---@param closeInstantly boolean 
function SetVehicleDoorsShut(vehicle, closeInstantly) end

---The **actual** [`SET_VEHICLE_EXCLUSIVE_DRIVER`](#\_0x41062318F23ED854) native.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB5C51B5502E85E83)
---@param vehicle number 
---@param ped number 
---@param index number 
function SetVehicleExclusiveDriver2(vehicle, ped, index) end

---The **actual** [`SET_VEHICLE_EXCLUSIVE_DRIVER`](#\_0x41062318F23ED854) native.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB5C51B5502E85E83)
---@param vehicle number 
---@param ped number 
---@param index number 
function N_0xB5C51B5502E85E83(vehicle, ped, index) end

---```
---Sets a vehicle to be strongly resistant to explosions. p0 is the vehicle; set p1 to false to toggle the effect on/off.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x71B0892EC081D60A)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleExplodesOnHighExplosionDamage(vehicle, toggle) end

---Starts or stops the engine on the specified vehicle.
---From what I've tested when I do this to a helicopter the propellers turn off after the engine has started.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2497C4717C8B881E)
---@param vehicle number The vehicle to start or stop the engine on.
---@param value boolean true to turn the vehicle on; false to turn it off.
---@param instantly boolean if true, the vehicle will be set to the state immediately; otherwise, the current driver will physically turn on or off the engine.
---@param disableAutoStart boolean If true, the system will prevent the engine from starting when the player got into it.
function SetVehicleEngineOn(vehicle, value, instantly, disableAutoStart) end

---Incorrectly named `SET_VEHICLE_EXCLUSIVE_DRIVER`; likely `SET_VEHICLE_ALLOW_*`.
---
---Toggles a flag related to `SET_VEHICLE_EXCLUSIVE_DRIVER`, however, doesn't enable that feature (or trigger script events related to it).
---
---See [`_SET_VEHICLE_EXCLUSIVE_DRIVER_2`](#\_0xB5C51B5502E85E83).
---
---```
---NativeDB Removed Parameter 2: int index
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x41062318F23ED854)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleExclusiveDriver(vehicle, toggle) end

---Incorrectly named `SET_VEHICLE_EXCLUSIVE_DRIVER`; likely `SET_VEHICLE_ALLOW_*`.
---
---Toggles a flag related to `SET_VEHICLE_EXCLUSIVE_DRIVER`, however, doesn't enable that feature (or trigger script events related to it).
---
---See [`_SET_VEHICLE_EXCLUSIVE_DRIVER_2`](#\_0xB5C51B5502E85E83).
---
---```
---NativeDB Removed Parameter 2: int index
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x41062318F23ED854)
---@param vehicle number 
---@param toggle boolean 
function N_0x41062318F23ED854(vehicle, toggle) end

---```
---Note: only some vehicle have extras  
---extra ids are from 1 - 9 depending on the vehicle  
----------------------------------------------------  
---^ not sure if outdated or simply wrong. Max extra ID for b944 is 14  
----------------------------------------------------  
---p2 is not a on/off toggle. mostly 0 means on and 1 means off.  
---not sure if it really should be a BOOL.  
----------------------------------------------------  
---Confirmed p2 does not work as a bool. Changed to int. [0=on, 1=off]  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7EE3A3C5E4A40CC9)
---@param vehicle number 
---@param extraId number 
---@param disable boolean 
function SetVehicleExtra(vehicle, extraId, disable) end

---```
---Max value is 32767
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x79DF7E806202CE01)
---@param vehicle number 
---@param range number 
function SetVehicleExtendedRemovalRange(vehicle, range) end

---```
---Max value is 32767
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x79DF7E806202CE01)
---@param vehicle number 
---@param range number 
function N_0x79DF7E806202CE01(vehicle, range) end

---Fix a given vehicle.
---If the vehicle's engine's broken then you cannot fix it with this native.
---[Native Documentation](https://docs.fivem.net/natives/?_0x115722B1B9C14C1C)
---Example: 
---```local localPlayerPed = GetPlayerPed(-1)
---local localVehicle = GetVehiclePedIsIn(localPlayerPed, false)
---SetVehicleFixed(localVehicle)```
---@param vehicle number The vehicle that will be fixed
function SetVehicleFixed(vehicle) end

---```
---They use the same color indexs as SET_VEHICLE_COLOURS.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2036F561ADD12E33)
---@param vehicle number 
---@param pearlescentColor number 
---@param wheelColor number 
function SetVehicleExtraColours(vehicle, pearlescentColor, wheelColor) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9AA47FFF660CB932)
---@param vehicle number 
---@param angle number 
function SetVehicleFlightNozzlePositionImmediate(vehicle, angle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9AA47FFF660CB932)
---@param vehicle number 
---@param angle number 
function N_0x9AA47FFF660CB932(vehicle, angle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9AA47FFF660CB932)
---@param vehicle number 
---@param angle number 
function SetVerticalFlightPhase(vehicle, angle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9AA47FFF660CB932)
---@param vehicle number 
---@param angle number 
function SetPlaneVtolDirection(vehicle, angle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x30D779DE7C4F6DD3)
---@param vehicle number 
---@param angleRatio number 
function SetVehicleFlightNozzlePosition(vehicle, angleRatio) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x30D779DE7C4F6DD3)
---@param vehicle number 
---@param angleRatio number 
function N_0x30D779DE7C4F6DD3(vehicle, angleRatio) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x30D779DE7C4F6DD3)
---@param vehicle number 
---@param angleRatio number 
function SetDesiredVerticalFlightPhase(vehicle, angleRatio) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x30D779DE7C4F6DD3)
---@param vehicle number 
---@param angleRatio number 
function SetPlaneVtolDesiredDirection(vehicle, angleRatio) end

---```
---SCALE: Setting the speed to 30 would result in a speed of roughly 60mph, according to speedometer.  
---Speed is in meters per second  
---You can convert meters/s to mph here:  
---http://www.calculateme.com/Speed/MetersperSecond/ToMilesperHour.htm  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAB54A438726D25D5)
---@param vehicle number 
---@param speed number 
function SetVehicleForwardSpeed(vehicle, speed) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB055A34527CB8FD7)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleForceAfterburner(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB055A34527CB8FD7)
---@param vehicle number 
---@param toggle boolean 
function N_0xB055A34527CB8FD7(vehicle, toggle) end

---```
---Seems to be related to the metal parts, not tyres (like i was expecting lol)  
---Must be called every tick.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1837AF7C627009BA)
---@param vehicle number 
---@param friction number 
function SetVehicleFrictionOverride(vehicle, friction) end

---```
---It switch to highbeam when p1 is set to true.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8B7FD87F0DDB421E)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleFullbeam(vehicle, toggle) end

---```
---Allows creation of CEventShockingPlaneFlyby, CEventShockingHelicopterOverhead, and other(?) Shocking events
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x279D50DE5652D935)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleGeneratesEngineShockingEvents(vehicle, toggle) end

---```
---Allows creation of CEventShockingPlaneFlyby, CEventShockingHelicopterOverhead, and other(?) Shocking events
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x279D50DE5652D935)
---@param vehicle number 
---@param toggle boolean 
function N_0x279D50DE5652D935(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x684785568EF26A22)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleHandbrake(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x89F149B6131E57DA)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleGravity(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x02398B627547189C)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleHasBeenDrivenFlag(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x02398B627547189C)
---@param vehicle number 
---@param toggle boolean 
function N_0x02398B627547189C(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x10655FAB9915623D)
---@param vehicle number 
---@param hash number | string 
function SetVehicleHandlingHashForAi(vehicle, hash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x10655FAB9915623D)
---@param vehicle number 
---@param hash number | string 
function N_0x10655FAB9915623D(vehicle, hash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B5F9D2AF1F1722D)
---@param vehicle number 
---@param owned boolean 
function SetVehicleHasBeenOwnedByPlayer(vehicle, owned) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD8050E0EB60CF274)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleHasMutedSirens(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD8050E0EB60CF274)
---@param vehicle number 
---@param toggle boolean 
function DisableVehicleImpactExplosionActivation(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD8050E0EB60CF274)
---@param vehicle number 
---@param toggle boolean 
function SetDisableVehicleSirenSound(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1AA8A837D2169D94)
---@param vehicle number 
---@param p1 boolean 
function SetVehicleHasUnbreakableLights(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1AA8A837D2169D94)
---@param vehicle number 
---@param p1 boolean 
function N_0x1AA8A837D2169D94(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1AA8A837D2169D94)
---@param vehicle number 
---@param p1 boolean 
function SetVehicleLightsCanBeVisiblyDamaged(vehicle, p1) end

---```
---if true, axles won't bend.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x92F0CF722BC4202F)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleHasStrongAxles(vehicle, toggle) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2D55FE374D5FDB91)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleHoverTransformActive(vehicle, toggle) end

---According to decompiled scripts this should work with the `deluxo` and `oppressor2` vehicles.
---I've only seen this work for `deluxo` though, can't figure out what it's supposed to do on `oppressor2`.
---
---For the deluxo:
---
---*   Set `state` to `0.0`: Fully transform to a 'road' vehicle (non-hover mode).
---*   Set `state` to `1.0`: Fully transform to a 'flying' vehicle (hover mode).
---
---If you set it to something like 0.5, then something [weird happens](https://streamable.com/p6wmr), you end up in some 50% hover mode, 50% not hover mode.
---
---This doesn't need to be called every tick, just once and the vehicle will transform to that state at the usual transform speed. It'll just stop transforming when it reaches the state you provided.
---
---Once this native is used then players will just be able to hit the vehicle transform key to toggle the transformation cycle; it won't block users from using the key.
---[Native Documentation](https://docs.fivem.net/natives/?_0x438B3D7CA026FE91)
---@param vehicle number The vehicle (a deluxo or oppressor2).
---@param state number The transform state (value between 0.0 and 1.0).
function SetVehicleHoverTransformPercentage(vehicle, state) end

---According to decompiled scripts this should work with the `deluxo` and `oppressor2` vehicles.
---I've only seen this work for `deluxo` though, can't figure out what it's supposed to do on `oppressor2`.
---
---For the deluxo:
---
---*   Set `state` to `0.0`: Fully transform to a 'road' vehicle (non-hover mode).
---*   Set `state` to `1.0`: Fully transform to a 'flying' vehicle (hover mode).
---
---If you set it to something like 0.5, then something [weird happens](https://streamable.com/p6wmr), you end up in some 50% hover mode, 50% not hover mode.
---
---This doesn't need to be called every tick, just once and the vehicle will transform to that state at the usual transform speed. It'll just stop transforming when it reaches the state you provided.
---
---Once this native is used then players will just be able to hit the vehicle transform key to toggle the transformation cycle; it won't block users from using the key.
---[Native Documentation](https://docs.fivem.net/natives/?_0x438B3D7CA026FE91)
---@param vehicle number The vehicle (a deluxo or oppressor2).
---@param state number The transform state (value between 0.0 and 1.0).
function N_0x438B3D7CA026FE91(vehicle, state) end

---According to decompiled scripts this should work with the `deluxo` and `oppressor2` vehicles.
---I've only seen this work for `deluxo` though, can't figure out what it's supposed to do on `oppressor2`.
---
---For the deluxo:
---
---*   Set `state` to `0.0`: Fully transform to a 'road' vehicle (non-hover mode).
---*   Set `state` to `1.0`: Fully transform to a 'flying' vehicle (hover mode).
---
---If you set it to something like 0.5, then something [weird happens](https://streamable.com/p6wmr), you end up in some 50% hover mode, 50% not hover mode.
---
---This doesn't need to be called every tick, just once and the vehicle will transform to that state at the usual transform speed. It'll just stop transforming when it reaches the state you provided.
---
---Once this native is used then players will just be able to hit the vehicle transform key to toggle the transformation cycle; it won't block users from using the key.
---[Native Documentation](https://docs.fivem.net/natives/?_0x438B3D7CA026FE91)
---@param vehicle number The vehicle (a deluxo or oppressor2).
---@param state number The transform state (value between 0.0 and 1.0).
function SetVehicleTransformState(vehicle, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x06582AFF74894C75)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleInactiveDuringPlayback(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x06582AFF74894C75)
---@param vehicle number 
---@param toggle boolean 
function N_0x06582AFF74894C75(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE70724027F85BCD)
---@param vehicle number 
---@param doorIndex number See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---@param doorLockStatus number See eCarLock declared in [`SET_VEHICLE_DOORS_LOCKED`](#\_0xB664292EAECF7FA6)
function SetVehicleIndividualDoorsLocked(vehicle, doorIndex, doorLockStatus) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE70724027F85BCD)
---@param vehicle number 
---@param doorIndex number See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---@param doorLockStatus number See eCarLock declared in [`SET_VEHICLE_DOORS_LOCKED`](#\_0xB664292EAECF7FA6)
function SetPedTargettableVehicleDestroy(vehicle, doorIndex, doorLockStatus) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE70724027F85BCD)
---@param vehicle number 
---@param doorIndex number See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---@param doorLockStatus number See eCarLock declared in [`SET_VEHICLE_DOORS_LOCKED`](#\_0xB664292EAECF7FA6)
function SetVehicleDoorDestroyType(vehicle, doorIndex, doorLockStatus) end

---```
---If false, anything related to INPUT_VEH_TRANSFORM are ignored (changing hover state through script natives still possible).
---```
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1211889DF15A763)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleHoverTransformEnabled(vehicle, toggle) end

---```
---If false, anything related to INPUT_VEH_TRANSFORM are ignored (changing hover state through script natives still possible).
---```
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1211889DF15A763)
---@param vehicle number 
---@param toggle boolean 
function N_0xF1211889DF15A763(vehicle, toggle) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD138FA15C9776837)
---@param vehicle number 
---@param ratio number 
function SetVehicleHoverTransformRatio(vehicle, ratio) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC2042F090AF6AD3)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleInteriorlight(vehicle, toggle) end

---```
---p1 (toggle) was always 1 (true) except in one case in the b678 scripts.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x07116E24E9D1929D)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleIsRacing(vehicle, toggle) end

---```
---p1 (toggle) was always 1 (true) except in one case in the b678 scripts.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x07116E24E9D1929D)
---@param vehicle number 
---@param toggle boolean 
function SteerUnlockBias(vehicle, toggle) end

---```
---Sets the turn signal enabled for a vehicle.  
---Set turnSignal to 1 for left light, 0 for right light.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB5D45264751B7DF0)
---@param vehicle number 
---@param turnSignal number 
---@param toggle boolean 
function SetVehicleIndicatorLights(vehicle, turnSignal, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF40DD601A65F7F19)
---@param vehicle number 
---@param color number 
function SetVehicleInteriorColor(vehicle, color) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF40DD601A65F7F19)
---@param vehicle number 
---@param color number 
function SetVehicleInteriorColour(vehicle, color) end

---```
---Sets the wanted state of this vehicle.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF7EC25A3EBEEC726)
---@param vehicle number 
---@param state boolean 
function SetVehicleIsWanted(vehicle, state) end

---```
---Setting this to false, makes the specified vehicle to where if you press Y your character doesn't even attempt the animation to enter the vehicle. Hence it's not considered aka ignored.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x31B927BBC44156CD)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleIsConsideredByPlayer(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x99C82F8A139F3E4E)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleKersAllowed(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x99C82F8A139F3E4E)
---@param vehicle number 
---@param toggle boolean 
function N_0x99C82F8A139F3E4E(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x99C82F8A139F3E4E)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleHudSpecialAbilityBarActive(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x67B2C79AA7FF5738)
---@param vehicle number 
---@param isStolen boolean 
function SetVehicleIsStolen(vehicle, isStolen) end

---```
---set's if the vehicle has lights or not.  
---not an on off toggle.  
---p1 = 0 ;vehicle normal lights, off then lowbeams, then highbeams  
---p1 = 1 ;vehicle doesn't have lights, always off  
---p1 = 2 ;vehicle has always on lights  
---p1 = 3 ;or even larger like 4,5,... normal lights like =1  
---note1: when using =2 on day it's lowbeam,highbeam  
---but at night it's lowbeam,lowbeam,highbeam  
---note2: when using =0 it's affected by day or night for highbeams don't exist in daytime.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x34E710FF01247C5A)
---@param vehicle number 
---@param state number 
function SetVehicleLights(vehicle, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8FBC8B1330CA9B4)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleJetEngineOn(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8FBC8B1330CA9B4)
---@param vehicle number 
---@param toggle boolean 
function N_0xB8FBC8B1330CA9B4(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x60BF608F1B8CD1B6)
---@param vehicle number 
---@param livery number 
function SetVehicleLivery(vehicle, livery) end

---```
---multiplier = brightness of head lights.  
---this value isn't capped afaik.  
---multiplier = 0.0 no lights  
---multiplier = 1.0 default game value  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB385454F8791F57C)
---@param vehicle number 
---@param multiplier number 
function SetVehicleLightMultiplier(vehicle, multiplier) end

---To reset the max speed, set the `speed` value to `0.0` or lower.
---[Native Documentation](https://docs.fivem.net/natives/?_0xBAA045B4E42F3C06)
---@param vehicle number The vehicle handle.
---@param speed number The speed limit in meters per second.
function SetVehicleMaxSpeed(vehicle, speed) end

---To reset the max speed, set the `speed` value to `0.0` or lower.
---[Native Documentation](https://docs.fivem.net/natives/?_0xBAA045B4E42F3C06)
---@param vehicle number The vehicle handle.
---@param speed number The speed limit in meters per second.
function N_0xBAA045B4E42F3C06(vehicle, speed) end

---```
---p1 can be either 0, 1 or 2.  
---Determines how vehicle lights behave when toggled.  
---0 = Default (Lights can be toggled between off, normal and high beams)  
---1 = Lights Disabled (Lights are fully disabled, cannot be toggled)  
---2 = Always On (Lights can be toggled between normal and high beams)  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1FD09E7390A74D54)
---@param vehicle number 
---@param p1 number 
function SetVehicleLightsMode(vehicle, p1) end

---```
---p1 can be either 0, 1 or 2.  
---Determines how vehicle lights behave when toggled.  
---0 = Default (Lights can be toggled between off, normal and high beams)  
---1 = Lights Disabled (Lights are fully disabled, cannot be toggled)  
---2 = Always On (Lights can be toggled between normal and high beams)  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1FD09E7390A74D54)
---@param vehicle number 
---@param p1 number 
function N_0x1FD09E7390A74D54(vehicle, p1) end

---```cpp
---// eVehicleModType values modified to conform to script native reorganization (see 0x140D25327 in 1604).
---enum eVehicleModType
---{
---	VMT_SPOILER = 0,
---	VMT_BUMPER_F = 1,
---	VMT_BUMPER_R = 2,
---	VMT_SKIRT = 3,
---	VMT_EXHAUST = 4,
---	VMT_CHASSIS = 5,
---	VMT_GRILL = 6,
---	VMT_BONNET = 7,
---	VMT_WING_L = 8,
---	VMT_WING_R = 9,
---	VMT_ROOF = 10,
---	VMT_ENGINE = 11,
---	VMT_BRAKES = 12,
---	VMT_GEARBOX = 13,
---	VMT_HORN = 14,
---	VMT_SUSPENSION = 15,
---	VMT_ARMOUR = 16,
---	VMT_NITROUS = 17,
---	VMT_TURBO = 18,
---	VMT_SUBWOOFER = 19,
---	VMT_TYRE_SMOKE = 20,
---	VMT_HYDRAULICS = 21,
---	VMT_XENON_LIGHTS = 22,
---	VMT_WHEELS = 23,
---	VMT_WHEELS_REAR_OR_HYDRAULICS = 24,
---	VMT_PLTHOLDER = 25,
---	VMT_PLTVANITY = 26,
---	VMT_INTERIOR1 = 27,
---	VMT_INTERIOR2 = 28,
---	VMT_INTERIOR3 = 29,
---	VMT_INTERIOR4 = 30,
---	VMT_INTERIOR5 = 31,
---	VMT_SEATS = 32,
---	VMT_STEERING = 33,
---	VMT_KNOB = 34,
---	VMT_PLAQUE = 35,
---	VMT_ICE = 36,
---	VMT_TRUNK = 37,
---	VMT_HYDRO = 38,
---	VMT_ENGINEBAY1 = 39,
---	VMT_ENGINEBAY2 = 40,
---	VMT_ENGINEBAY3 = 41,
---	VMT_CHASSIS2 = 42,
---	VMT_CHASSIS3 = 43,
---	VMT_CHASSIS4 = 44,
---	VMT_CHASSIS5 = 45,
---	VMT_DOOR_L = 46,
---	VMT_DOOR_R = 47,
---	VMT_LIVERY_MOD = 48,
---	VMT_LIGHTBAR = 49,
---};
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6AF0636DDEDCB6DD)
---@param vehicle number 
---@param modType number 
---@param modIndex number 
---@param customTires boolean 
function SetVehicleMod(vehicle, modType, modIndex, customTires) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x93AE6A61BE015BF1)
---@param vehicle number 
---@param multiplier number 
function SetVehicleLodMultiplier(vehicle, multiplier) end

---```
---paintType:  
---0: Normal  
---1: Metallic  
---2: Pearl  
---3: Matte  
---4: Metal  
---5: Chrome  
---color: number of the color.  
---p3 seems to always be 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x43FEB945EE7F85B8)
---@param vehicle number 
---@param paintType number 
---@param color number 
---@param pearlescentColor number 
function SetVehicleModColor1(vehicle, paintType, color, pearlescentColor) end

---```
---Changes the secondary paint type and color  
---paintType:  
---0: Normal  
---1: Metallic  
---2: Pearl  
---3: Matte  
---4: Metal  
---5: Chrome  
---color: number of the color  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x816562BADFDEC83E)
---@param vehicle number 
---@param paintType number 
---@param color number 
function SetVehicleModColor2(vehicle, paintType, color) end

---```
---Set modKit to 0 if you plan to call SET_VEHICLE_MOD. That's what the game does. Most body modifications through SET_VEHICLE_MOD will not take effect until this is set to 0.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F2AA07F00B3217A)
---@param vehicle number 
---@param modKit number 
function SetVehicleModKit(vehicle, modKit) end

---```
---seems to make the vehicle stop spawning naturally in traffic. Here's an essential example:  
---VEHICLE::SET_VEHICLE_MODEL_IS_SUPPRESSED(GAMEPLAY::GET_HASH_KEY("taco"), true);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0FC2D89AC25A5814)
---@param model number | string 
---@param suppressed boolean 
function SetVehicleModelIsSuppressed(model, suppressed) end

---```
---NOTE: Debugging functions are not present in the retail version of the game.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBFDF984E2C22B94F)
---@param vehicle number 
---@param name string 
function SetVehicleNameDebug(vehicle, name) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFBA550EA44404EE6)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleNeedsToBeHotwired(vehicle, toggle) end

---```
---Sets the neon lights of the specified vehicle on/off.  
---Indices:  
---0 = Left  
---1 = Right  
---2 = Front  
---3 = Back  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2AA720E4287BF269)
---@param vehicle number 
---@param index number 
---@param toggle boolean 
function SetVehicleNeonLightEnabled(vehicle, index, toggle) end

---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB93B2867F7B479D1)
---@param vehicle number 
---@param color number 
function SetVehicleNeonLightsColor2(vehicle, color) end

---```
---NativeDB Introduced: v1604
---NativeDB Added Parameter 2 (2060): float level
---NativeDB Added Parameter 3 (2060): float power
---NativeDB Added Parameter 4 (2060): float rechargeTime
---NativeDB Added Parameter 5 (2060): BOOL disableSound
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC8E9B6B71B8E660D)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleNitroEnabled(vehicle, toggle) end

---Sets the color of the neon lights on the specified vehicle.
---
---RGB values and colour names taken from the decompiled scripts:
---
---| Colour         |  R  |  G  |  B  |
---|---------------|:---:|:---:|:---:|
---| White         | 222 | 222 | 255 |
---| Blue          | 2   | 21  | 255 |
---| Electric Blue | 3   | 83  | 255 |
---| Mint Green    | 0   | 255 | 140 |
---| Lime Green    | 94  | 255 | 1   |
---| Yellow        | 255 | 255 | 0   |
---| Golden Shower | 255 | 150 | 0   |
---| Orange        | 255 | 62  | 0   |
---| Red           | 255 | 1   | 1   |
---| Pony Pink     | 255 | 50  | 100 |
---| Hot Pink      | 255 | 5   | 190 |
---| Purple        | 35  | 1   | 255 |
---| Blacklight    | 15  | 3   | 255 |
---[Native Documentation](https://docs.fivem.net/natives/?_0x8E0A582209A62695)
---@param vehicle number 
---@param r number 
---@param g number 
---@param b number 
function SetVehicleNeonLightsColour(vehicle, r, g, b) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x95A88F0B409CDA47)
---Example: 
---```local playerPed = PlayerPedId()
---local vehicle = GetVehiclePedIsIn(playerPed)
---SetVehicleNumberPlateText(vehicle, "KING")```
---@param vehicle number The vehicle to set the plate for
---@param plateText string The text to set the plate to, 8 chars maximum
function SetVehicleNumberPlateText(vehicle, plateText) end

---```
---Plates:
---Blue/White - 0
---Yellow/black - 1
---Yellow/Blue - 2
---Blue/White2 - 3
---Blue/White3 - 4
---Yankton - 5
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9088EB5A43FFB0A1)
---@param vehicle number 
---@param plateIndex number 
function SetVehicleNumberPlateTextIndex(vehicle, plateIndex) end

---```
---Sets a vehicle on the ground on all wheels.  Returns whether or not the operation was successful.  
---```
---
---```
---NativeDB Added Parameter 2: float p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x49733E92263139D1)
---@param vehicle number 
---@return boolean retval 
function SetVehicleOnGroundProperly(vehicle) end

---```
---Tested on the player's current vehicle. Unless you kill the driver, the vehicle doesn't loose control, however, if enabled, explodeOnImpact is still active. The moment you crash, boom.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF19D095E42D430CC)
---@param vehicle number 
---@param killDriver boolean 
---@param explodeOnImpact boolean 
function SetVehicleOutOfControl(vehicle, killDriver, explodeOnImpact) end

---```
---parachuteModel = 230075693  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D610C6B56031351)
---@param vehicle number 
---@param modelHash number | string 
function SetVehicleParachuteModel(vehicle, modelHash) end

---```
---parachuteModel = 230075693  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D610C6B56031351)
---@param vehicle number 
---@param modelHash number | string 
function VehicleSetCustomParachuteModel(vehicle, modelHash) end

---```
---1000 is max health  
---Begins leaking gas at around 650 health  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x70DB57649FA8D0D8)
---@param vehicle number 
---@param health number 
function SetVehiclePetrolTankHealth(vehicle, health) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0BFFB028B3DD0A97)
---@param vehicle number 
---@param active boolean 
function SetVehicleParachuteActive(vehicle, active) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFC13B1CE30D755D)
---@param vehicle number 
---@param p1 number 
function SetVehicleRampLaunchModifier(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFC13B1CE30D755D)
---@param vehicle number 
---@param p1 number 
function N_0xEFC13B1CE30D755D(vehicle, p1) end

---```
---colorIndex = 0 - 7
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA74AD2439468C883)
---@param vehicle number 
---@param textureVariation number 
function SetVehicleParachuteTextureVariation(vehicle, textureVariation) end

---```
---colorIndex = 0 - 7
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA74AD2439468C883)
---@param vehicle number 
---@param textureVariation number 
function VehicleSetCustomParachuteTexture(vehicle, textureVariation) end

---```
---colorIndex = 0 - 7
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA74AD2439468C883)
---@param vehicle number 
---@param textureVariation number 
function SetVehicleParachuteTextureVariatiion(vehicle, textureVariation) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x28D034A93FE31BF5)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleReceivesRampDamage(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x28D034A93FE31BF5)
---@param vehicle number 
---@param toggle boolean 
function SetRampVehicleReceivesRampDamage(vehicle, toggle) end

---```
---Reduces grip significantly so it's hard to go anywhere.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x222FF6A823D122E2)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleReduceGrip(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5AFEEDD9BB2899D7)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleProvidesCover(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFEB2DDED3509562E)
---@param vehicle number 
---@param percentage number 
function SetVehicleRocketBoostPercentage(vehicle, percentage) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1BBAC99C0BC53656)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleRampSidewaysLaunchMotion(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1BBAC99C0BC53656)
---@param vehicle number 
---@param toggle boolean 
function N_0x1BBAC99C0BC53656(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x756AE6E962168A04)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleRampUpwardsLaunchMotion(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x756AE6E962168A04)
---@param vehicle number 
---@param toggle boolean 
function N_0x756AE6E962168A04(vehicle, toggle) end

---Often used in conjunction with: [SET_VEHICLE_REDUCE_GRIP](#\_0x222FF6A823D122E2).
---
---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6DEE944E1EE90CFB)
---@param vehicle number 
---@param val number 
function SetVehicleReduceTraction(vehicle, val) end

---Often used in conjunction with: [SET_VEHICLE_REDUCE_GRIP](#\_0x222FF6A823D122E2).
---
---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6DEE944E1EE90CFB)
---@param vehicle number 
---@param val number 
function N_0x6DEE944E1EE90CFB(vehicle, val) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x81E1552E35DC3839)
---@param vehicle number 
---@param active boolean 
function SetVehicleRocketBoostActive(vehicle, active) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE00F2AB100B76E89)
---@param vehicle number 
---@param time number 
function SetVehicleRocketBoostRefillTime(vehicle, time) end

---Used to set the tornado custom (convertible) rooftop livery.
---
---Livery value that works for tornado custom is between 0 and 9 from what i can tell. Maybe 0-8 even.
---
---Might work on other custom vehicles but im not sure what those might be, only confirmed it working with the tornado custom.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6D3A8750DC73270)
---@param vehicle number The vehicle handle.
---@param livery number Livery index.
function SetVehicleRoofLivery(vehicle, livery) end

---Used to set the tornado custom (convertible) rooftop livery.
---
---Livery value that works for tornado custom is between 0 and 9 from what i can tell. Maybe 0-8 even.
---
---Might work on other custom vehicles but im not sure what those might be, only confirmed it working with the tornado custom.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6D3A8750DC73270)
---@param vehicle number The vehicle handle.
---@param livery number Livery index.
function N_0xA6D3A8750DC73270(vehicle, livery) end

---```
---Adds some kind of shadow to the vehicle.
----1 disables the effect.
---DISABLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0E4BA16D1DB546C)
---@param vehicle number 
---@param p1 number 
---@param p2 number 
function SetVehicleShadowEffect(vehicle, p1, p2) end

---```
---Adds some kind of shadow to the vehicle.
----1 disables the effect.
---DISABLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0E4BA16D1DB546C)
---@param vehicle number 
---@param p1 number 
---@param p2 number 
function N_0xF0E4BA16D1DB546C(vehicle, p1, p2) end

---```
---If set to TRUE, it seems to suppress door noises and doesn't allow the horn to be continuous.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D44FCCE98450843)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleSilent(vehicle, toggle) end

---```
---If set to TRUE, it seems to suppress door noises and doesn't allow the horn to be continuous.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D44FCCE98450843)
---@param vehicle number 
---@param toggle boolean 
function N_0x9D44FCCE98450843(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x09606148B6C71DEF)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleRudderBroken(vehicle, toggle) end

---```
---Only works during nighttime.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x14E85C5EE7A4D542)
---@param heli number 
---@param toggle boolean 
---@param canBeUsedByAI boolean 
function SetVehicleSearchlight(heli, toggle, canBeUsedByAI) end

---```
---Commands the driver of an armed vehicle (p0) to shoot its weapon at a target (p1). p3, p4 and p5 are the coordinates of the target. Example:  
---WEAPON::SET_CURRENT_PED_VEHICLE_WEAPON(pilot,GAMEPLAY::GET_HASH_KEY("VEHICLE_WEAPON_PLANE_ROCKET"));VEHICLE::SET_VEHICLE_SHOOT_AT_TARGET(pilot, target, targPos.x, targPos.y, targPos.z);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x74CD9A9327A282EA)
---@param driver number 
---@param entity number 
---@param xTarget number 
---@param yTarget number 
---@param zTarget number 
function SetVehicleShootAtTarget(driver, entity, xTarget, yTarget, zTarget) end

---```
---Activate siren on vehicle (Only works if the vehicle has a siren).  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF4924635A19EB37D)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleSiren(vehicle, toggle) end

---```
---Locks the vehicle's steering to the desired angle, explained below.  
---Requires to be called onTick. Steering is unlocked the moment the function stops being called on the vehicle.  
---Steer bias:  
----1.0 = full right  
---0.0 = centered steering  
---1.0 = full left  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x42A8EC77D5150CBE)
---@param vehicle number 
---@param value number 
function SetVehicleSteerBias(vehicle, value) end

---```
---Has something to do with trains. Always precedes SET_MISSION_TRAIN_AS_NO_LONGER_NEEDED.  
---============================================  
---May be true that it can be used with trains not sure, but not specifically for trains. Go find Xbox360 decompiled scripts and search for 'func_1333' in freemode.c it isn't used just for trains. Thanks for the info tho.  
---Btw, func_1333 ends up calling this func which uses this native,  
---void func_1338(int iParam0)//Position   
---{  
---	ENTITY::FREEZE_ENTITY_POSITION(iParam0, true);  
---	ENTITY::SET_ENTITY_COLLISION(iParam0, false, 0);  
---	ENTITY::SET_ENTITY_INVINCIBLE(iParam0, true);  
---	VEHICLE::_0xDF594D8D(iParam0, true);  
---}  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1CF38D529D7441D9)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleSt(vehicle, toggle) end

---```
---Has something to do with trains. Always precedes SET_MISSION_TRAIN_AS_NO_LONGER_NEEDED.  
---============================================  
---May be true that it can be used with trains not sure, but not specifically for trains. Go find Xbox360 decompiled scripts and search for 'func_1333' in freemode.c it isn't used just for trains. Thanks for the info tho.  
---Btw, func_1333 ends up calling this func which uses this native,  
---void func_1338(int iParam0)//Position   
---{  
---	ENTITY::FREEZE_ENTITY_POSITION(iParam0, true);  
---	ENTITY::SET_ENTITY_COLLISION(iParam0, false, 0);  
---	ENTITY::SET_ENTITY_INVINCIBLE(iParam0, true);  
---	VEHICLE::_0xDF594D8D(iParam0, true);  
---}  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1CF38D529D7441D9)
---@param vehicle number 
---@param toggle boolean 
function N_0x1CF38D529D7441D9(vehicle, toggle) end

---```
---If set to true, vehicle will not take crash damage, but is still susceptible to damage from bullets and explosives  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3E8C8727991A8A0B)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleStrong(vehicle, toggle) end

---```
---Sets how much the crane on the tow truck is raised, where 0.0 is fully lowered and 1.0 is fully raised.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE54B92A344583CA)
---@param vehicle number 
---@param position number 
function SetVehicleTowTruckArmPosition(vehicle, position) end

---```
---Sets how much the crane on the tow truck is raised, where 0.0 is fully lowered and 1.0 is fully raised.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE54B92A344583CA)
---@param vehicle number 
---@param position number 
function SetTowTruckCraneRaised(vehicle, position) end

---```
---Sets how much the crane on the tow truck is raised, where 0.0 is fully lowered and 1.0 is fully raised.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE54B92A344583CA)
---@param vehicle number 
---@param position number 
function SetTowTruckCraneHeight(vehicle, position) end

---```
---Toggles specific flag on turret
---```
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC60060EB0D8AC7B1)
---@param vehicle number 
---@param index number 
---@param toggle boolean 
function SetVehicleTurretUnk(vehicle, index, toggle) end

---```
---Toggles specific flag on turret
---```
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC60060EB0D8AC7B1)
---@param vehicle number 
---@param index number 
---@param toggle boolean 
function N_0xC60060EB0D8AC7B1(vehicle, index, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9007A2F21DC108D4)
---@param vehicle number 
---@param scalar number 
function SetVehicleSteeringBiasScalar(vehicle, scalar) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9007A2F21DC108D4)
---@param vehicle number 
---@param scalar number 
function N_0x9007A2F21DC108D4(vehicle, scalar) end

---```
---"To burst tyres VEHICLE::SET_VEHICLE_TYRE_BURST(vehicle, 0, true, 1000.0)  
---to burst all tyres type it 8 times where p1 = 0 to 7.  
---p3 seems to be how much damage it has taken. 0 doesn't deflate them, 1000 completely deflates them.  
---'0 = wheel_lf / bike, plane or jet front  
---'1 = wheel_rf  
---'2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left  
---'3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right  
---'4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left  
---'5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right  
---'45 = 6 wheels trailer mid wheel left  
---'47 = 6 wheels trailer mid wheel right  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC6A202EE4960385)
---@param vehicle number 
---@param index number 
---@param onRim boolean 
---@param p3 number 
function SetVehicleTyreBurst(vehicle, index, onRim, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x56B94C6D7127DFBA)
---@param vehicle number 
---@param position number 
---@param p2 boolean 
function SetVehicleTankTurretPosition(vehicle, position, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x56B94C6D7127DFBA)
---@param vehicle number 
---@param position number 
---@param p2 boolean 
function N_0x56B94C6D7127DFBA(vehicle, position, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2E0A74E1002380B1)
---@param vehicle number 
---@param ped number 
---@param toggle boolean 
function SetVehicleTimedExplosion(vehicle, ped, toggle) end

---```
---tyreIndex = 0 to 4 on normal vehicles  
---'0 = wheel_lf / bike, plane or jet front  
---'1 = wheel_rf  
---'2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left  
---'3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right  
---'4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left  
---'5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right  
---'45 = 6 wheels trailer mid wheel left  
---'47 = 6 wheels trailer mid wheel right  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E13FC662B882D1D)
---@param vehicle number 
---@param tyreIndex number 
function SetVehicleTyreFixed(vehicle, tyreIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1093408B4B9D1146)
---@param vehicle number 
---@param speed number 
function SetVehicleTurretSpeedThisFrame(vehicle, speed) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1093408B4B9D1146)
---@param vehicle number 
---@param speed number 
function N_0x1093408B4B9D1146(vehicle, speed) end

---```
---Sets the tire smoke's color of this vehicle.  
---vehicle: The vehicle that is the target of this method.  
---r: The red level in the RGB color code.  
---g: The green level in the RGB color code.  
---b: The blue level in the RGB color code.  
---Note:  
---setting r,g,b to 0 will give the car independance day tyre smoke  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB5BA80F839791C0F)
---@param vehicle number 
---@param r number 
---@param g number 
---@param b number 
function SetVehicleTyreSmokeColor(vehicle, r, g, b) end

---```
---Allows you to toggle bulletproof tires.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB9DC3C7D8596C46)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleTyresCanBurst(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8ABA6AF54B942B95)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleUndriveable(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x45A561A9421AB6AD)
---@param vehicle number 
---@param multiplier number 
function SetVehicleUnkDamageMultiplier(vehicle, multiplier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x45A561A9421AB6AD)
---@param vehicle number 
---@param multiplier number 
function N_0x45A561A9421AB6AD(vehicle, multiplier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1D97D1E3A70A649F)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleUseAlternateHandling(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1D97D1E3A70A649F)
---@param vehicle number 
---@param toggle boolean 
function N_0x1D97D1E3A70A649F(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE023E8AC4EF7C117)
---@param p0 number 
---@param p1 boolean 
---@param p2 boolean 
---@param p3 boolean 
---@return any retval 
function SetVehicleUseCutsceneWheelCompression(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE023E8AC4EF7C117)
---@param p0 number 
---@param p1 boolean 
---@param p2 boolean 
---@param p3 boolean 
---@return any retval 
function SetAllVehiclesSpawn(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE023E8AC4EF7C117)
---@param p0 number 
---@param p1 boolean 
---@param p2 boolean 
---@param p3 boolean 
---@return any retval 
function N_0xE023E8AC4EF7C117(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC45C27EF50F36ADC)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleUsePlayerLightSettings(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC45C27EF50F36ADC)
---@param vehicle number 
---@param toggle boolean 
function N_0xC45C27EF50F36ADC(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC45C27EF50F36ADC)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleUsePlayerLightSettings(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x44CD1F493DB2A0A6)
---@param vehicle number 
---@param weaponIndex number 
---@param capacity number 
function SetVehicleWeaponCapacity(vehicle, weaponIndex, capacity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x44CD1F493DB2A0A6)
---@param vehicle number 
---@param weaponIndex number 
---@param capacity number 
function N_0x44CD1F493DB2A0A6(vehicle, weaponIndex, capacity) end

---```
---vehicle must be a plane
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCAC66558B944DA67)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleUsesLargeRearRamp(vehicle, toggle) end

---```
---vehicle must be a plane
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCAC66558B944DA67)
---@param vehicle number 
---@param toggle boolean 
function N_0xCAC66558B944DA67(vehicle, toggle) end

---Refer to [GET_VEHICLE_WHEEL_TYPE](#\_0xB3ED1BFB4BE636DC) for wheel types.
---[Native Documentation](https://docs.fivem.net/natives/?_0x487EB21CC7295BA1)
---@param vehicle number 
---@param wheelType number 
function SetVehicleWheelType(vehicle, wheelType) end

---```
---enum WindowTints  
---{  
---	WINDOWTINT_NONE,  
---	WINDOWTINT_PURE_BLACK,  
---	WINDOWTINT_DARKSMOKE,  
---	WINDOWTINT_LIGHTSMOKE,  
---	WINDOWTINT_STOCK,  
---	WINDOWTINT_LIMO,  
---	WINDOWTINT_GREEN  
---};  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x57C51E6BAD752696)
---@param vehicle number 
---@param tint number 
function SetVehicleWindowTint(vehicle, tint) end

---```
---SET_TIME_POSITION_IN_RECORDING can be emulated by: desired_time - GET_TIME_POSITION_IN_RECORDING(vehicle)
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9438F7AD68771A20)
---@param vehicle number 
---@param time number 
function SkipTimeInPlaybackRecordedVehicle(vehicle, time) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAB8E2EDA0C0A5883)
---@param vehicle number 
function SkipToEndAndStopPlaybackRecordedVehicle(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x86B4B6212CB8B627)
---@param vehicle number 
---@param weaponSlot number 
function SetVehicleWeaponsDisabled(vehicle, weaponSlot) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x86B4B6212CB8B627)
---@param vehicle number 
---@param weaponSlot number 
function N_0x86B4B6212CB8B627(vehicle, weaponSlot) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x374706271354CB18)
---@param vehicle number 
---@param entity number 
---@param p2 number 
function StabiliseEntityAttachedToHeli(vehicle, entity, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x374706271354CB18)
---@param vehicle number 
---@param entity number 
---@param p2 number 
function N_0x374706271354CB18(vehicle, entity, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x29B18B4FD460CA8F)
---@param vehicle number 
---@param enabled boolean 
function SetVehicleWheelsCanBreak(vehicle, enabled) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA37B9A517B133349)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleWheelsCanBreakOffWhenBlowUp(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA37B9A517B133349)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleMaxStrTrap(vehicle, toggle) end

---```
---AI abides by the provided driving style (e.g., stopping at red lights or waiting behind traffic) while executing the specificed vehicle recording.
---
---0x1F2E4E06DEA8992B is a related native that deals with the AI physics for such recordings.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x29DE5FA52D00428C)
---@param vehicle number 
---@param recording number 
---@param script string 
---@param speed number 
---@param drivingStyle number 
function StartPlaybackRecordedVehicleUsingAi(vehicle, recording, script, speed, drivingStyle) end

---```
---Related to monster trucks in native scripts.
---```
---
---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2970EAA18FD5E42F)
---@param vehicle number 
---@param toggle boolean 
function SetVehicleWheelsDealDamage(vehicle, toggle) end

---```
---Related to monster trucks in native scripts.
---```
---
---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2970EAA18FD5E42F)
---@param vehicle number 
---@param toggle boolean 
function N_0x2970EAA18FD5E42F(vehicle, toggle) end

---```
---flags requires further research, e.g., 0x4/0x8 are related to the AI driving task and 0x20 is internally set and interacts with dynamic entity components.
---time, often zero and capped at 500, is related to SET_PLAYBACK_TO_USE_AI_TRY_TO_REVERT_BACK_LATER
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7D80FD645D4DA346)
---@param vehicle number 
---@param recording number 
---@param script string 
---@param flags number 
---@param time number 
---@param drivingStyle number 
function StartPlaybackRecordedVehicleWithFlags(vehicle, recording, script, flags, time, drivingStyle) end

---Paint index goes from 0 to 12.
---
---You can find the list of colors and ids here: [\_GET_VEHICLE_HEADLIGHTS_COLOUR](#\_0x3DFF319A831E0CDB)
---[Native Documentation](https://docs.fivem.net/natives/?_0xE41033B25D003A07)
---Example: 
---```local veh = GetVehiclePedIsUsing(PlayerPedId())
---ToggleVehicleMod(veh, 22, true) -- toggle xenon
---SetVehicleHeadlightsColour(veh, 2)```
---@param vehicle number The vehicle handle.
---@param color number The paint index.
function SetVehicleXenonLightsColor(vehicle, color) end

---Paint index goes from 0 to 12.
---
---You can find the list of colors and ids here: [\_GET_VEHICLE_HEADLIGHTS_COLOUR](#\_0x3DFF319A831E0CDB)
---[Native Documentation](https://docs.fivem.net/natives/?_0xE41033B25D003A07)
---Example: 
---```local veh = GetVehiclePedIsUsing(PlayerPedId())
---ToggleVehicleMod(veh, 22, true) -- toggle xenon
---SetVehicleHeadlightsColour(veh, 2)```
---@param vehicle number The vehicle handle.
---@param color number The paint index.
function N_0xE41033B25D003A07(vehicle, color) end

---Paint index goes from 0 to 12.
---
---You can find the list of colors and ids here: [\_GET_VEHICLE_HEADLIGHTS_COLOUR](#\_0x3DFF319A831E0CDB)
---[Native Documentation](https://docs.fivem.net/natives/?_0xE41033B25D003A07)
---Example: 
---```local veh = GetVehiclePedIsUsing(PlayerPedId())
---ToggleVehicleMod(veh, 22, true) -- toggle xenon
---SetVehicleHeadlightsColour(veh, 2)```
---@param vehicle number The vehicle handle.
---@param color number The paint index.
function SetVehicleHeadlightsColour(vehicle, color) end

---Paint index goes from 0 to 12.
---
---You can find the list of colors and ids here: [\_GET_VEHICLE_HEADLIGHTS_COLOUR](#\_0x3DFF319A831E0CDB)
---[Native Documentation](https://docs.fivem.net/natives/?_0xE41033B25D003A07)
---Example: 
---```local veh = GetVehiclePedIsUsing(PlayerPedId())
---ToggleVehicleMod(veh, 22, true) -- toggle xenon
---SetVehicleHeadlightsColour(veh, 2)```
---@param vehicle number The vehicle handle.
---@param color number The paint index.
function SetVehicleXenonLightsColour(vehicle, color) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8FF7AB45305C345)
---@param vehicle number 
function StartVehicleAlarm(vehicle) end

---See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
---[Native Documentation](https://docs.fivem.net/natives/?_0x9E5B5E4D2CCD2259)
---@param vehicle number 
---@param windowIndex number 
function SmashVehicleWindow(vehicle, windowIndex) end

---```
---Sounds the horn for the specified vehicle.  
---vehicle: The vehicle to activate the horn for.  
---mode: The hash of "NORMAL" or "HELDDOWN". Can be 0.  
---duration: The duration to sound the horn, in milliseconds.  
---Note: If a player is in the vehicle, it will only sound briefly.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9C8C6504B5B63D2C)
---@param vehicle number 
---@param duration number 
---@param mode number | string 
---@param forever boolean 
function StartVehicleHorn(vehicle, duration, mode, forever) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x54833611C17ABDEA)
---@param vehicle number 
function StopPlaybackRecordedVehicle(vehicle) end

---p3 is some flag related to 'trailers' (invokes CVehicle::GetTrailer).
---
---See [`REQUEST_VEHICLE_RECORDING`](#\_0xAF514CABE74CBF15).
---[Native Documentation](https://docs.fivem.net/natives/?_0x3F878F92B3A7A071)
---@param vehicle number 
---@param recording number 
---@param script string 
---@param p3 boolean 
function StartPlaybackRecordedVehicle(vehicle, recording, script, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A1F4F37F95BAD08)
---@param vehicle number 
---@param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@param toggle boolean 
function ToggleVehicleMod(vehicle, modType, toggle) end

---```
---in script hook .net   
---Vehicle v = ...;  
---Function.Call(Hash.TRACK_VEHICLE_VISIBILITY, v.Handle);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x64473AEFDCF47DCA)
---@param vehicle number 
function TrackVehicleVisibility(vehicle) end

---Transforms the `stormberg` to its "road vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A69FFD1B42BFF9E)
---@param vehicle number A vehicle handle.
---@param instantly boolean If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
function TransformToCar(vehicle, instantly) end

---Transforms the `stormberg` to its "road vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A69FFD1B42BFF9E)
---@param vehicle number A vehicle handle.
---@param instantly boolean If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
function N_0x2A69FFD1B42BFF9E(vehicle, instantly) end

---Transforms the `stormberg` to its "road vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A69FFD1B42BFF9E)
---@param vehicle number A vehicle handle.
---@param instantly boolean If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
function TransformStormbergToRoadVehicle(vehicle, instantly) end

---Transforms the `stormberg` to its "road vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A69FFD1B42BFF9E)
---@param vehicle number A vehicle handle.
---@param instantly boolean If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
function TransformSubmarineToVehicle(vehicle, instantly) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0F87E938BDF29D66)
function StopAllGarageActivity() end

---```
---Stops CTaskBringVehicleToHalt
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7C06330BFDDA182E)
---@param vehicle number 
function StopBringVehicleToHalt(vehicle) end

---```
---Stops CTaskBringVehicleToHalt
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7C06330BFDDA182E)
---@param vehicle number 
function N_0x7C06330BFDDA182E(vehicle) end

---Toggles whether ambient trains can spawn on the specified track or not.
---
---| trackId | File | Description |
---| --- | --- | --- |
---| 0 | `trains1.dat` | Main track around SA |
---| 1 | `trains2.dat` | Davis Quartz Quarry branch |
---| 2 | `trains3.dat` | Second track alongside live track along Roy Lewenstein Blv. |
---| 3 | `trains4.dat` | Metro track circuit |
---| 4 | `trains5.dat` | Branch in Mirror Park Railyard |
---| 5 | `trains6.dat` | Branch in Mirror Park Railyard |
---| 6 | `trains7.dat` | LS branch to Mirror Park Railyard |
---| 7 | `trains8.dat` | Overground part of metro track along Forum Dr. |
---| 8 | `trains9.dat` | Branch to Mirror Park Railyard |
---| 9 | `trains10.dat` | Yankton train |
---| 10 | `trains11.dat` | Part of metro track near mission row |
---| 11 | `trains12.dat` | Yankton prologue mission train |
---
---Tracks IDs `0` and `3` are the main tracks you find trains on during normal gameplay, all the others are used during missions and are not complete tracks.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFD813BB7DB977F20)
---@param trackId number The internal id of the train track to switch
---@param state boolean Whether ambient trains can spawn or not
function SwitchTrainTrack(trackId, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8879EE09268305D5)
---@param vehicle number 
function UnpausePlaybackRecordedVehicle(vehicle) end

---Transforms the `stormberg` to its "water vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE4C854FFDB6EEBE)
---@param vehicle number A vehicle handle.
---@param instantly boolean If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
function TransformToSubmarine(vehicle, instantly) end

---Transforms the `stormberg` to its "water vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE4C854FFDB6EEBE)
---@param vehicle number A vehicle handle.
---@param instantly boolean If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
function N_0xBE4C854FFDB6EEBE(vehicle, instantly) end

---Transforms the `stormberg` to its "water vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE4C854FFDB6EEBE)
---@param vehicle number A vehicle handle.
---@param instantly boolean If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
function TransformStormbergToWaterVehicle(vehicle, instantly) end

---Transforms the `stormberg` to its "water vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE4C854FFDB6EEBE)
---@param vehicle number A vehicle handle.
---@param instantly boolean If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
function TransformVehicleToSubmarine(vehicle, instantly) end

