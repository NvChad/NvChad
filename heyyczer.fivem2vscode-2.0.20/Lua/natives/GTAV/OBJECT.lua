---@meta

---p5 only set to true in single player native scripts. Door hashes normally look like `PROP_[int]_DOOR_[int]` for interior doors and `PROP_BUILDING_[int]_DOOR_[int]` exterior doors but you can just make up your own hash if you want.
---
---If scriptDoor is true, register the door on the script handler host (note: there's a hardcap on the number of script IDs that can be added to the system at a given time). If scriptDoor and isLocal are both false, the door is considered to be in a "Persists w/o netobj" state.
---
---A simple "localized" door-system (with hundreds/thousands of doors) can be created by setting p5, p6, and p7 to false and using EventHandlers to synchronize the states to: [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53), [DOOR_SYSTEM_SET_OPEN_RATIO](#\_0xB6E6FBA95C7324AC), [DOOR_SYSTEM_SET_HOLD_OPEN](#\_0xD9B71952F78A2640), etc.
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F8838D03D1DC226)
---@param doorHash number | string A (unique) door system identifier
---@param modelHash number | string Entity model hash
---@param x number The X coordinate of the door object
---@param y number The Y coordinate of the door object
---@param z number The Z coordinate of the door object
---@param p5 boolean 
---@param scriptDoor boolean false; relies upon getNetworkGameScriptHandler.
---@param isLocal boolean On true disables the creation `CRequestDoorEvent's` in [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53).
function AddDoorToSystem(doorHash, modelHash, x, y, z, p5, scriptDoor, isLocal) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x85B6C850546FDDE2)
---@param garageHash number | string 
---@param p1 boolean 
---@param p2 boolean 
---@param p3 boolean 
---@param p4 any 
---@return boolean retval 
function AreEntitiesEntirelyInsideGarage(garageHash, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x85B6C850546FDDE2)
---@param garageHash number | string 
---@param p1 boolean 
---@param p2 boolean 
---@param p3 boolean 
---@param p4 any 
---@return boolean retval 
function N_0x85B6C850546FDDE2(garageHash, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8DC39368BDD57755)
---@param pickupObject number 
---@param ped number 
function AttachPortablePickupToPed(pickupObject, ped) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x190428512B240692)
---@param garageHash number | string 
---@param vehicles boolean 
---@param peds boolean 
---@param objects boolean 
---@param isNetwork boolean 
function ClearObjectsInsideGarage(garageHash, vehicles, peds, objects, isNetwork) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x190428512B240692)
---@param garageHash number | string 
---@param vehicles boolean 
---@param peds boolean 
---@param objects boolean 
---@param isNetwork boolean 
function N_0x190428512B240692(garageHash, vehicles, peds, objects, isNetwork) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE7E4C198B0185900)
---@param p0 number 
---@param p1 any 
---@param p2 boolean 
function BreakObjectFragmentChild(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE7E4C198B0185900)
---@param p0 number 
---@param p1 any 
---@param p2 boolean 
function N_0xE7E4C198B0185900(p0, p1, p2) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9C93764223E29C50)
---@param pickupHash any 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param flags number 
---@param value number 
---@param modelHash any 
---@param p7 boolean 
---@param p8 boolean 
---@return any retval 
function CreateNonNetworkedAmbientPickup(pickupHash, posX, posY, posZ, flags, value, modelHash, p7, p8) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9C93764223E29C50)
---@param pickupHash any 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param flags number 
---@param value number 
---@param modelHash any 
---@param p7 boolean 
---@param p8 boolean 
---@return any retval 
function N_0x9C93764223E29C50(pickupHash, posX, posY, posZ, flags, value, modelHash, p7, p8) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x125494B98A21AAF7)
---@param pickupHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param placeOnGround boolean 
---@param modelHash number | string 
---@return number retval 
function CreateNonNetworkedPortablePickup(pickupHash, x, y, z, placeOnGround, modelHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x125494B98A21AAF7)
---@param pickupHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param placeOnGround boolean 
---@param modelHash number | string 
---@return number retval 
function N_0x125494B98A21AAF7(pickupHash, x, y, z, placeOnGround, modelHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x125494B98A21AAF7)
---@param pickupHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param placeOnGround boolean 
---@param modelHash number | string 
---@return number retval 
function CreatePortablePickup2(pickupHash, x, y, z, placeOnGround, modelHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA05194260CDCDF9)
---@param garageHash number | string 
---@param isNetwork boolean 
function ClearGarageArea(garageHash, isNetwork) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA05194260CDCDF9)
---@param garageHash number | string 
---@param isNetwork boolean 
function N_0xDA05194260CDCDF9(garageHash, isNetwork) end

---```
---Used for doing money drop  
---Pickup hashes: pastebin.com/8EuSv2r1  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x673966A0C0FD7171)
---@param pickupHash number | string 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param flags number 
---@param value number 
---@param modelHash number | string 
---@param returnHandle boolean 
---@param p8 boolean 
---@return pickup retval 
function CreateAmbientPickup(pickupHash, posX, posY, posZ, flags, value, modelHash, returnHandle, p8) end

---```
---Spawns one or more money pickups.  
---x: The X-component of the world position to spawn the money pickups at.  
---y: The Y-component of the world position to spawn the money pickups at.  
---z: The Z-component of the world position to spawn the money pickups at.  
---value: The combined value of the pickups (in dollars).  
---amount: The number of pickups to spawn.  
---model: The model to use, or 0 for default money model.  
---Example:  
---CREATE_MONEY_PICKUPS(x, y, z, 1000, 3, 0x684a97ae);  
---Spawns 3 spray cans that'll collectively give $1000 when picked up. (Three spray cans, each giving $334, $334, $332 = $1000).  
---==============================================  
---Max is 2000 in MP. So if you put the amount to 20, but the value to $400,000 eg. They will only be able to pickup 20 - $2,000 bags. So, $40,000  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0589B5E791CE9B2B)
---@param x number 
---@param y number 
---@param z number 
---@param value number 
---@param amount number 
---@param model number | string 
function CreateMoneyPickups(x, y, z, value, amount, model) end

---Creates an object (prop) with the specified model centered at the specified position.
---This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A294B2138ABB884)
---@param modelHash number | string The model to spawn.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component.
---@param isNetwork boolean Whether to create a network object for the object. If false, the object exists only locally.
---@param netMissionEntity boolean Whether to register the object as pinned to the script host in the R\* network model.
---@param doorFlag boolean False to create a door archetype (archetype flag bit 26 set) as a door. Required to be set to true to create door models in network mode.
---@return number retval A script handle (fwScriptGuid index) for the object, or `0` if the object failed to be created.
function CreateObjectNoOffset(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag) end

---Creates an object (prop) with the specified model at the specified position, offset on the Z axis by the radius of the object's model.
---This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
---[Native Documentation](https://docs.fivem.net/natives/?_0x509D5878EB39E842)
---Example: 
---```local modelHash = `prop_weed_01` -- The ` return the jenkins hash of a string. see more at: https://cookbook.fivem.net/2019/06/23/lua-support-for-compile-time-jenkins-hashes/
---
---if not HasModelLoaded(modelHash) then
---    -- If the model isnt loaded we request the loading of the model and wait that the model is loaded
---    RequestModel(modelHash)
---
---    while not HasModelLoaded(modelHash) do
---        Citizen.Wait(1)
---    end
---end
---
----- At this moment the model its loaded, so now we can create the object
---local obj = CreateObject(modelHash, vector3(0.0, 0.0, 0.0), true)```
---@param modelHash number | string The model to spawn.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component, 'ground level'.
---@param isNetwork boolean Whether to create a network object for the object. If false, the object exists only locally.
---@param netMissionEntity boolean Whether to register the object as pinned to the script host in the R\* network model.
---@param doorFlag boolean False to create a door archetype (archetype flag bit 26 set) as a door. Required to be set to true to create door models in network mode.
---@return number retval A script handle (fwScriptGuid index) for the object, or `0` if the object failed to be created.
function CreateObject(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag) end

---```
---Pickup hashes: pastebin.com/8EuSv2r1  
---flags:  
---8 (1 << 3): place on ground  
---512 (1 << 9): spin around  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x891804727E0A98B7)
---@param pickupHash number | string 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param flag number 
---@param amount number 
---@param p9 any 
---@param p10 boolean 
---@param modelHash number | string 
---@return pickup retval 
function CreatePickupRotate(pickupHash, posX, posY, posZ, rotX, rotY, rotZ, flag, amount, p9, p10, modelHash) end

---```
---Pickup hashes: pastebin.com/8EuSv2r1  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFBA08C503DD5FA58)
---@param pickupHash number | string 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param p4 number 
---@param value number 
---@param p6 boolean 
---@param modelHash number | string 
---@return pickup retval 
function CreatePickup(pickupHash, posX, posY, posZ, p4, value, p6, modelHash) end

---```
---Pickup hashes: pastebin.com/8EuSv2r1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2EAF1FDB2FB55698)
---@param pickupHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param placeOnGround boolean 
---@param modelHash number | string 
---@return number retval 
function CreatePortablePickup(pickupHash, x, y, z, placeOnGround, modelHash) end

---```
---Deletes the specified object, then sets the handle pointed to by the pointer to NULL.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x539E0AE3E6634B9F)
---@param object table 
function DeleteObject(object) end

---```
---p5 is usually 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBFA48E2FF417213F)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param hash number | string 
---@param p5 boolean 
---@return boolean retval 
function DoesObjectOfTypeExistAtCoords(x, y, z, radius, hash, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF463D1E9A0AECB1)
---@param pickupObject number 
function DetachPortablePickupFromPed(pickupObject) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD9EFB6DBF7DAAEA3)
---@param pickupObject number 
---@return boolean retval 
function DoesPickupObjectExist(pickupObject) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAFC1CA75AD4074D1)
---@param pickup pickup 
---@return boolean retval 
function DoesPickupExist(pickup) end

---```
---Returns true if a destructible object with this handle exists, false otherwise.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x52AF537A0C5B8AAD)
---@param object number 
---@return boolean retval 
function DoesRayfireMapObjectExist(object) end

---```
---Returns true if a destructible object with this handle exists, false otherwise.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x52AF537A0C5B8AAD)
---@param object number 
---@return boolean retval 
function N_0x52AF537A0C5B8AAD(object) end

---```
---Returns true if a destructible object with this handle exists, false otherwise.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x52AF537A0C5B8AAD)
---@param object number 
---@return boolean retval 
function DoesDesObjectExist(object) end

---```
---Pickup hashes: pastebin.com/8EuSv2r1  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF9C36251F6E48E33)
---@param pickupHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@return boolean retval 
function DoesPickupOfTypeExistInArea(pickupHash, x, y, z, radius) end

---```
---Pickup hashes: pastebin.com/8EuSv2r1  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF9C36251F6E48E33)
---@param pickupHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@return boolean retval 
function IsPickupWithinRadius(pickupHash, x, y, z, radius) end

---Hardcoded not to work in multiplayer environments.
---Native name between `SET_LOCAL_PLAYER_VISIBLE_LOCALLY` & `SET_MAX_WANTED_LEVEL`.
---
---```
---OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 0, 0.0, 50.0, 0);  //door unlocked
---OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 1, 0.0, 50.0, 0);  //door locked
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B12F9A24FABEDB0)
---Example: 
---```DoorControl(`prop_gate_prison_01`, 1845.0, 2605.0, 45.0, 0, 0.0, 50.0, 0) -- door unlocked
---DoorControl(`prop_gate_prison_01`, 1845.0, 2605.0, 45.0, 1, 0.0, 50.0, 0) -- door locked```
---@param modelHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param locked boolean tells the game whether or not the door is locked
---@param xRotMult number multiplier that specifies how fast the door/gate will rotate in degrees per second.
---@param yRotMult number multiplier that specifies how fast the door/gate will rotate in degrees per second.
---@param zRotMult number multiplier that specifies how fast the door/gate will rotate in degrees per second.
function DoorControl(modelHash, x, y, z, locked, xRotMult, yRotMult, zRotMult) end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE851471AEFC3374F)
---@param doorHash number | string 
---@return number retval 
function DoorSystemGetAutomaticDistance(doorHash) end

---Search radius: 0.5
---[Native Documentation](https://docs.fivem.net/natives/?_0x589F80B325CC82C5)
---@param x number The X coordinate of the door object
---@param y number The Y coordinate of the door object
---@param z number The Z coordinate of the door object
---@param modelHash number | string Entity model hash
---@param doorOutPointer number | string 
---@return boolean retval 
function DoorSystemFindExistingDoor(x, y, z, modelHash, doorOutPointer) end

---Search radius: 0.5
---[Native Documentation](https://docs.fivem.net/natives/?_0x589F80B325CC82C5)
---@param x number The X coordinate of the door object
---@param y number The Y coordinate of the door object
---@param z number The Z coordinate of the door object
---@param modelHash number | string Entity model hash
---@param doorOutPointer number | string 
---@return boolean retval 
function N_0x589F80B325CC82C5(x, y, z, modelHash, doorOutPointer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF97CDD4FC08FD34)
---@param doorHash number | string 
---@return boolean retval 
function DoorSystemGetIsPhysicsLoaded(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF97CDD4FC08FD34)
---@param doorHash number | string 
---@return boolean retval 
function N_0xDF97CDD4FC08FD34(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4BC2854478F3A749)
---@param doorHash number | string 
---@return number retval 
function DoorSystemGetDoorPendingState(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4BC2854478F3A749)
---@param doorHash number | string 
---@return number retval 
function N_0x4BC2854478F3A749(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x65499865FCA6E5EC)
---@param doorHash number | string 
---@return number retval 
function DoorSystemGetOpenRatio(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x65499865FCA6E5EC)
---@param doorHash number | string 
---@return number retval 
function N_0x65499865FCA6E5EC(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x160AA1B32F6139B8)
---@param doorHash number | string 
---@return number retval 
function DoorSystemGetDoorState(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x160AA1B32F6139B8)
---@param doorHash number | string 
---@return number retval 
function N_0x160AA1B32F6139B8(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BA001CB45CBF627)
---@param doorHash number | string Door system identifier
---@param distance number 
---@param requestDoor boolean 
---@param forceUpdate boolean On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53); otherwise requestDoor is unused.
function DoorSystemSetAutomaticDistance(doorHash, distance, requestDoor, forceUpdate) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BA001CB45CBF627)
---@param doorHash number | string Door system identifier
---@param distance number 
---@param requestDoor boolean 
---@param forceUpdate boolean On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53); otherwise requestDoor is unused.
function N_0x9BA001CB45CBF627(doorHash, distance, requestDoor, forceUpdate) end

---Includes networking check: ownership vs. or the door itself **isn't** networked.
---[Native Documentation](https://docs.fivem.net/natives/?_0x03C27E13B42A0E82)
---@param doorHash number | string Door system identifier
---@param rate number 
---@param requestDoor boolean 
---@param forceUpdate boolean On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53); otherwise requestDoor is unused.
function DoorSystemSetAutomaticRate(doorHash, rate, requestDoor, forceUpdate) end

---Includes networking check: ownership vs. or the door itself **isn't** networked.
---[Native Documentation](https://docs.fivem.net/natives/?_0x03C27E13B42A0E82)
---@param doorHash number | string Door system identifier
---@param rate number 
---@param requestDoor boolean 
---@param forceUpdate boolean On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53); otherwise requestDoor is unused.
function N_0x03C27E13B42A0E82(doorHash, rate, requestDoor, forceUpdate) end

---Lockstates not applied and CNetObjDoor's not created until [DOOR_SYSTEM_GET_IS_PHYSICS_LOADED](#\_0xDF97CDD4FC08FD34) returns true.
---
---### Door lock states: (v323)
---
---*   **0**: UNLOCKED
---*   **1**: LOCKED
---*   **2**: DOORSTATE_FORCE_LOCKED_UNTIL_OUT_OF_AREA
---*   **3**: DOORSTATE_FORCE_UNLOCKED_THIS_FRAME
---*   **4**: DOORSTATE_FORCE_LOCKED_THIS_FRAME
---*   **5**: DOORSTATE_FORCE_OPEN_THIS_FRAME
---*   **6**: DOORSTATE_FORCE_CLOSED_THIS_FRAME
---[Native Documentation](https://docs.fivem.net/natives/?_0x6BAB9442830C7F53)
---@param doorHash number | string 
---@param state number 
---@param requestDoor boolean On true, and when door system is configured to, i.e., "persists w/o netobj", generate a CRequestDoorEvent.
---@param forceUpdate boolean On true, forces an update on the door system (same path as netObjDoor_applyDoorStuff)
function DoorSystemSetDoorState(doorHash, state, requestDoor, forceUpdate) end

---Lockstates not applied and CNetObjDoor's not created until [DOOR_SYSTEM_GET_IS_PHYSICS_LOADED](#\_0xDF97CDD4FC08FD34) returns true.
---
---### Door lock states: (v323)
---
---*   **0**: UNLOCKED
---*   **1**: LOCKED
---*   **2**: DOORSTATE_FORCE_LOCKED_UNTIL_OUT_OF_AREA
---*   **3**: DOORSTATE_FORCE_UNLOCKED_THIS_FRAME
---*   **4**: DOORSTATE_FORCE_LOCKED_THIS_FRAME
---*   **5**: DOORSTATE_FORCE_OPEN_THIS_FRAME
---*   **6**: DOORSTATE_FORCE_CLOSED_THIS_FRAME
---[Native Documentation](https://docs.fivem.net/natives/?_0x6BAB9442830C7F53)
---@param doorHash number | string 
---@param state number 
---@param requestDoor boolean On true, and when door system is configured to, i.e., "persists w/o netobj", generate a CRequestDoorEvent.
---@param forceUpdate boolean On true, forces an update on the door system (same path as netObjDoor_applyDoorStuff)
function N_0x6BAB9442830C7F53(doorHash, state, requestDoor, forceUpdate) end

---Lockstates not applied and CNetObjDoor's not created until [DOOR_SYSTEM_GET_IS_PHYSICS_LOADED](#\_0xDF97CDD4FC08FD34) returns true.
---
---### Door lock states: (v323)
---
---*   **0**: UNLOCKED
---*   **1**: LOCKED
---*   **2**: DOORSTATE_FORCE_LOCKED_UNTIL_OUT_OF_AREA
---*   **3**: DOORSTATE_FORCE_UNLOCKED_THIS_FRAME
---*   **4**: DOORSTATE_FORCE_LOCKED_THIS_FRAME
---*   **5**: DOORSTATE_FORCE_OPEN_THIS_FRAME
---*   **6**: DOORSTATE_FORCE_CLOSED_THIS_FRAME
---[Native Documentation](https://docs.fivem.net/natives/?_0x6BAB9442830C7F53)
---@param doorHash number | string 
---@param state number 
---@param requestDoor boolean On true, and when door system is configured to, i.e., "persists w/o netobj", generate a CRequestDoorEvent.
---@param forceUpdate boolean On true, forces an update on the door system (same path as netObjDoor_applyDoorStuff)
function SetDoorAccelerationLimit(doorHash, state, requestDoor, forceUpdate) end

---Includes networking check: ownership vs. or the door itself **isn't** networked.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD9B71952F78A2640)
---@param doorHash number | string Door system identifier
---@param toggle boolean 
function DoorSystemSetHoldOpen(doorHash, toggle) end

---Includes networking check: ownership vs. or the door itself **isn't** networked.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD9B71952F78A2640)
---@param doorHash number | string Door system identifier
---@param toggle boolean 
function N_0xD9B71952F78A2640(doorHash, toggle) end

---```
---Sets the ajar angle of a door.
---Ranges from -1.0 to 1.0, and 0.0 is closed / default.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB6E6FBA95C7324AC)
---@param doorHash number | string Door system identifier
---@param ajar number 
---@param requestDoor boolean 
---@param forceUpdate boolean On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53); otherwise requestDoor is unused.
function DoorSystemSetOpenRatio(doorHash, ajar, requestDoor, forceUpdate) end

---```
---Sets the ajar angle of a door.
---Ranges from -1.0 to 1.0, and 0.0 is closed / default.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB6E6FBA95C7324AC)
---@param doorHash number | string Door system identifier
---@param ajar number 
---@param requestDoor boolean 
---@param forceUpdate boolean On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53); otherwise requestDoor is unused.
function N_0xB6E6FBA95C7324AC(doorHash, ajar, requestDoor, forceUpdate) end

---```
---Sets the ajar angle of a door.
---Ranges from -1.0 to 1.0, and 0.0 is closed / default.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB6E6FBA95C7324AC)
---@param doorHash number | string Door system identifier
---@param ajar number 
---@param requestDoor boolean 
---@param forceUpdate boolean On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53); otherwise requestDoor is unused.
function SetDoorAjarAngle(doorHash, ajar, requestDoor, forceUpdate) end

---Includes networking check: ownership vs. or the door itself **isn't** networked.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC485E07E4F0B7958)
---@param doorHash number | string Door system identifier
---@param removed boolean 
---@param requestDoor boolean 
---@param forceUpdate boolean On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53); otherwise requestDoor is unused.
function DoorSystemSetSpringRemoved(doorHash, removed, requestDoor, forceUpdate) end

---Includes networking check: ownership vs. or the door itself **isn't** networked.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC485E07E4F0B7958)
---@param doorHash number | string Door system identifier
---@param removed boolean 
---@param requestDoor boolean 
---@param forceUpdate boolean On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53); otherwise requestDoor is unused.
function N_0xC485E07E4F0B7958(doorHash, removed, requestDoor, forceUpdate) end

---```
---Has 8 params in the latest patches.  
---isMission - if true doesn't return mission objects  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE143FA2249364369)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param modelHash number | string 
---@param isMission boolean 
---@param p6 boolean 
---@param p7 boolean 
---@return number retval 
function GetClosestObjectOfType(x, y, z, radius, modelHash, isMission, p6, p7) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2E1A7133DD356A6)
---@param garageHash number | string 
---@param toggle boolean 
function EnableSavingInGarage(garageHash, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2E1A7133DD356A6)
---@param garageHash number | string 
---@param toggle boolean 
function N_0xF2E1A7133DD356A6(garageHash, toggle) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x43C677F1E1158005)
---@param entity number 
---@param p1 any 
---@return boolean retval 
function GetIsArenaPropPhysicsDisabled(entity, p1) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x43C677F1E1158005)
---@param entity number 
---@param p1 any 
---@return boolean retval 
function N_0x43C677F1E1158005(entity, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x758A5C1B3B1E1990)
---@param p0 any 
function ForcePickupRegenerate(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x758A5C1B3B1E1990)
---@param p0 any 
function N_0x758A5C1B3B1E1990(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x163E252DE035A133)
---@param xPos number 
---@param yPos number 
---@param zPos number 
---@param heading number 
---@param xOffset number 
---@param yOffset number 
---@param zOffset number 
---@return vector3 retval 
function GetObjectOffsetFromCoords(xPos, yPos, zPos, heading, xOffset, yOffset, zOffset) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x163F8B586BC95F2A)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param modelHash number | string 
---@param outPosition vector3 
---@param outRotation vector3 
---@param rotationOrder number 
---@return any retval 
function GetCoordsAndRotationOfClosestObjectOfType(x, y, z, radius, modelHash, outPosition, outRotation, rotationOrder) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x163F8B586BC95F2A)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param modelHash number | string 
---@param outPosition vector3 
---@param outRotation vector3 
---@param rotationOrder number 
---@return any retval 
function N_0x163F8B586BC95F2A(x, y, z, radius, modelHash, outPosition, outRotation, rotationOrder) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE84EB93729C5F36A)
---@param object number 
---@return number retval 
function GetObjectTextureVariation(object) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE84EB93729C5F36A)
---@param object number 
---@return number retval 
function N_0xE84EB93729C5F36A(object) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB6FBFD079B8D0596)
---@param p0 any 
---@param p1 boolean 
---@return number retval 
function GetObjectFragmentDamageHealth(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x225B8B35C88029B3)
---@param pickup pickup 
---@return vector3 retval 
function GetPickupCoords(pickup) end

---```
---returns pickup hash.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5EAAD83F8CFB4575)
---@param pickupHash number | string 
---@return number | string retval 
function GetPickupHash(pickupHash) end

---```
---returns pickup hash.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5EAAD83F8CFB4575)
---@param pickupHash number | string 
---@return number | string retval 
function N_0x5EAAD83F8CFB4575(pickupHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3ECA65C7317F174)
---@return number retval 
function GetPickupGenerationRangeMultiplier() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3ECA65C7317F174)
---@return number retval 
function N_0xB3ECA65C7317F174() end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD6429A016084F1A5)
---@param weapon number | string 
---@return number | string retval 
function GetPickupHashFromWeapon(weapon) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD6429A016084F1A5)
---@param weapon number | string 
---@return number | string retval 
function N_0xD6429A016084F1A5(weapon) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5099BC55630B25AE)
---@param pickup pickup 
---@return number retval 
function GetPickupObject(pickup) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5099BC55630B25AE)
---@param pickup pickup 
---@return number retval 
function N_0x5099BC55630B25AE(pickup) end

---```
---Example:
---OBJECT::GET_RAYFIRE_MAP_OBJECT(-809.9619750976562, 170.919, 75.7406997680664, 3.0, "des_tvsmash");
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB48FCED898292E52)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param name string 
---@return number retval 
function GetRayfireMapObject(x, y, z, radius, name) end

---```
---Example:
---OBJECT::GET_RAYFIRE_MAP_OBJECT(-809.9619750976562, 170.919, 75.7406997680664, 3.0, "des_tvsmash");
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB48FCED898292E52)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param name string 
---@return number retval 
function N_0xB48FCED898292E52(x, y, z, radius, name) end

---```
---Example:
---OBJECT::GET_RAYFIRE_MAP_OBJECT(-809.9619750976562, 170.919, 75.7406997680664, 3.0, "des_tvsmash");
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB48FCED898292E52)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param name string 
---@return number retval 
function GetDesObject(x, y, z, radius, name) end

---```
---`object`: The des-object handle to get the animation progress from.
---Return value is a float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x260EE4FDBDF4DB01)
---Example: 
---```local handle = GetRayfireMapObject(7.25, -656.98, 17.14, 50.0, "des_finale_tunnel")
---local handle2 = GetRayfireMapObject(7.25, -656.98, 17.14, 50.0, "des_finale_vault")
---
---SetStateOfRayfireMapObject(handle, 4) -- set to pre-start state
---SetStateOfRayfireMapObject(handle2, 4) -- set to pre-start state
---
---Citizen.Wait(100)
---
---SetStateOfRayfireMapObject(handle, 6) -- set to start animation state.
---SetStateOfRayfireMapObject(handle2, 6) -- set to start animation state.
---
---Citizen.CreateThread(function()
---    Citizen.Wait(10)
---    while GetRayfireMapObjectAnimPhase(handle) > 0.0 do
---        Citizen.Wait(0)
---    end
---    print("Animation 1 is done!")
---    while GetRayfireMapObjectAnimPhase(handle2) > 0.0 do
---        Citizen.Wait(0)
---    end
---    print("Animation 2 is done!")
---end)
---```
---@param object number The des-object handle to get the animation progress from.
---@return number retval A float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.
function GetRayfireMapObjectAnimPhase(object) end

---```
---`object`: The des-object handle to get the animation progress from.
---Return value is a float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x260EE4FDBDF4DB01)
---Example: 
---```local handle = GetRayfireMapObject(7.25, -656.98, 17.14, 50.0, "des_finale_tunnel")
---local handle2 = GetRayfireMapObject(7.25, -656.98, 17.14, 50.0, "des_finale_vault")
---
---SetStateOfRayfireMapObject(handle, 4) -- set to pre-start state
---SetStateOfRayfireMapObject(handle2, 4) -- set to pre-start state
---
---Citizen.Wait(100)
---
---SetStateOfRayfireMapObject(handle, 6) -- set to start animation state.
---SetStateOfRayfireMapObject(handle2, 6) -- set to start animation state.
---
---Citizen.CreateThread(function()
---    Citizen.Wait(10)
---    while GetRayfireMapObjectAnimPhase(handle) > 0.0 do
---        Citizen.Wait(0)
---    end
---    print("Animation 1 is done!")
---    while GetRayfireMapObjectAnimPhase(handle2) > 0.0 do
---        Citizen.Wait(0)
---    end
---    print("Animation 2 is done!")
---end)
---```
---@param object number The des-object handle to get the animation progress from.
---@return number retval A float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.
function N_0x260EE4FDBDF4DB01(object) end

---```
---`object`: The des-object handle to get the animation progress from.
---Return value is a float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x260EE4FDBDF4DB01)
---Example: 
---```local handle = GetRayfireMapObject(7.25, -656.98, 17.14, 50.0, "des_finale_tunnel")
---local handle2 = GetRayfireMapObject(7.25, -656.98, 17.14, 50.0, "des_finale_vault")
---
---SetStateOfRayfireMapObject(handle, 4) -- set to pre-start state
---SetStateOfRayfireMapObject(handle2, 4) -- set to pre-start state
---
---Citizen.Wait(100)
---
---SetStateOfRayfireMapObject(handle, 6) -- set to start animation state.
---SetStateOfRayfireMapObject(handle2, 6) -- set to start animation state.
---
---Citizen.CreateThread(function()
---    Citizen.Wait(10)
---    while GetRayfireMapObjectAnimPhase(handle) > 0.0 do
---        Citizen.Wait(0)
---    end
---    print("Animation 1 is done!")
---    while GetRayfireMapObjectAnimPhase(handle2) > 0.0 do
---        Citizen.Wait(0)
---    end
---    print("Animation 2 is done!")
---end)
---```
---@param object number The des-object handle to get the animation progress from.
---@return number retval A float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.
function GetDesObjectAnimProgress(object) end

---```
---locked is 0 if no door is found  
---locked is 0 if door is unlocked  
---locked is 1 if door is found and unlocked.  
----------------  
---the locked bool is either 0(unlocked)(false) or 1(locked)(true)  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEDC1A5B84AEF33FF)
---@param type number | string 
---@param x number 
---@param y number 
---@param z number 
---@param locked boolean 
---@param heading number 
function GetStateOfClosestDoorOfType(type, x, y, z, locked, heading) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E16BC2503FF1FF0)
---@param x number 
---@param y number 
---@param z number 
---@param p3 number 
---@param p4 number 
---@return vector3 retval 
function GetSafePickupCoords(x, y, z, p3, p4) end

---See [`SET_STATE_OF_RAYFIRE_MAP_OBJECT`](#\_0x5C29F698D404C5E1) to see the different states
---
---Get a destructible object's state. Substract 1 to get the real state. For example, if the object just spawned (state 2), the native will return 3.
---[Native Documentation](https://docs.fivem.net/natives/?_0x899BA936634A322E)
---@param object number 
---@return number retval 
function GetStateOfRayfireMapObject(object) end

---See [`SET_STATE_OF_RAYFIRE_MAP_OBJECT`](#\_0x5C29F698D404C5E1) to see the different states
---
---Get a destructible object's state. Substract 1 to get the real state. For example, if the object just spawned (state 2), the native will return 3.
---[Native Documentation](https://docs.fivem.net/natives/?_0x899BA936634A322E)
---@param object number 
---@return number retval 
function N_0x899BA936634A322E(object) end

---See [`SET_STATE_OF_RAYFIRE_MAP_OBJECT`](#\_0x5C29F698D404C5E1) to see the different states
---
---Get a destructible object's state. Substract 1 to get the real state. For example, if the object just spawned (state 2), the native will return 3.
---[Native Documentation](https://docs.fivem.net/natives/?_0x899BA936634A322E)
---@param object number 
---@return number retval 
function GetDesObjectState(object) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x761B0E69AC4D007E)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param modelHash number | string 
---@param p5 any 
---@return boolean retval 
function HasClosestObjectOfTypeBeenBroken(p0, p1, p2, p3, modelHash, p5) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8ABFB70C49CC43E2)
---@param object number 
---@return boolean retval 
function HasObjectBeenBroken(object) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x867458251D47CCB2)
---@param pickup pickup 
---@param toggle boolean 
function HidePortablePickupWhenDetached(pickup, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x867458251D47CCB2)
---@param pickup pickup 
---@param toggle boolean 
function N_0x867458251D47CCB2(pickup, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x867458251D47CCB2)
---@param pickup pickup 
---@param toggle boolean 
function HidePickup(pickup, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x397DC58FF00298D1)
---@param x number 
---@param y number 
---@param z number 
---@param range number 
---@param p4 boolean 
---@return boolean retval 
function IsAnyObjectNearPoint(x, y, z, range, p4) end

---```
---if (OBJECT::IS_DOOR_REGISTERED_WITH_SYSTEM(doorHash))
---{
---    OBJECT::REMOVE_DOOR_FROM_SYSTEM(doorHash);
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC153C43EA202C8C1)
---@param doorHash number | string 
---@return boolean retval 
function IsDoorRegisteredWithSystem(doorHash) end

---```
---if (OBJECT::IS_DOOR_REGISTERED_WITH_SYSTEM(doorHash))
---{
---    OBJECT::REMOVE_DOOR_FROM_SYSTEM(doorHash);
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC153C43EA202C8C1)
---@param doorHash number | string 
---@return boolean retval 
function N_0xC153C43EA202C8C1(doorHash) end

---```
---if (OBJECT::IS_DOOR_REGISTERED_WITH_SYSTEM(doorHash))
---{
---    OBJECT::REMOVE_DOOR_FROM_SYSTEM(doorHash);
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC153C43EA202C8C1)
---@param doorHash number | string 
---@return boolean retval 
function DoesDoorExist(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x08F96CA6C551AD51)
---@param pickupHash number | string 
---@return number | string retval 
function GetWeaponTypeFromPickupType(pickupHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x08F96CA6C551AD51)
---@param pickupHash number | string 
---@return number | string retval 
function N_0x08F96CA6C551AD51(pickupHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x08F96CA6C551AD51)
---@param pickupHash number | string 
---@return number | string retval 
function GetWeaponHashFromPickup(pickupHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x46494A2475701343)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param modelHash number | string 
---@param p5 boolean 
---@return boolean retval 
function HasClosestObjectOfTypeBeenCompletelyDestroyed(x, y, z, radius, modelHash, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x46494A2475701343)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param modelHash number | string 
---@param p5 boolean 
---@return boolean retval 
function N_0x46494A2475701343(x, y, z, radius, modelHash, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x80EC48E6679313F9)
---@param pickup pickup 
---@return boolean retval 
function HasPickupBeenCollected(pickup) end

---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0378C08504160D0D)
---@param object number 
---@return boolean retval 
function IsObjectAPortablePickup(object) end

---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0378C08504160D0D)
---@param object number 
---@return boolean retval 
function N_0x0378C08504160D0D(object) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x372EF6699146A1E4)
---@param garageHash number | string 
---@param entity number 
---@param p2 number 
---@param p3 number 
---@return boolean retval 
function IsObjectEntirelyInsideGarage(garageHash, entity, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x372EF6699146A1E4)
---@param garageHash number | string 
---@param entity number 
---@param p2 number 
---@param p3 number 
---@return boolean retval 
function N_0x372EF6699146A1E4(garageHash, entity, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x673ED815D6E323B7)
---@param garageHash number | string 
---@param p1 boolean 
---@param p2 boolean 
---@param p3 boolean 
---@param p4 any 
---@return boolean retval 
function IsAnyEntityEntirelyInsideGarage(garageHash, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x673ED815D6E323B7)
---@param garageHash number | string 
---@param p1 boolean 
---@param p2 boolean 
---@param p3 boolean 
---@param p4 any 
---@return boolean retval 
function N_0x673ED815D6E323B7(garageHash, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC531EE8A1145A149)
---@param doorHash number | string 
---@return boolean retval 
function IsDoorClosed(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0EED5A6BC7B237A)
---@param garageHash number | string 
---@param entity number 
---@param p2 number 
---@return boolean retval 
function IsObjectPartiallyInsideGarage(garageHash, entity, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0EED5A6BC7B237A)
---@param garageHash number | string 
---@param entity number 
---@param p2 number 
---@return boolean retval 
function N_0xF0EED5A6BC7B237A(garageHash, entity, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x90E47239EA1980B8)
---@param garageHash number | string 
---@param p1 boolean 
---@param p2 number 
---@return boolean retval 
function IsGarageEmpty(garageHash, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x024A60DEB0EA69F0)
---@param garageHash number | string 
---@param player number 
---@param p2 number 
---@param p3 number 
---@return boolean retval 
function IsPlayerEntirelyInsideGarage(garageHash, player, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x024A60DEB0EA69F0)
---@param garageHash number | string 
---@param player number 
---@param p2 number 
---@param p3 number 
---@return boolean retval 
function N_0x024A60DEB0EA69F0(garageHash, player, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC481C641EBBD27D)
---@param object number 
---@return boolean retval 
function IsObjectAPickup(object) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC481C641EBBD27D)
---@param object number 
---@return boolean retval 
function N_0xFC481C641EBBD27D(object) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1761DC5D8471CBAA)
---@param garageHash number | string 
---@param player number 
---@param p2 number 
---@return boolean retval 
function IsPlayerPartiallyInsideGarage(garageHash, player, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1761DC5D8471CBAA)
---@param garageHash number | string 
---@param player number 
---@param p2 number 
---@return boolean retval 
function N_0x1761DC5D8471CBAA(garageHash, player, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8C90FE4B381BA60A)
---@param objectHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param range number 
---@return boolean retval 
function IsObjectNearPoint(objectHash, x, y, z, range) end

---An **angled area** is an X-Z oriented rectangle with three parameters:
---
---1.  **origin**: the mid-point along a base edge of the rectangle;
---2.  **extent**: the mid-point of opposite base edge on the other Z;
---3.  **width**: the length of the base edge; (named derived from logging strings `CNetworkRoadNodeWorldStateData`).
---
---The oriented rectangle can then be derived from the direction of the two points (`norm(origin - extent)`), its orthonormal, and the width, e.g:
---
---1.  [golf_mp](https://i.imgur.com/JhsQAK9.png)
---2.  [am_taxi](https://i.imgur.com/TJWCZaT.jpg)
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A70BAE8883E4C81)
---@param xPos number The x coordinate.
---@param yPos number The y coordinate.
---@param zPos number The z coordinate.
---@param x1 number X dimension of the angled area 'origin'
---@param y1 number Y dimension of the angled area 'origin'
---@param z1 number Z dimension of the angled area 'origin'
---@param x2 number X dimension of the angled area 'extent'
---@param y2 number Y dimension of the angled area 'extent'
---@param z2 number Z dimension of the angled area 'extent'
---@param width number Width of the angled area
---@param p10 boolean a debug flag invoking functions in the same path as `DRAW_MARKER`
---@param includez boolean If true, include the Z dimension when doing the height check; otherwise the query becomes two-dimensional
---@return boolean retval 
function IsPointInAngledArea(xPos, yPos, zPos, x1, y1, z1, x2, y2, z2, width, p10, includez) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8B32ACE6326A7546)
---@param object number 
---@return boolean retval 
function IsObjectVisible(object) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x11D1E53A726891FE)
---@param object number 
---@return boolean retval 
function IsPickupWeaponObjectValid(object) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x11D1E53A726891FE)
---@param object number 
---@return boolean retval 
function N_0x11D1E53A726891FE(object) end

---```
---is this like setting is as no longer needed?  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xADBE4809F19F927A)
---@param object number 
function MarkObjectForDeletion(object) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C57C94A6446492A)
---@param p0 any 
---@param p1 any 
function N_0x1C57C94A6446492A(p0, p1) end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x006E4B040ED37EC3)
---@param p0 any 
function N_0x006E4B040ED37EC3(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1E3F1B1B891A2AAA)
---@param p0 any 
---@param p1 any 
function N_0x1E3F1B1B891A2AAA(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0596843B34B95CE5)
---@param p0 any 
---@param p1 any 
function N_0x0596843B34B95CE5(p0, p1) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2542269291C6AC84)
---@param p0 any 
---@return any retval 
function N_0x2542269291C6AC84(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x31F924B53EADDF65)
---@param p0 boolean 
function N_0x31F924B53EADDF65(p0) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1A6CBB06E2D0D79D)
---@param p0 any 
---@param p1 any 
function N_0x1A6CBB06E2D0D79D(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x394CD08E31313C28)
function N_0x394CD08E31313C28() end

---```
---NativeDB Removed Parameter 3: int R
---NativeDB Removed Parameter 4: int G
---NativeDB Removed Parameter 5: int B
---NativeDB Introduced: v757
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3B2FD68DB5F8331C)
---@param object number 
---@param toggle boolean 
---@param R number 
---@param G number 
---@param B number 
function N_0x3B2FD68DB5F8331C(object, toggle, R, G, B) end

---```
---NativeDB Removed Parameter 3: int R
---NativeDB Removed Parameter 4: int G
---NativeDB Removed Parameter 5: int B
---NativeDB Introduced: v757
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3B2FD68DB5F8331C)
---@param object number 
---@param toggle boolean 
---@param R number 
---@param G number 
---@param B number 
function SetObjectColour(object, toggle, R, G, B) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x46F3ADD1E2D5BAF2)
---@param p0 any 
---@param p1 any 
function N_0x46F3ADD1E2D5BAF2(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x62454A641B41F3C5)
---@param p0 any 
function N_0x62454A641B41F3C5(p0) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x27F248C3FEBFAAD3)
---@param p0 any 
---@param p1 any 
function N_0x27F248C3FEBFAAD3(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x641F272B52E2F0F8)
---@param p0 any 
---@param p1 any 
function N_0x641F272B52E2F0F8(p0, p1) end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x31574B1B41268673)
---@param p0 any 
---@param p1 any 
function N_0x31574B1B41268673(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x39A5FB7EAF150840)
---@param p0 any 
---@param p1 any 
function N_0x39A5FB7EAF150840(p0, p1) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x659F9D71F52843F8)
---@param p0 any 
---@param p1 any 
function N_0x659F9D71F52843F8(p0, p1) end

---Clears the fields sets by [N\_0xc7f29ca00f46350e](#\_0xC7F29CA00F46350E) (1604 retail: 0x1424A7A10, 0x1424A7A11) and iterates over the global CDoor's bucket-list.
---
---Related to its "Pre-networked state"?
---[Native Documentation](https://docs.fivem.net/natives/?_0x701FDA1E82076BA4)
function N_0x701FDA1E82076BA4() end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3BD770D281982DB5)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0x3BD770D281982DB5(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x762DB2D380B48D04)
---@param p0 any 
function N_0x762DB2D380B48D04(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x826D1EE4D1CAFC78)
---@param p0 any 
---@param p1 any 
function N_0x826D1EE4D1CAFC78(p0, p1) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x834344A414C7C85D)
---@param p0 any 
---@param p1 any 
function N_0x834344A414C7C85D(p0, p1) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C134B4DF76025D0)
---@param p0 any 
---@param p1 any 
function N_0x4C134B4DF76025D0(p0, p1) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8881C98A31117998)
---@param p0 any 
function N_0x8881C98A31117998(p0) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8881C98A31117998)
---@param p0 any 
function N_0x8881C98A31117998(p0) end

---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x63ECF581BC70E363)
---@param p0 any 
---@param p1 any 
function N_0x63ECF581BC70E363(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x66A49D021870FE88)
function N_0x66A49D021870FE88() end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x734E1714D077DA9A)
---@param p0 any 
---@param p1 any 
function N_0x734E1714D077DA9A(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8CAAB2BD3EA58BD4)
---@param p0 any 
function N_0x8CAAB2BD3EA58BD4(p0) end

---SET_PICKUP_\*
---
---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7813E8B8C4AE4799)
---@param pickup pickup 
function N_0x7813E8B8C4AE4799(pickup) end

---```
---NativeDB Introduced: v757
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8CFF648FBD7330F1)
---@param p0 any 
function N_0x8CFF648FBD7330F1(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x858EC9FD25DE04AA)
---@param p0 any 
---@param p1 any 
function N_0x858EC9FD25DE04AA(p0, p1) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8DCA505A5C196F05)
---@param p0 any 
---@param p1 any 
function N_0x8DCA505A5C196F05(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA08FE5E49BDC39DD)
---@param p0 any 
---@param p1 number 
---@param p2 boolean 
function N_0xA08FE5E49BDC39DD(p0, p1, p2) end

---Some property related to gates. Native name between `DOOR_SYSTEM_SET_AUTOMATIC_RATE` and `DOOR_SYSTEM_SET_DOOR_STATE`.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA85A21582451E951)
---@param doorHash number | string 
---@param p1 boolean 
function N_0xA85A21582451E951(doorHash, p1) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA059C615DE9DD03)
---@param p0 any 
---@param p1 any 
function N_0xAA059C615DE9DD03(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB2D0BDE54F0E8E5A)
---@param object number 
---@param toggle boolean 
function N_0xB2D0BDE54F0E8E5A(object, toggle) end

---```
---CLEAR_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2C1F5E92AFE49ED)
function N_0xA2C1F5E92AFE49ED() end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xADF084FB8F075D06)
---@param p0 number 
---@return boolean retval 
function N_0xADF084FB8F075D06(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6033D32241F6FB5)
---@param object number 
---@param toggle boolean 
function N_0xC6033D32241F6FB5(object, toggle) end

---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAFE24E4D29249E4A)
---@param object number 
---@param p1 number 
---@param p2 number 
---@param p3 boolean 
---@return boolean retval 
function N_0xAFE24E4D29249E4A(object, p1, p2, p3) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD05A3241B9A86F19)
---@param p0 any 
---@param p1 any 
function N_0xD05A3241B9A86F19(p0, p1) end

---```
---Adds an area that seems to be related to pickup physics behavior.
---Max amount of areas is 10. Only works in multiplayer.
---
---ADD_*
---
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD4A7A435B3710D05)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
function N_0xD4A7A435B3710D05(x, y, z, radius) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB5B7742424BD4445)
---@param p0 any 
---@param p1 any 
function N_0xB5B7742424BD4445(p0, p1) end

---```
---Clears all areas created by 0xD4A7A435B3710D05
---
---CLEAR_*
---
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7C6D80FB371659A)
function N_0xB7C6D80FB371659A() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDB41D07A45A6D4B7)
---@param p0 any 
---@return any retval 
function N_0xDB41D07A45A6D4B7(p0) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBFFE53AE7E67FCDC)
---@param p0 any 
---@param p1 any 
function N_0xBFFE53AE7E67FCDC(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB6F1A9B5510A5D2)
---@param p0 any 
---@param p1 boolean 
function N_0xEB6F1A9B5510A5D2(p0, p1) end

---See [`N_0x701fda1e82076ba4`](#\_0x701FDA1E82076BA4).
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7F29CA00F46350E)
---@param p0 boolean 
function N_0xC7F29CA00F46350E(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF9C1681347C8BD15)
---@param object number 
function N_0xF9C1681347C8BD15(object) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE05F6AEEFEB0BB02)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_0xE05F6AEEFEB0BB02(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF92099527DB8E2A7)
---@param p0 any 
---@param p1 any 
function N_0xF92099527DB8E2A7(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x58A850EAEE20FAA3)
---@param object number 
---@return boolean retval 
function PlaceObjectOnGroundProperly(object) end

---A\*
---
---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFDC07C58E8AAB715)
---@param pickupHash number | string 
function N_0xFDC07C58E8AAB715(pickupHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD76EEEF746057FD6)
---@param object number 
---@return boolean retval 
function PlaceObjectOnGroundProperly2(object) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD76EEEF746057FD6)
---@param object number 
---@return boolean retval 
function N_0xD76EEEF746057FD6(object) end

---CDoor and CDoorSystemData still internally allocated (and their associations between doorHash, modelHash, and coordinates).
---
---Only its NetObj removed and flag `*(v2 + 192) |= 8u` (1604 retail) toggled.
---[Native Documentation](https://docs.fivem.net/natives/?_0x464D8E1427156FE4)
---@param doorHash number | string 
function RemoveDoorFromSystem(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x92AEFB5F6E294023)
---@param object number 
---@param p1 boolean 
---@param p2 boolean 
function PreventCollectionOfPortablePickup(object, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x92AEFB5F6E294023)
---@param object number 
---@param p1 boolean 
---@param p2 boolean 
function N_0x92AEFB5F6E294023(object, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4A39DB43E47CF3AA)
---@param object number 
function RemoveObjectHighDetailModel(object) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4A39DB43E47CF3AA)
---@param object number 
function N_0x4A39DB43E47CF3AA(object) end

---```
---Pickup hashes: pastebin.com/8EuSv2r1  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x27F9D613092159CF)
---@param pickupHash number | string 
function RemoveAllPickupsOfType(pickupHash) end

---```
---draws circular marker at pos
----1 = none
---0 = red
---1 = green
---2 = blue
---3 = green larger
---4 = nothing
---5 = green small
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3430676B11CDF21D)
---@param x number 
---@param y number 
---@param z number 
---@param colorIndex number 
function RenderFakePickupGlow(x, y, z, colorIndex) end

---```
---draws circular marker at pos
----1 = none
---0 = red
---1 = green
---2 = blue
---3 = green larger
---4 = nothing
---5 = green small
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3430676B11CDF21D)
---@param x number 
---@param y number 
---@param z number 
---@param colorIndex number 
function N_0x3430676B11CDF21D(x, y, z, colorIndex) end

---```
---draws circular marker at pos
----1 = none
---0 = red
---1 = green
---2 = blue
---3 = green larger
---4 = nothing
---5 = green small
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3430676B11CDF21D)
---@param x number 
---@param y number 
---@param z number 
---@param colorIndex number 
function HighlightPlacementCoords(x, y, z, colorIndex) end

---```
---Activate the physics to: "xs_prop_arena_{flipper,wall,bollard,turntable,pit}"
---```
---
---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x911024442F4898F0)
---@param entity number 
---@param toggle boolean 
---@param p2 number 
function SetEnableArenaPropPhysics(entity, toggle, p2) end

---```
---Activate the physics to: "xs_prop_arena_{flipper,wall,bollard,turntable,pit}"
---```
---
---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x911024442F4898F0)
---@param entity number 
---@param toggle boolean 
---@param p2 number 
function N_0x911024442F4898F0(entity, toggle, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3288D8ACAECD2AB2)
---@param pickup pickup 
function RemovePickup(pickup) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB20834A7DD3D8896)
---@param entity number 
---@param toggle boolean 
---@param p2 number 
---@param ped number 
function SetEnableArenaPropPhysicsOnPed(entity, toggle, p2, ped) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB20834A7DD3D8896)
---@param entity number 
---@param toggle boolean 
---@param p2 number 
---@param ped number 
function N_0xB20834A7DD3D8896(entity, toggle, p2, ped) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x406137F8EF90EAF5)
---@param object number 
---@param toggle boolean 
function SetActivateObjectPhysicsAsSoonAsItIsUnfrozen(object, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x78857FC65CADB909)
---@param p0 boolean 
function SetLocalPlayerCanCollectPortablePickups(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x78857FC65CADB909)
---@param p0 boolean 
function N_0x78857FC65CADB909(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0BF3B3BD47D79C08)
---@param modelHash number | string 
---@param p1 number 
function SetMaxNumPortablePickupsCarriedByPlayer(modelHash, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0BF3B3BD47D79C08)
---@param modelHash number | string 
---@param p1 number 
function N_0x0BF3B3BD47D79C08(modelHash, p1) end

---```
---Requires a component_at_*_flsh to be attached to the weapon object
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBCE595371A5FBAAF)
---@param object number 
---@param toggle boolean 
function SetCreateWeaponObjectLightSource(object, toggle) end

---```
---Requires a component_at_*_flsh to be attached to the weapon object
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBCE595371A5FBAAF)
---@param object number 
---@param toggle boolean 
function N_0xBCE595371A5FBAAF(object, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF538081986E49E9D)
---@param x number 
---@param y number 
---@param z number 
---@param p3 number 
function SetForceObjectThisFrame(x, y, z, p3) end

---Overrides a flag on the object which determines if the object should be avoided by a vehicle in task: CTaskVehicleGoToPointWithAvoidanceAutomobile.
---Tested on vehicles that were created by the vehicle generators.
---[Native Documentation](https://docs.fivem.net/natives/?_0x77F33F2CCF64B3AA)
---@param object number 
---@param toggle boolean 
function SetObjectForceVehiclesToAvoid(object, toggle) end

---Overrides a flag on the object which determines if the object should be avoided by a vehicle in task: CTaskVehicleGoToPointWithAvoidanceAutomobile.
---Tested on vehicles that were created by the vehicle generators.
---[Native Documentation](https://docs.fivem.net/natives/?_0x77F33F2CCF64B3AA)
---@param object number 
---@param toggle boolean 
function N_0x77F33F2CCF64B3AA(object, toggle) end

---Overrides a flag on the object which determines if the object should be avoided by a vehicle in task: CTaskVehicleGoToPointWithAvoidanceAutomobile.
---Tested on vehicles that were created by the vehicle generators.
---[Native Documentation](https://docs.fivem.net/natives/?_0x77F33F2CCF64B3AA)
---@param object number 
---@param toggle boolean 
function SetObjectSomething(object, toggle) end

---Sets color of embedded light source.
---Only appears in am_mp_nightclub.c for the nightclub dancefloor.
---
---Not sure what p1 does, seems to only ever be '1' in scripts.
---
---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F048334B4A4E774)
---@param object number 
---@param p1 boolean 
---@param r number 
---@param g number 
---@param b number 
---@return any retval 
function SetObjectLightColor(object, p1, r, g, b) end

---```
---Maximum amount of pickup models that can be disallowed is 30.
---SET_LOCAL_PLAYER_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x88EAEC617CD26926)
---@param modelHash number | string 
---@param toggle boolean 
function SetLocalPlayerCanUsePickupsWithThisModel(modelHash, toggle) end

---```
---Maximum amount of pickup models that can be disallowed is 30.
---SET_LOCAL_PLAYER_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x88EAEC617CD26926)
---@param modelHash number | string 
---@param toggle boolean 
function N_0x88EAEC617CD26926(modelHash, toggle) end

---```
---Overrides the climbing/blocking flags of the object, used in the native scripts mostly for "prop_dock_bouy_*"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D89D607CB3DD1D2)
---@param object number 
---@param toggle boolean 
function SetObjectAllowLowLodBuoyancy(object, toggle) end

---```
---Overrides the climbing/blocking flags of the object, used in the native scripts mostly for "prop_dock_bouy_*"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D89D607CB3DD1D2)
---@param object number 
---@param toggle boolean 
function N_0x4D89D607CB3DD1D2(object, toggle) end

---```
---Overrides the climbing/blocking flags of the object, used in the native scripts mostly for "prop_dock_bouy_*"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D89D607CB3DD1D2)
---@param object number 
---@param toggle boolean 
function SetObjectCanClimbOn(object, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF6CA0330F2E737B)
---@param object number 
---@param duration number 
function SetObjectStuntPropDuration(object, duration) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF6CA0330F2E737B)
---@param object number 
---@param duration number 
function N_0xDF6CA0330F2E737B(object, duration) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8A7391690F5AFD81)
---@param object number 
---@param targettable boolean 
function SetObjectTargettable(object, targettable) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x318516E02DE3ECE2)
---@param multiplier number 
function SetPickupGenerationRangeMultiplier(multiplier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x318516E02DE3ECE2)
---@param multiplier number 
function N_0x318516E02DE3ECE2(multiplier) end

---```
---rage::phArchetypeDamp
---p9: Some phBoundGeometry margin value, limited to (0.0, 0.1) exclusive.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6DF6E90DE7DF90F)
---@param object number 
---@param mass number 
---@param gravityFactor number 
---@param linearC number 
---@param linearV number 
---@param linearV2 number 
---@param angularC number 
---@param angularV number 
---@param angularV2 number 
---@param p9 number 
---@param maxAngSpeed number 
---@param buoyancyFactor number 
function SetObjectPhysicsParams(object, mass, gravityFactor, linearC, linearV, linearV2, angularC, angularV, angularV2, p9, maxAngSpeed, buoyancyFactor) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x78015C9B4B3ECC9D)
---@param pickup pickup 
---@param duration number 
function SetPickupRegenerationTime(pickup, duration) end

---Sets the intensity of Speed Boost and Slow Down props.
---
---The corresponding values for Speed Boosts in the Creator are:\
---Weak: `15`\
---Normal: `25`\
---Strong: `35`\
---Extra Strong: `45`\
---Ultra Strong: `100`
---
---For Slow Downs:\
---Weak: `44`\
---Normal: `30`\
---Strong: `16`
---[Native Documentation](https://docs.fivem.net/natives/?_0x96EE0EBA0163DF80)
---@param object number A Speed Boost or Slow Down prop
---@param intensity number Ranges from `1`-`254`, other values are ignored. Higher values will increase the effect of Speed Boosts and decrease the effect of Slow Downs.
function SetObjectStuntPropSpeedup(object, intensity) end

---Sets the intensity of Speed Boost and Slow Down props.
---
---The corresponding values for Speed Boosts in the Creator are:\
---Weak: `15`\
---Normal: `25`\
---Strong: `35`\
---Extra Strong: `45`\
---Ultra Strong: `100`
---
---For Slow Downs:\
---Weak: `44`\
---Normal: `30`\
---Strong: `16`
---[Native Documentation](https://docs.fivem.net/natives/?_0x96EE0EBA0163DF80)
---@param object number A Speed Boost or Slow Down prop
---@param intensity number Ranges from `1`-`254`, other values are ignored. Higher values will increase the effect of Speed Boosts and decrease the effect of Slow Downs.
function N_0x96EE0EBA0163DF80(object, intensity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C1B69FAE509BA97)
---@param p0 any 
---@param p1 any 
function SetPickupUncollectable(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C1B69FAE509BA97)
---@param p0 any 
---@param p1 any 
function N_0x1C1B69FAE509BA97(p0, p1) end

---```
---enum ObjectPaintVariants  
---{  
---	Pacific = 0,  
---	Azure = 1,  
---	Nautical = 2,  
---	Continental = 3,  
---	Battleship = 4,  
---	Intrepid = 5,  
---	Uniform = 6,  
---	Classico = 7,  
---	Mediterranean = 8,  
---	Command = 9,  
---	Mariner = 10,  
---	Ruby = 11,  
---	Vintage = 12,  
---	Pristine = 13,  
---	Merchant = 14,  
---	Voyager = 15  
---};  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x971DA0055324D033)
---@param object number 
---@param textureVariation number 
function SetObjectTextureVariation(object, textureVariation) end

---```
---enum ObjectPaintVariants  
---{  
---	Pacific = 0,  
---	Azure = 1,  
---	Nautical = 2,  
---	Continental = 3,  
---	Battleship = 4,  
---	Intrepid = 5,  
---	Uniform = 6,  
---	Classico = 7,  
---	Mediterranean = 8,  
---	Command = 9,  
---	Mariner = 10,  
---	Ruby = 11,  
---	Vintage = 12,  
---	Pristine = 13,  
---	Merchant = 14,  
---	Voyager = 15  
---};  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x971DA0055324D033)
---@param object number 
---@param textureVariation number 
function N_0x971DA0055324D033(object, textureVariation) end

---```
---enum ObjectPaintVariants  
---{  
---	Pacific = 0,  
---	Azure = 1,  
---	Nautical = 2,  
---	Continental = 3,  
---	Battleship = 4,  
---	Intrepid = 5,  
---	Uniform = 6,  
---	Classico = 7,  
---	Mediterranean = 8,  
---	Command = 9,  
---	Mariner = 10,  
---	Ruby = 11,  
---	Vintage = 12,  
---	Pristine = 13,  
---	Merchant = 14,  
---	Voyager = 15  
---};  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x971DA0055324D033)
---@param object number 
---@param textureVariation number 
function SetObjectTextureVariant(object, textureVariation) end

---```
---Defines the state of a destructible object.
---Use the GET_RAYFIRE_MAP_OBJECT native to find an object's handle with its name / coords.
---State 2 == object just spawned
---State 4 == Beginning of the animation
---State 6 == Start animation
---State 9 == End of the animation
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5C29F698D404C5E1)
---@param object number 
---@param state number 
function SetStateOfRayfireMapObject(object, state) end

---```
---Defines the state of a destructible object.
---Use the GET_RAYFIRE_MAP_OBJECT native to find an object's handle with its name / coords.
---State 2 == object just spawned
---State 4 == Beginning of the animation
---State 6 == Start animation
---State 9 == End of the animation
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5C29F698D404C5E1)
---@param object number 
---@param state number 
function N_0x5C29F698D404C5E1(object, state) end

---```
---Defines the state of a destructible object.
---Use the GET_RAYFIRE_MAP_OBJECT native to find an object's handle with its name / coords.
---State 2 == object just spawned
---State 4 == Beginning of the animation
---State 6 == Start animation
---State 9 == End of the animation
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5C29F698D404C5E1)
---@param object number 
---@param state number 
function SetDesObjectState(object, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3ED2B83AB2E82799)
---@param p0 any 
---@param p1 any 
function SetPickupHiddenWhenUncollectable(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3ED2B83AB2E82799)
---@param p0 any 
---@param p1 any 
function N_0x3ED2B83AB2E82799(p0, p1) end

---```
---Hardcoded to not work in multiplayer.  
---Used to lock/unlock doors to interior areas of the game.  
---(Possible) Door Types:  
---pastebin.com/9S2m3qA4  
---Heading is either 1, 0 or -1 in the scripts. Means default closed(0) or opened either into(1) or out(-1) of the interior.  
---Locked means that the heading is locked.    
---p6 is always 0.   
---225 door types, model names and coords found in stripclub.c4:  
---pastebin.com/gywnbzsH  
---get door info: pastebin.com/i14rbekD  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF82D8F1926A02C3D)
---@param type number | string 
---@param x number 
---@param y number 
---@param z number 
---@param locked boolean 
---@param heading number 
---@param p6 boolean 
function SetStateOfClosestDoorOfType(type, x, y, z, locked, heading, p6) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x53E0DF1A2A3CF0CA)
---@param object number 
---@param p1 any 
---@param p2 boolean 
function SetTeamPickupObject(object, p1, p2) end

---```
---Returns true if the object has finished moving.  
---If false, moves the object towards the specified X, Y and Z coordinates with the specified X, Y and Z speed.  
---See also: https://gtagmodding.com/opcode-database/opcode/034E/
---Has to be looped until it returns true.   
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2FDFF4107B8C1147)
---@param object number 
---@param toX number 
---@param toY number 
---@param toZ number 
---@param speedX number 
---@param speedY number 
---@param speedZ number 
---@param collision boolean 
---@return boolean retval 
function SlideObject(object, toX, toY, toZ, speedX, speedY, speedZ, collision) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF12E33034D887F66)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param modelHash number | string 
---@param textureVariation number 
---@return boolean retval 
function SetTextureVariationOfClosestObjectOfType(x, y, z, radius, modelHash, textureVariation) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF12E33034D887F66)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param modelHash number | string 
---@param textureVariation number 
---@return boolean retval 
function N_0xF12E33034D887F66(x, y, z, radius, modelHash, textureVariation) end

---```
---Disabling/enabling a player from getting pickups. From the scripts:
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 1);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 0);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 1);
---SET_PLAYER_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x616093EC6B139DD9)
---@param player number 
---@param pickupHash number | string 
---@param toggle boolean 
function ToggleUsePickupsForPlayer(player, pickupHash, toggle) end

---```
---Disabling/enabling a player from getting pickups. From the scripts:
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 1);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 0);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 1);
---SET_PLAYER_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x616093EC6B139DD9)
---@param player number 
---@param pickupHash number | string 
---@param toggle boolean 
function N_0x616093EC6B139DD9(player, pickupHash, toggle) end

---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xABDABF4E1EDECBFA)
---@param value boolean 
function SetUnkGlobalBoolRelatedToDamage(value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB252BC036B525623)
---@param object number 
function TrackObjectVisibility(object) end

