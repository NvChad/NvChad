---@meta
---**`CFX` `server` [`0xC6F43D0E`](https://docs.fivem.net/natives/?_0xC6F43D0E)**
---
---Creates a blip for the specified coordinates. You can use `SET_BLIP_` natives to change the blip.
---
---**This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_COORD](https://docs.fivem.net/natives/?_0x5A039BB0BCA604B6).**
---
---@param x number The X coordinate to create the blip on.
---@param y number The Y coordinate.
---@param z number The Z coordinate.
---@return Blip # A blip handle.
function AddBlipForCoord(x, y, z) end

---**`CFX` `server` [`0x30822554`](https://docs.fivem.net/natives/?_0x30822554)**
---
---Create a blip that by default is red (enemy), you can use [SET_BLIP_AS_FRIENDLY](#\_0xC6F43D0E) to make it blue (friend).\
---Can be used for objects, vehicles and peds.
---Example of enemy:
---![enemy](https://i.imgur.com/fl78svv.png)
---Example of friend:
---![friend](https://i.imgur.com/Q16ho5d.png)
---
---**This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_ENTITY](https://docs.fivem.net/natives/?_0x5CDE92C702A8FCE7).**
---
---@param entity Entity The entity handle to create the blip.
---@return Blip # A blip handle.
function AddBlipForEntity(entity) end

---**`CFX` `server` [`0x4626756C`](https://docs.fivem.net/natives/?_0x4626756C)**
---
---Create a blip with a radius for the specified coordinates (it doesnt create the blip sprite, so you need to use [AddBlipCoords](#\_0xC6F43D0E))
---Example image:
---![example](https://i.imgur.com/9hQl3DB.png)
---
---**This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_RADIUS](https://docs.fivem.net/natives/?_0x46818D79B1F7499A).**
---
---@param posX number The x position of the blip (you can also send a vector3 instead of the bulk coordinates)
---@param posY number The y position of the blip (you can also send a vector3 instead of the bulk coordinates)
---@param posZ number The z position of the blip (you can also send a vector3 instead of the bulk coordinates)
---@param radius number The number that defines the radius of the blip circle
---@return Blip # The blip handle that can be manipulated with every `SetBlip` natives
function AddBlipForRadius(posX, posY, posZ, radius) end

---**`CFX` `server` [`0x70559AC7`](https://docs.fivem.net/natives/?_0x70559AC7)**
---
---Applies an Item from a PedDecorationCollection to a ped. These include tattoos and shirt decals.
---collection - PedDecorationCollection filename hash
---overlay - Item name hash
---Example:
---Entry inside "mpbeach_overlays.xml" -
---<Item>
---<uvPos x="0.500000" y="0.500000" />
---<scale x="0.600000" y="0.500000" />
---<rotation value="0.000000" />
---<nameHash>FM_Hair_Fuzz</nameHash>
---<txdHash>mp_hair_fuzz</txdHash>
---<txtHash>mp_hair_fuzz</txtHash>
---<zone>ZONE_HEAD</zone>
---<type>TYPE_TATTOO</type>
---<faction>FM</faction>
---<garment>All</garment>
---<gender>GENDER_DONTCARE</gender>
---<award />
---<awardLevel />
---</Item>
---Code:
---PED::\_0x5F5D1665E352A839(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("mpbeach_overlays"), MISC::GET_HASH_KEY("fm_hair_fuzz"))
---
---**This is the server-side RPC native equivalent of the client native [ADD_PED_DECORATION_FROM_HASHES](https://docs.fivem.net/natives/?_0x5F5D1665E352A839).**
---
---@param ped Ped
---@param collection Hash
---@param overlay Hash
function AddPedDecorationFromHashes(ped, collection, overlay) end

---**`CFX` `shared` [`0x5BA35AAF`](https://docs.fivem.net/natives/?_0x5BA35AAF)**
---
---Adds a handler for changes to a state bag.
---
---The function called expects to match the following signature:
---
---```ts
---function StateBagChangeHandler(bagName: string, key: string, value: any, reserved: number, replicated: boolean);
---```
---
---*   **bagName**: The internal bag ID for the state bag which changed. This is usually `player:Source`, `entity:NetID`
---    or `localEntity:Handle`.
---*   **key**: The changed key.
---*   **value**: The new value stored at key. The old value is still stored in the state bag at the time this callback executes.
---*   **reserved**: Currently unused.
---*   **replicated**: Whether the set is meant to be replicated.
---
---At this time, the change handler can't opt to reject changes.
---
---If bagName refers to an entity, use [GET_ENTITY_FROM_STATE_BAG_NAME](https://docs.fivem.net/natives/?_0x4BDF1868) to get the entity handle
---If bagName refers to a player, use [GET_PLAYER_FROM_STATE_BAG_NAME](https://docs.fivem.net/natives/?_0xA56135E0) to get the player handle
---
---Example code:
---```lua
---AddStateBagChangeHandler("blockTasks", nil, function(bagName, key, value)
---    local entity = GetEntityFromStateBagName(bagName)
---    -- Whoops, we don't have a valid entity!
---    if entity === 0 then return end
---    -- We don't want to freeze the entity position if the entity collision hasn't loaded yet
---    while not HasCollisionLoadedAroundEntity(entity) do
---        -- The entity went out of our scope before the collision loaded
---        if not DoesEntityExist(entity) then return end
---        Wait(250)
---    end
---    SetEntityInvincible(entity, value)
---    FreezeEntityPosition(entity, value)
---    TaskSetBlockingOfNonTemporaryEvents(entity, value)
---end)
---```
---
---@param keyFilter string The key to check for, or null for no filter.
---@param bagFilter string The bag ID to check for such as `entity:65535`, or null for no filter.
---@param handler function The handler function.
---@return number # A cookie to remove the change handler.
function AddStateBagChangeHandler(keyFilter, bagFilter, handler) end

---**`CFX` `server` [`0xC1C0855A`](https://docs.fivem.net/natives/?_0xC1C0855A)**
---
---Applies a force to the specified entity.
---**List of force types (p1)**:
---
---```
---public enum ForceType
---{
---MinForce = 0,
---MaxForceRot = 1,
---MinForce2 = 2,
---MaxForceRot2 = 3,
---ForceNoRot = 4,
---ForceRotPlusForce = 5
---}
---```
---
---Research/documentation on the gtaforums can be found [here](https://gtaforums.com/topic/885669-precisely-define-object-physics/) and [here](https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/).
---
---**This is the server-side RPC native equivalent of the client native [APPLY_FORCE_TO_ENTITY](https://docs.fivem.net/natives/?_0xC5F68BE9613E2D18).**
---
---@param entity Entity The entity you want to apply a force on
---@param forceType number See native description above for a list of commonly used values
---@param x number Force amount (X)
---@param y number Force amount (Y)
---@param z number Force amount (Z)
---@param offX number Rotation/offset force (X)
---@param offY number Rotation/offset force (Y)
---@param offZ number Rotation/offset force (Z)
---@param boneIndex number (Often 0) Entity bone index
---@param isDirectionRel boolean (Usually false) Vector defined in local (body-fixed) coordinate frame
---@param ignoreUpVec boolean (Usually true)
---@param isForceRel boolean (Usually true) When true, force gets multiplied with the objects mass and different objects will have the same acceleration
---@param p12 boolean (Usually false)
---@param p13 boolean (Usually true)
function ApplyForceToEntity(
	entity,
	forceType,
	x,
	y,
	z,
	offX,
	offY,
	offZ,
	boneIndex,
	isDirectionRel,
	ignoreUpVec,
	isForceRel,
	p12,
	p13
)
end

---**`CFX` `shared` [`0xFA29D35D`](https://docs.fivem.net/natives/?_0xFA29D35D)**
---
---Cancels the currently executing event.
---
function CancelEvent() end

---**`CFX` `server` [`0x429461C3`](https://docs.fivem.net/natives/?_0x429461C3)**
---
---Returns whether or not the specified player has enough information to start a commerce session for.
---
---@param playerSrc string The player handle
---@return boolean # True or false.
function CanPlayerStartCommerceSession(playerSrc) end

---**`CFX` `server` [`0x2D23D743`](https://docs.fivem.net/natives/?_0x2D23D743)**
---
---List of component/props ID
---gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
---
---**This is the server-side RPC native equivalent of the client native [CLEAR_PED_PROP](https://docs.fivem.net/natives/?_0x0943E5B8E078E76E).**
---
---@param ped Ped
---@param propId number
function ClearPedProp(ped, propId) end

---**`CFX` `server` [`0xA635F451`](https://docs.fivem.net/natives/?_0xA635F451)**
---
---**This is the server-side RPC native equivalent of the client native [CLEAR_PED_SECONDARY_TASK](https://docs.fivem.net/natives/?_0x176CECF6F920D707).**
---
---@param ped Ped
function ClearPedSecondaryTask(ped) end

---**`CFX` `server` [`0xDE3316AB`](https://docs.fivem.net/natives/?_0xDE3316AB)**
---
---Clear a ped's tasks. Stop animations and other tasks created by scripts.
---
---**This is the server-side RPC native equivalent of the client native [CLEAR_PED_TASKS](https://docs.fivem.net/natives/?_0xE1EF3C1216AFF2CD).**
---
---@param ped Ped Ped id. Use PlayerPedId() for your own character.
function ClearPedTasks(ped) end

---**`CFX` `server` [`0xBC045625`](https://docs.fivem.net/natives/?_0xBC045625)**
---
---Immediately stops the pedestrian from whatever it's doing. The difference between this and [CLEAR_PED_TASKS](#\_0xE1EF3C1216AFF2CD) is that this one teleports the ped but does not change the position of the ped.
---
---**This is the server-side RPC native equivalent of the client native [CLEAR_PED_TASKS_IMMEDIATELY](https://docs.fivem.net/natives/?_0xAAA34F8A7CB32098).**
---
---@param ped Ped Ped id.
function ClearPedTasksImmediately(ped) end

---**`CFX` `server` [`0x54EA5BCC`](https://docs.fivem.net/natives/?_0x54EA5BCC)**
---
---This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);
---PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.
---
---**This is the server-side RPC native equivalent of the client native [CLEAR_PLAYER_WANTED_LEVEL](https://docs.fivem.net/natives/?_0xB302540597885499).**
---
---@param player Player
function ClearPlayerWantedLevel(player) end

---**`CFX` `server` [`0x2F7AA05C`](https://docs.fivem.net/natives/?_0x2F7AA05C)**
---
---Creates an object (prop) with the specified model at the specified position, offset on the Z axis by the radius of the object's model.
---This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
---
---**This is the server-side RPC native equivalent of the client native [CREATE_OBJECT](https://docs.fivem.net/natives/?_0x509D5878EB39E842).**
---
---@param modelHash Hash The model to spawn.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component, 'ground level'.
---@param isNetwork boolean Whether to create a network object for the object. If false, the object exists only locally.
---@param netMissionEntity boolean Whether to register the object as pinned to the script host in the R\* network model.
---@param doorFlag boolean False to create a door archetype (archetype flag bit 26 set) as a door. Required to be set to true to create door models in network mode.
---@return Entity # A script handle (fwScriptGuid index) for the object, or `0` if the object failed to be created.
function CreateObject(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag) end

---**`CFX` `server` [`0x58040420`](https://docs.fivem.net/natives/?_0x58040420)**
---
---Creates an object (prop) with the specified model centered at the specified position.
---This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
---
---**This is the server-side RPC native equivalent of the client native [CREATE_OBJECT_NO_OFFSET](https://docs.fivem.net/natives/?_0x9A294B2138ABB884).**
---
---@param modelHash Hash The model to spawn.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component.
---@param isNetwork boolean Whether to create a network object for the object. If false, the object exists only locally.
---@param netMissionEntity boolean Whether to register the object as pinned to the script host in the R\* network model.
---@param doorFlag boolean False to create a door archetype (archetype flag bit 26 set) as a door. Required to be set to true to create door models in network mode.
---@return Entity # A script handle (fwScriptGuid index) for the object, or `0` if the object failed to be created.
function CreateObjectNoOffset(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag) end

---**`CFX` `server` [`0x389EF71`](https://docs.fivem.net/natives/?_0x389EF71)**
---
---Creates a ped (biped character, pedestrian, actor) with the specified model at the specified position and heading.
---This ped will initially be owned by the creating script as a mission entity, and the model should be loaded already
---(e.g. using REQUEST_MODEL).
---
---**This is the server-side RPC native equivalent of the client native [CREATE_PED](https://docs.fivem.net/natives/?_0xD49F9B0955C367DE).**
---
---@param pedType number Unused. Peds get set to CIVMALE/CIVFEMALE/etc. no matter the value specified.
---@param modelHash Hash The model of ped to spawn.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component.
---@param heading number Heading to face towards, in degrees.
---@param isNetwork boolean Whether to create a network object for the ped. If false, the ped exists only locally.
---@param bScriptHostPed boolean Whether to register the ped as pinned to the script host in the R\* network model.
---@return Entity # A script handle (fwScriptGuid index) for the ped, or `0` if the ped failed to be created.
function CreatePed(pedType, modelHash, x, y, z, heading, isNetwork, bScriptHostPed) end

---**`CFX` `server` [`0x3000F092`](https://docs.fivem.net/natives/?_0x3000F092)**
---
---**This is the server-side RPC native equivalent of the client native [CREATE_PED_INSIDE_VEHICLE](https://docs.fivem.net/natives/?_0x7DD959874C1FD534).**
---
---@param vehicle Vehicle
---@param pedType number
---@param modelHash Hash
---@param seat number
---@param isNetwork boolean
---@param bScriptHostPed boolean
---@return Entity
function CreatePedInsideVehicle(vehicle, pedType, modelHash, seat, isNetwork, bScriptHostPed) end

---**`CFX` `server` [`0xDD75460A`](https://docs.fivem.net/natives/?_0xDD75460A)**
---
---Creates a vehicle with the specified model at the specified position. This vehicle will initially be owned by the creating
---script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
---
---```
---NativeDB Added Parameter 8: BOOL p7
---```
---
---**This is the server-side RPC native equivalent of the client native [CREATE_VEHICLE](https://docs.fivem.net/natives/?_0xAF35D0D2583051B0).**
---
---@param modelHash Hash The model of vehicle to spawn.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component.
---@param heading number Heading to face towards, in degrees.
---@param isNetwork boolean Whether to create a network object for the vehicle. If false, the vehicle exists only locally.
---@param netMissionEntity boolean Whether to register the vehicle as pinned to the script host in the R\* network model.
---@return Entity # A script handle (fwScriptGuid index) for the vehicle, or `0` if the vehicle failed to be created.
function CreateVehicle(modelHash, x, y, z, heading, isNetwork, netMissionEntity) end

---**`CFX` `server` [`0x6AE51D4B`](https://docs.fivem.net/natives/?_0x6AE51D4B)**
---
---Equivalent to CREATE_VEHICLE, but it uses 'server setter' logic (like the former CREATE_AUTOMOBILE) as a workaround for
---reliability concerns regarding entity creation RPC.
---
---Unlike CREATE_AUTOMOBILE, this supports other vehicle types as well.
---
---Example code:
---```lua
---local heli = CreateVehicleServerSetter(`seasparrow`, 'heli', GetEntityCoords(GetPlayerPed(GetPlayers()[1])) + vector3(0, 0, 15), 0.0)
---print(GetEntityCoords(heli)) -- should return correct coordinates
---```
---
---@param modelHash Hash The model of vehicle to spawn.
---@param type string The appropriate vehicle type for the model info. Can be one of `automobile`, `bike`, `boat`, `heli`, `plane`, `submarine`, `trailer`, and (potentially), `train`. This should be the same type as the `type` field in `vehicles.meta`.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component.
---@param heading number Heading to face towards, in degrees.
---@return Vehicle # A script handle for the vehicle.
function CreateVehicleServerSetter(modelHash, type, x, y, z, heading) end

---**`CFX` `server` [`0xFAA3D236`](https://docs.fivem.net/natives/?_0xFAA3D236)**
---
---Deletes the specified entity.
---
---@param entity Entity The entity to delete.
function DeleteEntity(entity) end

---**`CFX` `shared` [`0x1E86F206`](https://docs.fivem.net/natives/?_0x1E86F206)**
---
---@param referenceIdentity string
function DeleteFunctionReference(referenceIdentity) end

---**`CFX` `shared` [`0x7389B5DF`](https://docs.fivem.net/natives/?_0x7389B5DF)**
---
---Example code:
---```lua
---DeleteResourceKvp('liberty_city')
---```
---
---@param key string The key to delete
function DeleteResourceKvp(key) end

---**`CFX` `server` [`0x4152C90`](https://docs.fivem.net/natives/?_0x4152C90)**
---
---Nonsynchronous [DELETE_RESOURCE_KVP](#\_0x7389B5DF) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
---
---@param key string The key to delete
function DeleteResourceKvpNoSync(key) end

---**`CFX` `server` [`0x3AC90869`](https://docs.fivem.net/natives/?_0x3AC90869)**
---
---@param entity Object
---@return boolean
function DoesEntityExist(entity) end

---**`CFX` `server` [`0x167ABA27`](https://docs.fivem.net/natives/?_0x167ABA27)**
---
---Requests whether or not the player owns the specified SKU.
---
---@param playerSrc string The player handle
---@param skuId number The ID of the SKU.
---@return boolean # A boolean.
function DoesPlayerOwnSku(playerSrc, skuId) end

---**`CFX` `server` [`0xDEF0480B`](https://docs.fivem.net/natives/?_0xDEF0480B)**
---
---Requests whether or not the player owns the specified package.
---
---@param playerSrc string The player handle
---@param skuId number The package ID on Tebex.
---@return boolean # A boolean.
function DoesPlayerOwnSkuExt(playerSrc, skuId) end

---**`CFX` `server` [`0xBA0613E1`](https://docs.fivem.net/natives/?_0xBA0613E1)**
---
---@param playerSrc string
---@param reason string
function DropPlayer(playerSrc, reason) end

---**`CFX` `shared` [`0xF4E2079D`](https://docs.fivem.net/natives/?_0xF4E2079D)**
---
---@param referenceIdentity string
---@return string
function DuplicateFunctionReference(referenceIdentity) end

---**`CFX` `server` [`0xF97B1C93`](https://docs.fivem.net/natives/?_0xF97B1C93)**
---
---@param enabled boolean
function EnableEnhancedHostSupport(enabled) end

---**`CFX` `shared` [`0xB3210203`](https://docs.fivem.net/natives/?_0xB3210203)**
---
---@param handle number The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
function EndFindKvp(handle) end

---**`CFX` `shared` [`0x3BB78F05`](https://docs.fivem.net/natives/?_0x3BB78F05)**
---
---Internal function for ensuring an entity has a state bag.
---
---@param entity Entity
function EnsureEntityStateBag(entity) end

---**`CFX` `shared` [`0x561C060B`](https://docs.fivem.net/natives/?_0x561C060B)**
---
---@param commandString string
function ExecuteCommand(commandString) end

---**`CFX` `shared` [`0xBD7BEBC5`](https://docs.fivem.net/natives/?_0xBD7BEBC5)**
---
---@param handle number The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
---@return string # None.
function FindKvp(handle) end

---**`CFX` `server` [`0x13B6855D`](https://docs.fivem.net/natives/?_0x13B6855D)**
---
---@param private_ boolean
function FlagServerAsPrivate(private_) end

---**`CFX` `server` [`0xE27C97A0`](https://docs.fivem.net/natives/?_0xE27C97A0)**
---
---Nonsynchronous operations will not wait for a disk/filesystem flush before returning from a write or delete call. They will be much faster than their synchronous counterparts (e.g., bulk operations), however, a system crash may lose the data to some recent operations.
---
---This native ensures all `_NO_SYNC` operations are synchronized with the disk/filesystem.
---
---Example code:
---```lua
----- Bulk write many <key, value> pairs to the resource KVP.
---local key = "bug_%d"
---local value = "unintended_feature_%d"
---for i=1,10000 do
---	SetResourceKvpNoSync(key:format(i), value:format(i))
---end
---
----- Ensure all data is synchronized to the filesystem
---FlushResourceKvp()
---```
---
function FlushResourceKvp() end

---**`CFX` `server` [`0x65C16D57`](https://docs.fivem.net/natives/?_0x65C16D57)**
---
---Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using SET_ENTITY_COORDS.
---
---**This is the server-side RPC native equivalent of the client native [FREEZE_ENTITY_POSITION](https://docs.fivem.net/natives/?_0x428CA6DBD1094446).**
---
---@param entity Entity The entity to freeze/unfreeze.
---@param toggle boolean Freeze or unfreeze entity.
function FreezeEntityPosition(entity, toggle) end

---**`CFX` `server` [`0x62FC38D0`](https://docs.fivem.net/natives/?_0x62FC38D0)**
---
---@param playerSrc string The player handle
---@return number
function GetAirDragMultiplierForPlayersVehicle(playerSrc) end

---**`CFX` `server` [`0x6886C3FE`](https://docs.fivem.net/natives/?_0x6886C3FE)**
---
---Returns all object handles known to the server.
---The data returned adheres to the following layout:
---
---```
---[127, 42, 13, 37]
---```
---
---@return table # An object containing a list of object handles.
function GetAllObjects() end

---**`CFX` `server` [`0xB8584FEF`](https://docs.fivem.net/natives/?_0xB8584FEF)**
---
---Returns all peds handles known to the server.
---The data returned adheres to the following layout:
---
---```
---[127, 42, 13, 37]
---```
---
---@return table # An object containing a list of peds handles.
function GetAllPeds() end

---**`CFX` `server` [`0x332169F5`](https://docs.fivem.net/natives/?_0x332169F5)**
---
---Returns all vehicle handles known to the server.
---The data returned adheres to the following layout:
---
---```
---[127, 42, 13, 37]
---```
---
---@return table # An object containing a list of vehicle handles.
function GetAllVehicles() end

---**`CFX` `server` [`0xE57429FA`](https://docs.fivem.net/natives/?_0xE57429FA)**
---
---Returns the current console output buffer.
---
---@return string # The most recent game console output, as a string.
function GetConsoleBuffer() end

---**`CFX` `shared` [`0x6CCD2564`](https://docs.fivem.net/natives/?_0x6CCD2564)**
---
---Can be used to get a console variable of type `char*`, for example a string.
---
---Example code:
---```lua
---if GetConvar('voice_useNativeAudio', 'false') == 'true' then
---    Citizen.Trace('Native Audio is enabled.')
---end
---```
---
---@param varName string The console variable to look up.
---@param default_ string The default value to set if none is found.
---@return string # Returns the convar value if it can be found, otherwise it returns the assigned `default`.
function GetConvar(varName, default_) end

---**`CFX` `shared` [`0x935C0AB2`](https://docs.fivem.net/natives/?_0x935C0AB2)**
---
---Can be used to get a console variable casted back to `int` (an integer value).
---
---Example code:
---```lua
---if GetConvarInt('remainingRounds', 0) < 900 then
---    Citizen.Trace("Less than 900 rounds remaining...")
---end
---```
---
---@param varName string The console variable to look up.
---@param default_ number The default value to set if none is found (variable not set using [SET_CONVAR](#\_0x341B16D2), or not accessible).
---@return number # Returns the convar value if it can be found, otherwise it returns the assigned `default`.
function GetConvarInt(varName, default_) end

---**`CFX` `shared` [`0xE5E9EBBB`](https://docs.fivem.net/natives/?_0xE5E9EBBB)**
---
---Returns the name of the currently executing resource.
---
---@return string # The name of the resource.
function GetCurrentResourceName() end

---**`CFX` `server` [`0xFE1589F9`](https://docs.fivem.net/natives/?_0xFE1589F9)**
---
---Gets the entity that this entity is attached to.
---
---@param entity Entity The entity to check.
---@return Entity # The attached entity handle. 0 returned if the entity is not attached.
function GetEntityAttachedTo(entity) end

---**`CFX` `server` [`0x1647F1CB`](https://docs.fivem.net/natives/?_0x1647F1CB)**
---
---Gets the current coordinates for a specified entity. This native is used server side when using OneSync.
---
---See [GET_ENTITY_COORDS](#\_0x3FEF770D40960D5A) for client side.
---
---Example code:
---```lua
---local function ShowCoordinates()
---    local player = source
---    local ped = GetPlayerPed(player)
---    local playerCoords = GetEntityCoords(ped)
---
---    print(playerCoords) -- vector3(...)
---end
---
---RegisterNetEvent("myCoordinates")
---AddEventHandler("myCoordinates", ShowCoordinates)
---```
---
---@param entity Entity The entity to get the coordinates from.
---@return vector3 # The current entity coordinates.
function GetEntityCoords(entity) end

---**`CFX` `shared` [`0x4BDF1867`](https://docs.fivem.net/natives/?_0x4BDF1867)**
---
---Returns the entity handle for the specified state bag name. For use with [ADD_STATE_BAG_CHANGE_HANDLER](https://docs.fivem.net/natives/?_0x5BA35AAF).
---
---Example code:
---```lua
---AddStateBagChangeHandler("blockTasks", nil, function(bagName, key, value)
---    local entity = GetEntityFromStateBagName(bagName)
---    -- Whoops, we don't have a valid entity!
---    if entity === 0 then return end
---    -- We don't want to freeze the entity position if the entity collision hasn't loaded yet
---    while not HasCollisionLoadedAroundEntity(entity) do
---        -- The entity went out of our scope before the collision loaded
---        if not DoesEntityExist(entity) then return end
---        Wait(250)
---    end
---    SetEntityInvincible(entity, value)
---    FreezeEntityPosition(entity, value)
---    TaskSetBlockingOfNonTemporaryEvents(entity, value)
---end)
---```
---
---@param bagName string An internal state bag ID from the argument to a state bag change handler.
---@return Entity # The entity handle or 0 if the state bag name did not refer to an entity, or the entity does not exist.
function GetEntityFromStateBagName(bagName) end

---**`CFX` `server` [`0x972CC383`](https://docs.fivem.net/natives/?_0x972CC383)**
---
---@param entity Entity
---@return number
function GetEntityHeading(entity) end

---**`CFX` `server` [`0x8E3222B7`](https://docs.fivem.net/natives/?_0x8E3222B7)**
---
---Currently it only works with peds.
---
---@param entity Entity
---@return number
function GetEntityHealth(entity) end

---**`CFX` `server` [`0xC7AE6AA1`](https://docs.fivem.net/natives/?_0xC7AE6AA1)**
---
---Currently it only works with peds.
---
---@param entity Entity
---@return number
function GetEntityMaxHealth(entity) end

---**`CFX` `server` [`0xDAFCB3EC`](https://docs.fivem.net/natives/?_0xDAFCB3EC)**
---
---@param entity Entity
---@return Hash
function GetEntityModel(entity) end

---**`CFX` `server` [`0xFC30DDFF`](https://docs.fivem.net/natives/?_0xFC30DDFF)**
---
---This native gets an entity's population type.
---
---@param entity Entity the entity to obtain the population type from
---@return number # Returns the population type ID. Details can be found at FiveM documentation.
function GetEntityPopulationType(entity) end

---**`CFX` `server` [`0x8FF45B04`](https://docs.fivem.net/natives/?_0x8FF45B04)**
---
---@param entity Entity
---@return vector3
function GetEntityRotation(entity) end

---**`CFX` `server` [`0x9BF8A73F`](https://docs.fivem.net/natives/?_0x9BF8A73F)**
---
---@param entity Entity
---@return vector3
function GetEntityRotationVelocity(entity) end

---**`CFX` `server` [`0xED4B0486`](https://docs.fivem.net/natives/?_0xED4B0486)**
---
---Gets the routing bucket for the specified entity.
---
---Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
---
---@param entity Entity The entity to get the routing bucket for.
---@return number # The routing bucket ID.
function GetEntityRoutingBucket(entity) end

---**`CFX` `server` [`0xB7F70784`](https://docs.fivem.net/natives/?_0xB7F70784)**
---
---@param entity Entity
---@return string
function GetEntityScript(entity) end

---**`CFX` `server` [`0x9E1E4798`](https://docs.fivem.net/natives/?_0x9E1E4798)**
---
---Gets the current speed of the entity in meters per second.
---
---```
---To convert to MPH: speed * 2.236936
---To convert to KPH: speed * 3.6
---```
---
---@param entity Entity The entity to get the speed of
---@return number # The speed of the entity in meters per second
function GetEntitySpeed(entity) end

---**`CFX` `server` [`0xB1BD08D`](https://docs.fivem.net/natives/?_0xB1BD08D)**
---
---Gets the entity type (as an integer), which can be one of the following defined down below:
---
---**The following entities will return type `2`:**
---
---*   Automobile
---*   Bike
---*   Boat
---*   Heli
---*   Plane
---*   Submarine
---*   Trailer
---*   Train
---*   DraftVeh (Red Dead Redemption 2)
---
---**The following entities will return type `1`:**
---
---*   Ped
---*   Player
---*   Animal (Red Dead Redemption 2)
---*   Horse (Red Dead Redemption 2)
---
---**The following entities will return type `3`:**
---
---*   Object
---*   Door
---*   Pickup
---
---Otherwise, a value of `0` will be returned.
---
---@param entity Entity The entity to get the type of.
---@return number # The entity type returned as an integer value.
function GetEntityType(entity) end

---**`CFX` `server` [`0xC14C9B6B`](https://docs.fivem.net/natives/?_0xC14C9B6B)**
---
---@param entity Entity
---@return vector3
function GetEntityVelocity(entity) end

---**`CFX` `shared` [`0x804B9F7B`](https://docs.fivem.net/natives/?_0x804B9F7B)**
---
---Returns the internal build number of the current game being executed.
---
---Possible values:
---
---*   FiveM
---    *   1604
---    *   2060
---    *   2189
---    *   2372
---    *   2545
---    *   2612
---    *   2699
---    *   2802
---*   RedM
---    *   1311
---    *   1355
---    *   1436
---    *   1491
---*   LibertyM
---    *   43
---*   FXServer
---    *   0
---
---@return number # The build number, or **0** if no build number is known.
function GetGameBuildNumber() end

---**`CFX` `shared` [`0xE8EAA18B`](https://docs.fivem.net/natives/?_0xE8EAA18B)**
---
---Returns the current game being executed.
---
---Possible values:
---
---| Return value | Meaning                        |
---| ------------ | ------------------------------ |
---| `fxserver`   | Server-side code ('Duplicity') |
---| `fivem`      | FiveM for GTA V                |
---| `libertym`   | LibertyM for GTA IV            |
---| `redm`       | RedM for Red Dead Redemption 2 |
---
---@return string # The game the script environment is running in.
function GetGameName() end

---**`CFX` `server` [`0xA4EA0691`](https://docs.fivem.net/natives/?_0xA4EA0691)**
---
---Gets the current game timer in milliseconds.
---
---@return number # The game time.
function GetGameTimer() end

---**`CFX` `server` [`0x98EFF6F1`](https://docs.fivem.net/natives/?_0x98EFF6F1)**
---
---This native converts the passed string to a hash.
---
---@param model string
---@return Hash
function GetHashKey(model) end

---**`CFX` `server` [`0xF01E2AAB`](https://docs.fivem.net/natives/?_0xF01E2AAB)**
---
---@param vehicle Vehicle The target vehicle.
---@return number # See the client-side [GET_HELI_MAIN_ROTOR_HEALTH](https://docs.fivem.net/natives/?\_0xE4CB7541F413D2C5) for the return value.
function GetHeliMainRotorHealth(vehicle) end

---**`CFX` `server` [`0xA41BC13D`](https://docs.fivem.net/natives/?_0xA41BC13D)**
---
---@param vehicle Vehicle The target vehicle.
---@return number # See the client-side [GET_HELI_TAIL_ROTOR_HEALTH](https://docs.fivem.net/natives/?\_0xAE8CE82A4219AC8C) for the return value.
function GetHeliTailRotorHealth(vehicle) end

---**`CFX` `server` [`0x5F70F5A3`](https://docs.fivem.net/natives/?_0x5F70F5A3)**
---
---@return string
function GetHostId() end

---**`CFX` `shared` [`0x9F1C4383`](https://docs.fivem.net/natives/?_0x9F1C4383)**
---
---@return number
function GetInstanceId() end

---**`CFX` `shared` [`0x4D52FE5B`](https://docs.fivem.net/natives/?_0x4D52FE5B)**
---
---@return string
function GetInvokingResource() end

---**`CFX` `server` [`0x7DC6D022`](https://docs.fivem.net/natives/?_0x7DC6D022)**
---
---@param vehicle Vehicle
---@return boolean
function GetIsVehicleEngineRunning(vehicle) end

---**`CFX` `server` [`0xD7EC8760`](https://docs.fivem.net/natives/?_0xD7EC8760)**
---
---@param vehicle Vehicle
---@return boolean
function GetIsVehiclePrimaryColourCustom(vehicle) end

---**`CFX` `server` [`0x288AD228`](https://docs.fivem.net/natives/?_0x288AD228)**
---
---@param vehicle Vehicle
---@return boolean
function GetIsVehicleSecondaryColourCustom(vehicle) end

---**`CFX` `server` [`0xA6F02670`](https://docs.fivem.net/natives/?_0xA6F02670)**
---
---See the client-side [GET_LANDING_GEAR_STATE](#\_0x9B0F3DCA3DB0F4CD) native for a description of landing gear states.
---
---@param vehicle Vehicle The vehicle to check.
---@return number # The current state of the vehicles landing gear.
function GetLandingGearState(vehicle) end

---**`CFX` `server` [`0xF7C6792D`](https://docs.fivem.net/natives/?_0xF7C6792D)**
---
---@param vehicle Vehicle The target vehicle.
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return Entity # The last ped in the specified seat of the passed vehicle. Returns 0 if the specified seat was never occupied or the last ped does not exist anymore.
function GetLastPedInVehicleSeat(vehicle, seatIndex) end

---**`CFX` `server` [`0xFF7F66AB`](https://docs.fivem.net/natives/?_0xFF7F66AB)**
---
---@param playerSrc string
---@return number
function GetNumPlayerIdentifiers(playerSrc) end

---**`CFX` `server` [`0x63D13184`](https://docs.fivem.net/natives/?_0x63D13184)**
---
---@return number
function GetNumPlayerIndices() end

---**`CFX` `server` [`0x619E4A3D`](https://docs.fivem.net/natives/?_0x619E4A3D)**
---
---@param playerSrc string
---@return number
function GetNumPlayerTokens(playerSrc) end

---**`CFX` `shared` [`0x863F27B`](https://docs.fivem.net/natives/?_0x863F27B)**
---
---@return number
function GetNumResources() end

---**`CFX` `shared` [`0x776E864`](https://docs.fivem.net/natives/?_0x776E864)**
---
---Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
---See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
---
---@param resourceName string The resource name.
---@param metadataKey string The key to look up in the resource manifest.
---@return number
function GetNumResourceMetadata(resourceName, metadataKey) end

---**`CFX` `server` [`0x23473EA4`](https://docs.fivem.net/natives/?_0x23473EA4)**
---
---@param password string
---@return string
function GetPasswordHash(password) end

---**`CFX` `server` [`0x2CE311A7`](https://docs.fivem.net/natives/?_0x2CE311A7)**
---
---@param ped Ped
---@return number
function GetPedArmour(ped) end

---**`CFX` `server` [`0x63458C27`](https://docs.fivem.net/natives/?_0x63458C27)**
---
---@param ped Ped
---@return Hash
function GetPedCauseOfDeath(ped) end

---**`CFX` `server` [`0xC182F76E`](https://docs.fivem.net/natives/?_0xC182F76E)**
---
---@param ped Ped The target ped
---@return number # Returns ped's desired heading.
function GetPedDesiredHeading(ped) end

---**`CFX` `server` [`0x388FDE9A`](https://docs.fivem.net/natives/?_0x388FDE9A)**
---
---@param vehicle Vehicle The target vehicle.
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return Entity # The ped in the specified seat of the passed vehicle. Returns 0 if the specified seat is not occupied.
function GetPedInVehicleSeat(vehicle, seatIndex) end

---**`CFX` `server` [`0xA45B6C8D`](https://docs.fivem.net/natives/?_0xA45B6C8D)**
---
---@param ped Ped
---@return number
function GetPedMaxHealth(ped) end

---**`CFX` `server` [`0x84FE084`](https://docs.fivem.net/natives/?_0x84FE084)**
---
---Gets the script task command currently assigned to the ped.
---
---@param ped Ped The target ped.
---@return Hash # The script task command currently assigned to the ped. A value of 0x811E343C denotes no script task is assigned.
function GetPedScriptTaskCommand(ped) end

---**`CFX` `server` [`0x44B0E5E2`](https://docs.fivem.net/natives/?_0x44B0E5E2)**
---
---Gets the stage of the peds scripted task.
---
---@param ped Ped The target ped.
---@return number # The stage of the ped's scripted task. A value of 3 denotes no script task is assigned.
function GetPedScriptTaskStage(ped) end

---**`CFX` `server` [`0x535DB43F`](https://docs.fivem.net/natives/?_0x535DB43F)**
---
---Get the last entity that damaged the ped. This native is used server side when using OneSync.
---
---@param ped Ped The target ped
---@return Entity # The entity id. Returns 0 if the ped has not been damaged recently.
function GetPedSourceOfDamage(ped) end

---**`CFX` `server` [`0x84ADF9EB`](https://docs.fivem.net/natives/?_0x84ADF9EB)**
---
---Get the entity that killed the ped. This native is used server side when using OneSync.
---
---@param ped Ped The target ped
---@return Entity # The entity id. Returns 0 if the ped has no killer.
function GetPedSourceOfDeath(ped) end

---**`CFX` `server` [`0x7F4563D3`](https://docs.fivem.net/natives/?_0x7F4563D3)**
---
---Gets the type of a ped's specific task given an index of the CPedTaskSpecificDataNode nodes.
---A ped will typically have a task at index 0, if a ped has multiple tasks at once they will be in the order 0, 1, 2, etc.
---
---@param ped Ped The target ped.
---@param index number A zero-based index with a maximum value of 7.
---@return number # The type of the specific task.<br>1604: A value of 530 denotes no script task is assigned or an invalid input was given.<br>2060+: A value of 531 denotes no script task is assigned or an invalid input was given.
function GetPedSpecificTaskType(ped, index) end

---**`CFX` `server` [`0x433C765D`](https://docs.fivem.net/natives/?_0x433C765D)**
---
---Gets the current camera rotation for a specified player. This native is used server side when using OneSync.
---
---@param playerSrc string The player handle.
---@return vector3 # The player's camera rotation. Values are in radians.
function GetPlayerCameraRotation(playerSrc) end

---**`CFX` `server` [`0xFEE404F9`](https://docs.fivem.net/natives/?_0xFEE404F9)**
---
---@param playerSrc string
---@return string
function GetPlayerEndpoint(playerSrc) end

---**`CFX` `server` [`0x98D244`](https://docs.fivem.net/natives/?_0x98D244)**
---
---Gets the current fake wanted level for a specified player. This native is used server side when using OneSync.
---
---@param playerSrc string The target player
---@return number # The fake wanted level
function GetPlayerFakeWantedLevel(playerSrc) end

---**`CFX` `server` [`0xC8A9CE08`](https://docs.fivem.net/natives/?_0xC8A9CE08)**
---
---@param index number
---@return string
function GetPlayerFromIndex(index) end

---**`CFX` `shared` [`0xA56135E0`](https://docs.fivem.net/natives/?_0xA56135E0)**
---
---On the server this will return the players source, on the client it will return the player handle.
---
---Example code:
---```lua
---AddStateBagChangeHandler("isDead", nil, function(bagName, key, value)
---    local ply = GetPlayerFromStateBagName(bagName)
---    -- The player doesn't exist!
---    if ply == 0 then return end
---    print("Player: " .. GetPlayerName(ply) .. value and 'died!' or 'is alive!')
---end)
---```
---
---@param bagName string An internal state bag ID from the argument to a state bag change handler.
---@return number # The player handle or 0 if the state bag name did not refer to a player, or the player does not exist.
function GetPlayerFromStateBagName(bagName) end

---**`CFX` `server` [`0xE52D9680`](https://docs.fivem.net/natives/?_0xE52D9680)**
---
---@param playerSrc string
---@return string
function GetPlayerGuid(playerSrc) end

---**`CFX` `server` [`0x7302DBCF`](https://docs.fivem.net/natives/?_0x7302DBCF)**
---
---@param playerSrc string
---@param identifier number
---@return string
function GetPlayerIdentifier(playerSrc, identifier) end

---**`CFX` `server` [`0xA61C8FC6`](https://docs.fivem.net/natives/?_0xA61C8FC6)**
---
---Get an identifier from a player by the type of the identifier.
---
---Example code:
---```lua
---local playerLicenses = {}
---
---AddEventHandler('playerJoining', function()
---    playerLicenses[source] = GetPlayerIdentifierByType(source, 'license')
---end)
---```
---
---@param playerSrc string The player to get the identifier for
---@param identifierType string The string to match in an identifier, this can be `"license"` for example.
---@return string # The identifier that matches the string provided
function GetPlayerIdentifierByType(playerSrc, identifierType) end

---**`CFX` `server` [`0x680C90EE`](https://docs.fivem.net/natives/?_0x680C90EE)**
---
---@param playerSrc string The player handle
---@return boolean # A boolean to tell if the player is invincible.
function GetPlayerInvincible(playerSrc) end

---**`CFX` `server` [`0x427E8E6A`](https://docs.fivem.net/natives/?_0x427E8E6A)**
---
---@param playerSrc string
---@return number
function GetPlayerLastMsg(playerSrc) end

---**`CFX` `server` [`0x2A50657`](https://docs.fivem.net/natives/?_0x2A50657)**
---
---@param playerSrc string The player handle
---@return number
function GetPlayerMaxArmour(playerSrc) end

---**`CFX` `server` [`0x8154E470`](https://docs.fivem.net/natives/?_0x8154E470)**
---
---@param playerSrc string The player handle
---@return number
function GetPlayerMaxHealth(playerSrc) end

---**`CFX` `shared` [`0x8689A825`](https://docs.fivem.net/natives/?_0x8689A825)**
---
---A getter for [SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER](#\_0x4A3DC7ECCC321032).
---
---@param playerId Player The player index.
---@return number # Returns player melee weapon damage modifier value.
function GetPlayerMeleeWeaponDamageModifier(playerId) end

---**`CFX` `server` [`0x406B4B20`](https://docs.fivem.net/natives/?_0x406B4B20)**
---
---@param playerSrc string
---@return string
function GetPlayerName(playerSrc) end

---**`CFX` `server` [`0x6E31E993`](https://docs.fivem.net/natives/?_0x6E31E993)**
---
---@param playerSrc string
---@return Entity
function GetPlayerPed(playerSrc) end

---**`CFX` `server` [`0xFF1290D4`](https://docs.fivem.net/natives/?_0xFF1290D4)**
---
---@param playerSrc string
---@return number
function GetPlayerPing(playerSrc) end

---**`CFX` `server` [`0x52441C34`](https://docs.fivem.net/natives/?_0x52441C34)**
---
---Gets the routing bucket for the specified player.
---
---Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
---
---@param playerSrc string The player to get the routing bucket for.
---@return number # The routing bucket ID.
function GetPlayerRoutingBucket(playerSrc) end

---**`CFX` `server` [`0x9873E404`](https://docs.fivem.net/natives/?_0x9873E404)**
---
---@param playerSrc string The player handle
---@return number
function GetPlayerTeam(playerSrc) end

---**`CFX` `server` [`0x7ADE63E1`](https://docs.fivem.net/natives/?_0x7ADE63E1)**
---
---```
---Gets the amount of time player has spent evading the cops.
---Counter starts and increments only when cops are chasing the player.
---If the player is evading, the timer will pause.
---```
---
---@param playerSrc string The target player
---@param lastPursuit boolean False = CurrentPursuit, True = LastPursuit
---@return number # Returns -1, if the player is not wanted or wasn't in pursuit before, depending on the lastPursuit parameter<br>Returns 0, if lastPursuit == False and the player has a wanted level, but the pursuit has not started yet<br>Otherwise, will return the milliseconds of the pursuit.
function GetPlayerTimeInPursuit(playerSrc, lastPursuit) end

---**`CFX` `server` [`0x54C06897`](https://docs.fivem.net/natives/?_0x54C06897)**
---
---Gets a player's token. Tokens can be used to enhance banning logic, however are specific to a server.
---
---@param playerSrc string A player.
---@param index number Index between 0 and GET_NUM_PLAYER_TOKENS.
---@return string # A token value.
function GetPlayerToken(playerSrc, index) end

---**`CFX` `server` [`0x821F2D2C`](https://docs.fivem.net/natives/?_0x821F2D2C)**
---
---Gets the current known coordinates for the specified player from cops perspective. This native is used server side when using OneSync.
---
---@param playerSrc string The target player
---@return vector3 # The player's position known by police. Vector zero if the player has no wanted level.
function GetPlayerWantedCentrePosition(playerSrc) end

---**`CFX` `server` [`0xBDCDD163`](https://docs.fivem.net/natives/?_0xBDCDD163)**
---
---```
---Returns given players wanted level server-side.
---```
---
---@param playerSrc string The target player
---@return number # The wanted level
function GetPlayerWantedLevel(playerSrc) end

---**`CFX` `shared` [`0x2A3D7CDA`](https://docs.fivem.net/natives/?_0x2A3D7CDA)**
---
---A getter for [SET_PLAYER_WEAPON_DAMAGE_MODIFIER](#\_0xCE07B9F7817AADA3).
---
---@param playerId Player The player index.
---@return number # The value of player weapon damage modifier.
function GetPlayerWeaponDamageModifier(playerId) end

---**`CFX` `shared` [`0xF1543251`](https://docs.fivem.net/natives/?_0xF1543251)**
---
---A getter for [SET_PLAYER_WEAPON_DEFENSE_MODIFIER](#\_0x2D83BC011CA14A3C).
---
---@param playerId Player The player index.
---@return number # The value of player weapon defense modifier.
function GetPlayerWeaponDefenseModifier(playerId) end

---**`CFX` `shared` [`0x986B65FF`](https://docs.fivem.net/natives/?_0x986B65FF)**
---
---A getter for [\_SET_PLAYER_WEAPON_DEFENSE_MODIFIER\_2](#\_0xBCFDE9EDE4CF27DC).
---
---@param playerId Player The player index.
---@return number # The value of player weapon defense modifier 2.
function GetPlayerWeaponDefenseModifier_2(playerId) end

---**`CFX` `shared` [`0xD4BEF069`](https://docs.fivem.net/natives/?_0xD4BEF069)**
---
---Returns all commands that are registered in the command system.
---The data returned adheres to the following layout:
---
---```
---[
---{
---"name": "cmdlist"
---},
---{
---"name": "command1"
---}
---]
---```
---
---@return table # An object containing registered commands.
function GetRegisteredCommands() end

---**`CFX` `shared` [`0x387246B7`](https://docs.fivem.net/natives/?_0x387246B7)**
---
---Example code:
---```lua
---local resourceList = {}
---for i = 0, GetNumResources(), 1 do
---  local resource_name = GetResourceByFindIndex(i)
---  if resource_name and GetResourceState(resource_name) == "started" then
---    table.insert(resourceList, resource_name)
---  end
---end
---print(table.unpack(resourceList))
---```
---
---@param findIndex number The index of the resource (starting at 0)
---@return string # The resource name as a `string`
function GetResourceByFindIndex(findIndex) end

---**`CFX` `shared` [`0x35BDCEEA`](https://docs.fivem.net/natives/?_0x35BDCEEA)**
---
---A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938).
---
---Example code:
---```lua
---local kvpValue = GetResourceKvpFloat('mollis')
---if kvpValue ~= 0.0 then
---	-- do something!
---end
---```
---
---@param key string The key to fetch
---@return number # The floating-point value stored under the specified key, or 0.0 if not found.
function GetResourceKvpFloat(key) end

---**`CFX` `shared` [`0x557B586A`](https://docs.fivem.net/natives/?_0x557B586A)**
---
---A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8).
---
---Example code:
---```lua
---local kvpValue = GetResourceKvpInt('bananabread')
---if kvpValue ~= 0 then
---	-- do something!
---end
---```
---
---@param key string The key to fetch
---@return number # The integer value stored under the specified key, or 0 if not found.
function GetResourceKvpInt(key) end

---**`CFX` `shared` [`0x5240DA5A`](https://docs.fivem.net/natives/?_0x5240DA5A)**
---
---A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B).
---
---Example code:
---```lua
---local kvpValue = GetResourceKvpString('codfish')
---if kvpValue then
---	-- do something!
---end
---```
---
---@param key string The key to fetch
---@return string # The string value stored under the specified key, or nil/null if not found.
function GetResourceKvpString(key) end

---**`CFX` `shared` [`0x964BAB1D`](https://docs.fivem.net/natives/?_0x964BAB1D)**
---
---Gets the metadata value at a specified key/index from a resource's manifest.
---See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
---
---@param resourceName string The resource name.
---@param metadataKey string The key in the resource manifest.
---@param index number The value index, in a range from \[0..GET_NUM_RESOURCE_METDATA-1].
---@return string
function GetResourceMetadata(resourceName, metadataKey, index) end

---**`CFX` `server` [`0x61DCF017`](https://docs.fivem.net/natives/?_0x61DCF017)**
---
---Returns the physical on-disk path of the specified resource.
---
---@param resourceName string The name of the resource.
---@return string # The resource directory name, possibly without trailing slash.
function GetResourcePath(resourceName) end

---**`CFX` `shared` [`0x4039B485`](https://docs.fivem.net/natives/?_0x4039B485)**
---
---Returns the current state of the specified resource.
---
---@param resourceName string The name of the resource.
---@return string # The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.
function GetResourceState(resourceName) end

---**`CFX` `server` [`0xD240123E`](https://docs.fivem.net/natives/?_0xD240123E)**
---
---Returns a hash of selected ped weapon.
---
---@param ped Ped The target ped.
---@return Hash # The weapon hash.
function GetSelectedPedWeapon(ped) end

---**`CFX` `shared` [`0x637F4C75`](https://docs.fivem.net/natives/?_0x637F4C75)**
---
---Returns the value of a state bag key.
---
---@param bagName string
---@param key string
---@return table # Value.
function GetStateBagValue(bagName, key) end

---**`CFX` `server` [`0x95070FA`](https://docs.fivem.net/natives/?_0x95070FA)**
---
---@param train Vehicle The entity handle.
---@return number # The train engine carriage.
function GetTrainCarriageEngine(train) end

---**`CFX` `server` [`0x4B8285CF`](https://docs.fivem.net/natives/?_0x4B8285CF)**
---
---@param train Vehicle The entity handle.
---@return number # The carriage index. -1 returned if invalid result.
function GetTrainCarriageIndex(train) end

---**`CFX` `server` [`0x2B2FCC28`](https://docs.fivem.net/natives/?_0x2B2FCC28)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleBodyHealth(vehicle) end

---**`CFX` `server` [`0x40D82D88`](https://docs.fivem.net/natives/?_0x40D82D88)**
---
---@param vehicle Vehicle
---@param colorPrimary number
---@param colorSecondary number
function GetVehicleColours(vehicle, colorPrimary, colorSecondary) end

---**`CFX` `server` [`0x1C2B9FEF`](https://docs.fivem.net/natives/?_0x1C2B9FEF)**
---
---@param vehicle Vehicle
---@param r number
---@param g number
---@param b number
function GetVehicleCustomPrimaryColour(vehicle, r, g, b) end

---**`CFX` `server` [`0x3FF247A2`](https://docs.fivem.net/natives/?_0x3FF247A2)**
---
---@param vehicle Vehicle
---@param r number
---@param g number
---@param b number
function GetVehicleCustomSecondaryColour(vehicle, r, g, b) end

---**`CFX` `server` [`0xA0DBD08D`](https://docs.fivem.net/natives/?_0xA0DBD08D)**
---
---@param vehicle Vehicle
---@param color number
function GetVehicleDashboardColour(vehicle, color) end

---**`CFX` `server` [`0xFD15C065`](https://docs.fivem.net/natives/?_0xFD15C065)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleDirtLevel(vehicle) end

---**`CFX` `server` [`0x1DC50247`](https://docs.fivem.net/natives/?_0x1DC50247)**
---
---Currently it only works when set to "all players".
---
---@param vehicle Vehicle
---@return number
function GetVehicleDoorsLockedForPlayer(vehicle) end

---**`CFX` `server` [`0xD72CEF2`](https://docs.fivem.net/natives/?_0xD72CEF2)**
---
---```lua
---enum_VehicleLockStatus = {
---    None = 0,
---    Locked = 2,
---    LockedForPlayer = 3,
---    StickPlayerInside = 4, -- Doesn't allow players to exit the vehicle with the exit vehicle key.
---    CanBeBrokenInto = 7, -- Can be broken into the car. If the glass is broken, the value will be set to 1
---    CanBeBrokenIntoPersist = 8, -- Can be broken into persist
---    CannotBeTriedToEnter = 10, -- Cannot be tried to enter (Nothing happens when you press the vehicle enter key).
---}
---```
---
---It should be [noted](https://forum.cfx.re/t/4863241) that while the [client-side command](#\_0x25BC98A59C2EA962) and its
---setter distinguish between states 0 (unset) and 1 (unlocked), the game will synchronize both as state 0, so the server-side
---command will return only '0' if unlocked.
---
---@param vehicle Vehicle A vehicle handle.
---@return number # The door lock status for the specified vehicle.
function GetVehicleDoorLockStatus(vehicle) end

---**`CFX` `server` [`0x6E35C49C`](https://docs.fivem.net/natives/?_0x6E35C49C)**
---
---@param vehicle Vehicle
---@return number # A number from 0 to 7.
function GetVehicleDoorStatus(vehicle) end

---**`CFX` `server` [`0x8880038A`](https://docs.fivem.net/natives/?_0x8880038A)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleEngineHealth(vehicle) end

---**`CFX` `server` [`0x80E4659B`](https://docs.fivem.net/natives/?_0x80E4659B)**
---
---@param vehicle Vehicle
---@param pearlescentColor number
---@param wheelColor number
function GetVehicleExtraColours(vehicle, pearlescentColor, wheelColor) end

---**`CFX` `server` [`0xAD40AD55`](https://docs.fivem.net/natives/?_0xAD40AD55)**
---
---Gets the flight nozzel position for the specified vehicle. See the client-side [\_GET_VEHICLE_FLIGHT_NOZZLE_POSITION](#\_0xDA62027C8BDB326E) native for usage examples.
---
---@param vehicle Vehicle The vehicle to check.
---@return number # The flight nozzel position between 0.0 (flying normally) and 1.0 (VTOL mode)
function GetVehicleFlightNozzlePosition(vehicle) end

---**`CFX` `shared` [`0x483B013C`](https://docs.fivem.net/natives/?_0x483B013C)**
---
---@param vehicle Vehicle
---@return boolean
function GetVehicleHandbrake(vehicle) end

---**`CFX` `server` [`0xD7147656`](https://docs.fivem.net/natives/?_0xD7147656)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleHeadlightsColour(vehicle) end

---**`CFX` `server` [`0xFBDE9FD8`](https://docs.fivem.net/natives/?_0xFBDE9FD8)**
---
---Gets the lock on state for the specified vehicle. See the client-side [GET_VEHICLE_HOMING_LOCKON_STATE](#\_0xE6B0E8CFC3633BF0) native for a description of lock on states.
---
---@param vehicle Vehicle The vehicle to check.
---@return number # The lock on state.
function GetVehicleHomingLockonState(vehicle) end

---**`CFX` `server` [`0xCCFF3B6E`](https://docs.fivem.net/natives/?_0xCCFF3B6E)**
---
---@param vehicle Vehicle
---@param color number
function GetVehicleInteriorColour(vehicle, color) end

---**`CFX` `server` [`0x7C278621`](https://docs.fivem.net/natives/?_0x7C278621)**
---
---@param vehicle Vehicle
---@param lightsOn boolean
---@param highbeamsOn boolean
---@return boolean, boolean, boolean
function GetVehicleLightsState(vehicle, lightsOn, highbeamsOn) end

---**`CFX` `server` [`0xEC82A51D`](https://docs.fivem.net/natives/?_0xEC82A51D)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleLivery(vehicle) end

---**`CFX` `server` [`0x4A557117`](https://docs.fivem.net/natives/?_0x4A557117)**
---
---Gets the vehicle that is locked on to for the specified vehicle.
---
---@param vehicle Vehicle The vehicle to check.
---@return Vehicle # The vehicle that is locked on. 0 returned if no vehicle is locked on.
function GetVehicleLockOnTarget(vehicle) end

---**`CFX` `server` [`0xE8522D58`](https://docs.fivem.net/natives/?_0xE8522D58)**
---
---@param vehicle Vehicle
---@return string
function GetVehicleNumberPlateText(vehicle) end

---**`CFX` `server` [`0x499747B6`](https://docs.fivem.net/natives/?_0x499747B6)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleNumberPlateTextIndex(vehicle) end

---**`CFX` `server` [`0xAFE92319`](https://docs.fivem.net/natives/?_0xAFE92319)**
---
---Gets the vehicle the specified Ped is/was in depending on bool value. This native is used server side when using OneSync.
---
---@param ped Ped The target ped
---@param lastVehicle boolean False = CurrentVehicle, True = LastVehicle
---@return Vehicle # The vehicle id. Returns 0 if the ped is/was not in a vehicle.
function GetVehiclePedIsIn(ped, lastVehicle) end

---**`CFX` `server` [`0xE41595CE`](https://docs.fivem.net/natives/?_0xE41595CE)**
---
---@param vehicle Vehicle
---@return number
function GetVehiclePetrolTankHealth(vehicle) end

---**`CFX` `server` [`0x57037960`](https://docs.fivem.net/natives/?_0x57037960)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleRadioStationIndex(vehicle) end

---**`CFX` `server` [`0x872CF42`](https://docs.fivem.net/natives/?_0x872CF42)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleRoofLivery(vehicle) end

---**`CFX` `shared` [`0x1382FCEA`](https://docs.fivem.net/natives/?_0x1382FCEA)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleSteeringAngle(vehicle) end

---**`CFX` `server` [`0xA273060E`](https://docs.fivem.net/natives/?_0xA273060E)**
---
---Returns the type of the passed vehicle.
---
---### Vehicle types
---
---*   automobile
---*   bike
---*   boat
---*   heli
---*   plane
---*   submarine
---*   trailer
---*   train
---
---@param vehicle Vehicle The vehicle's entity handle.
---@return string # If the entity is a vehicle, the vehicle type. If it is not a vehicle, the return value will be null.
function GetVehicleType(vehicle) end

---**`CFX` `server` [`0x75280015`](https://docs.fivem.net/natives/?_0x75280015)**
---
---@param vehicle Vehicle
---@param r number
---@param g number
---@param b number
function GetVehicleTyreSmokeColor(vehicle, r, g, b) end

---**`CFX` `server` [`0xDA58D7AE`](https://docs.fivem.net/natives/?_0xDA58D7AE)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleWheelType(vehicle) end

---**`CFX` `server` [`0x13D53892`](https://docs.fivem.net/natives/?_0x13D53892)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleWindowTint(vehicle) end

---**`CFX` `server` [`0x3E1E286D`](https://docs.fivem.net/natives/?_0x3E1E286D)**
---
---**This is the server-side RPC native equivalent of the client native [GIVE_WEAPON_COMPONENT_TO_PED](https://docs.fivem.net/natives/?_0xD966D51AA5B28BB9).**
---
---@param ped Ped
---@param weaponHash Hash
---@param componentHash Hash
function GiveWeaponComponentToPed(ped, weaponHash, componentHash) end

---**`CFX` `server` [`0xC4D88A85`](https://docs.fivem.net/natives/?_0xC4D88A85)**
---
---**This is the server-side RPC native equivalent of the client native [GIVE_WEAPON_TO_PED](https://docs.fivem.net/natives/?_0xBF0FD6E56C964FCB).**
---
---@param ped Ped
---@param weaponHash Hash
---@param ammoCount number
---@param isHidden boolean
---@param bForceInHand boolean
function GiveWeaponToPed(ped, weaponHash, ammoCount, isHidden, bForceInHand) end

---**`CFX` `server` [`0x9C9A3BE0`](https://docs.fivem.net/natives/?_0x9C9A3BE0)**
---
---@param vehicle Vehicle
---@return boolean
function HasEntityBeenMarkedAsNoLongerNeeded(vehicle) end

---**`CFX` `server` [`0xE4E83A5B`](https://docs.fivem.net/natives/?_0xE4E83A5B)**
---
---@param vehicle Vehicle
---@return boolean
function HasVehicleBeenOwnedByPlayer(vehicle) end

---**`CFX` `shared` [`0xE3551879`](https://docs.fivem.net/natives/?_0xE3551879)**
---
---@param referenceIdentity string
---@param argsSerialized string
---@param argsLength number
---@param retvalLength number
---@return string, number
function InvokeFunctionReference(referenceIdentity, argsSerialized, argsLength, retvalLength) end

---**`CFX` `shared` [`0x7EBB9929`](https://docs.fivem.net/natives/?_0x7EBB9929)**
---
---@param object string
---@return boolean
function IsAceAllowed(object) end

---**`CFX` `shared` [`0xCF24C52E`](https://docs.fivem.net/natives/?_0xCF24C52E)**
---
---Gets whether or not this is the CitizenFX server.
---
---@return boolean # A boolean value.
function IsDuplicityVersion() end

---**`CFX` `server` [`0x120B4ED5`](https://docs.fivem.net/natives/?_0x120B4ED5)**
---
---This native checks if the given entity is visible.
---
---@param entity Entity
---@return boolean # Returns `true` if the entity is visible, `false` otherwise.
function IsEntityVisible(entity) end

---**`CFX` `server` [`0x404794CA`](https://docs.fivem.net/natives/?_0x404794CA)**
---
---This native checks if the given ped is a player.
---
---@param ped Ped
---@return boolean # Returns `true` if the ped is a player, `false` otherwise.
function IsPedAPlayer(ped) end

---**`CFX` `server` [`0xDEDAE23D`](https://docs.fivem.net/natives/?_0xDEDAE23D)**
---
---@param playerSrc string
---@param object string
---@return boolean
function IsPlayerAceAllowed(playerSrc, object) end

---**`CFX` `server` [`0xBEFE93F4`](https://docs.fivem.net/natives/?_0xBEFE93F4)**
---
---Requests whether or not the commerce data for the specified player has loaded.
---
---@param playerSrc string The player handle
---@return boolean # A boolean.
function IsPlayerCommerceInfoLoaded(playerSrc) end

---**`CFX` `server` [`0x1D14F4FE`](https://docs.fivem.net/natives/?_0x1D14F4FE)**
---
---Requests whether or not the commerce data for the specified player has loaded from Tebex.
---
---@param playerSrc string The player handle
---@return boolean # A boolean.
function IsPlayerCommerceInfoLoadedExt(playerSrc) end

---**`CFX` `server` [`0x89A3881A`](https://docs.fivem.net/natives/?_0x89A3881A)**
---
---```
---This will return true if the player is evading wanted level, meaning that the wanted level stars are blink.
---Otherwise will return false.
---
---If the player is not wanted, it simply returns false.
---```
---
---@param playerSrc string The target player
---@return boolean # boolean value, depending if the player is evading his wanted level or not.
function IsPlayerEvadingWantedLevel(playerSrc) end

---**`CFX` `server` [`0xC7D2C20C`](https://docs.fivem.net/natives/?_0xC7D2C20C)**
---
---@param playerSrc string The player handle
---@return boolean # A boolean.
function IsPlayerUsingSuperJump(playerSrc) end

---**`CFX` `shared` [`0x37CF52CE`](https://docs.fivem.net/natives/?_0x37CF52CE)**
---
---@param principal string
---@param object string
---@return boolean
function IsPrincipalAceAllowed(principal, object) end

---**`CFX` `shared` [`0xBB340D04`](https://docs.fivem.net/natives/?_0xBB340D04)**
---
---@param vehicle Vehicle
---@return boolean
function IsVehicleEngineStarting(vehicle) end

---**`CFX` `server` [`0x42098B5`](https://docs.fivem.net/natives/?_0x42098B5)**
---
---@param vehicle Vehicle
---@param extraId number
---@return boolean
function IsVehicleExtraTurnedOn(vehicle, extraId) end

---**`CFX` `server` [`0x25EB5873`](https://docs.fivem.net/natives/?_0x25EB5873)**
---
---@param vehicle Vehicle
---@return boolean
function IsVehicleSirenOn(vehicle) end

---**`CFX` `server` [`0x48C80210`](https://docs.fivem.net/natives/?_0x48C80210)**
---
---@param vehicle Vehicle
---@param wheelID number
---@param completely boolean
---@return boolean
function IsVehicleTyreBurst(vehicle, wheelID, completely) end

---**`CFX` `server` [`0xA8F63EAB`](https://docs.fivem.net/natives/?_0xA8F63EAB)**
---
---Requests the commerce data for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
---
---@param playerSrc string The player handle
function LoadPlayerCommerceData(playerSrc) end

---**`CFX` `server` [`0x7995539E`](https://docs.fivem.net/natives/?_0x7995539E)**
---
---Requests the commerce data from Tebex for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
---
---@param playerSrc string The player handle
function LoadPlayerCommerceDataExt(playerSrc) end

---**`CFX` `shared` [`0x76A9EE1F`](https://docs.fivem.net/natives/?_0x76A9EE1F)**
---
---Reads the contents of a text file in a specified resource.
---If executed on the client, this file has to be included in `files` in the resource manifest.
---Example: `local data = LoadResourceFile("devtools", "data.json")`
---
---@param resourceName string The resource name.
---@param fileName string The file in the resource.
---@return string # The file contents
function LoadResourceFile(resourceName, fileName) end

---**`CFX` `server` [`0x262663C5`](https://docs.fivem.net/natives/?_0x262663C5)**
---
---Create a permanent voice channel.
---
---@param id number ID of the channel.
function MumbleCreateChannel(id) end

---**`CFX` `server` [`0x1D5D50C2`](https://docs.fivem.net/natives/?_0x1D5D50C2)**
---
---Checks if the player is currently muted
---
---@param playerSrc number The player to get the mute state for
---@return boolean # Whether or not the player is muted
function MumbleIsPlayerMuted(playerSrc) end

---**`CFX` `server` [`0xCC6C2EB1`](https://docs.fivem.net/natives/?_0xCC6C2EB1)**
---
---Mutes or unmutes the specified player
---
---@param playerSrc number The player to set the mute state of
---@param toggle boolean Whether to mute or unmute the player
function MumbleSetPlayerMuted(playerSrc, toggle) end

---**`CFX` `server` [`0x5B912C3F`](https://docs.fivem.net/natives/?_0x5B912C3F)**
---
---@param netId number
---@return Entity
function NetworkGetEntityFromNetworkId(netId) end

---**`CFX` `shared` [`0x526FEE31`](https://docs.fivem.net/natives/?_0x526FEE31)**
---
---Returns the owner ID of the specified entity.
---
---@param entity Entity The entity to get the owner for.
---@return number # On the server, the server ID of the entity owner. On the client, returns the player/slot ID of the entity owner.
function NetworkGetEntityOwner(entity) end

---**`CFX` `server` [`0x1E546224`](https://docs.fivem.net/natives/?_0x1E546224)**
---
---Returns the first owner ID of the specified entity.
---
---@param entity Entity The entity to get the first owner for.
---@return number # The server ID of the first entity owner.
function NetworkGetFirstEntityOwner(entity) end

---**`CFX` `server` [`0x9E35DAB6`](https://docs.fivem.net/natives/?_0x9E35DAB6)**
---
---@param entity Entity
---@return number
function NetworkGetNetworkIdFromEntity(entity) end

---**`CFX` `server` [`0x7A6462F4`](https://docs.fivem.net/natives/?_0x7A6462F4)**
---
---@param playerSrc string The player handle
---@return vector3
function NetworkGetVoiceProximityOverride(playerSrc) end

---**`CFX` `server` [`0x8E8CC653`](https://docs.fivem.net/natives/?_0x8E8CC653)**
---
---@param requestData string
---@param requestDataLength number
---@return number
function PerformHttpRequestInternal(requestData, requestDataLength) end

---**`CFX` `server` [`0x6B171E87`](https://docs.fivem.net/natives/?_0x6B171E87)**
---
---@param requestData table
---@return number
function PerformHttpRequestInternalEx(requestData) end

---**`CFX` `server` [`0x90892DED`](https://docs.fivem.net/natives/?_0x90892DED)**
---
---Prints 'structured trace' data to the server `file descriptor 3` channel. This is not generally useful outside of
---server monitoring utilities.
---
---@param jsonString string JSON data to submit as `payload` in the `script_structured_trace` event.
function PrintStructuredTrace(jsonString) end

---**`CFX` `shared` [`0xC795A4A9`](https://docs.fivem.net/natives/?_0xC795A4A9)**
---
---Scope entry for profiler.
---
---@param scopeName string Scope name.
function ProfilerEnterScope(scopeName) end

---**`CFX` `shared` [`0xB39CA35C`](https://docs.fivem.net/natives/?_0xB39CA35C)**
---
---Scope exit for profiler.
---
function ProfilerExitScope() end

---**`CFX` `shared` [`0xF8B7D7BB`](https://docs.fivem.net/natives/?_0xF8B7D7BB)**
---
---Returns true if the profiler is active.
---
---@return boolean # True or false.
function ProfilerIsRecording() end

---**`CFX` `shared` [`0x5FA79B0F`](https://docs.fivem.net/natives/?_0x5FA79B0F)**
---
---Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.
---
---Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#\_0x561C060B).
---
---The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).
---
---**Example result**:
---
---![](https://i.imgur.com/TaCnG09.png)
---
---Example code:
---```lua
----- (server side script)
----- Registers a command named 'ping'.
---RegisterCommand("ping", function(source, args, rawCommand)
---    -- If the source is > 0, then that means it must be a player.
---    if (source > 0) then
---
---        -- result (using the default GTA:O chat theme) https://i.imgur.com/TaCnG09.png
---        TriggerClientEvent("chat:addMessage", -1, {
---            args = {
---                GetPlayerName(source),
---                "PONG!"
---            },
---            color = { 5, 255, 255 }
---        })
---
---    -- If it's not a player, then it must be RCON, a resource, or the server console directly.
---    else
---        print("This command was executed by the server console, RCON client, or a resource.")
---    end
---end, false --[[this command is not restricted, everyone can use this.]])
---```
---
---@param commandName string The command you want to register.
---@param handler function A handler function that gets called whenever the command is executed.
---@param restricted boolean If this is a server command and you set this to true, then players will need the command.yourCommandName ace permission to execute this command.
function RegisterCommand(commandName, handler, restricted) end

---**`CFX` `server` [`0x281B5448`](https://docs.fivem.net/natives/?_0x281B5448)**
---
---Registers a listener for console output messages.
---
---@param listener function A function of `(channel: string, message: string) => void`. The message might contain `\n`.
function RegisterConsoleListener(listener) end

---**`CFX` `server` [`0x9862B266`](https://docs.fivem.net/natives/?_0x9862B266)**
---
---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Registers a cached resource asset with the resource system, similar to the automatic scanning of the `stream/` folder.
---
---@param resourceName string The resource to add the asset to.
---@param fileName string A file name in the resource.
---@return string # A cache string to pass to `REGISTER_STREAMING_FILE_FROM_CACHE` on the client.
function RegisterResourceAsset(resourceName, fileName) end

---**`CFX` `shared` [`0xD233A168`](https://docs.fivem.net/natives/?_0xD233A168)**
---
---An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
---
---@param eventName string An event name, or "\*" to disable HLL event filtering for this resource.
function RegisterResourceAsEventHandler(eventName) end

---**`CFX` `server` [`0x285B43CA`](https://docs.fivem.net/natives/?_0x285B43CA)**
---
---Registers a build task factory for resources.
---The function should return an object (msgpack map) with the following fields:
---
---```
---{
---// returns whether the specific resource should be built
---shouldBuild = func(resourceName: string): bool,
---
---// asynchronously start building the specific resource.
---// call cb when completed
---build = func(resourceName: string, cb: func(success: bool, status: string): void): void
---}
---```
---
---@param factoryId string The identifier for the build task.
---@param factoryFn function The factory function.
function RegisterResourceBuildTaskFactory(factoryId, factoryFn) end

---**`CFX` `server` [`0xA44CE817`](https://docs.fivem.net/natives/?_0xA44CE817)**
---
---Parameter `p1` does not seem to be used or referenced in game binaries.\
---**Note:** When called for networked entities, a `CRemoveAllWeaponsEvent` will be created per request.
---
---**This is the server-side RPC native equivalent of the client native [REMOVE_ALL_PED_WEAPONS](https://docs.fivem.net/natives/?_0xF25DF915FA38C5F3).**
---
---@param ped Ped The ped entity
---@param p1 boolean
function RemoveAllPedWeapons(ped, p1) end

---**`CFX` `server` [`0xD8C3C1CD`](https://docs.fivem.net/natives/?_0xD8C3C1CD)**
---
---Removes the blip from your map.
---
---**This is the server-side RPC native equivalent of the client native [REMOVE_BLIP](https://docs.fivem.net/natives/?_0x86A652570E5F25DD).**
---
---@param blip Blip Blip handle to remove.
function RemoveBlip(blip) end

---**`CFX` `shared` [`0xD36BE661`](https://docs.fivem.net/natives/?_0xD36BE661)**
---
---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Removes a handler for changes to a state bag.
---
---@param cookie number The cookie.
function RemoveStateBagChangeHandler(cookie) end

---**`CFX` `server` [`0x412AA00D`](https://docs.fivem.net/natives/?_0x412AA00D)**
---
---**This is the server-side RPC native equivalent of the client native [REMOVE_WEAPON_COMPONENT_FROM_PED](https://docs.fivem.net/natives/?_0x1E8BE90C74FB4C09).**
---
---@param ped Ped
---@param weaponHash Hash
---@param componentHash Hash
function RemoveWeaponComponentFromPed(ped, weaponHash, componentHash) end

---**`CFX` `server` [`0x9C37F220`](https://docs.fivem.net/natives/?_0x9C37F220)**
---
---This native removes a specified weapon from your selected ped.
---Weapon Hashes: pastebin.com/0wwDZgkF
---Example:
---C#:
---Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);
---C++:
---WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);
---The code above removes the knife from the player.
---
---**This is the server-side RPC native equivalent of the client native [REMOVE_WEAPON_FROM_PED](https://docs.fivem.net/natives/?_0x4899CB088EDF59B8).**
---
---@param ped Ped
---@param weaponHash Hash
function RemoveWeaponFromPed(ped, weaponHash) end

---**`CFX` `server` [`0x96F93CCE`](https://docs.fivem.net/natives/?_0x96F93CCE)**
---
---Requests the specified player to buy the passed SKU. This'll pop up a prompt on the client, which upon acceptance
---will open the browser prompting further purchase details.
---
---@param playerSrc string The player handle
---@param skuId number The ID of the SKU.
function RequestPlayerCommerceSession(playerSrc, skuId) end

---**`CFX` `server` [`0xA09E7E7B`](https://docs.fivem.net/natives/?_0xA09E7E7B)**
---
---Writes the specified data to a file in the specified resource.
---Using a length of `-1` will automatically detect the length assuming the data is a C string.
---
---@param resourceName string The name of the resource.
---@param fileName string The name of the file.
---@param data string The data to write to the file.
---@param dataLength number The length of the written data.
---@return boolean # A value indicating if the write succeeded.
function SaveResourceFile(resourceName, fileName, data, dataLength) end

---**`CFX` `server` [`0x636F097F`](https://docs.fivem.net/natives/?_0x636F097F)**
---
---Scans the resources in the specified resource root. This function is only available in the 'monitor mode' process and is
---not available for user resources.
---
---@param rootPath string The resource directory to scan.
---@param callback function A callback that will receive an object with results.
function ScanResourceRoot(rootPath, callback) end

---**`CFX` `server` [`0xB88A73AD`](https://docs.fivem.net/natives/?_0xB88A73AD)**
---
---Schedules the specified resource to run a tick as soon as possible, bypassing the server's fixed tick rate.
---
---@param resourceName string The resource to tick.
function ScheduleResourceTick(resourceName) end

---**`CFX` `server` [`0x8DBBB0B9`](https://docs.fivem.net/natives/?_0x8DBBB0B9)**
---
---<!--
---_loc1_.map((name, idx) => `| ${idx} | ${name} | ![${name}](https://runtime.fivem.net/blips/${name}.svg) |`).join('\n')
----->
---
---Sets the displayed sprite for a specific blip.
---There's a [list of sprites](https://docs.fivem.net/game-references/blips/) on the FiveM documentation site.
---
---**This is the server-side RPC native equivalent of the client native [SET_BLIP_SPRITE](https://docs.fivem.net/natives/?_0xDF735600A4696DAF).**
---
---@param blip Blip The blip to change.
---@param spriteId number The sprite ID to set.
function SetBlipSprite(blip, spriteId) end

---**`CFX` `server` [`0x341B16D2`](https://docs.fivem.net/natives/?_0x341B16D2)**
---
---@param varName string
---@param value string
function SetConvar(varName, value) end

---**`CFX` `server` [`0xF292858C`](https://docs.fivem.net/natives/?_0xF292858C)**
---
---Used to replicate a server variable onto clients.
---
---Example code:
---```lua
---SetConvarReplicated('voice_useNativeAudio', 'true')
---```
---
---@param varName string The console variable name.
---@param value string The value to set for the given console variable.
function SetConvarReplicated(varName, value) end

---**`CFX` `server` [`0x9338D547`](https://docs.fivem.net/natives/?_0x9338D547)**
---
---@param varName string
---@param value string
function SetConvarServerInfo(varName, value) end

---**`CFX` `server` [`0xB8278882`](https://docs.fivem.net/natives/?_0xB8278882)**
---
---**This is the server-side RPC native equivalent of the client native [SET_CURRENT_PED_WEAPON](https://docs.fivem.net/natives/?_0xADF692B254977C0C).**
---
---@param ped Ped
---@param weaponHash Hash
---@param bForceInHand boolean
function SetCurrentPedWeapon(ped, weaponHash, bForceInHand) end

---**`CFX` `server` [`0xDF70B41B`](https://docs.fivem.net/natives/?_0xDF70B41B)**
---
---Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
---
---**This is the server-side RPC native equivalent of the client native [SET_ENTITY_COORDS](https://docs.fivem.net/natives/?_0x06843DA7060A026B).**
---
---@param entity Entity The entity to change coordinates for.
---@param xPos number The X coordinate.
---@param yPos number The Y coordinate.
---@param zPos number The Z coordinate, ground level.
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@param deadFlag boolean Whether to disable physics for dead peds, too, and not just living peds.
---@param ragdollFlag boolean A special flag used for ragdolling peds.
---@param clearArea boolean Whether to clear any entities in the target area.
function SetEntityCoords(entity, xPos, yPos, zPos, alive, deadFlag, ragdollFlag, clearArea) end

---**`CFX` `server` [`0xD3A183A3`](https://docs.fivem.net/natives/?_0xD3A183A3)**
---
---It overrides the default distance culling radius of an entity. Set to `0.0` to reset.
---If you want to interact with an entity outside of your players' scopes set the radius to a huge number.
---
---@param entity Entity The entity handle to override the distance culling radius.
---@param radius number The new distance culling radius.
function SetEntityDistanceCullingRadius(entity, radius) end

---**`CFX` `server` [`0xE0FF064D`](https://docs.fivem.net/natives/?_0xE0FF064D)**
---
---Set the heading of an entity in degrees also known as "Yaw".
---
---**This is the server-side RPC native equivalent of the client native [SET_ENTITY_HEADING](https://docs.fivem.net/natives/?_0x8E2530AA8ADA980E).**
---
---@param entity Entity The entity to set the heading for.
---@param heading number The heading in degrees.
function SetEntityHeading(entity, heading) end

---**`CFX` `server` [`0xA345EFE`](https://docs.fivem.net/natives/?_0xA345EFE)**
---
---**This is the server-side RPC native equivalent of the client native [SET_ENTITY_ROTATION](https://docs.fivem.net/natives/?_0x8524A8B0171D5E07).**
---
---@param entity Entity
---@param pitch number
---@param roll number
---@param yaw number
---@param rotationOrder number
---@param p5 boolean
function SetEntityRotation(entity, pitch, roll, yaw, rotationOrder, p5) end

---**`CFX` `server` [`0x635E5289`](https://docs.fivem.net/natives/?_0x635E5289)**
---
---Sets the routing bucket for the specified entity.
---
---Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
---
---@param entity Entity The entity to set the routing bucket for.
---@param bucket number The bucket ID.
function SetEntityRoutingBucket(entity, bucket) end

---**`CFX` `server` [`0xFF5A1988`](https://docs.fivem.net/natives/?_0xFF5A1988)**
---
---Note that the third parameter(denoted as z) is "up and down" with positive numbers encouraging upwards movement.
---
---**This is the server-side RPC native equivalent of the client native [SET_ENTITY_VELOCITY](https://docs.fivem.net/natives/?_0x1C99BB7B6E96D16F).**
---
---@param entity Entity
---@param x number
---@param y number
---@param z number
function SetEntityVelocity(entity, x, y, z) end

---**`CFX` `server` [`0xF90B7469`](https://docs.fivem.net/natives/?_0xF90B7469)**
---
---@param gametypeName string
function SetGameType(gametypeName) end

---**`CFX` `server` [`0xF5C6330C`](https://docs.fivem.net/natives/?_0xF5C6330C)**
---
---@param handler function
function SetHttpHandler(handler) end

---**`CFX` `server` [`0xB7BA82DC`](https://docs.fivem.net/natives/?_0xB7BA82DC)**
---
---@param mapName string
function SetMapName(mapName) end

---**`CFX` `server` [`0xBF90DF1A`](https://docs.fivem.net/natives/?_0xBF90DF1A)**
---
---NativeDB Added Parameter 4: BOOL p3
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_AMMO](https://docs.fivem.net/natives/?_0x14E56BC5B5DB6A19).**
---
---@param ped Ped
---@param weaponHash Hash
---@param ammo number
function SetPedAmmo(ped, weaponHash, ammo) end

---**`CFX` `server` [`0x4E3A0CC4`](https://docs.fivem.net/natives/?_0x4E3A0CC4)**
---
---Sets the armor of the specified ped.
---ped: The Ped to set the armor of.
---amount: A value between 0 and 100 indicating the value to set the Ped's armor to.
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_ARMOUR](https://docs.fivem.net/natives/?_0xCEA04D83135264CC).**
---
---@param ped Ped
---@param amount number
function SetPedArmour(ped, amount) end

---**`CFX` `server` [`0xCF1384C4`](https://docs.fivem.net/natives/?_0xCF1384C4)**
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_CAN_RAGDOLL](https://docs.fivem.net/natives/?_0xB128377056A54E2A).**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanRagdoll(ped, toggle) end

---**`CFX` `server` [`0xD4F7B05C`](https://docs.fivem.net/natives/?_0xD4F7B05C)**
---
---This native is used to set component variation on a ped. Components, drawables and textures IDs are related to the ped model.
---
---### MP Freemode list of components
---
---**0**: Face\
---**1**: Mask\
---**2**: Hair\
---**3**: Torso\
---**4**: Leg\
---**5**: Parachute / bag\
---**6**: Shoes\
---**7**: Accessory\
---**8**: Undershirt\
---**9**: Kevlar\
---**10**: Badge\
---**11**: Torso 2
---
---### Related and useful natives
---
---[GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#\_0x27561561732A7842)\
---[GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#\_0x8F7156A3142A6BAD)
---[List of component/props ID](gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html) of player_two with examples
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_COMPONENT_VARIATION](https://docs.fivem.net/natives/?_0x262B14F48D29DE80).**
---
---@param ped Ped The ped handle.
---@param componentId number The component that you want to set.
---@param drawableId number The drawable id that is going to be set.
---@param textureId number The texture id of the drawable.
---@param paletteId number 0 to 3.
function SetPedComponentVariation(ped, componentId, drawableId, textureId, paletteId) end

---**`CFX` `server` [`0x9CFBE10D`](https://docs.fivem.net/natives/?_0x9CFBE10D)**
---
---cpp
---// Potential names and hash collisions included as comments
---enum ePedConfigFlags {
---\_0x67D1A445 = 0,
---\_0xC63DE95E = 1,
---CPED_CONFIG_FLAG_NoCriticalHits = 2,
---CPED_CONFIG_FLAG_DrownsInWater = 3,
---CPED_CONFIG_FLAG_DisableReticuleFixedLockon = 4,
---\_0x37D196F4 = 5,
---\_0xE2462399 = 6,
---CPED_CONFIG_FLAG_UpperBodyDamageAnimsOnly = 7,
---\_0xEDDEB838 = 8,
---\_0xB398B6FD = 9,
---\_0xF6664E68 = 10,
---\_0xA05E7CA3 = 11,
---\_0xCE394045 = 12,
---CPED_CONFIG_FLAG_NeverLeavesGroup = 13,
---\_0xCD8D1411 = 14,
---\_0xB031F1A9 = 15,
---\_0xFE65BEE3 = 16,
---CPED_CONFIG_FLAG_BlockNonTemporaryEvents = 17,
---\_0x380165BD = 18,
---\_0x07C045C7 = 19,
---\_0x583B5E2D = 20,
---\_0x475EDA58 = 21,
---\_0x8629D05B = 22,
---\_0x1522968B = 23,
---CPED_CONFIG_FLAG_IgnoreSeenMelee = 24,
---\_0x4CC09C4B = 25,
---\_0x034F3053 = 26,
---\_0xD91BA7CC = 27,
---\_0x5C8DC66E = 28,
---\_0x8902EAA0 = 29,
---\_0x6580B9D2 = 30,
---\_0x0EF7A297 = 31,
---\_0x6BF86E5B = 32,
---CPED_CONFIG_FLAG_DieWhenRagdoll = 33,
---CPED_CONFIG_FLAG_HasHelmet = 34,
---CPED_CONFIG_FLAG_UseHelmet = 35,
---\_0xEEB3D630 = 36,
---\_0xB130D17B = 37,
---\_0x5F071200 = 38,
---CPED_CONFIG_FLAG_DisableEvasiveDives = 39,
---\_0xC287AAFF = 40,
---\_0x203328CC = 41,
---CPED_CONFIG_FLAG_DontInfluenceWantedLevel = 42,
---CPED_CONFIG_FLAG_DisablePlayerLockon = 43,
---CPED_CONFIG_FLAG_DisableLockonToRandomPeds = 44,
---\_0xEC4A8ACF = 45,
---\_0xDB115BFA = 46,
---CPED_CONFIG_FLAG_PedBeingDeleted = 47,
---CPED_CONFIG_FLAG_BlockWeaponSwitching = 48,
---\_0xF8E99565 = 49,
---\_0xDD17FEE6 = 50,
---\_0x7ED9B2C9 = 51,
---\_0x655E8618 = 52,
---\_0x5A6C1F6E = 53,
---\_0xD749FC41 = 54,
---\_0x357F63F3 = 55,
---\_0xC5E60961 = 56,
---\_0x29275C3E = 57,
---CPED_CONFIG_FLAG_IsFiring = 58,
---CPED_CONFIG_FLAG_WasFiring = 59,
---CPED_CONFIG_FLAG_IsStanding = 60,
---CPED_CONFIG_FLAG_WasStanding = 61,
---CPED_CONFIG_FLAG_InVehicle = 62,
---CPED_CONFIG_FLAG_OnMount = 63,
---CPED_CONFIG_FLAG_AttachedToVehicle = 64,
---CPED_CONFIG_FLAG_IsSwimming = 65,
---CPED_CONFIG_FLAG_WasSwimming = 66,
---CPED_CONFIG_FLAG_IsSkiing = 67,
---CPED_CONFIG_FLAG_IsSitting = 68,
---CPED_CONFIG_FLAG_KilledByStealth = 69,
---CPED_CONFIG_FLAG_KilledByTakedown = 70,
---CPED_CONFIG_FLAG_Knockedout = 71,
---\_0x3E3C4560 = 72,
---\_0x2994C7B7 = 73,
---\_0x6D59D275 = 74,
---CPED_CONFIG_FLAG_UsingCoverPoint = 75,
---CPED_CONFIG_FLAG_IsInTheAir = 76,
---\_0x2D493FB7 = 77,
---CPED_CONFIG_FLAG_IsAimingGun = 78,
---\_0x14D69875 = 79,
---\_0x40B05311 = 80,
---\_0x8B230BC5 = 81,
---\_0xC74E5842 = 82,
---\_0x9EA86147 = 83,
---\_0x674C746C = 84,
---\_0x3E56A8C2 = 85,
---\_0xC144A1EF = 86,
---\_0x0548512D = 87,
---\_0x31C93909 = 88,
---\_0xA0269315 = 89,
---\_0xD4D59D4D = 90,
---\_0x411D4420 = 91,
---\_0xDF4AEF0D = 92,
---CPED_CONFIG_FLAG_ForcePedLoadCover = 93,
---\_0x300E4CD3 = 94,
---\_0xF1C5BF04 = 95,
---\_0x89C2EF13 = 96,
---CPED_CONFIG_FLAG_VaultFromCover = 97,
---\_0x02A852C8 = 98,
---\_0x3D9407F1 = 99,
---\_0x319B4558 = 100,
---CPED_CONFIG_FLAG_ForcedAim = 101,
---\_0xB942D71A = 102,
---\_0xD26C55A8 = 103,
---\_0xB89E703B = 104,
---CPED_CONFIG_FLAG_ForceReload = 105,
---\_0xD9E73DA2 = 106,
---\_0xFF71DC2C = 107,
---\_0x1E27E8D8 = 108,
---\_0xF2C53966 = 109,
---\_0xC4DBE247 = 110,
---\_0x83C0A4BF = 111,
---\_0x0E0FAF8C = 112,
---\_0x26616660 = 113,
---\_0x43B80B79 = 114,
---\_0x0D2A9309 = 115,
---\_0x12C1C983 = 116,
---CPED_CONFIG_FLAG_BumpedByPlayer = 117,
---\_0xE586D504 = 118,
---\_0x52374204 = 119,
---CPED_CONFIG_FLAG_IsHandCuffed = 120,
---CPED_CONFIG_FLAG_IsAnkleCuffed = 121,
---CPED_CONFIG_FLAG_DisableMelee = 122,
---\_0xFE714397 = 123,
---\_0xB3E660BD = 124,
---\_0x5FED6BFD = 125,
---\_0xC9D6F66F = 126,
---\_0x519BC986 = 127,
---CPED_CONFIG_FLAG_CanBeAgitated = 128,
---\_0x9A4B617C = 129, // CPED_CONFIG_FLAG_FaceDirInsult
---\_0xDAB70E9F = 130,
---\_0xE569438A = 131,
---\_0xBBC77D6D = 132,
---\_0xCB59EF0F = 133,
---\_0x8C5EA971 = 134,
---CPED_CONFIG_FLAG_IsScuba = 135,
---CPED_CONFIG_FLAG_WillArrestRatherThanJack = 136,
---\_0xDCE59B58 = 137,
---CPED_CONFIG_FLAG_RidingTrain = 138,
---CPED_CONFIG_FLAG_ArrestResult = 139,
---CPED_CONFIG_FLAG_CanAttackFriendly = 140,
---\_0x98A4BE43 = 141,
---\_0x6901E731 = 142,
---\_0x9EC9BF6C = 143,
---\_0x42841A8F = 144,
---CPED_CONFIG_FLAG_ShootingAnimFlag = 145,
---CPED_CONFIG_FLAG_DisableLadderClimbing = 146,
---CPED_CONFIG_FLAG_StairsDetected = 147,
---CPED_CONFIG_FLAG_SlopeDetected = 148,
---\_0x1A15670B = 149,
---\_0x61786EE5 = 150,
---\_0xCB9186BD = 151,
---\_0xF0710152 = 152,
---\_0x43DFE310 = 153,
---\_0xC43C624E = 154,
---CPED_CONFIG_FLAG_CanPerformArrest = 155,
---CPED_CONFIG_FLAG_CanPerformUncuff = 156,
---CPED_CONFIG_FLAG_CanBeArrested = 157,
---\_0xF7960FF5 = 158,
---\_0x59564113 = 159,
---\_0x0C6C3099 = 160,
---\_0x645F927A = 161,
---\_0xA86549B9 = 162,
---\_0x8AAF337A = 163,
---\_0x13BAA6E7 = 164,
---\_0x5FB9D1F5 = 165,
---CPED_CONFIG_FLAG_IsInjured = 166,
---\_0x6398A20B = 167,
---\_0xD8072639 = 168,
---\_0xA05B1845 = 169,
---\_0x83F6D220 = 170,
---\_0xD8430331 = 171,
---\_0x4B547520 = 172,
---\_0xE66E1406 = 173,
---\_0x1C4BFE0C = 174,
---\_0x90008BFA = 175,
---\_0x07C7A910 = 176,
---\_0xF15F8191 = 177,
---\_0xCE4E8BE2 = 178,
---\_0x1D46E4F2 = 179,
---CPED_CONFIG_FLAG_IsInCustody = 180,
---\_0xE4FD9B3A = 181,
---\_0x67AE0812 = 182,
---CPED_CONFIG_FLAG_IsAgitated = 183,
---CPED_CONFIG_FLAG_PreventAutoShuffleToDriversSeat = 184,
---\_0x7B2D325E = 185,
---CPED_CONFIG_FLAG_EnableWeaponBlocking = 186,
---CPED_CONFIG_FLAG_HasHurtStarted = 187,
---CPED_CONFIG_FLAG_DisableHurt = 188,
---CPED_CONFIG_FLAG_PlayerIsWeird = 189,
---\_0x32FC208B = 190,
---\_0x0C296E5A = 191,
---\_0xE63B73EC = 192,
---\_0x04E9CC80 = 193,
---CPED_CONFIG_FLAG_UsingScenario = 194,
---CPED_CONFIG_FLAG_VisibleOnScreen = 195,
---\_0xD88C58A1 = 196,
---\_0x5A3DCF43 = 197, // CPED_CONFIG_FLAG_AvoidUnderSide
---\_0xEA02B420 = 198,
---\_0x3F559CFF = 199,
---\_0x8C55D029 = 200,
---\_0x5E6466F6 = 201,
---\_0xEB5AD706 = 202,
---\_0x0EDDDDE7 = 203,
---\_0xA64F7B1D = 204,
---\_0x48532CBA = 205,
---\_0xAA25A9E7 = 206,
---\_0x415B26B9 = 207,
---CPED_CONFIG_FLAG_DisableExplosionReactions = 208,
---CPED_CONFIG_FLAG_DodgedPlayer = 209,
---\_0x67405504 = 210,
---\_0x75DDD68C = 211,
---\_0x2AD879B4 = 212,
---\_0x51486F91 = 213,
---\_0x32F79E21 = 214,
---\_0xBF099213 = 215,
---\_0x054AC8E2 = 216,
---\_0x14E495CC = 217,
---\_0x3C7DF9DF = 218,
---\_0x848FFEF2 = 219,
---CPED_CONFIG_FLAG_DontEnterLeadersVehicle = 220,
---\_0x2618E1CF = 221,
---\_0x84F722FA = 222,
---\_0xD1B87B1F = 223,
---\_0x728AA918 = 224,
---CPED_CONFIG_FLAG_DisablePotentialToBeWalkedIntoResponse = 225,
---CPED_CONFIG_FLAG_DisablePedAvoidance = 226,
---\_0x59E91185 = 227,
---\_0x1EA7225F = 228,
---CPED_CONFIG_FLAG_DisablePanicInVehicle = 229,
---\_0x6DCA7D88 = 230,
---\_0xFC3E572D = 231,
---\_0x08E9F9CF = 232,
---\_0x2D3BA52D = 233,
---\_0xFD2F53EA = 234,
---\_0x31A1B03B = 235,
---CPED_CONFIG_FLAG_IsHoldingProp = 236,
---\_0x82ED0A66 = 237, // CPED_CONFIG_FLAG_BlocksPathingWhenDead
---\_0xCE57C9A3 = 238,
---\_0x26149198 = 239,
---\_0x1B33B598 = 240,
---\_0x719B6E87 = 241,
---\_0x13E8E8E8 = 242,
---\_0xF29739AE = 243,
---\_0xABEA8A74 = 244,
---\_0xB60EA2BA = 245,
---\_0x536B0950 = 246,
---\_0x0C754ACA = 247,
---CPED_CONFIG_FLAG_DisableVehicleSeatRandomAnimations = 248,
---\_0x12659168 = 249,
---\_0x1BDF2F04 = 250,
---\_0x7728FAA3 = 251,
---\_0x6A807ED8 = 252,
---CPED_CONFIG_FLAG_OnStairs = 253,
---\_0xE1A2F73F = 254,
---\_0x5B3697C8 = 255,
---\_0xF1EB20A9 = 256,
---\_0x8B7DF407 = 257,
---\_0x329DCF1A = 258,
---\_0x8D90DD1B = 259,
---\_0xB8A292B7 = 260,
---\_0x8374B087 = 261,
---\_0x2AF558F0 = 262,
---\_0x82251455 = 263,
---\_0x30CF498B = 264,
---\_0xE1CD50AF = 265,
---\_0x72E4AE48 = 266,
---\_0xC2657EA1 = 267,
---\_0x29FF6030 = 268,
---\_0x8248A5EC = 269,
---CPED_CONFIG_FLAG_OnStairSlope = 270,
---\_0xA0897933 = 271,
---CPED_CONFIG_FLAG_DontBlipCop = 272,
---CPED_CONFIG_FLAG_ClimbedShiftedFence = 273,
---\_0xF7823618 = 274,
---\_0xDC305CCE = 275, // CPED_CONFIG_FLAG_KillWhenTrapped
---CPED_CONFIG_FLAG_EdgeDetected = 276,
---\_0x92B67896 = 277,
---\_0xCAD677C9 = 278,
---CPED_CONFIG_FLAG_AvoidTearGas = 279,
---\_0x5276AC7B = 280,
---\_0x1032692A = 281,
---\_0xDA23E7F1 = 282,
---\_0x9139724D = 283,
---\_0xA1457461 = 284,
---\_0x4186E095 = 285,
---\_0xAC68E2EB = 286,
---CPED_CONFIG_FLAG_RagdollingOnBoat = 287,
---CPED_CONFIG_FLAG_HasBrandishedWeapon = 288,
---\_0x1B9EE8A1 = 289,
---\_0xF3F5758C = 290,
---\_0x2A9307F1 = 291,
---\_0x7403D216 = 292,
---\_0xA06A3C6C = 293,
---CPED_CONFIG_FLAG_DisableShockingEvents = 294,
---\_0xF8DA25A5 = 295,
---\_0x7EF55802 = 296,
---\_0xB31F1187 = 297,
---\_0x84315402 = 298,
---\_0x0FD69867 = 299,
---\_0xC7829B67 = 300,
---CPED_CONFIG_FLAG_DisablePedConstraints = 301,
---\_0x6D23CF25 = 302,
---\_0x2ADA871B = 303,
---\_0x47BC8A58 = 304,
---\_0xEB692FA5 = 305,
---\_0x4A133C50 = 306,
---\_0xC58099C3 = 307,
---\_0xF3D76D41 = 308,
---\_0xB0EEE9F2 = 309,
---CPED_CONFIG_FLAG_IsInCluster = 310,
---\_0x0FA153EF = 311,
---\_0xD73F5CD3 = 312,
---\_0xD4136C22 = 313,
---\_0xE404CA6B = 314,
---\_0xB9597446 = 315,
---\_0xD5C98277 = 316,
---\_0xD5060A9C = 317,
---\_0x3E5F1CBB = 318,
---\_0xD8BE1D54 = 319,
---\_0x0B1F191F = 320,
---\_0xC995167A = 321,
---CPED_CONFIG_FLAG_HasHighHeels = 322,
---\_0x86B01E54 = 323,
---\_0x3A56FE15 = 324,
---\_0xC03B736C = 325, // CPED_CONFIG_FLAG_SpawnedAtScenario
---\_0xBBF47729 = 326,
---\_0x22B668A8 = 327,
---\_0x2624D4D4 = 328,
---CPED_CONFIG_FLAG_DisableTalkTo = 329,
---CPED_CONFIG_FLAG_DontBlip = 330,
---CPED_CONFIG_FLAG_IsSwitchingWeapon = 331,
---\_0x630F55F3 = 332,
---\_0x150468FD = 333,
---\_0x914EBD6B = 334,
---\_0x79AF3B6D = 335,
---\_0x75C7A632 = 336,
---\_0x52D530E2 = 337,
---\_0xDB2A90E0 = 338,
---\_0x5922763D = 339,
---\_0x12ADB567 = 340,
---\_0x105C8518 = 341,
---\_0x106F703D = 342,
---\_0xED152C3E = 343,
---\_0xA0EFE6A8 = 344,
---\_0xBF348C82 = 345,
---\_0xCDDFE830 = 346,
---\_0x7B59BD9B = 347,
---\_0x0124C788 = 348,
---CPED_CONFIG_FLAG_EquipJetpack = 349,
---\_0x08D361A5 = 350,
---\_0xE13D1F7C = 351,
---\_0x40E25FB9 = 352,
---\_0x930629D9 = 353,
---\_0xECCF0C7F = 354,
---\_0xB6E9613B = 355,
---\_0x490C0478 = 356,
---\_0xE8865BEA = 357,
---\_0xF3C34A29 = 358,
---CPED_CONFIG_FLAG_IsDuckingInVehicle = 359,
---\_0xF660E115 = 360,
---\_0xAB0E6DED = 361,
---CPED_CONFIG_FLAG_HasReserveParachute = 362,
---CPED_CONFIG_FLAG_UseReserveParachute = 363,
---\_0x5C5D9CD3 = 364,
---\_0x8F7701F3 = 365,
---\_0xBC4436AD = 366,
---\_0xD7E07D37 = 367,
---\_0x03C4FD24 = 368,
---\_0x7675789A = 369,
---\_0xB7288A88 = 370,
---\_0xC06B6291 = 371,
---\_0x95A4A805 = 372,
---\_0xA8E9A042 = 373,
---CPED_CONFIG_FLAG_NeverLeaveTrain = 374,
---\_0xBAC674B3 = 375,
---\_0x147F1FFB = 376,
---\_0x4376DD79 = 377,
---\_0xCD3DB518 = 378,
---\_0xFE4BA4B6 = 379,
---\_0x5DF03A55 = 380,
---\_0xBCD816CD = 381,
---\_0xCF02DD69 = 382,
---\_0xF73AFA2E = 383,
---\_0x80B9A9D0 = 384,
---\_0xF601F7EE = 385,
---\_0xA91350FC = 386,
---\_0x3AB23B96 = 387,
---CPED_CONFIG_FLAG_IsClimbingLadder = 388,
---CPED_CONFIG_FLAG_HasBareFeet = 389,
---\_0xB4B1CD4C = 390,
---\_0x5459AFB8 = 391,
---\_0x54F27667 = 392,
---\_0xC11D3E8F = 393,
---\_0x5419EB3E = 394,
---\_0x82D8DBB4 = 395,
---\_0x33B02D2F = 396,
---\_0xAE66176D = 397,
---\_0xA2692593 = 398,
---\_0x714C7E31 = 399,
---\_0xEC488AC7 = 400,
---\_0xAE398504 = 401,
---\_0xABC58D72 = 402,
---\_0x5E5B9591 = 403,
---\_0x6BA1091E = 404,
---\_0x77840177 = 405,
---\_0x1C7ACAC4 = 406,
---\_0x124420E9 = 407,
---\_0x75A65587 = 408,
---\_0xDFD2D55B = 409,
---\_0xBDD39919 = 410,
---\_0x43DEC267 = 411,
---\_0xE42B7797 = 412,
---CPED_CONFIG_FLAG_IsHolsteringWeapon = 413,
---\_0x4F8149F5 = 414,
---\_0xDD9ECA7A = 415,
---\_0x9E7EF9D2 = 416,
---\_0x2C6ED942 = 417,
---CPED_CONFIG_FLAG_IsSwitchingHelmetVisor = 418,
---\_0xA488727D = 419,
---\_0xCFF5F6DE = 420,
---\_0x6D614599 = 421,
---CPED_CONFIG_FLAG_DisableVehicleCombat = 422,
---\_0xFE401D26 = 423,
---CPED_CONFIG_FLAG_FallsLikeAircraft = 424,
---\_0x2B42AE82 = 425,
---\_0x7A95734F = 426,
---\_0xDF4D8617 = 427,
---\_0x578F1F14 = 428,
---CPED_CONFIG_FLAG_DisableStartEngine = 429,
---CPED_CONFIG_FLAG_IgnoreBeingOnFire = 430,
---\_0x153C9500 = 431,
---\_0xCB7A632E = 432,
---\_0xDE727981 = 433,
---CPED_CONFIG_FLAG_DisableHomingMissileLockon = 434,
---\_0x12BBB935 = 435,
---\_0xAD0A1277 = 436,
---\_0xEA6AA46A = 437,
---CPED_CONFIG_FLAG_DisableHelmetArmor = 438,
---\_0xCB7F3A1E = 439,
---\_0x50178878 = 440,
---\_0x051B4F0D = 441,
---\_0x2FC3DECC = 442,
---\_0xC0030B0B = 443,
---\_0xBBDAF1E9 = 444,
---\_0x944FE59C = 445,
---\_0x506FBA39 = 446,
---\_0xDD45FE84 = 447,
---\_0xE698AE75 = 448,
---\_0x199633F8 = 449,
---CPED_CONFIG_FLAG_PedIsArresting = 450,
---CPED_CONFIG_FLAG_IsDecoyPed = 451,
---\_0x3A251D83 = 452,
---\_0xA56F6986 = 453,
---\_0x1D19C622 = 454,
---\_0xB68D3EAB = 455,
---CPED_CONFIG_FLAG_CanBeIncapacitated = 456,
---\_0x4BD5EBAD = 457,
---}
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_CONFIG_FLAG](https://docs.fivem.net/natives/?_0x1913FE4CBF41C463).**
---
---@param ped Ped
---@param flagId number
---@param value boolean
function SetPedConfigFlag(ped, flagId, value) end

---**`CFX` `server` [`0xC866A984`](https://docs.fivem.net/natives/?_0xC866A984)**
---
---Sets Ped Default Clothes
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_DEFAULT_COMPONENT_VARIATION](https://docs.fivem.net/natives/?_0x45EEE61580806D63).**
---
---@param ped Ped
function SetPedDefaultComponentVariation(ped) end

---**`CFX` `server` [`0x60746B88`](https://docs.fivem.net/natives/?_0x60746B88)**
---
---For more info please refer to [this](https://gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained) topic.
---**Other information:**
---IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.</br>
---This native function is often called prior to calling natives such as:
---
---*   [`SetPedHairColor`](#0xBB43F090)
---*   [`SetPedHeadOverlayColor`](#0x78935A27)
---*   [`SetPedHeadOverlay`](#0xD28DBA90)
---*   [`SetPedFaceFeature`](#0x6C8D4458)
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_HEAD_BLEND_DATA](https://docs.fivem.net/natives/?_0x9414E18B9434C2FE).**
---
---@param ped Ped The ped entity
---@param shapeFirstID number Controls the shape of the first ped's face
---@param shapeSecondID number Controls the shape of the second ped's face
---@param shapeThirdID number Controls the shape of the third ped's face
---@param skinFirstID number Controls the first id's skin tone
---@param skinSecondID number Controls the second id's skin tone
---@param skinThirdID number Controls the third id's skin tone
---@param shapeMix number 0.0 - 1.0 Of whose characteristics to take Mother -> Father (shapeFirstID and shapeSecondID)
---@param skinMix number 0.0 - 1.0 Of whose characteristics to take Mother -> Father (skinFirstID and skinSecondID)
---@param thirdMix number Overrides the others in favor of the third IDs.
---@param isParent boolean IsParent is set for "children" of the player character's grandparents during old-gen character creation. It has unknown effect otherwise.
function SetPedHeadBlendData(
	ped,
	shapeFirstID,
	shapeSecondID,
	shapeThirdID,
	skinFirstID,
	skinSecondID,
	skinThirdID,
	shapeMix,
	skinMix,
	thirdMix,
	isParent
)
end

---**`CFX` `server` [`0xD28DBA90`](https://docs.fivem.net/natives/?_0xD28DBA90)**
---
---```
---OverlayID ranges from 0 to 12, index from 0 to _GET_NUM_OVERLAY_VALUES(overlayID)-1, and opacity from 0.0 to 1.0.
---overlayID       Part                  Index, to disable
---0               Blemishes             0 - 23, 255
---1               Facial Hair           0 - 28, 255
---2               Eyebrows              0 - 33, 255
---3               Ageing                0 - 14, 255
---4               Makeup                0 - 74, 255
---5               Blush                 0 - 6, 255
---6               Complexion            0 - 11, 255
---7               Sun Damage            0 - 10, 255
---8               Lipstick              0 - 9, 255
---9               Moles/Freckles        0 - 17, 255
---10              Chest Hair            0 - 16, 255
---11              Body Blemishes        0 - 11, 255
---12              Add Body Blemishes    0 - 1, 255
---```
---
---**Note:**
---You may need to call [`SetPedHeadBlendData`](#0x9414E18B9434C2FE) prior to calling this native in order for it to work.
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_HEAD_OVERLAY](https://docs.fivem.net/natives/?_0x48F44967FA05CC1E).**
---
---@param ped Ped The ped entity
---@param overlayID number The overlay id displayed up above.
---@param index number An integer representing the index (from 0 to `_GET_NUM_OVERLAY_VALUES(overlayID)-1`)
---@param opacity number A float ranging from 0.0 to 1.0
function SetPedHeadOverlay(ped, overlayID, index, opacity) end

---**`CFX` `server` [`0x7500C79`](https://docs.fivem.net/natives/?_0x7500C79)**
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_INTO_VEHICLE](https://docs.fivem.net/natives/?_0xF75B0D629E1C063D).**
---
---@param ped Ped
---@param vehicle Vehicle
---@param seatIndex number
function SetPedIntoVehicle(ped, vehicle, seatIndex) end

---**`CFX` `server` [`0x829F2E2`](https://docs.fivem.net/natives/?_0x829F2E2)**
---
---This native is used to set prop variation on a ped. Components, drawables and textures IDs are related to the ped model.
---
---### MP Freemode list of props
---
---**0**: Hat\
---**1**: Glass\
---**2**: Ear\
---**6**: Watch\
---**7**: Bracelet
---
---### Related and useful natives
---
---[GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47)\
---[GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171)
---[List of component/props ID](https://gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html) of player_two with examples
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_PROP_INDEX](https://docs.fivem.net/natives/?_0x93376B65A266EB5F).**
---
---@param ped Ped The ped handle.
---@param componentId number The component that you want to set.
---@param drawableId number The drawable id that is going to be set.
---@param textureId number The texture id of the drawable.
---@param attach boolean Attached or not.
function SetPedPropIndex(ped, componentId, drawableId, textureId, attach) end

---**`CFX` `server` [`0x4111BA46`](https://docs.fivem.net/natives/?_0x4111BA46)**
---
---p1 is always 0 in R\* scripts; and a quick disassembly seems to indicate that p1 is unused.
---List of component/props ID:
---gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_RANDOM_COMPONENT_VARIATION](https://docs.fivem.net/natives/?_0xC8A9481A01E63C28).**
---
---@param ped Ped
---@param p1 number
function SetPedRandomComponentVariation(ped, p1) end

---**`CFX` `server` [`0xE3318E0E`](https://docs.fivem.net/natives/?_0xE3318E0E)**
---
---List of component/props ID
---gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_RANDOM_PROPS](https://docs.fivem.net/natives/?_0xC44AA05345C992C6).**
---
---@param ped Ped
function SetPedRandomProps(ped) end

---**`CFX` `server` [`0xCFF6FF66`](https://docs.fivem.net/natives/?_0xCFF6FF66)**
---
---PED::SET_PED_RESET_FLAG(PLAYER::PLAYER_PED_ID(), 240, 1);
---Known values:
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_RESET_FLAG](https://docs.fivem.net/natives/?_0xC1E8A365BF3B29F2).**
---
---@param ped Ped
---@param flagId number
---@param doReset boolean
function SetPedResetFlag(ped, flagId, doReset) end

---**`CFX` `server` [`0x83CB5052`](https://docs.fivem.net/natives/?_0x83CB5052)**
---
---p4/p5: Unusued in TU27
---
---### Ragdoll Types
---
---**0**: CTaskNMRelax
---**1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.
---**Else**: CTaskNMBalance
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_TO_RAGDOLL](https://docs.fivem.net/natives/?_0xAE99FB955581844A).**
---
---@param ped Ped
---@param time1 number Time(ms) Ped is in ragdoll mode; only applies to ragdoll types 0 and not 1.
---@param time2 number
---@param ragdollType number
---@param p4 boolean
---@param p5 boolean
---@param p6 boolean
function SetPedToRagdoll(ped, time1, time2, ragdollType, p4, p5, p6) end

---**`CFX` `server` [`0xFA12E286`](https://docs.fivem.net/natives/?_0xFA12E286)**
---
---Return variable is never used in R\*'s scripts.
---Not sure what p2 does. It seems like it would be a time judging by it's usage in R\*'s scripts, but didn't seem to affect anything in my testings.
---x, y, and z are coordinates, most likely to where the ped will fall.
---p7 is probably the force of the fall, but untested, so I left the variable name the same.
---p8 to p13 are always 0f in R\*'s scripts.
---(Simplified) Example of the usage of the function from R\*'s scripts:
---ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_TO_RAGDOLL_WITH_FALL](https://docs.fivem.net/natives/?_0xD76632D99E4966C8).**
---
---@param ped Ped
---@param time number
---@param p2 number
---@param ragdollType number
---@param x number
---@param y number
---@param z number
---@param p7 number
---@param p8 number
---@param p9 number
---@param p10 number
---@param p11 number
---@param p12 number
---@param p13 number
function SetPedToRagdollWithFall(ped, time, p2, ragdollType, x, y, z, p7, p8, p9, p10, p11, p12, p13) end

---**`CFX` `server` [`0xD17AFCD8`](https://docs.fivem.net/natives/?_0xD17AFCD8)**
---
---Flags:
---SPC_AMBIENT_SCRIPT = (1 << 1),
---SPC_CLEAR_TASKS = (1 << 2),
---SPC_REMOVE_FIRES = (1 << 3),
---SPC_REMOVE_EXPLOSIONS = (1 << 4),
---SPC_REMOVE_PROJECTILES = (1 << 5),
---SPC_DEACTIVATE_GADGETS = (1 << 6),
---SPC_REENABLE_CONTROL_ON_DEATH = (1 << 7),
---SPC_LEAVE_CAMERA_CONTROL_ON = (1 << 8),
---SPC_ALLOW_PLAYER_DAMAGE = (1 << 9),
---SPC_DONT_STOP_OTHER_CARS_AROUND_PLAYER = (1 << 10),
---SPC_PREVENT_EVERYBODY_BACKOFF = (1 << 11),
---SPC_ALLOW_PAD_SHAKE = (1 << 12)
---See: https://alloc8or.re/gta5/doc/enums/eSetPlayerControlFlag.txt
---
---**This is the server-side RPC native equivalent of the client native [SET_PLAYER_CONTROL](https://docs.fivem.net/natives/?_0x8D32347D6D4C40A2).**
---
---@param player Player
---@param bHasControl boolean
---@param flags number
function SetPlayerControl(player, bHasControl, flags) end

---**`CFX` `server` [`0x8A2FBAD4`](https://docs.fivem.net/natives/?_0x8A2FBAD4)**
---
---Sets the culling radius for the specified player.
---Set to `0.0` to reset.
---
---@param playerSrc string The player to set the culling radius for.
---@param radius number The radius.
function SetPlayerCullingRadius(playerSrc, radius) end

---**`CFX` `server` [`0xDFB9A2A2`](https://docs.fivem.net/natives/?_0xDFB9A2A2)**
---
---Simply sets you as invincible (Health will not deplete).
---Use 0x733A643B5B0C53C1 instead if you want Ragdoll enabled, which is equal to:
---\*(DWORD \*)(playerPedAddress + 0x188) |= (1 << 9);
---
---**This is the server-side RPC native equivalent of the client native [SET_PLAYER_INVINCIBLE](https://docs.fivem.net/natives/?_0x239528EACDC3E7DE).**
---
---@param player Player
---@param toggle boolean
function SetPlayerInvincible(player, toggle) end

---**`CFX` `server` [`0x774A4C54`](https://docs.fivem.net/natives/?_0x774A4C54)**
---
---Set the model for a specific Player. Note that this will destroy the current Ped for the Player and create a new one, any reference to the old ped will be invalid after calling this.
---As per usual, make sure to request the model first and wait until it has loaded.
---
---**This is the server-side RPC native equivalent of the client native [SET_PLAYER_MODEL](https://docs.fivem.net/natives/?_0x00A1CADD00108836).**
---
---@param player Player The player to set the model for
---@param model Hash The model to use
function SetPlayerModel(player, model) end

---**`CFX` `server` [`0x6504EB38`](https://docs.fivem.net/natives/?_0x6504EB38)**
---
---Sets the routing bucket for the specified player.
---
---Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
---
---@param playerSrc string The player to set the routing bucket for.
---@param bucket number The bucket ID.
function SetPlayerRoutingBucket(playerSrc, bucket) end

---**`CFX` `server` [`0xB7A0914B`](https://docs.fivem.net/natives/?_0xB7A0914B)**
---
---Call SET_PLAYER_WANTED_LEVEL_NOW for immediate effect
---wantedLevel is an integer value representing 0 to 5 stars even though the game supports the 6th wanted level but no police will appear since no definitions are present for it in the game files
---disableNoMission-  Disables When Off Mission- appears to always be false
---
---**This is the server-side RPC native equivalent of the client native [SET_PLAYER_WANTED_LEVEL](https://docs.fivem.net/natives/?_0x39FF19C64EF7DA5B).**
---
---@param player Player
---@param wantedLevel number
---@param disableNoMission boolean
function SetPlayerWantedLevel(player, wantedLevel, disableNoMission) end

---**`CFX` `shared` [`0x21C7A35B`](https://docs.fivem.net/natives/?_0x21C7A35B)**
---
---A setter for [GET_RESOURCE_KVP_STRING](#\_0x5240DA5A).
---
---Example code:
---```lua
---SetResourceKvp('mollis', 'vesuvius citrate')
---```
---
---@param key string The key to set
---@param value string The value to write
function SetResourceKvp(key, value) end

---**`CFX` `shared` [`0x9ADD2938`](https://docs.fivem.net/natives/?_0x9ADD2938)**
---
---A setter for [GET_RESOURCE_KVP_FLOAT](#\_0x35BDCEEA).
---
---Example code:
---```lua
---local lickMy = 42.5
---SetResourceKvpFloat('bananabread', lickMy)
---```
---
---@param key string The key to set
---@param value number The value to write
function SetResourceKvpFloat(key, value) end

---**`CFX` `server` [`0x3517BFBE`](https://docs.fivem.net/natives/?_0x3517BFBE)**
---
---Nonsynchronous [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
---
---@param key string The key to set
---@param value number The value to write
function SetResourceKvpFloatNoSync(key, value) end

---**`CFX` `shared` [`0x6A2B1E8`](https://docs.fivem.net/natives/?_0x6A2B1E8)**
---
---A setter for [GET_RESOURCE_KVP_INT](#\_0x557B586A).
---
---Example code:
---```lua
---local lickMy = 42
---SetResourceKvp('bananabread', lickMy)
---```
---
---@param key string The key to set
---@param value number The value to write
function SetResourceKvpInt(key, value) end

---**`CFX` `server` [`0x26AEB707`](https://docs.fivem.net/natives/?_0x26AEB707)**
---
---Nonsynchronous [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
---
---@param key string The key to set
---@param value number The value to write
function SetResourceKvpIntNoSync(key, value) end

---**`CFX` `server` [`0xCF9A2FF`](https://docs.fivem.net/natives/?_0xCF9A2FF)**
---
---Nonsynchronous [SET_RESOURCE_KVP](#\_0x21C7A35B) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
---
---@param key string The key to set
---@param value string The value to write
function SetResourceKvpNoSync(key, value) end

---**`CFX` `server` [`0xA0F2201F`](https://docs.fivem.net/natives/?_0xA0F2201F)**
---
---Sets the entity lockdown mode for a specific routing bucket.
---
---Lockdown modes are:
---
---| Mode       | Meaning                                                    |
---| ---------- | ---------------------------------------------------------- |
---| `strict`   | No entities can be created by clients at all.              |
---| `relaxed`  | Only script-owned entities created by clients are blocked. |
---| `inactive` | Clients can create any entity they want.                   |
---
---@param bucketId number The routing bucket ID to adjust.
---@param mode string One of aforementioned modes.
function SetRoutingBucketEntityLockdownMode(bucketId, mode) end

---**`CFX` `server` [`0xCE51AC2C`](https://docs.fivem.net/natives/?_0xCE51AC2C)**
---
---Sets whether or not the specified routing bucket has automatically-created population enabled.
---
---@param bucketId number The routing bucket ID to adjust.
---@param mode boolean `true` to enable population, `false` to disable population.
function SetRoutingBucketPopulationEnabled(bucketId, mode) end

---**`CFX` `shared` [`0x8D50E33A`](https://docs.fivem.net/natives/?_0x8D50E33A)**
---
---Internal function for setting a state bag value.
---
---@param bagName string
---@param keyName string
---@param valueData string
---@param valueLength number
---@param replicated boolean
function SetStateBagValue(bagName, keyName, valueData, valueLength, replicated) end

---**`CFX` `server` [`0x24877D84`](https://docs.fivem.net/natives/?_0x24877D84)**
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_ALARM](https://docs.fivem.net/natives/?_0xCDE5E70C1DDB954C).**
---
---@param vehicle Vehicle
---@param state boolean
function SetVehicleAlarm(vehicle, state) end

---**`CFX` `server` [`0x920C2517`](https://docs.fivem.net/natives/?_0x920C2517)**
---
---p2 often set to 1000.0 in the decompiled scripts.
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_BODY_HEALTH](https://docs.fivem.net/natives/?_0xB77D05AC8C78AADB).**
---
---@param vehicle Vehicle
---@param value number
function SetVehicleBodyHealth(vehicle, value) end

---**`CFX` `server` [`0x57F24253`](https://docs.fivem.net/natives/?_0x57F24253)**
---
---colorPrimary & colorSecondary are the paint indexes for the vehicle.
---For a list of valid paint indexes, view: pastebin.com/pwHci0xK
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_COLOURS](https://docs.fivem.net/natives/?_0x4F1D4BE3A7F24601).**
---
---@param vehicle Vehicle
---@param colorPrimary number
---@param colorSecondary number
function SetVehicleColours(vehicle, colorPrimary, colorSecondary) end

---**`CFX` `server` [`0xA557AEAD`](https://docs.fivem.net/natives/?_0xA557AEAD)**
---
---Sets the selected vehicle's colors to their default value (specific variant specified using the colorCombination parameter).
---Range of possible values for colorCombination is currently unknown, I couldn't find where these values are stored either (Disquse's guess was vehicles.meta but I haven't seen it in there.)
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_COLOUR_COMBINATION](https://docs.fivem.net/natives/?_0x33E8CD3322E2FE31).**
---
---@param vehicle Vehicle The vehicle to modify.
---@param colorCombination number One of the default color values of the vehicle.
function SetVehicleColourCombination(vehicle, colorCombination) end

---**`CFX` `server` [`0x8DF9F9BC`](https://docs.fivem.net/natives/?_0x8DF9F9BC)**
---
---p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_CUSTOM_PRIMARY_COLOUR](https://docs.fivem.net/natives/?_0x7141766F91D15BEA).**
---
---@param vehicle Vehicle
---@param r number
---@param g number
---@param b number
function SetVehicleCustomPrimaryColour(vehicle, r, g, b) end

---**`CFX` `server` [`0x9D77259E`](https://docs.fivem.net/natives/?_0x9D77259E)**
---
---p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_CUSTOM_SECONDARY_COLOUR](https://docs.fivem.net/natives/?_0x36CED73BFED89754).**
---
---@param vehicle Vehicle
---@param r number
---@param g number
---@param b number
function SetVehicleCustomSecondaryColour(vehicle, r, g, b) end

---**`CFX` `server` [`0x2B39128B`](https://docs.fivem.net/natives/?_0x2B39128B)**
---
---Sets the dirt level of the passed vehicle.
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DIRT_LEVEL](https://docs.fivem.net/natives/?_0x79D3B596FE44EE8B).**
---
---@param vehicle Vehicle The vehicle to set.
---@param dirtLevel number A number between 0.0 and 15.0 representing the vehicles dirt level.
function SetVehicleDirtLevel(vehicle, dirtLevel) end

---**`CFX` `server` [`0x4CDD35D0`](https://docs.fivem.net/natives/?_0x4CDD35D0)**
---
---// Source GTA VC miss2 leak, matching constants for 0/2/4, testing
---// They use 10 in am_mp_property_int, don't know what it does atm.
---enum eCarLock {
---CARLOCK_NONE = 0,
---CARLOCK_UNLOCKED = 1,
---CARLOCK_LOCKED = 2,
---CARLOCK_LOCKOUT_PLAYER_ONLY = 3,
---CARLOCK_LOCKED_PLAYER_INSIDE = 4,
---CARLOCK_LOCKED_INITIALLY = 5,
---CARLOCK_FORCE_SHUT_DOORS = 6,
---CARLOCK_LOCKED_BUT_CAN_BE_DAMAGED = 7
---};
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DOORS_LOCKED](https://docs.fivem.net/natives/?_0xB664292EAECF7FA6).**
---
---@param vehicle Vehicle
---@param doorLockStatus number
function SetVehicleDoorsLocked(vehicle, doorLockStatus) end

---**`CFX` `server` [`0x8147FEA7`](https://docs.fivem.net/natives/?_0x8147FEA7)**
---
---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DOOR_BROKEN](https://docs.fivem.net/natives/?_0xD4D4F6A4AB575A33).**
---
---@param vehicle Vehicle
---@param doorIndex number
---@param deleteDoor boolean
function SetVehicleDoorBroken(vehicle, doorIndex, deleteDoor) end

---**`CFX` `server` [`0x400F9556`](https://docs.fivem.net/natives/?_0x400F9556)**
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_NUMBER_PLATE_TEXT](https://docs.fivem.net/natives/?_0x95A88F0B409CDA47).**
---
---@param vehicle Vehicle
---@param plateText string
function SetVehicleNumberPlateText(vehicle, plateText) end

---**`CFX` `shared` [`0xDD379006`](https://docs.fivem.net/natives/?_0xDD379006)**
---
---Example code:
---```lua
---SetResourceKvp('mollis:2', 'should be taken with alcohol')
---SetResourceKvp('mollis:1', 'vesuvius citrate')
---SetResourceKvp('mollis:manufacturer', 'Betta Pharmaceuticals')
---
---local kvpHandle = StartFindKvp('mollis:')
---
---if kvpHandle ~= -1 then
---	local key
---
---	repeat
---		key = FindKvp(kvpHandle)
---
---		if key then
---			print(('%s: %s'):format(key, GetResourceKvpString(key)))
---		end
---	until key
---
---	EndFindKvp(kvpHandle)
---end
---```
---
---@param prefix string A prefix match
---@return number # A KVP find handle to use with [FIND_KVP](#\_0xBD7BEBC5) and close with [END_FIND_KVP](#\_0xB3210203)
function StartFindKvp(prefix) end

---**`CFX` `server` [`0x29B440DC`](https://docs.fivem.net/natives/?_0x29B440DC)**
---
---@param resourceName string
---@return boolean
function StartResource(resourceName) end

---**`CFX` `server` [`0x21783161`](https://docs.fivem.net/natives/?_0x21783161)**
---
---@param resourceName string
---@return boolean
function StopResource(resourceName) end

---**`CFX` `server` [`0xCB0D8932`](https://docs.fivem.net/natives/?_0xCB0D8932)**
---
---Makes the specified ped attack the target ped.
---p2 should be 0
---p3 should be 16
---
---**This is the server-side RPC native equivalent of the client native [TASK_COMBAT_PED](https://docs.fivem.net/natives/?_0xF166E48407BAC484).**
---
---@param ped Ped
---@param targetPed Ped
---@param p2 number
---@param p3 number
function TaskCombatPed(ped, targetPed, p2, p3) end

---**`CFX` `server` [`0x2B84D1C4`](https://docs.fivem.net/natives/?_0x2B84D1C4)**
---
---Example:
---TASK::TASK_DRIVE_BY(l\_467\[1/*22*/], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});
---Needs working example. Doesn't seem to do anything.
---I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.
---I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.
---I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.
---
---**This is the server-side RPC native equivalent of the client native [TASK_DRIVE_BY](https://docs.fivem.net/natives/?_0x2F8AF0E82773A171).**
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

---**`CFX` `server` [`0xB8689B4E`](https://docs.fivem.net/natives/?_0xB8689B4E)**
---
---speed 1.0 = walk, 2.0 = run
---p5 1 = normal, 3 = teleport to vehicle, 8 = normal/carjack ped from seat, 16 = teleport directly into vehicle
---p6 is always 0
---
---**This is the server-side RPC native equivalent of the client native [TASK_ENTER_VEHICLE](https://docs.fivem.net/natives/?_0xC20E50AA46D09CA8).**
---
---@param ped Ped
---@param vehicle Vehicle
---@param timeout number
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@param speed number
---@param flag number
---@param p6 any
function TaskEnterVehicle(ped, vehicle, timeout, seatIndex, speed, flag, p6) end

---**`CFX` `server` [`0xC1971F30`](https://docs.fivem.net/natives/?_0xC1971F30)**
---
---**This is the server-side RPC native equivalent of the client native [TASK_EVERYONE_LEAVE_VEHICLE](https://docs.fivem.net/natives/?_0x7F93691AB4B92272).**
---
---@param vehicle Vehicle
function TaskEveryoneLeaveVehicle(vehicle) end

---**`CFX` `server` [`0x80A9E7A7`](https://docs.fivem.net/natives/?_0x80A9E7A7)**
---
---**This is the server-side RPC native equivalent of the client native [TASK_GO_STRAIGHT_TO_COORD](https://docs.fivem.net/natives/?_0xD76B57B44F1E6F8B).**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param speed number
---@param timeout number
---@param targetHeading number
---@param distanceToSlide number
function TaskGoStraightToCoord(ped, x, y, z, speed, timeout, targetHeading, distanceToSlide) end

---**`CFX` `server` [`0xF91DF93B`](https://docs.fivem.net/natives/?_0xF91DF93B)**
---
---example from fm_mission_controller
---TASK::TASK_GO_TO_COORD_ANY_MEANS(l\_649, sub_f7e86(-1, 0), 1.0, 0, 0, 786603, 0xbf800000);
---
---**This is the server-side RPC native equivalent of the client native [TASK_GO_TO_COORD_ANY_MEANS](https://docs.fivem.net/natives/?_0x5BC448CB78FA3E88).**
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

---**`CFX` `server` [`0x374827C2`](https://docs.fivem.net/natives/?_0x374827C2)**
---
---The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0
---Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.
---Example: TASK::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)
---Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).
---
---**This is the server-side RPC native equivalent of the client native [TASK_GO_TO_ENTITY](https://docs.fivem.net/natives/?_0x6A071245EB0D1882).**
---
---@param entity Entity
---@param target Entity
---@param duration number
---@param distance number
---@param speed number
---@param p5 number
---@param p6 number
function TaskGoToEntity(entity, target, duration, distance, speed, p5, p6) end

---**`CFX` `server` [`0x8DCC19C5`](https://docs.fivem.net/natives/?_0x8DCC19C5)**
---
---In the scripts, p3 was always -1.
---p3 seems to be duration or timeout of turn animation.
---Also facingPed can be 0 or -1 so ped will just raise hands up.
---
---**This is the server-side RPC native equivalent of the client native [TASK_HANDS_UP](https://docs.fivem.net/natives/?_0xF2EAB31979A7F910).**
---
---@param ped Ped
---@param duration number
---@param facingPed Ped
---@param p3 number
---@param p4 boolean
function TaskHandsUp(ped, duration, facingPed, p3, p4) end

---**`CFX` `server` [`0xDBDD79FA`](https://docs.fivem.net/natives/?_0xDBDD79FA)**
---
---Flags are the same flags used in [`TASK_LEAVE_VEHICLE`](#\_0xD3DBCE61A490BE02)
---
---**This is the server-side RPC native equivalent of the client native [TASK_LEAVE_ANY_VEHICLE](https://docs.fivem.net/natives/?_0x504D54DF3F6F2247).**
---
---@param ped Ped
---@param p1 number
---@param flags number
function TaskLeaveAnyVehicle(ped, p1, flags) end

---**`CFX` `server` [`0x7B1141C6`](https://docs.fivem.net/natives/?_0x7B1141C6)**
---
---Flags from decompiled scripts:
---0 = normal exit and closes door.
---1 = normal exit and closes door.
---16 = teleports outside, door kept closed.  (This flag does not seem to work for the front seats in buses, NPCs continue to exit normally)
---64 = normal exit and closes door, maybe a bit slower animation than 0.
---256 = normal exit but does not close the door.
---4160 = ped is throwing himself out, even when the vehicle is still.
---262144 = ped moves to passenger seat first, then exits normally
---Others to be tried out: 320, 512, 131072.
---
---**This is the server-side RPC native equivalent of the client native [TASK_LEAVE_VEHICLE](https://docs.fivem.net/natives/?_0xD3DBCE61A490BE02).**
---
---@param ped Ped
---@param vehicle Vehicle
---@param flags number
function TaskLeaveVehicle(ped, vehicle, flags) end

---**`CFX` `server` [`0x5AB552C6`](https://docs.fivem.net/natives/?_0x5AB552C6)**
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
---ANIM_FLAG_NORMAL = 0,
---ANIM_FLAG_REPEAT = 1,
---ANIM_FLAG_STOP_LAST_FRAME = 2,
---ANIM_FLAG_UPPERBODY = 16,
---ANIM_FLAG_ENABLE_PLAYER_CONTROL = 32,
---ANIM_FLAG_CANCELABLE = 120,
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
---0 for single player
---Can be 1 but only for MP
---```
---
---**This is the server-side RPC native equivalent of the client native [TASK_PLAY_ANIM](https://docs.fivem.net/natives/?_0xEA47FE3719165B94).**
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

---**`CFX` `server` [`0x3DDEB0E6`](https://docs.fivem.net/natives/?_0x3DDEB0E6)**
---
---It's similar to the one above, except the first 6 floats let you specify the initial position and rotation of the task. (Ped gets teleported to the position).
---[Animations list](https://alexguirre.github.io/animations-list/)
---
---**This is the server-side RPC native equivalent of the client native [TASK_PLAY_ANIM_ADVANCED](https://docs.fivem.net/natives/?_0x83CDB10EA29B370B).**
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

---**`CFX` `server` [`0x8A632BD8`](https://docs.fivem.net/natives/?_0x8A632BD8)**
---
---**This is the server-side RPC native equivalent of the client native [TASK_REACT_AND_FLEE_PED](https://docs.fivem.net/natives/?_0x72C896464915D1B1).**
---
---@param ped Ped
---@param fleeTarget Ped
function TaskReactAndFleePed(ped, fleeTarget) end

---**`CFX` `server` [`0x601C22E3`](https://docs.fivem.net/natives/?_0x601C22E3)**
---
---Firing Pattern Hash Information: https://pastebin.com/Px036isB
---
---**This is the server-side RPC native equivalent of the client native [TASK_SHOOT_AT_COORD](https://docs.fivem.net/natives/?_0x46A6CC01E0826106).**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param duration number
---@param firingPattern Hash
function TaskShootAtCoord(ped, x, y, z, duration, firingPattern) end

---**`CFX` `server` [`0xAC0631C9`](https://docs.fivem.net/natives/?_0xAC0631C9)**
---
---//this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds
---Entity aimedentity;
---Player player = PLAYER::PLAYER_ID();
---PLAYER::\_GET_AIMED_ENTITY(player, \&aimedentity);
---//bg is an array of peds
---TASK::TASK_SHOOT_AT_ENTITY(bg\[i], aimedentity, 5000, MISC::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));
---in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.
---Firing Pattern Hash Information: https://pastebin.com/Px036isB
---
---**This is the server-side RPC native equivalent of the client native [TASK_SHOOT_AT_ENTITY](https://docs.fivem.net/natives/?_0x08DA95E8298AE772).**
---
---@param entity Entity
---@param target Entity
---@param duration number
---@param firingPattern Hash
function TaskShootAtEntity(entity, target, duration, firingPattern) end

---**`CFX` `server` [`0x65D4A35D`](https://docs.fivem.net/natives/?_0x65D4A35D)**
---
---**This is the server-side RPC native equivalent of the client native [TASK_WARP_PED_INTO_VEHICLE](https://docs.fivem.net/natives/?_0x9A7D091411C5F684).**
---
---@param ped Ped
---@param vehicle Vehicle
---@param seatIndex number
function TaskWarpPedIntoVehicle(ped, vehicle, seatIndex) end

---**`CFX` `server` [`0x1E35DBBA`](https://docs.fivem.net/natives/?_0x1E35DBBA)**
---
---@param playerSrc string
---@param reason string
function TempBanPlayer(playerSrc, reason) end

---**`CFX` `server` [`0x2F7A49E6`](https://docs.fivem.net/natives/?_0x2F7A49E6)**
---
---The backing function for TriggerClientEvent.
---
---@param eventName string
---@param eventTarget string
---@param eventPayload string
---@param payloadLength number
function TriggerClientEventInternal(eventName, eventTarget, eventPayload, payloadLength) end

---**`CFX` `shared` [`0x91310870`](https://docs.fivem.net/natives/?_0x91310870)**
---
---The backing function for TriggerEvent.
---
---@param eventName string
---@param eventPayload string
---@param payloadLength number
function TriggerEventInternal(eventName, eventPayload, payloadLength) end

---**`CFX` `server` [`0x70B35890`](https://docs.fivem.net/natives/?_0x70B35890)**
---
---The backing function for TriggerLatentClientEvent.
---
---@param eventName string
---@param eventTarget string
---@param eventPayload string
---@param payloadLength number
---@param bps number
function TriggerLatentClientEventInternal(eventName, eventTarget, eventPayload, payloadLength, bps) end

---**`CFX` `server` [`0x2E310ACD`](https://docs.fivem.net/natives/?_0x2E310ACD)**
---
---@param password string
---@param hash string
---@return boolean
function VerifyPasswordHash(password, hash) end

---**`CFX` `shared` [`0x58382A19`](https://docs.fivem.net/natives/?_0x58382A19)**
---
---Returns whether or not the currently executing event was canceled.
---
---@return boolean # A boolean.
function WasEventCanceled() end

---**`CFX` `server` [`0x6228F159`](https://docs.fivem.net/natives/?_0x6228F159)**
---
---Adds a rectangular blip for the specified coordinates/area.
---It is recommended to use [SET_BLIP_ROTATION](#\_0xF87683CDF73C3F6E) and [SET_BLIP_COLOUR](#\_0x03D7FB09E75D6B7E) to make the blip not rotate along with the camera.
---By default, the blip will show as a *regular* blip with the specified color/sprite if it is outside of the minimap view.
---Example image:
---![minimap](https://w.wew.wtf/pdcjig.png)
---![big map](https://w.wew.wtf/zgcjcm.png)
---(Native name is *likely* to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
---
---**This is the server-side RPC native equivalent of the client native [\_ADD_BLIP_FOR_AREA](https://docs.fivem.net/natives/?_0xCE5D0E5E315DB238).**
---
---@param x number The X coordinate of the center of the blip.
---@param y number The Y coordinate of the center of the blip.
---@param z number The Z coordinate of the center of the blip.
---@param width number The width of the blip.
---@param height number The height of the blip.
---@return Blip # A handle to the blip.
function AddBlipForArea(x, y, z, width, height) end

---**`CFX` `server` [`0xEC09DB1B`](https://docs.fivem.net/natives/?_0xEC09DB1B)**
---
---Used for freemode (online) characters.
---Indices:
---
---1.  black
---2.  very light blue/green
---3.  dark blue
---4.  brown
---5.  darker brown
---6.  light brown
---7.  blue
---8.  light blue
---9.  pink
---10. yellow
---11. purple
---12. black
---13. dark green
---14. light brown
---15. yellow/black pattern
---16. light colored spiral pattern
---17. shiny red
---18. shiny half blue/half red
---19. half black/half light blue
---20. white/red perimter
---21. green snake
---22. red snake
---23. dark blue snake
---24. dark yellow
---25. bright yellow
---26. all black
---27. red small pupil
---28. devil blue/black
---29. white small pupil
---30. glossed over
---
---**This is the server-side RPC native equivalent of the client native [\_SET_PED_EYE_COLOR](https://docs.fivem.net/natives/?_0x50B56988B170AFDF).**
---
---@param ped Ped
---@param index number
function SetPedEyeColor(ped, index) end

---**`CFX` `server` [`0x6C8D4458`](https://docs.fivem.net/natives/?_0x6C8D4458)**
---
---Sets the various freemode face features, e.g. nose length, chin shape.
---**Indexes (From 0 to 19):**
---Parentheses indicate morph scale/direction as in (-1.0 to 1.0)
---
---*   **0**: Nose Width (Thin/Wide)
---*   **1**: Nose Peak (Up/Down)
---*   **2**: Nose Length (Long/Short)
---*   **3**: Nose Bone Curveness (Crooked/Curved)
---*   **4**: Nose Tip (Up/Down)
---*   **5**: Nose Bone Twist (Left/Right)
---*   **6**: Eyebrow (Up/Down)
---*   **7**: Eyebrow (In/Out)
---*   **8**: Cheek Bones (Up/Down)
---*   **9**: Cheek Sideways Bone Size (In/Out)
---*   **10**: Cheek Bones Width (Puffed/Gaunt)
---*   **11**: Eye Opening (Both) (Wide/Squinted)
---*   **12**: Lip Thickness (Both) (Fat/Thin)
---*   **13**: Jaw Bone Width (Narrow/Wide)
---*   **14**: Jaw Bone Shape (Round/Square)
---*   **15**: Chin Bone (Up/Down)
---*   **16**: Chin Bone Length (In/Out or Backward/Forward)
---*   **17**: Chin Bone Shape (Pointed/Square)
---*   **18**: Chin Hole (Chin Bum)
---*   **19**: Neck Thickness (Thin/Thick)
---    **Note:**
---    You may need to call [`SetPedHeadBlendData`](#0x9414E18B9434C2FE) prior to calling this native in order for it to work.
---
---**This is the server-side RPC native equivalent of the client native [\_SET_PED_FACE_FEATURE](https://docs.fivem.net/natives/?_0x71A5C1DBA060049E).**
---
---@param ped Ped The ped entity
---@param index number An integer ranging from 0 to 19
---@param scale number A float ranging from -1.0 to 1.0
function SetPedFaceFeature(ped, index, scale) end

---**`CFX` `server` [`0xBB43F090`](https://docs.fivem.net/natives/?_0xBB43F090)**
---
---Used for freemode (online) characters.
---
---**This is the server-side RPC native equivalent of the client native [\_SET_PED_HAIR_COLOR](https://docs.fivem.net/natives/?_0x4CFFC65454C93A49).**
---
---@param ped Ped
---@param colorID number
---@param highlightColorID number
function SetPedHairColor(ped, colorID, highlightColorID) end

---**`CFX` `server` [`0x78935A27`](https://docs.fivem.net/natives/?_0x78935A27)**
---
---```
---Used for freemode (online) characters.
---Called after SET_PED_HEAD_OVERLAY().
---```
---
---**Note:**
---You may need to call [`SetPedHeadBlendData`](#0x9414E18B9434C2FE) prior to calling this native in order for it to work.
---
---**This is the server-side RPC native equivalent of the client native [\_SET_PED_HEAD_OVERLAY_COLOR](https://docs.fivem.net/natives/?_0x497BF74A7B9CB952).**
---
---@param ped Ped The ped entity
---@param overlayID number An integer representing the overlay id
---@param colorType number 1 for eyebrows, beards, and chest hair; 2 for blush and lipstick; and 0 otherwise, though not called in those cases.
---@param colorID number An integer representing the primary color id
---@param secondColorID number An integer representing the secondary color id
function SetPedHeadOverlayColor(ped, overlayID, colorType, colorID, secondColorID) end
