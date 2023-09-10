---@meta

---Loads a minimap overlay from a GFx file in the current resource.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4AFD2499)
---@param name string The path to a `.gfx` file in the current resource. It has to be specified as a `file`.
---@return number retval A minimap overlay ID.
function AddMinimapOverlay(name) end

---Adds an output for the specified audio submix.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAC6E290D)
---@param submixId number The input submix.
---@param outputSubmixId number The output submix. Use `0` for the master game submix.
function AddAudioSubmixOutput(submixId, outputSubmixId) end

---Experimental natives, please do not use in a live environment.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA66F8F75)
---@param origTxd string 
---@param origTxn string 
---@param newTxd string 
---@param newTxn string 
function AddReplaceTexture(origTxd, origTxn, newTxd, newTxn) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x32CA01C3)
---@param entryKey string 
---@param entryText string 
function AddTextEntry(entryKey, entryText) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x289DA860)
---@param entryKey number | string 
---@param entryText string 
function AddTextEntryByHash(entryKey, entryText) end

---This is similar to the PushScaleformMovieFunction natives, except it calls in the `TIMELINE` of a minimap overlay.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C89C0ED)
---@param miniMap number The minimap overlay ID.
---@param fnName string A function in the overlay's TIMELINE.
---@return boolean retval 
function CallMinimapScaleformFunction(miniMap, fnName) end

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
---If bagName refers to an entity, use [GET_ENTITY_FROM_STATE_BAG_NAME](?\_0x4BDF1868) to get the entity handle
---If bagName refers to a player, use [GET_PLAYER_FROM_STATE_BAG_NAME](?\_0xA56135E0) to get the player handle
---[Native Documentation](https://docs.fivem.net/natives/?_0x5BA35AAF)
---Example: 
---```AddStateBagChangeHandler("blockTasks", nil, function(bagName, key, value) 
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
---end)```
---@param keyFilter string The key to check for, or null for no filter.
---@param bagFilter string The bag ID to check for such as `entity:65535`, or null for no filter.
---@param handler function The handler function.
---@return number retval A cookie to remove the change handler.
function AddStateBagChangeHandler(keyFilter, bagFilter, handler) end

---Cancels the currently executing event.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFA29D35D)
function CancelEvent() end

---Returns whether or not the specified player has enough information to start a commerce session for.
---[Native Documentation](https://docs.fivem.net/natives/?_0x429461C3)
---@param playerSrc string The player handle
---@return boolean retval True or false.
function CanPlayerStartCommerceSession(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF97B1C93)
---@param enabled boolean 
function EnableEnhancedHostSupport(enabled) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF4E2079D)
---@param referenceIdentity string 
---@return string retval 
function DuplicateFunctionReference(referenceIdentity) end

---Removes vehicle xenon lights custom RGB color.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2867ED8C)
---@param vehicle number The vehicle handle.
function ClearVehicleXenonLightsCustomColor(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA0613E1)
---@param playerSrc string 
---@param reason string 
function DropPlayer(playerSrc, reason) end

---Commits the backing pixels to the specified runtime texture.
---[Native Documentation](https://docs.fivem.net/natives/?_0x19D81F4E)
---@param tex number The runtime texture handle.
function CommitRuntimeTexture(tex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9615C2AD)
---@param findHandle number 
function EndFindPed(findHandle) end

---Creates a volume where water effects do not apply.
---Useful for preventing water collisions from flooding areas underneath them.
---This has no effect on waterquads, only water created from drawables and collisions.
---Don't create volumes when your local ped is swimming (e.g. use IS_PED_SWIMMING in your scripts before you call this)
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB1C6DD)
---@param xMin number The min X component of the AABB volume where water does not affect the player.
---@param yMin number The min Y component for the AABB volume.
---@param zMin number The min Z component for the AABB volume.
---@param xMax number The max X component for the AABB volume.
---@param yMax number The max Y component for the AABB volume.
---@param zMax number The max Z component for the AABB volume.
---@return number retval 
function CreateDryVolume(xMin, yMin, zMin, xMax, yMax, zMax) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3C407D53)
---@param findHandle number 
function EndFindPickup(findHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDEDA4E50)
---@param findHandle number 
function EndFindObject(findHandle) end

---Creates a blank runtime texture.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFEC3766D)
---@param txd number A handle to the runtime TXD to create the runtime texture in.
---@param txn string The name for the texture in the runtime texture dictionary.
---@param width number The width of the new texture.
---@param height number The height of the new texture.
---@return number retval A runtime texture handle.
function CreateRuntimeTexture(txd, txn, width, height) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9227415A)
---@param findHandle number 
function EndFindVehicle(findHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3210203)
---@param handle number The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
function EndFindKvp(handle) end

---A getter for [SET_AMBIENT_VEHICLE_RANGE_MULTIPLIER_THIS_FRAME](#\_0x90B6DA738A9A25DA).
---[Native Documentation](https://docs.fivem.net/natives/?_0x667EC929)
---@return number retval Returns ambient vehicle range multiplier value.
function GetAmbientVehicleRangeMultiplier() end

---Internal function for ensuring an entity has a state bag.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3BB78F05)
---@param entity number 
function EnsureEntityStateBag(entity) end

---Creates an audio submix with the specified name, or gets the existing audio submix by that name.
---[Native Documentation](https://docs.fivem.net/natives/?_0x658D2BC8)
---@param name string The audio submix name.
---@return number retval A submix ID, or -1 if the submix could not be created.
function CreateAudioSubmix(name) end

---Creates a runtime texture from a DUI handle.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB135472B)
---@param txd number A handle to the runtime TXD to create the runtime texture in.
---@param txn string The name for the texture in the runtime texture dictionary.
---@param duiHandle string The DUI handle returned from GET_DUI_HANDLE.
---@return number retval The runtime texture handle.
function CreateRuntimeTextureFromDuiHandle(txd, txn, duiHandle) end

---Creates a runtime texture dictionary with the specified name.
---Example:
---
---```lua
---local txd = CreateRuntimeTxd('meow')
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F3AC778)
---@param name string The name for the runtime TXD.
---@return number retval A handle to the runtime TXD.
function CreateRuntimeTxd(name) end

---Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
---[Native Documentation](https://docs.fivem.net/natives/?_0x23EAF899)
---@param url string The initial URL to load in the browser.
---@param width number The width of the backing surface.
---@param height number The height of the backing surface.
---@return number retval A DUI object.
function CreateDui(url, width, height) end

---Deletes the specified entity.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFAA3D236)
---@param entity number The entity to delete.
function DeleteEntity(entity) end

---Returns all vehicle handles known to the server.
---The data returned adheres to the following layout:
---
---```
---[127, 42, 13, 37]
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x332169F5)
---@return table retval An object containing a list of vehicle handles.
function GetAllVehicles() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x561C060B)
---@param commandString string 
function ExecuteCommand(commandString) end

---A getter for [SET_AMBIENT_PED_RANGE_MULTIPLIER_THIS_FRAME](#\_0x0B919E1FB47CC4E0).
---[Native Documentation](https://docs.fivem.net/natives/?_0xB550232D)
---@return number retval Returns ambient ped range multiplier value.
function GetAmbientPedRangeMultiplier() end

---Creates a runtime texture from the specified file in the current resource or a base64 data URL.
---[Native Documentation](https://docs.fivem.net/natives/?_0x786D8BC3)
---@param txd number A handle to the runtime TXD to create the runtime texture in.
---@param txn string The name for the texture in the runtime texture dictionary.
---@param fileName string The file name of an image to load or a base64 data URL. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.
---@return number retval A runtime texture handle.
function CreateRuntimeTextureFromImage(txd, txn, fileName) end

---Nonsynchronous [DELETE_RESOURCE_KVP](#\_0x7389B5DF) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
---[Native Documentation](https://docs.fivem.net/natives/?_0x4152C90)
---@param key string The key to delete
function DeleteResourceKvpNoSync(key) end

---Disables the game's afk camera that starts panning around after 30 seconds of inactivity.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3D5AB7F0)
---@param state boolean On/Off
function DisableIdleCamera(state) end

---Can be used to get a console variable of type `char*`, for example a string.
---[Native Documentation](https://docs.fivem.net/natives/?_0x6CCD2564)
---Example: 
---```if GetConvar('voice_useNativeAudio', 'false') == 'true' then
---    Citizen.Trace('Native Audio is enabled.')
---end```
---@param varName string The console variable to look up.
---@param default_ string The default value to set if none is found.
---@return string retval Returns the convar value if it can be found, otherwise it returns the assigned `default`.
function GetConvar(varName, default_) end

---This native is not implemented.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD2CB95A3)
---@param data string 
---@param objectId number 
---@param tree string 
---@return number retval 
function ExperimentalLoadCloneCreate(data, objectId, tree) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1E86F206)
---@param referenceIdentity string 
function DeleteFunctionReference(referenceIdentity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7389B5DF)
---Example: 
---```DeleteResourceKvp('liberty_city')```
---@param key string The key to delete
function DeleteResourceKvp(key) end

---This native is not implemented.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D65CAD2)
---@param entity number 
---@return string retval 
function ExperimentalSaveCloneCreate(entity) end

---Destroys a DUI browser.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA085CB10)
---@param duiObject number The DUI browser handle.
function DestroyDui(duiObject) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3AC90869)
---@param entity number 
---@return boolean retval 
function DoesEntityExist(entity) end

---Disables the game's world horizon lods rendering (see `farlods.#dd`).
---Using the island hopper natives might also affect this state.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA9C92CDC)
---@param state boolean On/Off
function DisableWorldhorizonRendering(state) end

---This native returns the currently used game's name.
---[Native Documentation](https://docs.fivem.net/natives/?_0xACA18ECD)
---@return string retval The game name as a string, one of the following values: gta4, gta5, rdr3
function GetCurrentGameName() end

---Can be used to get a console variable casted back to `int` (an integer value).
---[Native Documentation](https://docs.fivem.net/natives/?_0x935C0AB2)
---Example: 
---```if GetConvarInt('remainingRounds', 0) < 900 then
---    Citizen.Trace("Less than 900 rounds remaining...")
---end```
---@param varName string The console variable to look up.
---@param default_ number The default value to set if none is found (variable not set using [SET_CONVAR](#\_0x341B16D2), or not accessible).
---@return number retval Returns the convar value if it can be found, otherwise it returns the assigned `default`.
function GetConvarInt(varName, default_) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFAA6CB5D)
---@param outEntity number 
---@return number retval 
function FindFirstObject(outEntity) end

---Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F57A89D)
---@param camera number 
---@param rightVector vector3 
---@param forwardVector vector3 
---@param upVector vector3 
---@param position vector3 
function GetCamMatrix(camera, rightVector, forwardVector, upVector, position) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F70F5A3)
---@return string retval 
function GetHostId() end

---This native is not implemented.
---[Native Documentation](https://docs.fivem.net/natives/?_0x6BC189AC)
---@param entity number 
---@param data string 
function ExperimentalLoadCloneSync(entity, data) end

---Returns the name of the currently executing resource.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE5E9EBBB)
---@return string retval The name of the resource.
function GetCurrentResourceName() end

---This native is not implemented.
---[Native Documentation](https://docs.fivem.net/natives/?_0x38D19210)
---@param entity number 
---@return string retval 
function ExperimentalSaveCloneSync(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3FF9D340)
---@param outEntity number 
---@return number retval 
function FindFirstPickup(outEntity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x237613B3)
---@return number retval The number of doors registered in the system
function DoorSystemGetSize() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBD7BEBC5)
---@param handle number The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
---@return string retval None.
function FindKvp(handle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF01E2AAB)
---@param vehicle number The target vehicle.
---@return number retval See the client-side [GET_HELI_MAIN_ROTOR_HEALTH](https://docs.fivem.net/natives/?\_0xE4CB7541F413D2C5) for the return value.
function GetHeliMainRotorHealth(vehicle) end

---Returns the current console output buffer.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE57429FA)
---@return string retval The most recent game console output, as a string.
function GetConsoleBuffer() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB012961)
---@param outEntity number 
---@return number retval 
function FindFirstPed(outEntity) end

---Returns a list of door system entries: a door system hash (see [ADD_DOOR_TO_SYSTEM](#\_0x6F8838D03D1DC226)) and its object handle.
---
---The data returned adheres to the following layout:
---
---```
---[{doorHash1, doorHandle1}, ..., {doorHashN, doorHandleN}]
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF65BBA4B)
---@return table retval An object containing a list of door system entries.
function DoorSystemGetActive() end

---Requests whether or not the player owns the specified package.
---[Native Documentation](https://docs.fivem.net/natives/?_0xDEF0480B)
---@param playerSrc string The player handle
---@param skuId number The package ID on Tebex.
---@return boolean retval A boolean.
function DoesPlayerOwnSkuExt(playerSrc, skuId) end

---Like DRAW_RECT, but it's a line.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB856A90)
---@param x1 number First x.
---@param y1 number First y.
---@param x2 number Second x.
---@param y2 number Second y.
---@param width number Width of line.
---@param r number Red.
---@param g number Green.
---@param b number Blue.
---@param a number Alpha.
function DrawLine2d(x1, y1, x2, y2, width, r, g, b, a) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x15E55694)
---@param outEntity number 
---@return number retval 
function FindFirstVehicle(outEntity) end

---Returns the peer address of the remote game server that the user is currently connected to.
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA11BFBA)
---@return string retval The peer address of the game server (e.g. `127.0.0.1:30120`), or NULL if not available.
function GetCurrentServerEndpoint() end

---DRAW_RECT, but with a rotation. Seems to be broken.
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC37C168)
---@param x number 
---@param y number 
---@param width number 
---@param height number 
---@param rotation number 
---@param r number 
---@param g number 
---@param b number 
---@param a number 
function DrawRectRotated(x, y, width, height, rotation, r, g, b, a) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA41BC13D)
---@param vehicle number The target vehicle.
---@return number retval See the client-side [GET_HELI_TAIL_ROTOR_HEALTH](https://docs.fivem.net/natives/?\_0xAE8CE82A4219AC8C) for the return value.
function GetHeliTailRotorHealth(vehicle) end

---Requests whether or not the player owns the specified SKU.
---[Native Documentation](https://docs.fivem.net/natives/?_0x167ABA27)
---@param playerSrc string The player handle
---@param skuId number The ID of the SKU.
---@return boolean retval A boolean.
function DoesPlayerOwnSku(playerSrc, skuId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x13B6855D)
---@param private_ boolean 
function FlagServerAsPrivate(private_) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF772BB2C)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local portalIndex = 0
---  local cornerIndex = 0
---
---  local x, y, z = GetInteriorPortalCornerPosition(interiorId, portalIndex, cornerIndex)
---  print("position of portal " .. portalIndex .. "corner index " .. cornerIndex .. " is: " .. vec(x, y, z))
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param cornerIndex number Portal's corner index.
---@param posX number 
---@param posY number 
---@param posZ number 
function GetInteriorPortalCornerPosition(interiorId, portalIndex, cornerIndex, posX, posY, posZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4107EF0F)
---@param findHandle number 
---@param outEntity number 
---@return boolean retval 
function FindNextPickup(findHandle, outEntity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4E129DBF)
---@param findHandle number 
---@param outEntity number 
---@return boolean retval 
function FindNextObject(findHandle, outEntity) end

---Returns the NUI window handle for a specified DUI browser object.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1655D41D)
---@param duiObject number The DUI browser handle.
---@return string retval The NUI window handle, for use in e.g. CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
function GetDuiHandle(duiObject) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF7F66AB)
---@param playerSrc string 
---@return number retval 
function GetNumPlayerIdentifiers(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD05BB8B1)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalCount(interiorId)
---  print("interior " .. interiorId .. "has " .. count .. " portals")
---end```
---@param interiorId number The target interior.
---@return number retval The amount of portals in interior.
function GetInteriorPortalCount(interiorId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x619E4A3D)
---@param playerSrc string 
---@return number retval 
function GetNumPlayerTokens(playerSrc) end

---Returns all object handles known to the server.
---The data returned adheres to the following layout:
---
---```
---[127, 42, 13, 37]
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6886C3FE)
---@return table retval An object containing a list of object handles.
function GetAllObjects() end

---Returns all peds handles known to the server.
---The data returned adheres to the following layout:
---
---```
---[127, 42, 13, 37]
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8584FEF)
---@return table retval An object containing a list of peds handles.
function GetAllPeds() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A0E1700)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local portalIndex = 0
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalEntityCount(interiorId, portalIndex)
---  for i=0, count-1 do
---    local archetype = GetInteriorPortalEntityArchetype(interiorId, portalIndex, i)
---    print("portal " .. portalIndex .." entity " .. i .. " archetype is: " .. archetype)
---  end
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param entityIndex number Portal entity index.
---@return number retval Portal entity archetype.
function GetInteriorPortalEntityArchetype(interiorId, portalIndex, entityIndex) end

---Returns the entity handle for the specified state bag name. For use with [ADD_STATE_BAG_CHANGE_HANDLER](?\_0x5BA35AAF).
---[Native Documentation](https://docs.fivem.net/natives/?_0x4BDF1867)
---Example: 
---```AddStateBagChangeHandler("blockTasks", nil, function(bagName, key, value) 
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
---end)```
---@param bagName string An internal state bag ID from the argument to a state bag change handler.
---@return number retval The entity handle or 0 if the state bag name did not refer to an entity, or the entity does not exist.
function GetEntityFromStateBagName(bagName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC68021B)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local portalIndex = 0
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalEntityCount(interiorId, portalIndex)
---  print("portal " .. portalIndex .." entity count is: " .. count)
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@return number retval Portal entity count.
function GetInteriorPortalEntityCount(interiorId, portalIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x62FC38D0)
---@param playerSrc string The player handle
---@return number retval 
function GetAirDragMultiplierForPlayersVehicle(playerSrc) end

---Forces the game snow pass to render.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6E16170)
---@param enabled boolean Whether or not to force rendering to use a snow pass.
function ForceSnowPass(enabled) end

---Returns all rope handles. The data returned adheres to the following layout:
---
---```
---[ 770, 1026, 1282, 1538, 1794, 2050, 2306, 2562, 2818, 3074, 3330, 3586, 3842, 4098, 4354, 4610, ...]
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x760A2D67)
---@return table retval An object containing a list of all rope handles.
function GetAllRopes() end

---Currently it only works with peds.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7AE6AA1)
---@param entity number 
---@return number retval 
function GetEntityMaxHealth(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F1C4383)
---@return number retval 
function GetInstanceId() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9DA2E811)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local portalIndex = 0
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalEntityCount(interiorId, portalIndex)
---  for i=0, count-1 do
---    local flag = GetInteriorPortalEntityFlag(interiorId, portalIndex, i)
---    print("portal " .. portalIndex .." entity " .. i .. " flag is: " .. flag)
---  end
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param entityIndex number Portal entity index.
---@return number retval Portal entity flag.
function GetInteriorPortalEntityFlag(interiorId, portalIndex, entityIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x972CC383)
---@param entity number 
---@return number retval 
function GetEntityHeading(entity) end

---Currently it only works with peds.
---[Native Documentation](https://docs.fivem.net/natives/?_0x8E3222B7)
---@param entity number 
---@return number retval 
function GetEntityHealth(entity) end

---Returns entity's archetype name, if available.
---[Native Documentation](https://docs.fivem.net/natives/?_0x47B870F5)
---@param entity number An entity handle.
---@return string retval Entity's archetype name
function GetEntityArchetypeName(entity) end

---Gets the current coordinates for a specified entity. This native is used server side when using OneSync.
---
---See [GET_ENTITY_COORDS](#\_0x3FEF770D40960D5A) for client side.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1647F1CB)
---Example: 
---```local function ShowCoordinates()
---    local player = source
---    local ped = GetPlayerPed(player)
---    local playerCoords = GetEntityCoords(ped)
---
---    print(playerCoords) -- vector3(...)
---end
---
---RegisterNetEvent("myCoordinates")
---AddEventHandler("myCoordinates", ShowCoordinates)```
---@param entity number The entity to get the coordinates from.
---@return vector3 retval The current entity coordinates.
function GetEntityCoords(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x322B1192)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local minX, minY, minZ, maxX, maxY, maxZ = GetInteriorEntitiesExtents(interiorId, roomId)
---  print("current entities extents is: " .. vec(minX, minY, minZ) .." / " .. vec(maxX, maxY, maxZ))
---end```
---@param interiorId number The target interior.
---@param bbMinX number 
---@param bbMinY number 
---@param bbMinZ number 
---@param bbMaxX number 
---@param bbMaxY number 
---@param bbMaxZ number 
function GetInteriorEntitiesExtents(interiorId, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ) end

---Nonsynchronous operations will not wait for a disk/filesystem flush before returning from a write or delete call. They will be much faster than their synchronous counterparts (e.g., bulk operations), however, a system crash may lose the data to some recent operations.
---
---This native ensures all `_NO_SYNC` operations are synchronized with the disk/filesystem.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE27C97A0)
---Example: 
---```-- Bulk write many <key, value> pairs to the resource KVP.
---local key = "bug_%d"
---local value = "unintended_feature_%d"
---for i=1,10000 do
---	SetResourceKvpNoSync(key:format(i), value:format(i))
---end
---
----- Ensure all data is synchronized to the filesystem
---FlushResourceKvp()```
function FlushResourceKvp() end

---Gets the entity that this entity is attached to.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE1589F9)
---@param entity number The entity to check.
---@return number retval The attached entity handle. 0 returned if the entity is not attached.
function GetEntityAttachedTo(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8839120D)
---@param findHandle number 
---@param outEntity number 
---@return boolean retval 
function FindNextVehicle(findHandle, outEntity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDAFCB3EC)
---@param entity number 
---@return number | string retval 
function GetEntityModel(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE52D9680)
---@param playerSrc string 
---@return string retval 
function GetPlayerGuid(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x63458C27)
---@param ped number 
---@return number | string retval 
function GetPedCauseOfDeath(ped) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x23473EA4)
---@param password string 
---@return string retval 
function GetPasswordHash(password) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B7AB83C)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local portalIndex = 0
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalEntityCount(interiorId, portalIndex)
---  for i=0, count-1 do
---    local x, y, z = GetInteriorPortalEntityPosition(interiorId, portalIndex, i)
---    print("portal " .. portalIndex .." entity " .. i .. " position is: " .. vec3(x, y, z))
---  end
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param entityIndex number Portal entity index.
---@param posX number 
---@param posY number 
---@param posZ number 
function GetInteriorPortalEntityPosition(interiorId, portalIndex, entityIndex, posX, posY, posZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BF8A73F)
---@param entity number 
---@return vector3 retval 
function GetEntityRotationVelocity(entity) end

---Get an identifier from a player by the type of the identifier.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA61C8FC6)
---Example: 
---```local playerLicenses = {}
---
---AddEventHandler('playerJoining', function()
---    playerLicenses[source] = GetPlayerIdentifierByType(source, 'license')
---end)```
---@param playerSrc string The player to get the identifier for
---@param identifierType string The string to match in an identifier, this can be `"license"` for example.
---@return string retval The identifier that matches the string provided
function GetPlayerIdentifierByType(playerSrc, identifierType) end

---Returns a list of decorations applied to a ped.
---
---The data returned adheres to the following layout:
---
---```
---[ [ collectionHash1, overlayHash1 ], ..., [c ollectionHashN, overlayHashN ] ]
---```
---
---This command will return undefined data if invoked on a remote player ped.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7CCE1163)
---@param ped number The ped you want to retrieve data for.
---@return table retval An object containing a list of applied decorations.
function GetPedDecorations(ped) end

---A getter for [SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xEAE6DCC7EEE3DB1D).
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF72DF84)
---@return number retval Returns parked vehicle density multiplier value.
function GetParkedVehicleDensityMultiplier() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAB09B548)
---@param findHandle number 
---@param outEntity number 
---@return boolean retval 
function FindNextPed(findHandle, outEntity) end

---Gets the current game timer in milliseconds.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA4EA0691)
---@return number retval The game time.
function GetGameTimer() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2CE311A7)
---@param ped number 
---@return number retval 
function GetPedArmour(ped) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7F70784)
---@param entity number 
---@return string retval 
function GetEntityScript(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3F47F0E8)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local roomIndex = 0
---
---  local portalRoomTo = GetInteriorPortalRoomTo(interiorId, 0)
---  print("portal " .. roomIndex .. " room TO is: " .. portalRoomTo)
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@return number retval Portal's room TO index.
function GetInteriorPortalRoomTo(interiorId, portalIndex) end

---Returns a list of entity handles (script GUID) for all entities in the specified pool - the data returned is an array as
---follows:
---
---```json
---[ 770, 1026, 1282, 1538, 1794, 2050, 2306, 2562, 2818, 3074, 3330, 3586, 3842, 4098, 4354, 4610, ...]
---```
---
---### Supported pools
---
---*   `CPed`: Peds (including animals) and players.
---*   `CObject`: Objects (props), doors, and projectiles.
---*   `CVehicle`: Vehicles.
---*   `CPickup`: Pickups.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B9D4F50)
---Example: 
---```local vehiclePool = GetGamePool('CVehicle') -- Get the list of vehicles (entities) from the pool
---for i = 1, #vehiclePool do -- loop through each vehicle (entity)
---    if GetPedInVehicleSeat(vehiclePool[i], -1) == 0 then
---        DeleteEntity(vehiclePool[i]) -- Delete vehicles (entities) that don't have a driver
---    end
---end```
---@param poolName string The pool name to get a list of entities from.
---@return table retval An array containing entity handles for each entity in the named pool.
function GetGamePool(poolName) end

---Returns all player indices for 'active' physical players known to the client.
---The data returned adheres to the following layout:
---
---```
---[127, 42, 13, 37]
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF143FB9)
---@return table retval An object containing a list of player indices.
function GetActivePlayers() end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0xE8EAA18B)
---@return string retval The game the script environment is running in.
function GetGameName() end

---Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
---See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
---[Native Documentation](https://docs.fivem.net/natives/?_0x776E864)
---@param resourceName string The resource name.
---@param metadataKey string The key to look up in the resource manifest.
---@return number retval 
function GetNumResourceMetadata(resourceName, metadataKey) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x63D13184)
---@return number retval 
function GetNumPlayerIndices() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA9C141D)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local roomIndex = 0
---
---  local portalRoomFrom = GetInteriorPortalRoomFrom(interiorId, 0)
---  print("portal " .. roomIndex .. " room FROM is: " .. portalRoomFrom)
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@return number retval Portal's room FROM index.
function GetInteriorPortalRoomFrom(interiorId, portalIndex) end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0x804B9F7B)
---@return number retval The build number, or **0** if no build number is known.
function GetGameBuildNumber() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x77A435B0)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local x, y, z = GetInteriorPosition(interiorId)
---  print("current interior " .. interiorId .. " position is: " .. vec(x, y, z))
---end```
---@param interiorId number The target interior.
---@param posX number 
---@param posY number 
---@param posZ number 
function GetInteriorPosition(interiorId, posX, posY, posZ) end

---Returns all registered vehicle model names, including non-dlc vehicles and custom vehicles in no particular order.
---
---**Example output**
---
---```
---	["dubsta", "dubsta2", "dubsta3", "myverycoolcar", "sultan", "sultanrs", ...]
---```
---
---This native will not return vehicles that are unregistered (i.e from a resource being stopped) during runtime.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7531645)
---Example: 
---```RegisterCommand("spawnrandomcar", function()
---	local vehicles = GetAllVehicleModels()
---	local veh = vehicles[math.random(1, #vehicles)]
---	RequestModel(veh)
---	repeat Wait(0) until HasModelLoaded(veh)
---	local veh = CreateVehicle(veh, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), true, false)
---	SetPedIntoVehicle(PlayerPedId(), veh, -1)
---end)```
---@return table retval 
function GetAllVehicleModels() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF9E795DD)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  local minX, minY, minZ, maxX, maxY, maxZ = GetInteriorRoomExtents(interiorId, roomId)
---  print("current room extents is: " .. vec(minX, minY, minZ) .." / " .. vec(maxX, maxY, maxZ))
---end```
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@param bbMinX number 
---@param bbMinY number 
---@param bbMinZ number 
---@param bbMaxX number 
---@param bbMaxY number 
---@param bbMaxZ number 
function GetInteriorRoomExtents(interiorId, roomIndex, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ) end

---This native gets an entity's population type.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC30DDFF)
---@param entity number the entity to obtain the population type from
---@return number retval Returns the population type ID, defined by the below enumeration:```cpp
enum ePopulationType
{
	POPTYPE_UNKNOWN = 0,
	POPTYPE_RANDOM_PERMANENT,
	POPTYPE_RANDOM_PARKED,
	POPTYPE_RANDOM_PATROL,
	POPTYPE_RANDOM_SCENARIO,
	POPTYPE_RANDOM_AMBIENT,
	POPTYPE_PERMANENT,
	POPTYPE_MISSION,
	POPTYPE_REPLAY,
	POPTYPE_CACHE,
	POPTYPE_TOOL
};
```
function GetEntityPopulationType(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F9CEB63)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local portalIndex = 0
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalEntityCount(interiorId, portalIndex)
---  for i=0, count-1 do
---    local x, y, z, w = GetInteriorPortalEntityRotation(interiorId, portalIndex, i)
---    print("portal " .. portalIndex .." entity " .. i .. " rotation is: " .. vec4(x, y, z, w))
---  end
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param entityIndex number Portal entity index.
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param rotW number 
function GetInteriorPortalEntityRotation(interiorId, portalIndex, entityIndex, rotX, rotY, rotZ, rotW) end

---Gets the metadata value at a specified key/index from a resource's manifest.
---See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
---[Native Documentation](https://docs.fivem.net/natives/?_0x964BAB1D)
---@param resourceName string The resource name.
---@param metadataKey string The key in the resource manifest.
---@param index number The value index, in a range from \[0..GET_NUM_RESOURCE_METDATA-1].
---@return string retval 
function GetResourceMetadata(resourceName, metadataKey, index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8154E470)
---@param playerSrc string The player handle
---@return number retval 
function GetPlayerMaxHealth(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x427E8E6A)
---@param playerSrc string 
---@return number retval 
function GetPlayerLastMsg(playerSrc) end

---A getter for [SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER](#\_0x4A3DC7ECCC321032).
---[Native Documentation](https://docs.fivem.net/natives/?_0x8689A825)
---@param playerId number The player index.
---@return number retval Returns player melee weapon damage modifier value.
function GetPlayerMeleeWeaponDamageModifier(playerId) end

---A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B).
---[Native Documentation](https://docs.fivem.net/natives/?_0x5240DA5A)
---Example: 
---```local kvpValue = GetResourceKvpString('codfish') 
---if kvpValue then
---	-- do something!
---end```
---@param key string The key to fetch
---@return string retval The string value stored under the specified key, or nil/null if not found.
function GetResourceKvpString(key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x680C90EE)
---@param playerSrc string The player handle
---@return boolean retval A boolean to tell if the player is invincible.
function GetPlayerInvincible(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD014AB79)
---@param playerId number The player index.
---@return number retval The value of player max stamina.
function GetPlayerMaxStamina(playerId) end

---Gets the current speed of the entity in meters per second.
---
---```
---To convert to MPH: speed * 2.236936
---To convert to KPH: speed * 3.6
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9E1E4798)
---@param entity number The entity to get the speed of
---@return number retval The speed of the entity in meters per second
function GetEntitySpeed(entity) end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0xB1BD08D)
---@param entity number The entity to get the type of.
---@return number retval The entity type returned as an integer value.
function GetEntityType(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A50657)
---@param playerSrc string The player handle
---@return number retval 
function GetPlayerMaxArmour(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC74DA47C)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local portalFlag = GetInteriorPortalFlag(interiorId, 0)
---  print("portal 0 flag is: " .. portalRoomFrom)
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@return number retval Portal's flag.
function GetInteriorPortalFlag(interiorId, portalIndex) end

---A getter for [SET_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x95E3D6257B166CF2).
---[Native Documentation](https://docs.fivem.net/natives/?_0xF5A904F9)
---@return number retval Returns ped density multiplier value.
function GetPedDensityMultiplier() end

---A getter for [\_SET_PED_FACE_FEATURE](#\_0x71A5C1DBA060049E). Returns 0.0 if fails to get.
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA352ADD)
---Example: 
---```local noseWidth = GetPedFaceFeature(PlayerPedId(), 0)
---if noseWidth == 1.0 then
---  print("You have big nose!")
---end```
---@param ped number The target ped
---@param index number Face feature index
---@return number retval Returns ped's face feature value, or 0.0 if fails to get.
function GetPedFaceFeature(ped, index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6B7AF743)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  local roomFlag = GetInteriorRoomFlag(interiorId, roomId)
---  print("current room flag is: " .. roomFlag)
---end```
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@return number retval Room's flag.
function GetInteriorRoomFlag(interiorId, roomIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x82BA3F88)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  local roomTimecycle = GetInteriorRoomTimecycle(interiorId, roomId)
---  print("current room timecycle hash is: " .. roomTimecycle)
---end```
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@return number retval Room's timecycle hash.
function GetInteriorRoomTimecycle(interiorId, roomIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC14C9B6B)
---@param entity number 
---@return vector3 retval 
function GetEntityVelocity(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D52FE5B)
---@return string retval 
function GetInvokingResource() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x863F27B)
---@return number retval 
function GetNumResources() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x388FDE9A)
---@param vehicle number The target vehicle.
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return number retval The ped in the specified seat of the passed vehicle. Returns 0 if the specified seat is not occupied.
function GetPedInVehicleSeat(vehicle, seatIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8FF45B04)
---@param entity number 
---@return vector3 retval 
function GetEntityRotation(entity) end

---Gets the routing bucket for the specified entity.
---
---Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
---[Native Documentation](https://docs.fivem.net/natives/?_0xED4B0486)
---@param entity number The entity to get the routing bucket for.
---@return number retval The routing bucket ID.
function GetEntityRoutingBucket(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2CAFD5E9)
---@return boolean retval 
function GetNetworkWalkMode() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF7C6792D)
---@param vehicle number The target vehicle.
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return number retval The last ped in the specified seat of the passed vehicle. Returns 0 if the specified seat was never occupied or the last ped does not exist anymore.
function GetLastPedInVehicleSeat(vehicle, seatIndex) end

---This native converts the passed string to a hash.
---[Native Documentation](https://docs.fivem.net/natives/?_0x98EFF6F1)
---@param model string 
---@return number | string retval 
function GetHashKey(model) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2737C2C)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local count = GetInteriorRoomCount(interiorId)
---  print("interior " .. interiorId .. "has " .. count .. " rooms")
---end```
---@param interiorId number The target interior.
---@return number retval The amount of rooms in interior.
function GetInteriorRoomCount(interiorId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7302DBCF)
---@param playerSrc string 
---@param identifier number 
---@return string retval 
function GetPlayerIdentifier(playerSrc, identifier) end

---A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4B087305)
---Example: 
---```local secondaryColour = GetPedHairHighlightColor(PlayerPedId())
---if secondaryColour == 32 then
---  print("You have pink hair highlight colour!")
---end```
---@param ped number The target ped
---@return number retval Returns ped's secondary hair colour.
function GetPedHairHighlightColor(ped) end

---See the client-side [GET_LANDING_GEAR_STATE](#\_0x9B0F3DCA3DB0F4CD) native for a description of landing gear states.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6F02670)
---@param vehicle number The vehicle to check.
---@return number retval The current state of the vehicles landing gear.
function GetLandingGearState(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE0EE05F8)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  print("current room index is: " .. roomId)
---end```
---@param interiorId number The target interior.
---@param roomHash number Interior room hash.
---@return number retval Room index, -1 if failed.
function GetInteriorRoomIndexByHash(interiorId, roomHash) end

---Returns the zoom level data by index from mapzoomdata.meta file.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1363A998)
---@param index number Zoom level index.
---@param zoomScale number fZoomScale value.
---@param zoomSpeed number fZoomSpeed value.
---@param scrollSpeed number fScrollSpeed value.
---@param tilesX number vTiles X.
---@param tilesY number vTiles Y.
---@return boolean retval A boolean indicating TRUE if the data was received successfully.
function GetMapZoomDataLevel(index, zoomScale, zoomSpeed, scrollSpeed, tilesX, tilesY) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF341E6CA)
---@param rope number The rope to get the time multiplier for.
---@return number retval The rope's time multiplier.
function GetRopeTimeMultiplier(rope) end

---Gets the routing bucket for the specified player.
---
---Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
---[Native Documentation](https://docs.fivem.net/natives/?_0x52441C34)
---@param playerSrc string The player to get the routing bucket for.
---@return number retval The routing bucket ID.
function GetPlayerRoutingBucket(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x66D70EA3)
---@param rope number The rope to get the length change rate for.
---@return number retval The rope's length change rate.
function GetRopeLengthChangeRate(rope) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2AB2E0F6)
---@param rope number The rope to get the update order for.
---@return number retval The rope's update order.
function GetRopeUpdateOrder(rope) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA45B6C8D)
---@param ped number 
---@return number retval 
function GetPedMaxHealth(ped) end

---A getter for [SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER](#\_0xAE540335B4ABC4E2).
---[Native Documentation](https://docs.fivem.net/natives/?_0x27E94EF8)
---@param playerId number The player index.
---@return number retval The value of player melee weapon defense modifier.
function GetPlayerMeleeWeaponDefenseModifier(playerId) end

---Gets the row pitch of the specified runtime texture, for use when creating data for `SET_RUNTIME_TEXTURE_ARGB_DATA`.
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA0A085F)
---@param tex number A handle to the runtime texture.
---@return number retval The row pitch in bytes.
function GetRuntimeTexturePitch(tex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9873E404)
---@param playerSrc string The player handle
---@return number retval 
function GetPlayerTeam(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7DC6D022)
---@param vehicle number 
---@return boolean retval 
function GetIsVehicleEngineRunning(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3856D767)
---@return number retval 
function GetVehicleDashboardOilPressure() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC182F76E)
---@param ped number The target ped
---@return number retval Returns ped's desired heading.
function GetPedDesiredHeading(ped) end

---Get the last entity that damaged the ped. This native is used server side when using OneSync.
---[Native Documentation](https://docs.fivem.net/natives/?_0x535DB43F)
---@param ped number The target ped
---@return number retval The entity id. Returns 0 if the ped has not been damaged recently.
function GetPedSourceOfDamage(ped) end

---Gets the script task command currently assigned to the ped.
---[Native Documentation](https://docs.fivem.net/natives/?_0x84FE084)
---@param ped number The target ped.
---@return number | string retval The script task command currently assigned to the ped. A value of 0x811E343C denotes no script task is assigned.
function GetPedScriptTaskCommand(ped) end

---Returns the current state of the specified resource.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4039B485)
---@param resourceName string The name of the resource.
---@return string retval The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.
function GetResourceState(resourceName) end

---A getter for [\_SET_PED_EYE_COLOR](#\_0x50B56988B170AFDF). Returns -1 if fails to get.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA47B860F)
---Example: 
---```local pedEyeColour = GetPedEyeColor(PlayerPedId())
---if pedEyeColour == 7 then
---  print("Gray eyes!")
---end```
---@param ped number The target ped
---@return number retval Returns ped's eye colour, or -1 if fails to get.
function GetPedEyeColor(ped) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x344EA166)
---@param serverId number 
---@return number retval 
function GetPlayerFromServerId(serverId) end

---A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA3EA2893)
---Example: 
---```local primaryColour = GetPedHairColor(PlayerPedId())
---if primaryColour == 18 then
---  print("You have red hair!")
---end```
---@param ped number The target ped
---@return number retval Returns ped's primary hair colour.
function GetPedHairColor(ped) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF9716A11)
---@return number retval float 0 to ~1.1 representing the angle of the rpm gauge on the player's vehicle dashboard
function GetVehicleDashboardRpm() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7EC8760)
---@param vehicle number 
---@return boolean retval 
function GetIsVehiclePrimaryColourCustom(vehicle) end

---Gets the height of the specified runtime texture.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3574AACE)
---@param tex number A handle to the runtime texture.
---@return number retval The height in pixels.
function GetRuntimeTextureHeight(tex) end

---Gets the current fake wanted level for a specified player. This native is used server side when using OneSync.
---[Native Documentation](https://docs.fivem.net/natives/?_0x98D244)
---@param playerSrc string The target player
---@return number retval The fake wanted level
function GetPlayerFakeWantedLevel(playerSrc) end

---Unlike [GET_PLAYER_INVINCIBLE](#\_0xB721981B2B939E07) this native gets both [SET_PLAYER_INVINCIBLE_KEEP_RAGDOLL_ENABLED](#\_0x6BC97F4F4BB3C04B) and [SET_PLAYER_INVINCIBLE](#\_0x239528EACDC3E7DE) invincibility state.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2E3912B)
---@param player number The player id
---@return boolean retval A boolean to tell if the player is invincible.
function GetPlayerInvincible2(player) end

---Returns the physical on-disk path of the specified resource.
---[Native Documentation](https://docs.fivem.net/natives/?_0x61DCF017)
---@param resourceName string The name of the resource.
---@return string retval The resource directory name, possibly without trailing slash.
function GetResourcePath(resourceName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D97BCC7)
---@param player number 
---@return number retval 
function GetPlayerServerId(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x288AD228)
---@param vehicle number 
---@return boolean retval 
function GetIsVehicleSecondaryColourCustom(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC8A9CE08)
---@param index number 
---@return string retval 
function GetPlayerFromIndex(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFEE404F9)
---@param playerSrc string 
---@return string retval 
function GetPlayerEndpoint(playerSrc) end

---Gets a ped model's personality type.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE08CAD6)
---@param modelHash number | string Ped's model.
---@return number | string retval 
function GetPedModelPersonality(modelHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x11755DF2)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  local roomName = GetInteriorRoomName(interiorId, roomId)
---  print("current room name is: " .. roomName)
---end```
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@return string retval Room's name.
function GetInteriorRoomName(interiorId, roomIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x95070FA)
---@param train number The entity handle.
---@return number retval The train engine carriage.
function GetTrainCarriageEngine(train) end

---A getter for [SET_PED_HEAD_OVERLAY](#\_0x48F44967FA05CC1E) and [\_SET_PED_HEAD_OVERLAY_COLOR](#\_0x497BF74A7B9CB952) natives.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC46EE605)
---Example: 
---```-- getting beard overlay data
---local success, overlayValue, colourType, firstColour, secondColour, overlayOpacity = GetPedHeadOverlayData(PlayerPedId(), 1)
---if success then
---  -- incrementing value
---  SetPedHeadOverlay(PlayerPedId(), 1, overlayValue + 1, overlayOpacity)
---end```
---@param ped number The target ped
---@param index number Overlay index
---@param overlayValue number Overlay value pointer
---@param colourType number Colour type pointer
---@param firstColour number First colour pointer
---@param secondColour number Second colour pointer
---@param overlayOpacity number Opacity pointer
---@return boolean retval Returns ped's head overlay data.
function GetPedHeadOverlayData(ped, index, overlayValue, colourType, firstColour, secondColour, overlayOpacity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFABE67A9)
---@return number retval 
function GetVehicleDashboardVacuum() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5A039998)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local x, y, z, w = GetInteriorRotation(interiorId)
---  print("current interior " .. interiorId .. " rotation is: " .. vec(x, y, z, w))
---end```
---@param interiorId number The target interior.
---@param rotx number 
---@param rotY number 
---@param rotZ number 
---@param rotW number 
function GetInteriorRotation(interiorId, rotx, rotY, rotZ, rotW) end

---Gets the width of the specified runtime texture.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC9F55558)
---@param tex number A handle to the runtime texture.
---@return number retval The width in pixels.
function GetRuntimeTextureWidth(tex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8E3B3E42)
---@return number retval 
function GetVehicleDashboardWaterTemp() end

---Currently it only works when set to "all players".
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DC50247)
---@param vehicle number 
---@return number retval 
function GetVehicleDoorsLockedForPlayer(vehicle) end

---```
---Gets the amount of time player has spent evading the cops.
---Counter starts and increments only when cops are chasing the player.
---If the player is evading, the timer will pause.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7ADE63E1)
---@param playerSrc string The target player
---@param lastPursuit boolean False = CurrentPursuit, True = LastPursuit
---@return number retval Returns -1, if the player is not wanted or wasn't in pursuit before, depending on the lastPursuit parameter
Returns 0, if lastPursuit == False and the player has a wanted level, but the pursuit has not started yet
Otherwise, will return the milliseconds of the pursuit.
function GetPlayerTimeInPursuit(playerSrc, lastPursuit) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x406B4B20)
---@param playerSrc string 
---@return string retval 
function GetPlayerName(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E31E993)
---@param playerSrc string 
---@return number retval 
function GetPlayerPed(playerSrc) end

---Gets the door count for the specified train.
---[Native Documentation](https://docs.fivem.net/natives/?_0x99974721)
---@param train number The train to obtain the door count for.
---@return number retval The door count.
function GetTrainDoorCount(train) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF1290D4)
---@param playerSrc string 
---@return number retval 
function GetPlayerPing(playerSrc) end

---A getter for [SET_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x245A6883D966D537).
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF7C6538)
---@return number retval Returns vehicle density multiplier value.
function GetVehicleDensityMultiplier() end

---Get the entity that killed the ped. This native is used server side when using OneSync.
---[Native Documentation](https://docs.fivem.net/natives/?_0x84ADF9EB)
---@param ped number The target ped
---@return number retval The entity id. Returns 0 if the ped has no killer.
function GetPedSourceOfDeath(ped) end

---A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938).
---[Native Documentation](https://docs.fivem.net/natives/?_0x35BDCEEA)
---Example: 
---```local kvpValue = GetResourceKvpFloat('mollis')
---if kvpValue ~= 0.0 then
---	-- do something!
---end```
---@param key string The key to fetch
---@return number retval The floating-point value stored under the specified key, or 0.0 if not found.
function GetResourceKvpFloat(key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9AAD420E)
---@param vehicle number 
---@return number retval 
function GetVehicleDashboardSpeed(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBDBA226F)
---@param x number 
---@param y number 
function GetNuiCursorPosition(x, y) end

---```
---Returns given players wanted level server-side.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBDCDD163)
---@param playerSrc string The target player
---@return number retval The wanted level
function GetPlayerWantedLevel(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEDF4B0FC)
---@param vehicle number 
---@return number retval 
function GetVehicleNumberOfWheels(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFD15C065)
---@param vehicle number 
---@return number retval 
function GetVehicleDirtLevel(vehicle) end

---Gets the type of a ped's specific task given an index of the CPedTaskSpecificDataNode nodes.
---A ped will typically have a task at index 0, if a ped has multiple tasks at once they will be in the order 0, 1, 2, etc.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7F4563D3)
---@param ped number The target ped.
---@param index number A zero-based index with a maximum value of 7.
---@return number retval The type of the specific task.
1604: A value of 530 denotes no script task is assigned or an invalid input was given.
2060+: A value of 531 denotes no script task is assigned or an invalid input was given.
function GetPedSpecificTaskType(ped, index) end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0xD4BEF069)
---@return table retval An object containing registered commands.
function GetRegisteredCommands() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE8522D58)
---@param vehicle number 
---@return string retval 
function GetVehicleNumberPlateText(vehicle) end

---```cpp
---enum eRopeFlags
---{
---    DrawShadowEnabled = 2,
---	Breakable = 4,
---	RopeUnwindingFront = 8,
---	RopeWinding = 32
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA80FFE99)
---@param rope number The rope to get the flags for.
---@return number retval The rope's flags.
function GetRopeFlags(rope) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F5996AA)
---@return number retval 
function GetVehicleDashboardOilTemp() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4B8285CF)
---@param train number The entity handle.
---@return number retval The carriage index. -1 returned if invalid result.
function GetTrainCarriageIndex(train) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x387246B7)
---Example: 
---```local resourceList = {}
---for i = 0, GetNumResources(), 1 do
---  local resource_name = GetResourceByFindIndex(i)
---  if resource_name and GetResourceState(resource_name) == "started" then
---    table.insert(resourceList, resource_name)
---  end
---end
---print(table.unpack(resourceList))```
---@param findIndex number The index of the resource (starting at 0)
---@return string retval The resource name as a `string`
function GetResourceByFindIndex(findIndex) end

---Gets a player's token. Tokens can be used to enhance banning logic, however are specific to a server.
---[Native Documentation](https://docs.fivem.net/natives/?_0x54C06897)
---@param playerSrc string A player.
---@param index number Index between 0 and GET_NUM_PLAYER_TOKENS.
---@return string retval A token value.
function GetPlayerToken(playerSrc, index) end

---Gets the current camera rotation for a specified player. This native is used server side when using OneSync.
---[Native Documentation](https://docs.fivem.net/natives/?_0x433C765D)
---@param playerSrc string The player handle.
---@return vector3 retval The player's camera rotation. Values are in radians.
function GetPlayerCameraRotation(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE415EC5C)
---@param playerId number The player index.
---@return number retval The value of player stamina.
function GetPlayerStamina(playerId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x69E81E3D)
---@param ped number The target ped.
---@return number retval The current movement clipset hash.
function GetPedMovementClipset(ped) end

---Gets the ratio that a door is open for on a train.
---[Native Documentation](https://docs.fivem.net/natives/?_0x40B16551)
---Example: 
---```local doorCount = GetTrainDoorCount(train)
---for doorIndex = 0, doorCount - 1 do
---    local ratio = GetTrainDoorOpenRatio(train, doorIndex)
---    print("Door " .. tostring(doorIndex) .. " is open by a ratio of " .. tostring(ratio))
---end```
---@param train number The train to obtain the door ratio for.
---@param doorIndex number Zero-based door index.
---@return number retval A value between 0.0 (fully closed) and 1.0 (fully open).
function GetTrainDoorOpenRatio(train, doorIndex) end

---Gets the stage of the peds scripted task.
---[Native Documentation](https://docs.fivem.net/natives/?_0x44B0E5E2)
---@param ped number The target ped.
---@return number retval The stage of the ped's scripted task. A value of 3 denotes no script task is assigned.
function GetPedScriptTaskStage(ped) end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0xD72CEF2)
---@param vehicle number A vehicle handle.
---@return number retval The door lock status for the specified vehicle.
function GetVehicleDoorLockStatus(vehicle) end

---A getter for [SET_PLAYER_VEHICLE_DEFENSE_MODIFIER](#\_0x4C60E6EFDAFF2462).
---[Native Documentation](https://docs.fivem.net/natives/?_0x8326E7CD)
---@param playerId number The player index.
---@return number retval The value of player vehicle defense modifier.
function GetPlayerVehicleDefenseModifier(playerId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF4F495CB)
---@param vehicle number 
---@return number retval 
function GetVehicleEngineTemperature(vehicle) end

---Returns a hash of selected ped weapon.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD240123E)
---@param ped number The target ped.
---@return number | string retval The weapon hash.
function GetSelectedPedWeapon(ped) end

---A getter for [SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xB3B3359379FE77D3).
---Same as vehicle density multiplier.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7B0D00C5)
---@return number retval Returns random vehicle density multiplier value.
function GetRandomVehicleDensityMultiplier() end

---A getter for [SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x7A556143A1C03898).
---[Native Documentation](https://docs.fivem.net/natives/?_0x77C598B2)
---@return number retval Returns scenario ped density multiplier value.
function GetScenarioPedDensityMultiplier() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x19B0B2CE)
---@return number retval 
function GetVehicleDashboardFuel() end

---Returns the value of a state bag key.
---[Native Documentation](https://docs.fivem.net/natives/?_0x637F4C75)
---@param bagName string 
---@param key string 
---@return table retval Value.
function GetStateBagValue(bagName, key) end

---Gets the traction vector length of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3BCFEE14)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval 
function GetVehicleWheelTractionVectorLength(vehicle, wheelIndex) end

---A getter for [SET_PLAYER_WEAPON_DAMAGE_MODIFIER](#\_0xCE07B9F7817AADA3).
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A3D7CDA)
---@param playerId number The player index.
---@return number retval The value of player weapon damage modifier.
function GetPlayerWeaponDamageModifier(playerId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE41595CE)
---@param vehicle number 
---@return number retval 
function GetVehiclePetrolTankHealth(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1382FCEA)
---@param vehicle number 
---@return number retval 
function GetVehicleSteeringAngle(vehicle) end

---Gets the vehicle the specified Ped is/was in depending on bool value. This native is used server side when using OneSync.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAFE92319)
---@param ped number The target ped
---@param lastVehicle boolean False = CurrentVehicle, True = LastVehicle
---@return number retval The vehicle id. Returns 0 if the ped is/was not in a vehicle.
function GetVehiclePedIsIn(ped, lastVehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57037960)
---@param vehicle number 
---@return number retval 
function GetVehicleRadioStationIndex(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F739BB8)
---@param vehicle number 
---@return number retval 
function GetVehicleFuelLevel(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6B6ADAFA)
---@return number retval 
function GetVehicleDashboardTemp() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x80E4659B)
---@param vehicle number 
---@param pearlescentColor number 
---@param wheelColor number 
function GetVehicleExtraColours(vehicle, pearlescentColor, wheelColor) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC62AAC98)
---@param vehicle number 
---@return number retval 
function GetVehicleAlarmTimeLeft(vehicle) end

---A getter for [SET_PLAYER_WEAPON_DEFENSE_MODIFIER](#\_0x2D83BC011CA14A3C).
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1543251)
---@param playerId number The player index.
---@return number retval The value of player weapon defense modifier.
function GetPlayerWeaponDefenseModifier(playerId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFFABA2A)
---@return number retval 
function GetVehicleDashboardBoost() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE015E854)
---@param train number The target train.
---@return number retval Train's current track node index.
function GetTrainCurrentTrackNode(train) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x499747B6)
---@param vehicle number 
---@return number retval 
function GetVehicleNumberPlateTextIndex(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x40D82D88)
---@param vehicle number 
---@param colorPrimary number 
---@param colorSecondary number 
function GetVehicleColours(vehicle, colorPrimary, colorSecondary) end

---A getter for [\_SET_PLAYER_WEAPON_DEFENSE_MODIFIER\_2](#\_0xBCFDE9EDE4CF27DC).
---[Native Documentation](https://docs.fivem.net/natives/?_0x986B65FF)
---@param playerId number The player index.
---@return number retval The value of player weapon defense modifier 2.
function GetPlayerWeaponDefenseModifier2(playerId) end

---Gets the current known coordinates for the specified player from cops perspective. This native is used server side when using OneSync.
---[Native Documentation](https://docs.fivem.net/natives/?_0x821F2D2C)
---@param playerSrc string The target player
---@return vector3 retval The player's position known by police. Vector zero if the player has no wanted level.
function GetPlayerWantedCentrePosition(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0DBD08D)
---@param vehicle number 
---@param color number 
function GetVehicleDashboardColour(vehicle, color) end

---A getter for [SET_PLAYER_VEHICLE_DAMAGE_MODIFIER](#\_0xA50E117CDDF82F0C).
---[Native Documentation](https://docs.fivem.net/natives/?_0x78F27B1F)
---@param playerId number The player index.
---@return number retval The value of player vehicle damage modifier.
function GetPlayerVehicleDamageModifier(playerId) end

---Returns the offset of the specified wheel relative to the wheel's axle center.
---[Native Documentation](https://docs.fivem.net/natives/?_0xCC90CBCA)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval 
function GetVehicleWheelXOffset(vehicle, wheelIndex) end

---Gets a vehicle's multiplier used with a wheel's GET_VEHICLE_WHEEL_STEERING_ANGLE to determine the angle the wheel is rendered.
---[Native Documentation](https://docs.fivem.net/natives/?_0x21C1DA8E)
---@param vehicle number 
---@return number retval 
function GetVehicleDrawnWheelAngleMult(vehicle) end

---A getter for [SET_VEHICLE_CHEAT_POWER_INCREASE](#\_0xB59E4BD37AE292DB).
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3C93F28)
---@param vehicle number The target vehicle.
---@return number retval Returns vehicle's cheat power increase modifier value.
function GetVehicleCheatPowerIncrease(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8880038A)
---@param vehicle number 
---@return number retval 
function GetVehicleEngineHealth(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x872CF42)
---@param vehicle number 
---@return number retval 
function GetVehicleRoofLivery(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E35C49C)
---@param vehicle number 
---@return number retval A number from 0 to 7.
function GetVehicleDoorStatus(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3FF247A2)
---@param vehicle number 
---@param r number 
---@param g number 
---@param b number 
function GetVehicleCustomSecondaryColour(vehicle, r, g, b) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x954465DE)
---@param vehicle number 
---@return number retval 
function GetVehicleSteeringScale(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB4F4E566)
---@param vehicle number 
---@return number retval 
function GetVehicleCurrentGear(vehicle) end

---On the server this will return the players source, on the client it will return the player handle.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA56135E0)
---Example: 
---```AddStateBagChangeHandler("isDead", nil, function(bagName, key, value) 
---    local ply = GetPlayerFromStateBagName(bagName)
---    -- The player doesn't exist!
---    if ply == 0 then return end
---    print("Player: " .. GetPlayerName(ply) .. value and 'died!' or 'is alive!')
---end)```
---@param bagName string An internal state bag ID from the argument to a state bag change handler.
---@return number retval The player handle or 0 if the state bag name did not refer to a player, or the player does not exist.
function GetPlayerFromStateBagName(bagName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDDB298AE)
---@param vehicle number 
---@return number retval 
function GetVehicleNextGear(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB48A1292)
---@param vehicle number 
---@return number retval 
function GetVehicleGravityAmount(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC82A51D)
---@param vehicle number 
---@return number retval 
function GetVehicleLivery(vehicle) end

---A getter for `ClipSize` in a weapon component.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE14CF665)
---@param componentHash number | string Weapon component name hash.
---@return number retval A weapon component clip size.
function GetWeaponComponentClipSize(componentHash) end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0xA273060E)
---@param vehicle number The vehicle's entity handle.
---@return string retval If the entity is a vehicle, the vehicle type. If it is not a vehicle, the return value will be null.
function GetVehicleType(vehicle) end

---A getter for [SET_WEAPON_ANIMATION_OVERRIDE](\_0x1055AC3A667F09D9).
---[Native Documentation](https://docs.fivem.net/natives/?_0x63ED2E7)
---Example: 
---```local weaponAnimation = GetWeaponAnimationOverride(PlayerPedId())```
---@param ped number The target ped.
---@return number | string retval The weapon animation override.
function GetWeaponAnimationOverride(ped) end

---Returns vehicle xenon lights custom RGB color values. Do note this native doesn't return non-RGB colors that was set with [\_SET_VEHICLE_XENON_LIGHTS_COLOR](#\_0xE41033B25D003A07).
---[Native Documentation](https://docs.fivem.net/natives/?_0xC715F730)
---@param vehicle number The vehicle handle.
---@param red number Red color (0-255).
---@param green number Green color (0-255).
---@param blue number Blue color (0-255).
---@return boolean retval A boolean indicating if vehicle have custom xenon lights RGB color.
function GetVehicleXenonLightsCustomColor(vehicle, red, green, blue) end

---A getter for `CWeaponAccuracyModifier` in a weapon component.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC693E278)
---@param componentHash number | string Weapon component name hash.
---@return number retval A weapon component accuracy modifier.
function GetWeaponComponentAccuracyModifier(componentHash) end

---Gets the flags of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC70FA0C7)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval An unsigned int containing bit flags.
function GetVehicleWheelFlags(vehicle, wheelIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE7B12B54)
---@param vehicle number 
---@return number retval 
function GetVehicleCurrentRpm(vehicle) end

---Requests whether or not the commerce data for the specified player has loaded from Tebex.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1D14F4FE)
---@param playerSrc string The player handle
---@return boolean retval A boolean.
function IsPlayerCommerceInfoLoadedExt(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2EA4AFFE)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval 
function GetVehicleWheelYRotation(vehicle, wheelIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2EA4AFFE)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval 
function GetVehicleWheelXrot(vehicle, wheelIndex) end

---Gets the flight nozzel position for the specified vehicle. See the client-side [\_GET_VEHICLE_FLIGHT_NOZZLE_POSITION](#\_0xDA62027C8BDB326E) native for usage examples.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAD40AD55)
---@param vehicle number The vehicle to check.
---@return number retval The flight nozzel position between 0.0 (flying normally) and 1.0 (VTOL mode)
function GetVehicleFlightNozzlePosition(vehicle) end

---Returns vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).
---Only works on non-default wheels (returns 0 in case of default wheels).
---[Native Documentation](https://docs.fivem.net/natives/?_0x9C7B59F9)
---@param vehicle number The vehicle to obtain data for.
---@return number retval Float representing width of the wheel (usually between 0.1 and 1.5)
function GetVehicleWheelWidth(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x75280015)
---@param vehicle number 
---@param r number 
---@param g number 
---@param b number 
function GetVehicleTyreSmokeColor(vehicle, r, g, b) end

---A getter for `CWeaponDamageModifier` in a weapon component.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4A0E3855)
---@param componentHash number | string Weapon component name hash.
---@return number retval A weapon component damage modifier.
function GetWeaponComponentDamageModifier(componentHash) end

---A getter for `CameraHash` in a weapon scope component.
---[Native Documentation](https://docs.fivem.net/natives/?_0xACB7E68F)
---@param componentHash number | string Weapon component name hash.
---@return number retval The hash of the scope camera.
function GetWeaponComponentCameraHash(componentHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x54A677F5)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval 
function GetVehicleWheelHealth(vehicle, wheelIndex) end

---A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8).
---[Native Documentation](https://docs.fivem.net/natives/?_0x557B586A)
---Example: 
---```local kvpValue = GetResourceKvpInt('bananabread') 
---if kvpValue ~= 0 then
---	-- do something!
---end```
---@param key string The key to fetch
---@return number retval The integer value stored under the specified key, or 0 if not found.
function GetResourceKvpInt(key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B2FCC28)
---@param vehicle number 
---@return number retval 
function GetVehicleBodyHealth(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF65929C)
---@param vehicle number The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@return number retval Float representing width of the wheel collider.
function GetVehicleWheelTireColliderWidth(vehicle, wheelIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7147656)
---@param vehicle number 
---@return number retval 
function GetVehicleHeadlightsColour(vehicle) end

---Requests whether or not the commerce data for the specified player has loaded.
---[Native Documentation](https://docs.fivem.net/natives/?_0xBEFE93F4)
---@param playerSrc string The player handle
---@return boolean retval A boolean.
function IsPlayerCommerceInfoLoaded(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE02B51D7)
---@param vehicle number 
---@return number retval 
function GetVehicleTurboPressure(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C2B9FEF)
---@param vehicle number 
---@param r number 
---@param g number 
---@param b number 
function GetVehicleCustomPrimaryColour(vehicle, r, g, b) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC7F8EF4)
---@param vehicle number 
---@return number retval 
function GetVehicleOilLevel(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DAD4583)
---@param vehicle number 
---@return number retval 
function GetVehicleClutch(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7E6E219C)
---@param vehicle number 
---@return number retval 
function GetVehicleLightMultiplier(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7C278621)
---@param vehicle number 
---@param lightsOn boolean 
---@param highbeamsOn boolean 
---@return boolean retval 
function GetVehicleLightsState(vehicle, lightsOn, highbeamsOn) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCCFF3B6E)
---@param vehicle number 
---@param color number 
function GetVehicleInteriorColour(vehicle, color) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x483B013C)
---@param vehicle number 
---@return boolean retval 
function GetVehicleHandbrake(vehicle) end

---A getter for the recoil shake amplitude of a weapon.
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E1AF5F)
---@param weaponHash number | string Weapon name hash.
---@return number retval The recoil shake amplitude of a weapon.
function GetWeaponRecoilShakeAmplitude(weaponHash) end

---A getter for [MODIFY_VEHICLE_TOP_SPEED](#\_0x93A3996368C94158). Returns -1.0 if a modifier is not set.
---[Native Documentation](https://docs.fivem.net/natives/?_0x998B7FEE)
---@param vehicle number The target vehicle.
---@return number retval Returns vehicle's modified top speed.
function GetVehicleTopSpeedModifier(vehicle) end

---A getter for [\_SET_WEAPON_DAMAGE_MODIFIER](#\_0x4757F00BC6323CFE).
---[Native Documentation](https://docs.fivem.net/natives/?_0xD979143)
---@param weaponHash number | string Weapon name hash.
---@return number retval A weapon damage modifier.
function GetWeaponDamageModifier(weaponHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x25EB5873)
---@param vehicle number 
---@return boolean retval 
function IsVehicleSirenOn(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD1D07351)
---@param vehicle number 
---@return number retval A float among -1 and 1 according if the vehicle is moving forwards or backwards
function GetVehicleThrottleOffset(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD1D07351)
---@param vehicle number 
---@return number retval A float among -1 and 1 according if the vehicle is moving forwards or backwards
function GetVehicleCurrentAcceleration(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF849ED67)
---@param vehicle number 
---@return boolean retval 
function IsVehiclePreviouslyOwnedByPlayer(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBB340D04)
---@param vehicle number 
---@return boolean retval 
function IsVehicleEngineStarting(vehicle) end

---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Returns whether an asynchronous streaming file registration completed.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA194934D)
---@param registerAs string The file name to check, for example `asset.ydr`.
---@return boolean retval Whether or not the streaming file has been registered.
function IsStreamingFileReady(registerAs) end

---Returns the effective handling data of a vehicle as an integer value.
---Example: `local modelFlags = GetVehicleHandlingInt(vehicle, 'CHandlingData', 'strModelFlags')`
---[Native Documentation](https://docs.fivem.net/natives/?_0x27396C75)
---@param vehicle number The vehicle to obtain data for.
---@param class_ string The handling class to get. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to get. These match the keys in `handling.meta`.
---@return number retval An integer.
function GetVehicleHandlingInt(vehicle, class_, fieldName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1D1D689)
---@param vehicle number 
---@return number retval 
function GetVehicleHighGear(vehicle) end

---Gets the state of the player vehicle's dashboard lights as a bit set
---indicator_left = 1
---indicator_right = 2
---handbrakeLight = 4
---engineLight = 8
---ABSLight = 16
---gasLight = 32
---oilLight = 64
---headlights = 128
---highBeam = 256
---batteryLight = 512
---[Native Documentation](https://docs.fivem.net/natives/?_0x500FFE9D)
---@return number retval 
function GetVehicleDashboardLights() end

---Gets the lock on state for the specified vehicle. See the client-side [GET_VEHICLE_HOMING_LOCKON_STATE](#\_0xE6B0E8CFC3633BF0) native for a description of lock on states.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFBDE9FD8)
---@param vehicle number The vehicle to check.
---@return number retval The lock on state.
function GetVehicleHomingLockonState(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA411F72C)
---@param vehicle number 
---@return boolean retval 
function IsVehicleInteriorLightOn(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x48C80210)
---@param vehicle number 
---@param wheelID number 
---@param completely boolean 
---@return boolean retval 
function IsVehicleTyreBurst(vehicle, wheelID, completely) end

---```
---This will return true if the player is evading wanted level, meaning that the wanted level stars are blink.
---Otherwise will return false.
---
---If the player is not wanted, it simply returns false.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x89A3881A)
---@param playerSrc string The target player
---@return boolean retval boolean value, depending if the player is evading his wanted level or not.
function IsPlayerEvadingWantedLevel(playerSrc) end

---A getter for `ReticuleHash` in a weapon scope component.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF9AB9297)
---@param componentHash number | string Weapon component name hash.
---@return number retval The hash of the reticule camera.
function GetWeaponComponentReticuleHash(componentHash) end

---Gets brake pressure of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---Normal values around 1.0f when braking.
---[Native Documentation](https://docs.fivem.net/natives/?_0x70FE2EFF)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval 
function GetVehicleWheelBrakePressure(vehicle, wheelIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE4E83A5B)
---@param vehicle number 
---@return boolean retval 
function HasVehicleBeenOwnedByPlayer(vehicle) end

---Gets the current suspension compression of a wheel.
---Returns a positive value. 0 means the suspension is fully extended, the wheel is off the ground.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B48175B)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval The current compression of the wheel's suspension.
function GetVehicleWheelSuspensionCompression(vehicle, wheelIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x37CF52CE)
---@param principal string 
---@param object string 
---@return boolean retval 
function IsPrincipalAceAllowed(principal, object) end

---Gets the rotation speed of a wheel.
---This is used internally to calcuate GET_VEHICLE_WHEEL_SPEED.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA1859E5)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval The angular velocity of the wheel.
function GetVehicleWheelRotationSpeed(vehicle, wheelIndex) end

---Returns the mumble voice channel from a player's server id.
---[Native Documentation](https://docs.fivem.net/natives/?_0x221C09F1)
---@param serverId number The player's server id.
---@return number retval Int representing the identifier of the voice channel.
function MumbleGetVoiceChannelFromServerId(serverId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x42098B5)
---@param vehicle number 
---@param extraId number 
---@return boolean retval 
function IsVehicleExtraTurnedOn(vehicle, extraId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE0BA9FE6)
---@param vehicle number The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@return number retval Float representing size of the wheel collider.
function GetVehicleWheelTireColliderSize(vehicle, wheelIndex) end

---List of known states:
---
---```
---1: Not wheeling.
---65: Vehicle is ready to do wheelie (burnouting).
---129: Vehicle is doing wheelie.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x137260D1)
---Example: 
---```Citizen.CreateThread(function()
---  while true do
---    Wait(1)
---
---    local veh = GetVehiclePedIsUsing(PlayerPedId())
---    if veh ~= 0 then
---      local wheelieState = GetVehicleWheelieState(veh)
---      if wheelieState == 1 then
---        print("Nothing")
---      elseif wheelieState == 65 then
---        print("Ready to wheelie!")
---      elseif wheelieState == 129 then
---        print("Doing wheelie!")
---      end
---    end
---  end
---end)```
---@param vehicle number Vehicle
---@return number retval Vehicle's current wheelie state.
function GetVehicleWheelieState(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC921211)
---@param vehicle number 
---@return boolean retval 
function IsVehicleAlarmSet(vehicle) end

---This native checks if the given ped is a player.
---[Native Documentation](https://docs.fivem.net/natives/?_0x404794CA)
---@param ped number 
---@return boolean retval Returns `true` if the ped is a player, `false` otherwise.
function IsPedAPlayer(ped) end

---Returns the effective handling data of a vehicle as a floating-point value.
---Example: `local fSteeringLock = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock')`
---[Native Documentation](https://docs.fivem.net/natives/?_0x642FC12F)
---@param vehicle number The vehicle to obtain data for.
---@param class_ string The handling class to get. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to get. These match the keys in `handling.meta`.
---@return number retval A floating-point value.
function GetVehicleHandlingFloat(vehicle, class_, fieldName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9C9A3BE0)
---@param vehicle number 
---@return boolean retval 
function HasEntityBeenMarkedAsNoLongerNeeded(vehicle) end

---Clears channels from the target list for the specified Mumble voice target ID.
---[Native Documentation](https://docs.fivem.net/natives/?_0x5EA72E76)
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
function MumbleClearVoiceTargetChannels(targetId) end

---Starts listening to the specified channel, when available.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC79F44BF)
---@param channel number A game voice channel ID.
function MumbleAddVoiceChannelListen(channel) end

---A getter for `CWeaponFallOffModifier` range modifier value in a weapon component.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2FD0BC1B)
---@param componentHash number | string Weapon component name hash.
---@return number retval A weapon component range modifier.
function GetWeaponComponentRangeModifier(componentHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x13D53892)
---@param vehicle number 
---@return number retval 
function GetVehicleWindowTint(vehicle) end

---Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
---[Native Documentation](https://docs.fivem.net/natives/?_0x83070354)
---@param vehicle number 
---@return number retval An integer.
function GetVehicleIndicatorLights(vehicle) end

---Returns vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).
---Only works on non-default wheels (returns 0 in case of default wheels).
---[Native Documentation](https://docs.fivem.net/natives/?_0x4046B66)
---@param vehicle number The vehicle to obtain data for.
---@return number retval Float representing size of the wheel (usually between 0.5 and 1.5)
function GetVehicleWheelSize(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7F04022)
---@param vehicle number The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@return number retval Integer representing the index of the current surface material of that wheel. Check materials.dat for the indexes.
function GetVehicleWheelSurfaceMaterial(vehicle, wheelIndex) end

---Gets power being sent to a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD203287)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval 
function GetVehicleWheelPower(vehicle, wheelIndex) end

---Gets speed of a wheel at the tyre.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---[Native Documentation](https://docs.fivem.net/natives/?_0x149C9DA0)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval An integer.
function GetVehicleWheelSpeed(vehicle, wheelIndex) end

---Converts a screen coordinate into its relative world coordinate.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC81D0659)
---Example: 
---```CreateThread(function()
---  while true do
---    local screenX = GetDisabledControlNormal(0, 239)
---    local screenY = GetDisabledControlNormal(0, 240)
---
---    local world, normal = GetWorldCoordFromScreenCoord(screenX, screenY)
---
---    local depth = 10
---
---    local target = world + normal * depth
---
---    DrawSphere(target.x, target.y, target.z, 0.5, 255, 0, 0, 0.5)
---
---    Wait(0)
---  end
---end)```
---@param screenX number A screen horizontal axis coordinate (0.0 - 1.0).
---@param screenY number A screen vertical axis coordinate (0.0 - 1.0).
---@param worldVector vector3 The world coord vector pointer.
---@param normalVector vector3 The screen normal vector pointer.
function GetWorldCoordFromScreenCoord(screenX, screenY, worldVector, normalVector) end

---Adds the specified player to the target list for the specified Mumble voice target ID.
---[Native Documentation](https://docs.fivem.net/natives/?_0x25F2B65F)
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param serverId number The player's server id.
function MumbleAddVoiceTargetPlayerByServerId(targetId, serverId) end

---A getter for `CWeaponFallOffModifier` damage modifier value in a weapon component.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE134FB8D)
---@param componentHash number | string Weapon component name hash.
---@return number retval A weapon component damage modifier.
function GetWeaponComponentRangeDamageModifier(componentHash) end

---Checks if the player is currently muted
---[Native Documentation](https://docs.fivem.net/natives/?_0x1D5D50C2)
---@param playerSrc number The player to get the mute state for
---@return boolean retval Whether or not the player is muted
function MumbleIsPlayerMuted(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x84E02A32)
---@return number retval Talker proximity value.
function MumbleGetTalkerProximity() end

---Gets whether the wheel is powered.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---This is a shortcut to a flag in GET_VEHICLE_WHEEL_FLAGS.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3CCF1B49)
---@param vehicle number 
---@param wheelIndex number 
---@return boolean retval 
function GetVehicleWheelIsPowered(vehicle, wheelIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE820BC10)
---@return boolean retval True if the player has enabled voice chat.
function MumbleIsActive() end

---Gets the vehicle that is locked on to for the specified vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4A557117)
---@param vehicle number The vehicle to check.
---@return number retval The vehicle that is locked on. 0 returned if no vehicle is locked on.
function GetVehicleLockOnTarget(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7A6462F4)
---@param playerSrc string The player handle
---@return vector3 retval 
function NetworkGetVoiceProximityOverride(playerSrc) end

---Returns the current NUI focus state previously set with `SET_NUI_FOCUS`.
---[Native Documentation](https://docs.fivem.net/natives/?_0x98545E6D)
---@return boolean retval True or false.
function IsNuiFocused() end

---Returns whether or not the specific minimap overlay has loaded.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF7535F32)
---@param id number A minimap overlay ID.
---@return boolean retval A boolean indicating load status.
function HasMinimapOverlayLoaded(id) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF9933BF4)
---@param vehicle number 
---@return boolean retval 
function IsVehicleNeedsToBeHotwired(vehicle) end

---Requests the commerce data from Tebex for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7995539E)
---@param playerSrc string The player handle
function LoadPlayerCommerceDataExt(playerSrc) end

---Adds the specified channel to the target list for the specified Mumble voice target ID.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D386C9E)
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param channel number A game voice channel ID.
function MumbleAddVoiceTargetChannel(targetId, channel) end

---Returns the effective handling data of a vehicle as a vector value.
---Example: `local inertiaMultiplier = GetVehicleHandlingVector(vehicle, 'CHandlingData', 'vecInertiaMultiplier')`
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB341304)
---@param vehicle number The vehicle to obtain data for.
---@param class_ string The handling class to get. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to get. These match the keys in `handling.meta`.
---@return vector3 retval An integer.
function GetVehicleHandlingVector(vehicle, class_, fieldName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7DAF7C)
---@param vehicle number 
---@return boolean retval 
function IsVehicleWanted(vehicle) end

---Create a permanent voice channel.
---[Native Documentation](https://docs.fivem.net/natives/?_0x262663C5)
---@param id number ID of the channel.
function MumbleCreateChannel(id) end

---Gets steering angle of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0867448)
---@param vehicle number 
---@param wheelIndex number 
---@return number retval The steering angle of the wheel, with 0 being straight.
function GetVehicleWheelSteeringAngle(vehicle, wheelIndex) end

---Checks if keyboard input is enabled during NUI focus using `SET_NUI_FOCUS_KEEP_INPUT`.
---[Native Documentation](https://docs.fivem.net/natives/?_0x39C9DC92)
---@return boolean retval True or false.
function IsNuiFocusKeepingInput() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBF847807)
function MumbleClearVoiceChannel() end

---Removes the specified player from the user's voice targets.
---
---Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER](#\_0x32C5355A)
---[Native Documentation](https://docs.fivem.net/natives/?_0x88CD646F)
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param player number The player index to remove from the target.
function MumbleRemoveVoiceTargetPlayer(targetId, player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9E35DAB6)
---@param entity number 
---@return number retval 
function NetworkGetNetworkIdFromEntity(entity) end

---Scope entry for profiler.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC795A4A9)
---@param scopeName string Scope name.
function ProfilerEnterScope(scopeName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x74E927B0)
---@param value number Proximity value.
function MumbleSetTalkerProximity(value) end

---Returns whether or not a browser is created for a specified DUI browser object.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7AAC3B4C)
---@param duiObject number The DUI browser handle.
---@return boolean retval A boolean indicating TRUE if the browser is created.
function IsDuiAvailable(duiObject) end

---Clears players from the target list for the specified Mumble voice target ID.
---[Native Documentation](https://docs.fivem.net/natives/?_0x912E21DA)
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
function MumbleClearVoiceTargetPlayers(targetId) end

---Adds the specified player to the target list for the specified Mumble voice target ID.
---[Native Documentation](https://docs.fivem.net/natives/?_0x32C5355A)
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param player number A game player index.
function MumbleAddVoiceTargetPlayer(targetId, player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7D2C20C)
---@param playerSrc string The player handle
---@return boolean retval A boolean.
function IsPlayerUsingSuperJump(playerSrc) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE3551879)
---@param referenceIdentity string 
---@param argsSerialized string 
---@param argsLength number 
---@param retvalLength number 
---@return string retval 
function InvokeFunctionReference(referenceIdentity, argsSerialized, argsLength, retvalLength) end

---<!-- Native implemented by Disquse. 0x66EE14B2 -->
---[Native Documentation](https://docs.fivem.net/natives/?_0x66EE14B2)
---Example: 
---```local expanded = IsBigmapActive()
---local fullMap = IsBigmapFull()
---print("The minimap is currently " .. (expanded and "expanded" or "normal size") .. " and the full map is currently " .. (fullMap and "revealed" or "not revealed") .. ".")```
---@return boolean retval Returns true if the full map is currently revealed on the minimap.
Use [`IsBigmapActive`](#\_0xFFF65C63) to check if the minimap is currently expanded or in it's normal state.
function IsBigmapFull() end

---Sets the current Mumble voice target ID to broadcast voice to.
---[Native Documentation](https://docs.fivem.net/natives/?_0x960A4A95)
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive). 0 disables voice targets, and 31 is server loopback.
function MumbleSetVoiceTarget(targetId) end

---Replaces the `popgroups` (CPopGroupList) meta file with the file in the specified path.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3BC438F)
---Example: 
---```-- fxmanifest.lua:
---file 'popgroups_dlc.xml'
---
----- client.lua:
---OverridePopGroups('popgroups_dlc.xml')
---
----- restore the original after five minutes
---Wait(1000 * 60 * 5)
---OverridePopGroups(nil)```
---@param path string The file path to load (`popgroups`, `@resource/popgroups`), or `null` to reload the default population groups file.
function OverridePopGroups(path) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7EBB9929)
---@param object string 
---@return boolean retval 
function IsAceAllowed(object) end

---Gets whether or not this is the CitizenFX server.
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF24C52E)
---@return boolean retval A boolean value.
function IsDuplicityVersion() end

---Clears the target list for the specified Mumble voice target ID.
---[Native Documentation](https://docs.fivem.net/natives/?_0x8555DCBA)
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
function MumbleClearVoiceTarget(targetId) end

---This native checks if the given entity is visible.
---[Native Documentation](https://docs.fivem.net/natives/?_0x120B4ED5)
---@param entity number 
---@return boolean retval Returns `true` if the entity is visible, `false` otherwise.
function IsEntityVisible(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6B171E87)
---@param requestData table 
---@return number retval 
function PerformHttpRequestInternalEx(requestData) end

---Overrides the output volume for a particular player with the specified server id and player name on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
---[Native Documentation](https://docs.fivem.net/natives/?_0xCE8E25B4)
---@param serverId number The player's server id.
---@param volume number The volume, ranging from 0.0 to 1.0 (or above).
function MumbleSetVolumeOverrideByServerId(serverId, volume) end

---Requests the commerce data for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA8F63EAB)
---@param playerSrc string The player handle
function LoadPlayerCommerceData(playerSrc) end

---Returns the first owner ID of the specified entity.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1E546224)
---@param entity number The entity to get the first owner for.
---@return number retval The server ID of the first entity owner.
function NetworkGetFirstEntityOwner(entity) end

---Removes the specified player from the user's voice targets.
---
---Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER_BY_SERVER_ID](#\_0x25F2B65F)
---[Native Documentation](https://docs.fivem.net/natives/?_0x930BD34B)
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param serverId number The player's server id to remove from the target.
function MumbleRemoveVoiceTargetPlayerByServerId(targetId, serverId) end

---Sets the audio submix ID for a specified player using Mumble 'Native Audio' functionality.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE3A3054)
---@param serverId number The player's server ID.
---@param submixId number The submix ID.
function MumbleSetSubmixForServerId(serverId, submixId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCEE21AB2)
---@param vehicle number The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@return number retval Float representing size of the rim collider. Not sure what it is used for, probably to detect whether bullets hit rim or tire and puncture it (and to determine size of the wheel when tire is fully blown).
function GetVehicleWheelRimColliderSize(vehicle, wheelIndex) end

---Removes the specified voice channel from the user's voice targets.
---
---Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_CHANNEL](#\_0x4D386C9E)
---[Native Documentation](https://docs.fivem.net/natives/?_0x268DB867)
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param channel number The game voice channel ID to remove from the target.
function MumbleRemoveVoiceTargetChannel(targetId, channel) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA58D7AE)
---@param vehicle number 
---@return number retval 
function GetVehicleWheelType(vehicle) end

---Registers a key mapping for the current resource.
---
---See the related [cookbook post](https://cookbook.fivem.net/2020/01/06/using-the-new-console-key-bindings/) for more information.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7664FD1)
---Example: 
---```local handsUp = false
---CreateThread(function()
---    while true do
---        Wait(0)
---        if handsUp then
---            TaskHandsUp(PlayerPedId(), 250, PlayerPedId(), -1, true)
---        end
---    end
---end)
---RegisterCommand('+handsup', function()
---    handsUp = true
---end, false)
---RegisterCommand('-handsup', function()
---    handsUp = false
---end, false)
---RegisterKeyMapping('+handsup', 'Hands Up', 'keyboard', 'i')```
---@param commandString string The command to execute, and the identifier of the binding.
---@param description string A description for in the settings menu.
---@param defaultMapper string The [mapper ID](https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/) to use for the default binding, e.g. `keyboard`.
---@param defaultParameter string The [IO parameter ID](https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/) to use for the default binding, e.g. `f3`.
function RegisterKeyMapping(commandString, description, defaultMapper, defaultParameter) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC59B980C)
---@param callbackType string 
---@param callback function 
function RegisterNuiCallback(callbackType, callback) end

---Scope exit for profiler.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB39CA35C)
function ProfilerExitScope() end

---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Registers a dynamic streaming asset from the server with the GTA streaming module system.
---[Native Documentation](https://docs.fivem.net/natives/?_0xCEAD2D4B)
---@param resourceName string The resource to add the asset to.
---@param fileName string A file name in the resource.
---@param cacheString string The string returned from `REGISTER_RESOURCE_ASSET` on the server.
function RegisterStreamingFileFromCache(resourceName, fileName, cacheString) end

---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Removes a handler for changes to a state bag.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD36BE661)
---@param cookie number The cookie.
function RemoveStateBagChangeHandler(cookie) end

---Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD9D7A0AA)
---@param duiObject number The DUI browser handle.
---@param x number The mouse X position.
---@param y number The mouse Y position.
function SendDuiMouseMove(duiObject, x, y) end

---Changes the Mumble server address to connect to, and reconnects to the new address.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6EB2CD8)
---@param address string The address of the mumble server.
---@param port number The port of the mumble server.
function MumbleSetServerAddress(address, port) end

---A getter for [FREEZE_ENTITY_POSITION](#\_0x428CA6DBD1094446).
---[Native Documentation](https://docs.fivem.net/natives/?_0xEDBE6ADD)
---Example: 
---```local isFrozen = IsEntityPositionFrozen(PlayerPedId())```
---@param entity number The entity to check for
---@return boolean retval Boolean stating if it is frozen or not.
function IsEntityPositionFrozen(entity) end

---This native will return true if the user succesfully connected to the voice server.
---If the user disabled the voice-chat setting it will return false.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB816370A)
---@return boolean retval True if the player is connected to a mumble server.
function MumbleIsConnected() end

---Overrides whether or not peds can stand on top of the specified vehicle.
---
---Note this flag is not replicated automatically, you will have to manually do so.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7FA03E76)
---@param vehicle number The vehicle.
---@param can boolean Can they?
function OverrideVehiclePedsCanStandOnTopFlag(vehicle, can) end

---Resets parameters which is used by the game for checking is ped needs to fly through windscreen after a crash to default values.
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D712937)
function ResetFlyThroughWindscreenParams() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x33EEF97F)
---@param player number The target player.
---@return boolean retval Whether or not the player is talking.
function MumbleIsPlayerTalking(player) end

---Mutes or unmutes the specified player
---[Native Documentation](https://docs.fivem.net/natives/?_0xCC6C2EB1)
---@param playerSrc number The player to set the mute state of
---@param toggle boolean Whether to mute or unmute the player
function MumbleSetPlayerMuted(playerSrc, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD932A3F3)
---@param state boolean Voice chat state.
function MumbleSetActive(state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B912C3F)
---@param netId number 
---@return number retval 
function NetworkGetEntityFromNetworkId(netId) end

---Stops listening to the specified channel.
---[Native Documentation](https://docs.fivem.net/natives/?_0x231523B7)
---@param channel number A game voice channel ID.
function MumbleRemoveVoiceChannelListen(channel) end

---Sets the current output distance. The player will be able to hear other players talking within this distance.
---[Native Documentation](https://docs.fivem.net/natives/?_0x74C597D9)
---@param distance number The output distance.
function MumbleSetAudioOutputDistance(distance) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8737EEE8)
---@param channel number A game voice channel ID.
function MumbleSetVoiceChannel(channel) end

---Registers a specified .gfx file as GFx font library.
---The .gfx file has to be registered with the streamer already.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1B3A363)
---@param fileName string The name of the .gfx file, without extension.
function RegisterFontFile(fileName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8E8CC653)
---@param requestData string 
---@param requestDataLength number 
---@return number retval 
function PerformHttpRequestInternal(requestData, requestDataLength) end

---Experimental natives, please do not use in a live environment.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA896B20A)
---@param origTxd string 
---@param origTxn string 
function RemoveReplaceTexture(origTxd, origTxn) end

---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Registers a cached resource asset with the resource system, similar to the automatic scanning of the `stream/` folder.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9862B266)
---@param resourceName string The resource to add the asset to.
---@param fileName string A file name in the resource.
---@return string retval A cache string to pass to `REGISTER_STREAMING_FILE_FROM_CACHE` on the client.
function RegisterResourceAsset(resourceName, fileName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA8AE9C2F)
---@param callbackType string 
---@param callback function 
function RegisterRawNuiCallback(callbackType, callback) end

---Overrides the output volume for a particular player on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
---
---Set to -1.0 to reset the Volume override.
---[Native Documentation](https://docs.fivem.net/natives/?_0x61C309E3)
---@param player number A game player index.
---@param volume number The volume, ranging from 0.0 to 1.0 (or above).
function MumbleSetVolumeOverride(player, volume) end

---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Registers a set of entities with the game engine. These should match `CEntityDef` class information from the game.
---At this time, this function **should not be used in a live environment**.
---[Native Documentation](https://docs.fivem.net/natives/?_0x410DA7D3)
---@param factory function A function returning a list of entities.
function RegisterEntities(factory) end

---Returns the owner ID of the specified entity.
---[Native Documentation](https://docs.fivem.net/natives/?_0x526FEE31)
---@param entity number The entity to get the owner for.
---@return number retval On the server, the server ID of the entity owner. On the client, returns the player/slot ID of the entity owner.
function NetworkGetEntityOwner(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x78608ACB)
---@param jsonString string 
---@return boolean retval 
function SendNuiMessage(jsonString) end

---Requests a resource file set with the specified name to be downloaded and mounted on top of the current resource.
---
---Resource file sets are specified in `fxmanifest.lua` with the following syntax:
---
---```lua
---file_set 'addon_ui' {
---    'ui/addon/index.html',
---    'ui/addon/**.js',
---}
---```
---
---This command will trigger a script error if the request failed.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE7490533)
---Example: 
---```-- fxmanifest.lua
---file_set 'dummies' {
---    'dummy/**.txt',
---    'potato.txt',
---}
---
----- main script
---local function PrintTest()
---    local tests = { 'potato.txt', 'dummy/1.txt', 'dummy/b/2.txt' }
---
---    for _, v in ipairs(tests) do
---        local data = LoadResourceFile(GetCurrentResourceName(), v)
---        print(v, data)
---    end
---end
---
---RegisterCommand('fileset', function()
---    PrintTest()
---
---    while not RequestResourceFileSet('dummies') do
---        Wait(100)
---    end
---
---    PrintTest()
---end)```
---@param setName string The name of the file set as specified in `fxmanifest.lua`.
---@return boolean retval `TRUE` if the set is mounted, `FALSE` if the request is still pending.
function RequestResourceFileSet(setName) end

---Sets the current input distance. The player will be able to talk to other players within this distance.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1B1052E2)
---@param distance number The input distance.
function MumbleSetAudioInputDistance(distance) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8A7A8DAC)
---@param x number X position.
---@param y number Y position.
---@return boolean retval A boolean.
function SetCursorLocation(x, y) end

---<!-- Native implemented by Disquse. 0xFFF65C63 -->
---
---Returns true if the minimap is currently expanded. False if it's the normal minimap state.
---Use [`IsBigmapFull`](#\_0x66EE14B2) to check if the full map is currently revealed on the minimap.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFFF65C63)
---Example: 
---```local expanded = IsBigmapActive()
---local fullMap = IsBigmapFull()
---print("The minimap is currently " .. (expanded and "expanded" or "normal size") .. " and the full map is currently " .. (fullMap and "revealed" or "not revealed") .. ".")```
---@return boolean retval A bool indicating if the minimap is currently expanded or normal state.
function IsBigmapActive() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCD03CDA9)
---@param callbackType string 
function RegisterNuiCallbackType(callbackType) end

---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Registers a KVP value as an asset with the GTA streaming module system. This function currently won't work.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1493DCC1)
---@param kvsKey string The KVP key in the current resource to register as an asset.
function RegisterStreamingFileFromKvs(kvsKey) end

---Reads the contents of a text file in a specified resource.
---If executed on the client, this file has to be included in `files` in the resource manifest.
---Example: `local data = LoadResourceFile("devtools", "data.json")`
---[Native Documentation](https://docs.fivem.net/natives/?_0x76A9EE1F)
---@param resourceName string The resource name.
---@param fileName string The file in the resource.
---@return string retval The file contents
function LoadResourceFile(resourceName, fileName) end

---Sets the routing bucket for the specified entity.
---
---Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
---[Native Documentation](https://docs.fivem.net/natives/?_0x635E5289)
---@param entity number The entity to set the routing bucket for.
---@param bucket number The bucket ID.
function SetEntityRoutingBucket(entity, bucket) end

---An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD233A168)
---@param eventName string An event name, or "\*" to disable HLL event filtering for this resource.
function RegisterResourceAsEventHandler(eventName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDEDAE23D)
---@param playerSrc string 
---@param object string 
---@return boolean retval 
function IsPlayerAceAllowed(playerSrc, object) end

---Registers a specified font name for use with text draw commands.
---[Native Documentation](https://docs.fivem.net/natives/?_0xACF6D8EE)
---@param fontName string The name of the font in the GFx font library.
---@return number retval An index to use with [SET_TEXT_FONT](#\_0x66E0276CC5F6B9DA) and similar natives.
function RegisterFontId(fontName) end

---Schedules the specified resource to run a tick as soon as possible, bypassing the server's fixed tick rate.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB88A73AD)
---@param resourceName string The resource to tick.
function ScheduleResourceTick(resourceName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5518D60B)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  SetInteriorRoomFlag(interiorId, roomId, 64)
---  RefreshInterior(interiorId)
---end```
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@param flag number New flag value.
function SetInteriorRoomFlag(interiorId, roomIndex, flag) end

---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Registers a set of archetypes with the game engine. These should match `CBaseArchetypeDef` class information from the game.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3C2F9037)
---Example: 
---```RegisterArchetypes(function()
---	return {
---		{
---			flags = 32,
---			bbMin = vector3(-39.99570000, -8.00155600, -2.56818800),
---			bbMax = vector3(40.00439000, 7.99858000, 1.44575100),
---			bsCentre = vector3(0.00434110, -0.00148870, -0.56121830),
---			bsRadius = 40.84160000,
---			name = 'my_asset',
---			textureDictionary = 'my_asset',
---			physicsDictionary = 'my_asset',
---			assetName = 'my_asset',
---			assetType = 'ASSET_TYPE_DRAWABLE',
---			lodDist = 450.45,
---			specialAttribute = 0
---		}
---	}
---end)```
---@param factory function A function returning a list of archetypes.
function RegisterArchetypes(factory) end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0x285B43CA)
---@param factoryId string The identifier for the build task.
---@param factoryFn function The factory function.
function RegisterResourceBuildTaskFactory(factoryId, factoryFn) end

---Navigates the specified DUI browser to a different URL.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF761D9F3)
---@param duiObject number The DUI browser handle.
---@param url string The new URL.
function SetDuiUrl(duiObject, url) end

---Requests the specified player to buy the passed SKU. This'll pop up a prompt on the client, which upon acceptance
---will open the browser prompting further purchase details.
---[Native Documentation](https://docs.fivem.net/natives/?_0x96F93CCE)
---@param playerSrc string The player handle
---@param skuId number The ID of the SKU.
function RequestPlayerCommerceSession(playerSrc, skuId) end

---Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.
---
---Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#\_0x561C060B).
---
---The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).
---
---**Example result**:
---
---![](https://i.imgur.com/TaCnG09.png)
---[Native Documentation](https://docs.fivem.net/natives/?_0x5FA79B0F)
---Example: 
---```-- (server side script)
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
---end, false --[[this command is not restricted, everyone can use this.]])```
---@param commandName string The command you want to register.
---@param handler function A handler function that gets called whenever the command is executed.
---@param restricted boolean If this is a server command and you set this to true, then players will need the command.yourCommandName ace permission to execute this command.
function RegisterCommand(commandName, handler, restricted) end

---Resets whether or not peds can stand on top of the specified vehicle.
---
---Note this flag is not replicated automatically, you will have to manually do so.
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF62CFE2)
---@param vehicle number The vehicle.
function ResetVehiclePedsCanStandOnTopFlag(vehicle) end

---Restores an overridden ped model personality type to the default value.
---[Native Documentation](https://docs.fivem.net/natives/?_0x79A12861)
---@param modelHash number | string Ped's model.
function ResetPedModelPersonality(modelHash) end

---Sets the volumes for the sound channels in a submix effect.
---Values can be between 0.0 and 1.0.
---Channel 5 and channel 6 are not used in voice chat but are believed to be center and LFE channels.
---Output slot starts at 0 for the first ADD_AUDIO_SUBMIX_OUTPUT call then incremented by 1 on each subsequent call.
---[Native Documentation](https://docs.fivem.net/natives/?_0x825DC0D1)
---@param submixId number The submix.
---@param outputSlot number The output slot index.
---@param frontLeftVolume number The volume for the front left channel.
---@param frontRightVolume number The volume for the front right channel.
---@param rearLeftVolume number The volume for the rear left channel.
---@param rearRightVolume number The volume for the rear right channel.
---@param channel5Volume number The volume for channel 5.
---@param channel6Volume number The volume for channel 6.
function SetAudioSubmixOutputVolumes(submixId, outputSlot, frontLeftVolume, frontRightVolume, rearLeftVolume, rearRightVolume, channel5Volume, channel6Volume) end

---Registers a listener for console output messages.
---[Native Documentation](https://docs.fivem.net/natives/?_0x281B5448)
---@param listener function A function of `(channel: string, message: string) => void`. The message might contain `\n`.
function RegisterConsoleListener(listener) end

---Removes a dry volume from the game session.
---See CREATE_DRY_VOLUME for more info
---[Native Documentation](https://docs.fivem.net/natives/?_0x7BCAA6E7)
---@param handle number The handle of the dry volume that needs to be removed.
function RemoveDryVolume(handle) end

---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Registers a file from an URL as a streaming asset in the GTA streaming subsystem. This will asynchronously register the asset, and caching is done based on the URL itself - cache headers are ignored.
---
---Use `IS_STREAMING_FILE_READY` to check if the asset has been registered successfully.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF44BFB95)
---@param registerAs string The file name to register as, for example `asset.ydr`.
---@param url string The URL to fetch the asset from.
function RegisterStreamingFileFromUrl(registerAs, url) end

---Sets a floating-point parameter for a submix effect.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A209B3C)
---@param submixId number The submix.
---@param effectSlot number The effect slot for the submix. It is expected that the effect is set in this slot beforehand.
---@param paramIndex number The parameter index for the effect.
---@param paramValue number The parameter value to set.
function SetAudioSubmixEffectParamFloat(submixId, effectSlot, paramIndex, paramValue) end

---Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1D735B93)
---@param duiObject number The DUI browser handle.
---@param button string Either `'left'`, `'middle'` or `'right'`.
function SendDuiMouseUp(duiObject, button) end

---Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
---[Native Documentation](https://docs.fivem.net/natives/?_0xCD380DA9)
---@param duiObject number The DUI browser handle.
---@param jsonString string The message, encoded as JSON.
function SendDuiMessage(duiObject, jsonString) end

---Resets values from the zoom level data by index to defaults from mapzoomdata.meta.
---[Native Documentation](https://docs.fivem.net/natives/?_0x11A5B7ED)
---@param index number Zoom level index.
function ResetMapZoomDataLevel(index) end

---Injects a 'mouse wheel' event for a DUI object.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2D62133A)
---@param duiObject number The DUI browser handle.
---@param deltaY number The wheel Y delta.
---@param deltaX number The wheel X delta.
function SendDuiMouseWheel(duiObject, deltaY, deltaX) end

---Sends a message to the `loadingScreen` NUI frame, which contains the HTML page referenced in `loadscreen` resources.
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BBE6CC0)
---@param jsonString string The JSON-encoded message.
---@return boolean retval A success value.
function SendLoadingScreenMessage(jsonString) end

---Sets a clickable button to be displayed in a player's Discord rich presence.
---[Native Documentation](https://docs.fivem.net/natives/?_0xCBBC3FAC)
---@param index number The button index, either 0 or 1.
---@param label string The text to display on the button.
---@param url string The URL to open when clicking the button. This has to start with `fivem://connect/` or `https://`.
function SetDiscordRichPresenceAction(index, label, url) end

---Sets whether peds can stand on top of *all* vehicles without falling off.
---
---Note this flag is not replicated automatically, you will have to manually do so.
---[Native Documentation](https://docs.fivem.net/natives/?_0x90A9E0B2)
---@param flag boolean true to override, false to use default game behavior.
function OverridePedsCanStandOnTopFlag(flag) end

---Sets an integer parameter for a submix effect.
---[Native Documentation](https://docs.fivem.net/natives/?_0x77FAE2B8)
---@param submixId number The submix.
---@param effectSlot number The effect slot for the submix. It is expected that the effect is set in this slot beforehand.
---@param paramIndex number The parameter index for the effect.
---@param paramValue number The parameter value to set.
function SetAudioSubmixEffectParamInt(submixId, effectSlot, paramIndex, paramValue) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x341B16D2)
---@param varName string 
---@param value string 
function SetConvar(varName, value) end

---Allows Weapon-Flashlight beams to stay visible while moving. Normally it only stays on while aiming.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7635B349)
---@param state boolean On/Off
function SetFlashLightKeepOnWhileMoving(state) end

---This native sets the image asset for the discord rich presence implementation.
---[Native Documentation](https://docs.fivem.net/natives/?_0x53DFD530)
---@param assetName string The name of a valid asset registered on Discordapp's developer dashboard. note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
function SetDiscordRichPresenceAsset(assetName) end

---Returns true if the profiler is active.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF8B7D7BB)
---@return boolean retval True or false.
function ProfilerIsRecording() end

---Use this native to disable noise suppression and high pass filters.
---
---The possible intents for this are as follows (backticks are used to represent hashes):
---
---| Index | Description |
---|-|-|
---| \`speech\` | Default intent |
---| \`music\` | Disable noise suppression and high pass filter |
---[Native Documentation](https://docs.fivem.net/natives/?_0x6383526B)
---Example: 
---```-- disable noise suppression and high pass filter
---MumbleSetAudioInputIntent(`music`)
---
----- set the default intent (enable noise suppression and high pass filter)
---MumbleSetAudioInputIntent(`speech`)```
---@param intentHash number | string The intent hash.
function MumbleSetAudioInputIntent(intentHash) end

---This native sets the hover text of the small image asset for the discord rich presence implementation.
---[Native Documentation](https://docs.fivem.net/natives/?_0x35E62B6A)
---@param text string Text to be displayed when hovering over small image asset. Note that you must also set a valid small image asset using the SET_DISCORD_RICH_PRESENCE_ASSET_SMALL native.
function SetDiscordRichPresenceAssetSmallText(text) end

---This native sets the app id for the discord rich presence implementation.
---[Native Documentation](https://docs.fivem.net/natives/?_0x6A02254D)
---@param appId string A valid Discord API App Id, can be generated at https://discordapp.com/developers/applications/
function SetDiscordAppId(appId) end

---Assigns a RadioFX effect to a submix effect slot.
---
---The parameter values for this effect are as follows (backticks are used to represent hashes):
---
---| Index | Type | Description |
---|-|-|-|
---| \`enabled\` | int | Enables or disables RadioFX on this DSP. |
---| \`default\` | int | Sets default parameters for the RadioFX DSP and enables it. |
---| \`freq_low\` | float |  |
---| \`freq_hi\` | float |  |
---| \`fudge\` | float |  |
---| \`rm_mod_freq\` | float |  |
---| \`rm_mix\` | float |  |
---| \`o_freq_lo\` | float |  |
---| \`o_freq_hi\` | float |  |
---[Native Documentation](https://docs.fivem.net/natives/?_0xAAA94D53)
---Example: 
---```-- we want to change the master output
---local submix = 0
---
----- add a RadioFX effect to slot 0
---SetAudioSubmixEffectRadioFx(submix, 0)
---
----- set the default values
---SetAudioSubmixEffectParamInt(submix, 0, `default`, 1)```
---@param submixId number The submix.
---@param effectSlot number The effect slot for the submix.
function SetAudioSubmixEffectRadioFx(submixId, effectSlot) end

---Sets some in-game parameters which is used for checks is ped needs to fly through windscreen after a crash.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D3118ED)
---@param vehMinSpeed number Vehicle minimum speed (default 35.0).
---@param unkMinSpeed number Unknown minimum speed (default 40.0).
---@param unkModifier number Unknown modifier (default 17.0).
---@param minDamage number Minimum damage (default 2000.0).
---@return boolean retval A bool indicating if parameters was set successfully.
function SetFlyThroughWindscreenParams(vehMinSpeed, unkMinSpeed, unkModifier, minDamage) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4FDCF51E)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  SetInteriorRoomExtents(interiorId, 0, -999.0, -999.0, -100.0, 999.0, 999.0, 100.0) -- 0 is a limbo usually
---  RefreshInterior(interiorId)
---end```
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@param bbMinX number 
---@param bbMinY number 
---@param bbMinZ number 
---@param bbMaxX number 
---@param bbMaxY number 
---@param bbMaxZ number 
function SetInteriorRoomExtents(interiorId, roomIndex, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x58982680)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local portalIndex = 0
---
---  SetInteriorPortalRoomTo(interiorId, portalIndex, 0)
---  RefreshInterior(interiorId)
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param roomTo number New value.
function SetInteriorPortalRoomTo(interiorId, portalIndex, roomTo) end

---Sets whether all tags should group (normal game behavior) or should remain independent and above each ped's respective head when in a vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7A27BC93)
---@param enabled boolean Whether tags should use normal game behavior. Default is true.
function SetMpGamerTagsUseVehicleBehavior(enabled) end

---the status of default voip system. It affects on `NETWORK_IS_PLAYER_TALKING` and `mp_facial` animation.
---This function doesn't need to be called every frame, it works like a switcher.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC02CAF6)
---@param player number The target player.
---@param state boolean Overriding state.
function SetPlayerTalkingOverride(player, state) end

---Overrides how many real ms are equal to one game minute.
---A setter for [`GetMillisecondsPerGameMinute`](#\_0x2F8B4D1C595B11DB).
---[Native Documentation](https://docs.fivem.net/natives/?_0x36CA2554)
---@param value number Milliseconds.
function SetMillisecondsPerGameMinute(value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x87F43553)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local portalCount = GetInteriorPortalCount(interiorId)
---
---  -- rip portals
---  for portalIndex = 0, portalCount - 1 do
---    for cornerIndex = 0, 3 do -- 4 corners
---      SetInteriorPortalCornerPosition(interiorId, portalIndex, cornerIndex, 0.0, 0.0, 0.0)
---    end
---  end
---  
---  RefreshInterior(interiorId)
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param cornerIndex number Interior corner index.
---@param posX number 
---@param posY number 
---@param posZ number 
function SetInteriorPortalCornerPosition(interiorId, portalIndex, cornerIndex, posX, posY, posZ) end

---Sets the default number plate text pattern for vehicles seen on the local client with the specified plate index as their *default* index (`plateProbabilities` from carvariations).
---
---For consistency, this should be used with the same value on all clients, since vehicles *without* custom text will use a seeded random number generator with this pattern to determine the default plate text.
---
---The default value is `11AAA111`, and using this or a NULL string will revert to the default game RNG.
---
---### Pattern string format
---
---*   `1` will lead to a random number from 0-9.
---*   `A` will lead to a random letter from A-Z.
---*   `.` will lead to a random letter *or* number, with 50% probability of being either.
---*   `^1` will lead to a literal `1` being emitted.
---*   `^A` will lead to a literal `A` being emitted.
---*   Any other character will lead to said character being emitted.
---*   A string shorter than 8 characters will be padded on the right.
---[Native Documentation](https://docs.fivem.net/natives/?_0x79780FD2)
---Example: 
---```SetDefaultVehicleNumberPlateTextPattern(-1, ' AAA111 ')
---SetDefaultVehicleNumberPlateTextPattern(4 , ' AAAAAA ')
---
----- fixed characters: plate will be FAYUM69C for example
---SetDefaultVehicleNumberPlateTextPattern(-1, 'F^AYUM11A')```
---@param plateIndex number A plate index, or `-1` to set a default for any indices that do not have a specific value.
---@param pattern string A number plate pattern string, or a null value to reset to default.
function SetDefaultVehicleNumberPlateTextPattern(plateIndex, pattern) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x298FC783)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local portalIndex = 0
---
---  SetInteriorPortalRoomFrom(interiorId, portalIndex, 0)
---  RefreshInterior(interiorId)
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param roomFrom number New value.
function SetInteriorPortalRoomFrom(interiorId, portalIndex, roomFrom) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x55188D2D)
---@param enabled boolean 
function SetNetworkWalkMode(enabled) end

---Sets the type for the minimap blip clipping object to be either rectangular or rounded.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8B4490C)
---@param type number 0 for rectangular, 1 for rounded.
function SetMinimapClipType(type) end

---Used to replicate a server variable onto clients.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF292858C)
---Example: 
---```SetConvarReplicated('voice_useNativeAudio', 'true')```
---@param varName string The console variable name.
---@param value string The value to set for the given console variable.
function SetConvarReplicated(varName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3963D527)
---@param tex number 
---@param buffer string 
---@param length number 
---@return boolean retval 
function SetRuntimeTextureArgbData(tex, buffer, length) end

---This native sets the small image asset for the discord rich presence implementation.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF61D04C4)
---@param assetName string The name of a valid asset registered on Discordapp's developer dashboard. Note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
function SetDiscordRichPresenceAssetSmall(assetName) end

---It overrides the default distance culling radius of an entity. Set to `0.0` to reset.
---If you want to interact with an entity outside of your players' scopes set the radius to a huge number.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3A183A3)
---@param entity number The entity handle to override the distance culling radius.
---@param radius number The new distance culling radius.
function SetEntityDistanceCullingRadius(entity, radius) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3FF5E5F8)
---@param keepInput boolean 
function SetNuiFocusKeepInput(keepInput) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8349CD76)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local portalIndex = 0
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalEntityCount(interiorId, portalIndex)
---  for i=0, count-1 do
---    SetInteriorPortalEntityFlag(interiorId, portalIndex, i, 0)
---  end
---  RefreshInterior(interiorId)
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param entityIndex number Portal entity index.
---@param flag number New flag value.
function SetInteriorPortalEntityFlag(interiorId, portalIndex, entityIndex, flag) end

---This native sets the hover text of the image asset for the discord rich presence implementation.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB029D2FA)
---@param text string Text to be displayed when hovering over image asset. Note that you must also set a valid image asset using the SET_DISCORD_RICH_PRESENCE_ASSET native.
function SetDiscordRichPresenceAssetText(text) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9338D547)
---@param varName string 
---@param value string 
function SetConvarServerInfo(varName, value) end

---Adds a cooldown between instances of moving and then aiming.
---Can be optionally used to hinder 'speedboosting'
---To turn off, set value to 0
---[Native Documentation](https://docs.fivem.net/natives/?_0xA42A3DBF)
---@param value number Number of milliseconds between allowed aiming
function SetAimCooldown(value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF90B7469)
---@param gametypeName string 
function SetGameType(gametypeName) end

---A setter for [GET_RESOURCE_KVP_STRING](#\_0x5240DA5A).
---[Native Documentation](https://docs.fivem.net/natives/?_0x21C7A35B)
---Example: 
---```SetResourceKvp('mollis', 'vesuvius citrate')```
---@param key string The key to set
---@param value string The value to write
function SetResourceKvp(key, value) end

---Writes the specified data to a file in the specified resource.
---Using a length of `-1` will automatically detect the length assuming the data is a C string.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA09E7E7B)
---@param resourceName string The name of the resource.
---@param fileName string The name of the file.
---@param data string The data to write to the file.
---@param dataLength number The length of the written data.
---@return boolean retval A value indicating if the write succeeded.
function SaveResourceFile(resourceName, fileName, data, dataLength) end

---Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
---[Native Documentation](https://docs.fivem.net/natives/?_0x5D01F191)
---@param duiObject number The DUI browser handle.
---@param button string Either `'left'`, `'middle'` or `'right'`.
function SendDuiMouseDown(duiObject, button) end

---Overrides a ped model personality type.
---[Native Documentation](https://docs.fivem.net/natives/?_0x46F6B38B)
---@param modelHash number | string Ped's model.
---@param personalityHash number | string Personality hash.
function SetPedModelPersonality(modelHash, personalityHash) end

---Nonsynchronous [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
---[Native Documentation](https://docs.fivem.net/natives/?_0x3517BFBE)
---@param key string The key to set
---@param value number The value to write
function SetResourceKvpFloatNoSync(key, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x35594F67)
---@param playerId number The player index
---@param maxStamina number The value you want to set
---@return boolean retval Did you manage to set the value.
function SetPlayerMaxStamina(playerId, maxStamina) end

---Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
---Example: `SetHandlingVector('AIRTUG', 'CHandlingData', 'vecCentreOfMassOffset', vector3(0.0, 0.0, -5.0))`
---[Native Documentation](https://docs.fivem.net/natives/?_0x7F9D543)
---@param vehicle string The vehicle class to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value vector3 The Vector3 value to set.
function SetHandlingVector(vehicle, class_, fieldName, value) end

---Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
---Example: `SetHandlingFloat('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
---[Native Documentation](https://docs.fivem.net/natives/?_0x90DD01C)
---@param vehicle string The vehicle class to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value number The floating-point value to set.
function SetHandlingFloat(vehicle, class_, fieldName, value) end

---Sets the display info for a minimap overlay.
---[Native Documentation](https://docs.fivem.net/natives/?_0x6A48B3CA)
---@param miniMap number The minimap overlay ID.
---@param x number The X position for the overlay. This is equivalent to a game coordinate X.
---@param y number The Y position for the overlay. This is equivalent to a game coordinate Y, except that it's inverted (gfxY = -gameY).
---@param xScale number The X scale for the overlay. This is equivalent to the Flash \_xscale property, therefore 100 = 100%.
---@param yScale number The Y scale for the overlay. This is equivalent to the Flash \_yscale property.
---@param alpha number The alpha value for the overlay. This is equivalent to the Flash \_alpha property, therefore 100 = 100%.
function SetMinimapOverlayDisplay(miniMap, x, y, xScale, yScale, alpha) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x88B2355E)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local portalIndex = 0
---
---  SetInteriorPortalFlag(interiorId, portalIndex, 1)
---  RefreshInterior(interiorId)
---end```
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param flag number New flag value.
function SetInteriorPortalFlag(interiorId, portalIndex, flag) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1A963E58)
---@param vehicle number 
---@param gravity number 
function SetVehicleGravityAmount(vehicle, gravity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x90D1CAD1)
---@param vehicle number 
---@param level number 
function SetVehicleOilLevel(vehicle, level) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF5C6330C)
---@param handler function 
function SetHttpHandler(handler) end

---Sets whether or not ownership checks should be performed while trying to stow a carriable on a hunting wagon.
---[Native Documentation](https://docs.fivem.net/natives/?_0x85A10FFD)
---@param ignore boolean true to let the local player stow carriables on any hunting wagon, false to use the default behaviour.
function SetIgnoreVehicleOwnershipForStowing(ignore) end

---Possible Types:
---
---```
---0 = Off,
---1 = Regular,
---2 = Expanded,
---3 = Simple,
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5FB53015)
---@param type number Type to set the minimap to.
function SetMinimapType(type) end

---Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
---[Native Documentation](https://docs.fivem.net/natives/?_0x8AB3F46C)
---@param vehicle string The vehicle class to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value number The integer value to set.
function SetHandlingInt(vehicle, class_, fieldName, value) end

---Sets the maximum distance at which all tags will be visible and which beyond will not be displayed. Distance is measured from the camera position.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD61676B3)
---@param distance number The visible distance. Default is 100.0f.
function SetMpGamerTagsVisibleDistance(distance) end

---Sets the entity lockdown mode for a specific routing bucket.
---
---Lockdown modes are:
---
---| Mode       | Meaning                                                    |
---| ---------- | ---------------------------------------------------------- |
---| `strict`   | No entities can be created by clients at all.              |
---| `relaxed`  | Only script-owned entities created by clients are blocked. |
---| `inactive` | Clients can create any entity they want.                   |
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0F2201F)
---@param bucketId number The routing bucket ID to adjust.
---@param mode string One of aforementioned modes.
function SetRoutingBucketEntityLockdownMode(bucketId, mode) end

---A setter for [GET_RESOURCE_KVP_INT](#\_0x557B586A).
---[Native Documentation](https://docs.fivem.net/natives/?_0x6A2B1E8)
---Example: 
---```local lickMy = 42
---SetResourceKvp('bananabread', lickMy)```
---@param key string The key to set
---@param value number The value to write
function SetResourceKvpInt(key, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA970511)
---@param vehicle number 
---@param level number 
function SetVehicleFuelLevel(vehicle, level) end

---Sets whether or not `SHUTDOWN_LOADING_SCREEN` automatically shuts down the NUI frame for the loading screen. If this is enabled,
---you will have to manually invoke `SHUTDOWN_LOADING_SCREEN_NUI` whenever you want to hide the NUI loading screen.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1722C938)
---@param manualShutdown boolean TRUE to manually shut down the loading screen NUI.
function SetManualShutdownLoadingScreenNui(manualShutdown) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B98AE30)
---@param hasFocus boolean 
---@param hasCursor boolean 
function SetNuiFocus(hasFocus, hasCursor) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A01A8FC)
---@param vehicle number 
---@param rpm number 
function SetVehicleCurrentRpm(vehicle, rpm) end

---Sets a pixel in the specified runtime texture. This will have to be committed using `COMMIT_RUNTIME_TEXTURE` to have any effect.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAB65ACEE)
---@param tex number A handle to the runtime texture.
---@param x number The X position of the pixel to change.
---@param y number The Y position of the pixel to change.
---@param r number The new R value (0-255).
---@param g number The new G value (0-255).
---@param b number The new B value (0-255).
---@param a number The new A value (0-255).
function SetRuntimeTexturePixel(tex, x, y, r, g, b, a) end

---Replaces the pixel data in a runtime texture with the image data from a file in the current resource, or a data URL.
---
---If the bitmap is a different size compared to the existing texture, it will be resampled.
---
---This command may end up executed asynchronously, and only update the texture data at a later time.
---[Native Documentation](https://docs.fivem.net/natives/?_0x28FC4ECB)
---@param tex number A runtime texture handle.
---@param fileName string The file name of an image to load, or a base64 "data:" URL. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.
---@return boolean retval TRUE for success, FALSE for failure.
function SetRuntimeTextureImage(tex, fileName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7BA82DC)
---@param mapName string 
function SetMapName(mapName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7F6B8D75)
---@param modelHash number | string 
---@param ratePerSecond number 
---@param headlightRotation number 
---@param invertRotation boolean 
function SetModelHeadlightConfiguration(modelHash, ratePerSecond, headlightRotation, invertRotation) end

---Nonsynchronous [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
---[Native Documentation](https://docs.fivem.net/natives/?_0x26AEB707)
---@param key string The key to set
---@param value number The value to write
function SetResourceKvpIntNoSync(key, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x31C9A848)
---Example: 
---```local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  local timecycleHash = GetHashKey("scanline_cam")
---  SetInteriorRoomTimecycle(interiorId, roomId, timecycleHash)
---  RefreshInterior(interiorId)
---end```
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@param timecycleHash number Timecycle hash.
function SetInteriorRoomTimecycle(interiorId, roomIndex, timecycleHash) end

---Enables or disables whether train doors should be forced open whilst a player is inside the train. This is enabled by default in multiplayer.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD4D1BA63)
---@param forceOpen boolean Should force open.
function SetTrainsForceDoorsOpen(forceOpen) end

---Sets the culling radius for the specified player.
---Set to `0.0` to reset.
---[Native Documentation](https://docs.fivem.net/natives/?_0x8A2FBAD4)
---@param playerSrc string The player to set the culling radius for.
---@param radius number The radius.
function SetPlayerCullingRadius(playerSrc, radius) end

---Sets whether or not the specified routing bucket has automatically-created population enabled.
---[Native Documentation](https://docs.fivem.net/natives/?_0xCE51AC2C)
---@param bucketId number The routing bucket ID to adjust.
---@param mode boolean `true` to enable population, `false` to disable population.
function SetRoutingBucketPopulationEnabled(bucketId, mode) end

---Nonsynchronous [SET_RESOURCE_KVP](#\_0x21C7A35B) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF9A2FF)
---@param key string The key to set
---@param value string The value to write
function SetResourceKvpNoSync(key, value) end

---Sets the height of the vehicle's suspension.
---This changes the same value set by Suspension in the mod shop.
---Negatives values raise the car. Positive values lower the car.
---
---This is change is visual only. The collision of the vehicle will not move.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3439A01)
---@param vehicle number 
---@param newHeight number 
function SetVehicleSuspensionHeight(vehicle, newHeight) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6485615E)
---@param vehicle number 
---@param pressure number 
function SetVehicleTurboPressure(vehicle, pressure) end

---Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
---Example: `SetHandlingField('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE8064E3)
---@param vehicle string The vehicle class to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value any The value to set.
function SetHandlingField(vehicle, class_, fieldName, value) end

---Disables autoswapping to another weapon when the current weapon runs out of ammo.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A7B50E)
---@param state boolean On/Off
function SetWeaponsNoAutoswap(state) end

---Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_INT`, this might require some experimentation.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC37F4CF9)
---@param vehicle number The vehicle to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value number The integer value to set.
function SetVehicleHandlingInt(vehicle, class_, fieldName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7DD3209)
---@param name string 
---@param path string 
---@param data string 
function SetSnakeoilForEntry(name, path, data) end

---Disables the vehicle from being repaired when a vehicle extra is enabled.
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F3A3574)
---@param vehicle number The vehicle to set disable auto vehicle repair.
---@param value boolean Setting the value to  true prevents the vehicle from being repaired when a extra is enabled. Setting the value to false allows the vehicle from being repaired when a extra is enabled.
function SetVehicleAutoRepairDisabled(vehicle, value) end

---Overrides the minimap component data (from `common:/data/ui/frontend.xml`) for a specified component.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3E882B23)
---@param name string The name of the minimap component to override.
---@param alignX string Equivalent to the `alignX` field in `frontend.xml`.
---@param alignY string Equivalent to the `alignY` field in `frontend.xml`.
---@param posX number Equivalent to the `posX` field in `frontend.xml`.
---@param posY number Equivalent to the `posY` field in `frontend.xml`.
---@param sizeX number Equivalent to the `sizeX` field in `frontend.xml`.
---@param sizeY number Equivalent to the `sizeY` field in `frontend.xml`.
function SetMinimapComponentPosition(name, alignX, alignY, posX, posY, sizeX, sizeY) end

---Sets the routing bucket for the specified player.
---
---Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
---[Native Documentation](https://docs.fivem.net/natives/?_0x6504EB38)
---@param playerSrc string The player to set the routing bucket for.
---@param bucket number The bucket ID.
function SetPlayerRoutingBucket(playerSrc, bucket) end

---A setter for [GET_RESOURCE_KVP_FLOAT](#\_0x35BDCEEA).
---[Native Documentation](https://docs.fivem.net/natives/?_0x9ADD2938)
---Example: 
---```local lickMy = 42.5
---SetResourceKvpFloat('bananabread', lickMy)```
---@param key string The key to set
---@param value number The value to write
function SetResourceKvpFloat(key, value) end

---Sets the ratio that a door is open for on a train.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2468DBE8)
---Example: 
---```-- open all doors on a train
---local doorCount = GetTrainDoorCount(train)
---for doorIndex = 0, doorCount - 1 do
---    SetTrainDoorOpenRatio(train, doorIndex, 1.0)
---end```
---@param train number The train to set the door ratio for.
---@param doorIndex number Zero-based door index.
---@param ratio number A value between 0.0 (fully closed) and 1.0 (fully open).
function SetTrainDoorOpenRatio(train, doorIndex, ratio) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6C93C4A9)
---@param vehicle number 
---@param temperature number 
function SetVehicleEngineTemperature(vehicle, temperature) end

---Sets the player's rich presence detail state for social platform providers to a specified string.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7BDCBD45)
---@param presenceState string The rich presence string to set.
function SetRichPresence(presenceState) end

---Disables the game's built-in auto-reloading.
---[Native Documentation](https://docs.fivem.net/natives/?_0x311150E5)
---@param state boolean On/Off
function SetWeaponsNoAutoreload(state) end

---A setter for the recoil shake amplitude of a weapon.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9864312F)
---@param weaponHash number | string Weapon name hash.
---@param amplitude number Recoil shake amplitude
function SetWeaponRecoilShakeAmplitude(weaponHash, amplitude) end

---Sets values to the zoom level data by index.
---[Native Documentation](https://docs.fivem.net/natives/?_0x447C718E)
---@param index number Zoom level index.
---@param zoomScale number fZoomScale value.
---@param zoomSpeed number fZoomSpeed value.
---@param scrollSpeed number fScrollSpeed value.
---@param tilesX number vTiles X.
---@param tilesY number vTiles Y.
function SetMapZoomDataLevel(index, zoomScale, zoomSpeed, scrollSpeed, tilesX, tilesY) end

---Use along with SetVehicleWheelWidth to resize the wheels (this native sets the collider width affecting physics while SetVehicleWheelWidth will change visual width).
---[Native Documentation](https://docs.fivem.net/natives/?_0x47BD0270)
---@param vehicle number The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@param value number Width of tire collider.
function SetVehicleWheelTireColliderWidth(vehicle, wheelIndex, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC108EE6F)
---@param vehicle number 
---@param time number 
function SetVehicleAlarmTimeLeft(vehicle, time) end

---Toggles whether the usage of [ADD_ROPE](#\_0xE832D760399EB220) should create an underlying CNetworkRopeWorldStateData. By default this is set to false.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE62FC73)
---@param shouldCreate boolean Whether to create an underlying network world state
function SetRopesCreateNetworkWorldState(shouldCreate) end

---Adjusts the offset of the specified wheel relative to the wheel's axle center.
---Needs to be called every frame in order to function properly, as GTA will reset the offset otherwise.
---This function can be especially useful to set the track width of a vehicle, for example:
---
---```
---function SetVehicleFrontTrackWidth(vehicle, width)
---SetVehicleWheelXOffset(vehicle, 0, -width/2)
---SetVehicleWheelXOffset(vehicle, 1, width/2)
---end
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBD6357D)
---@param vehicle number 
---@param wheelIndex number 
---@param offset number 
function SetVehicleWheelXOffset(vehicle, wheelIndex, offset) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFFCCC2EA)
---@param vehicle number 
---@param angle number 
function SetVehicleSteeringAngle(vehicle, angle) end

---Sets custom vehicle xenon lights color, allowing to use RGB palette. The game will ignore lights color set by [\_SET_VEHICLE_XENON_LIGHTS_COLOR](#\_0xE41033B25D003A07) when custom color is active. This native is not synced between players. Requires xenon lights mod to be set on vehicle.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1683E7F0)
---Example: 
---```local vehicle = GetVehiclePedIsUsing(PlayerPedId())
---if DoesEntityExist(vehicle) then
---  -- Toggle xenon lights mod.
---  ToggleVehicleMod(vehicle, 22, true)
---
---  -- Set pink lights color.
---  SetVehicleXenonLightsCustomColor(vehicle, 244, 5, 82)
---end```
---@param vehicle number The vehicle handle.
---@param red number Red color (0-255).
---@param green number Green color (0-255).
---@param blue number Blue color (0-255).
function SetVehicleXenonLightsCustomColor(vehicle, red, green, blue) end

---The backing function for TriggerLatentClientEvent.
---[Native Documentation](https://docs.fivem.net/natives/?_0x70B35890)
---@param eventName string 
---@param eventTarget string 
---@param eventPayload string 
---@param payloadLength number 
---@param bps number 
function TriggerLatentClientEventInternal(eventName, eventTarget, eventPayload, payloadLength, bps) end

---Sets vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).
---Only works on non-default wheels.
---Returns whether change was successful (can be false if trying to set size for non-default wheels).
---[Native Documentation](https://docs.fivem.net/natives/?_0x53AB5C35)
---@param vehicle number The vehicle to set data for.
---@param size number Size of the wheels (usually between 0.5 and 1.5 is reasonable).
---@return boolean retval Bool - whether change was successful or not
function SetVehicleWheelSize(vehicle, size) end

---Internal function for setting a state bag value.
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D50E33A)
---@param bagName string 
---@param keyName string 
---@param valueData string 
---@param valueLength number 
---@param replicated boolean 
function SetStateBagValue(bagName, keyName, valueData, valueLength, replicated) end

---Sets the flags of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD2B9E90D)
---@param vehicle number 
---@param wheelIndex number 
---@param flags number bit flags
function SetVehicleWheelFlags(vehicle, wheelIndex, flags) end

---Set's the ropes length change rate, which is the speed that rope should wind if started.
---[Native Documentation](https://docs.fivem.net/natives/?_0x69B680A7)
---@param rope number The rope to set the length change rate for.
---@param lengthChangeRate number The rope's new length change rate.
function SetRopeLengthChangeRate(rope, lengthChangeRate) end

---Sets whether the wheel is powered.
---On all wheel drive cars this works to change which wheels receive power, but if a car's fDriveBiasFront doesn't send power to that wheel, it won't get power anyway. This can be fixed by changing the fDriveBiasFront with SET_VEHICLE_HANDLING_FLOAT.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---This is a shortcut to a flag in SET_VEHICLE_WHEEL_FLAGS.
---[Native Documentation](https://docs.fivem.net/natives/?_0xBD5291A0)
---Example: 
---```SetVehicleWheelIsPowered(vehicle, 0, true);```
---@param vehicle number 
---@param wheelIndex number 
---@param powered boolean 
function SetVehicleWheelIsPowered(vehicle, wheelIndex, powered) end

---Enables the editor runtime mode, changing game behavior to track entity metadata.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC383871D)
function EnableEditorRuntime() end

---Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FIELD`, this might require some experimentation.
---Example: `SetVehicleHandlingField(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
---[Native Documentation](https://docs.fivem.net/natives/?_0x2BA40795)
---@param vehicle number The vehicle to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value any The value to set.
function SetVehicleHandlingField(vehicle, class_, fieldName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2F70ACED)
---@param vehicle number 
---@param clutch number 
function SetVehicleClutch(vehicle, clutch) end

---Not sure what this changes, probably determines physical rim size in case the tire is blown.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF380E184)
---@param vehicle number The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@param value number Size of rim collider.
function SetVehicleWheelRimColliderSize(vehicle, wheelIndex, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x29B440DC)
---@param resourceName string 
---@return boolean retval 
function StartResource(resourceName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA9EC16C7)
---@param playerId number The player index
---@param stamina number The value you want to set
---@return boolean retval Did you manage to set the value.
function SetPlayerStamina(playerId, stamina) end

---Shuts down the `loadingScreen` NUI frame, similarly to `SHUTDOWN_LOADING_SCREEN`.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9234AFB)
function ShutdownLoadingScreenNui() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6C2171F)
---@param vehicle number 
---@param wheelIndex number 
---@param value number 
function SetVehicleWheelYRotation(vehicle, wheelIndex, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6C2171F)
---@param vehicle number 
---@param wheelIndex number 
---@param value number 
function SetVehicleWheelXrot(vehicle, wheelIndex, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB46596F)
---@param vehicle number 
---@param scale number 
function SetVehicleSteeringScale(vehicle, scale) end

---Adds a rectangular blip for the specified coordinates/area.
---It is recommended to use [SET_BLIP_ROTATION](#\_0xF87683CDF73C3F6E) and [SET_BLIP_COLOUR](#\_0x03D7FB09E75D6B7E) to make the blip not rotate along with the camera.
---By default, the blip will show as a *regular* blip with the specified color/sprite if it is outside of the minimap view.
---Example image:
---![minimap](https://w.wew.wtf/pdcjig.png)
---![big map](https://w.wew.wtf/zgcjcm.png)
---(Native name is *likely* to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
---
---**This is the server-side RPC native equivalent of the client native [\_ADD_BLIP_FOR_AREA](?\_0xCE5D0E5E315DB238).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x6228F159)
---@param x number The X coordinate of the center of the blip.
---@param y number The Y coordinate of the center of the blip.
---@param z number The Z coordinate of the center of the blip.
---@param width number The width of the blip.
---@param height number The height of the blip.
---@return blip retval A handle to the blip.
function AddBlipForArea(x, y, z, width, height) end

---Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FLOAT`, this might require some experimentation.
---Example: `SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
---[Native Documentation](https://docs.fivem.net/natives/?_0x488C86D2)
---@param vehicle number The vehicle to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value number The floating-point value to set.
function SetVehicleHandlingFloat(vehicle, class_, fieldName, value) end

---Draws an outline around a given entity. This function supports SDK infrastructure and is not intended to be used directly from your code.
---[Native Documentation](https://docs.fivem.net/natives/?_0x76180407)
---@param entity number A valid entity handle.
---@param enabled boolean Whether or not to draw an outline.
function SetEntityDrawOutline(entity, enabled) end

---Sets the rotation speed of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---[Native Documentation](https://docs.fivem.net/natives/?_0x35ED100D)
---@param vehicle number 
---@param wheelIndex number 
---@param speed number 
function SetVehicleWheelRotationSpeed(vehicle, wheelIndex, speed) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB22ECEFD)
---@param vehicle number 
---@param wheelIndex number 
---@param health number 
function SetVehicleWheelHealth(vehicle, wheelIndex, health) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x20B1B3E6)
---@param vehicle number 
---@param gear number 
function SetVehicleHighGear(vehicle, gear) end

---Retrieves the map data and entity handles from a specific entity.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6B815C5)
---@param entity number An entity owned by map data.
---@param mapdataHandle number The output map data handle.
---@param entityHandle number The output entity handle.
---@return boolean retval True if successful, false if not.
function GetEntityMapdataOwner(entity, mapdataHandle, entityHandle) end

---Retrieves the map data entity handle.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---[Native Documentation](https://docs.fivem.net/natives/?_0x30AA6911)
---@param mapDataHash number A mapdata hash from `mapDataLoaded` event.
---@param entityInternalIdx number An internal entity's index.
---@param entityHandle number The output entity handle.
---@return boolean retval True if successful, false if not.
function GetMapdataEntityHandle(mapDataHash, entityInternalIdx, entityHandle) end

---Sets vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).
---Only works on non-default wheels.
---Returns whether change was successful (can be false if trying to set width for non-default wheels).
---[Native Documentation](https://docs.fivem.net/natives/?_0x64C3F1C0)
---@param vehicle number The vehicle to set data for.
---@param width number Width of the wheels (usually between 0.1 and 1.5 is reasonable).
---@return boolean retval Bool - whether change was successful or not
function SetVehicleWheelWidth(vehicle, width) end

---Use along with SetVehicleWheelSize to resize the wheels (this native sets the collider size affecting physics while SetVehicleWheelSize will change visual size).
---[Native Documentation](https://docs.fivem.net/natives/?_0xB962D05C)
---@param vehicle number The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@param value number Radius of tire collider.
function SetVehicleWheelTireColliderSize(vehicle, wheelIndex, value) end

---Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_VECTOR`, this might require some experimentation.
---[Native Documentation](https://docs.fivem.net/natives/?_0x12497890)
---@param vehicle number The vehicle to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value vector3 The Vector3 value to set.
function SetVehicleHandlingVector(vehicle, class_, fieldName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x97B2F9F8)
---@param enabled boolean 
---@return boolean retval 
function SetTextChatEnabled(enabled) end

---The backing function for TriggerServerEvent.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7FDD1128)
---@param eventName string 
---@param eventPayload string 
---@param payloadLength number 
function TriggerServerEventInternal(eventName, eventPayload, payloadLength) end

---Returns the transient map data index for a specified hash.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD29D8EDD)
---@param mapdataHandle number | string The input map data handle.
---@return number retval A transient (non-persistable) index to the requested mapdata, or -1.
function GetMapdataFromHashKey(mapdataHandle) end

---**This is the server-side RPC native equivalent of the client native [CLEAR_PED_SECONDARY_TASK](?\_0x176CECF6F920D707).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xA635F451)
---@param ped number 
function ClearPedSecondaryTask(ped) end

---Transiently updates the entity with the specified mapdata index and entity index.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC52CB91)
---@param mapdata number A fwMapData index from GET_MAPDATA_FROM_HASH_KEY.
---@param entity number An entity index from GET_ENTITY_INDEX_FROM_MAPDATA.
---@param entityDef table The new entity definition in fwEntityDef format.
function UpdateMapdataEntity(mapdata, entity, entityDef) end

---Returns whether or not the currently executing event was canceled.
---[Native Documentation](https://docs.fivem.net/natives/?_0x58382A19)
---@return boolean retval A boolean.
function WasEventCanceled() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1E35DBBA)
---@param playerSrc string 
---@param reason string 
function TempBanPlayer(playerSrc, reason) end

---Sets power being sent to a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6146043)
---@param vehicle number 
---@param wheelIndex number 
---@param power number 
function SetVehicleWheelPower(vehicle, wheelIndex, power) end

---Example script: https://pastebin.com/J6XGbkCW
---
---List of known states:
---
---```
---1: Not wheeling.
---65: Vehicle is ready to do wheelie (burnouting).
---129: Vehicle is doing wheelie.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEAB8DB65)
---Example: 
---```Citizen.CreateThread(function()
---  while true do
---    Wait(1)
---
---    local ped = PlayerPedId()
---    local veh = GetVehiclePedIsUsing(ped)
---
---    if veh ~= 0 then
---      -- is vehicle a musclecar
---      if GetVehicleClass(veh) == 4 then
---        -- is ped a driver
---        if GetPedInVehicleSeat(veh, -1) == ped then
---          -- don't let vehicle to do wheelie
---          SetVehicleWheelieState(veh, 1)
---        end
---      end
---    end
---  end
---end)```
---@param vehicle number Vehicle
---@param state number Wheelie state
function SetVehicleWheelieState(vehicle, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDD379006)
---Example: 
---```SetResourceKvp('mollis:2', 'should be taken with alcohol')
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
---end```
---@param prefix string A prefix match
---@return number retval A KVP find handle to use with [FIND_KVP](#\_0xBD7BEBC5) and close with [END_FIND_KVP](#\_0xB3210203)
function StartFindKvp(prefix) end

---Gets the selected entity at the specified mouse cursor position, and changes the current selection depth. This function supports SDK infrastructure and is not intended to be used directly from your code.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAFE8D405)
---@param fracX number Mouse cursor X fraction.
---@param fracY number Mouse cursor Y fraction.
---@param hitFlags number A bit mask of entity types to match.
---@param precise boolean Whether to do a *precise* test, i.e. of visual coordinates, too.
---@return number retval An entity handle, or zero.
function SelectEntityAtPos(fracX, fracY, hitFlags, precise) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x21783161)
---@param resourceName string 
---@return boolean retval 
function StopResource(resourceName) end

---A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B), but for a specified resource.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9080363A)
---Example: 
---```local kvpValue = GetExternalKvpString('food', 'codfish') 
---if kvpValue then
---	-- do something!
---end```
---@param resource string The resource to fetch from.
---@param key string The key to fetch
---@return string retval A string that contains the value stored in the Kvp or nil/null if none.
function GetExternalKvpString(resource, key) end

---The backing function for TriggerClientEvent.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2F7A49E6)
---@param eventName string 
---@param eventTarget string 
---@param eventPayload string 
---@param payloadLength number 
function TriggerClientEventInternal(eventName, eventTarget, eventPayload, payloadLength) end

---Overrides a floating point value from `visualsettings.dat` temporarily.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD1D31681)
---@param name string The name of the value to set, such as `pedLight.color.red`.
---@param value number The value to write.
function SetVisualSettingFloat(name, value) end

---Create a blip with a radius for the specified coordinates (it doesnt create the blip sprite, so you need to use [AddBlipCoords](#\_0xC6F43D0E))
---Example image:
---![example](https://i.imgur.com/9hQl3DB.png)
---
---**This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_RADIUS](?\_0x46818D79B1F7499A).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x4626756C)
---@param posX number The x position of the blip (you can also send a vector3 instead of the bulk coordinates)
---@param posY number The y position of the blip (you can also send a vector3 instead of the bulk coordinates)
---@param posZ number The z position of the blip (you can also send a vector3 instead of the bulk coordinates)
---@param radius number The number that defines the radius of the blip circle
---@return blip retval The blip handle that can be manipulated with every `SetBlip` natives
function AddBlipForRadius(posX, posY, posZ, radius) end

---Draws a gizmo. This function supports SDK infrastructure and is not intended to be used directly from your code.
---
---This should be used from JavaScript or another language supporting mutable buffers like ArrayBuffer.
---
---Matrix layout is as follows:
---
---*   Element \[0], \[1] and \[2] should represent the right vector.
---*   Element \[4], \[5] and \[6] should represent the forward vector.
---*   Element \[8], \[9] and \[10] should represent the up vector.
---*   Element \[12], \[13] and \[14] should represent X, Y and Z translation coordinates.
---*   All other elements should be \[0, 0, 0, 1].
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB2EDCA2)
---@param matrixPtr number A mutable pointer to a 64-byte buffer of floating-point values, representing an XMFLOAT4X4 in layout.
---@param id string A unique identifier of what the gizmo is affecting.
---@return boolean retval Whether or not the matrix was modified.
function DrawGizmo(matrixPtr, id) end

---Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using SET_ENTITY_COORDS.
---
---**This is the server-side RPC native equivalent of the client native [FREEZE_ENTITY_POSITION](?\_0x428CA6DBD1094446).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x65C16D57)
---@param entity number The entity to freeze/unfreeze.
---@param toggle boolean Freeze or unfreeze entity.
function FreezeEntityPosition(entity, toggle) end

---A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938), but for a specified resource.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3CC98B25)
---Example: 
---```local kvpValue = GetExternalKvpFloat('drugs', 'mollis') 
---if kvpValue then
---	-- do something!
---end```
---@param resource string The resource to fetch from.
---@param key string The key to fetch
---@return number retval A float that contains the value stored in the Kvp or nil/null if none.
function GetExternalKvpFloat(resource, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2E310ACD)
---@param password string 
---@param hash string 
---@return boolean retval 
function VerifyPasswordHash(password, hash) end

---**This is the server-side RPC native equivalent of the client native [GIVE_WEAPON_TO_PED](?\_0xBF0FD6E56C964FCB).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xC4D88A85)
---@param ped number 
---@param weaponHash number | string 
---@param ammoCount number 
---@param isHidden boolean 
---@param bForceInHand boolean 
function GiveWeaponToPed(ped, weaponHash, ammoCount, isHidden, bForceInHand) end

---Equivalent to CREATE_VEHICLE, but it uses 'server setter' logic (like the former CREATE_AUTOMOBILE) as a workaround for
---reliability concerns regarding entity creation RPC.
---
---Unlike CREATE_AUTOMOBILE, this supports other vehicle types as well.
---[Native Documentation](https://docs.fivem.net/natives/?_0x6AE51D4B)
---Example: 
---```local heli = CreateVehicleServerSetter(`seasparrow`, 'heli', GetEntityCoords(GetPlayerPed(GetPlayers()[1])) + vector3(0, 0, 15), 0.0)
---print(GetEntityCoords(heli)) -- should return correct coordinates```
---@param modelHash number | string The model of vehicle to spawn.
---@param type string The appropriate vehicle type for the model info. Can be one of `automobile`, `bike`, `boat`, `heli`, `plane`, `submarine`, `trailer`, and (potentially), `train`. This should be the same type as the `type` field in `vehicles.meta`.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component.
---@param heading number Heading to face towards, in degrees.
---@return number retval A script handle for the vehicle.
function CreateVehicleServerSetter(modelHash, type, x, y, z, heading) end

---Will unregister and cleanup a registered NUI callback handler.
---
---Use along side the REGISTER_RAW_NUI_CALLBACK native.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7FB46432)
---@param callbackType string The callback type to target
function UnregisterRawNuiCallback(callbackType) end

---Sets brake pressure of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---Normal values around 1.0f
---[Native Documentation](https://docs.fivem.net/natives/?_0xE80F4E31)
---@param vehicle number 
---@param wheelIndex number 
---@param pressure number 
function SetVehicleWheelBrakePressure(vehicle, wheelIndex, pressure) end

---Enters cursor mode, suppressing mouse movement to the game and displaying a mouse cursor instead. This function supports
---SDK infrastructure and is not intended to be used directly from your code.
---[Native Documentation](https://docs.fivem.net/natives/?_0x780DA86)
function EnterCursorMode() end

---The backing function for TriggerLatentServerEvent.
---[Native Documentation](https://docs.fivem.net/natives/?_0x128737EA)
---@param eventName string 
---@param eventPayload string 
---@param payloadLength number 
---@param bps number 
function TriggerLatentServerEventInternal(eventName, eventPayload, payloadLength, bps) end

---Leaves cursor mode. This function supports SDK infrastructure and is not intended to be used directly from your code.
---[Native Documentation](https://docs.fivem.net/natives/?_0xADECF19E)
function LeaveCursorMode() end

---This native removes a specified weapon from your selected ped.
---Weapon Hashes: pastebin.com/0wwDZgkF
---Example:
---C#:
---Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);
---C++:
---WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);
---The code above removes the knife from the player.
---
---**This is the server-side RPC native equivalent of the client native [REMOVE_WEAPON_FROM_PED](?\_0x4899CB088EDF59B8).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x9C37F220)
---@param ped number 
---@param weaponHash number | string 
function RemoveWeaponFromPed(ped, weaponHash) end

---Scans the resources in the specified resource root. This function is only available in the 'monitor mode' process and is
---not available for user resources.
---[Native Documentation](https://docs.fivem.net/natives/?_0x636F097F)
---@param rootPath string The resource directory to scan.
---@param callback function A callback that will receive an object with results.
function ScanResourceRoot(rootPath, callback) end

---Clear a ped's tasks. Stop animations and other tasks created by scripts.
---
---**This is the server-side RPC native equivalent of the client native [CLEAR_PED_TASKS](?\_0xE1EF3C1216AFF2CD).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xDE3316AB)
---@param ped number Ped id. Use PlayerPedId() for your own character.
function ClearPedTasks(ped) end

---NativeDB Added Parameter 4: BOOL p3
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_AMMO](?\_0x14E56BC5B5DB6A19).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xBF90DF1A)
---@param ped number 
---@param weaponHash number | string 
---@param ammo number 
function SetPedAmmo(ped, weaponHash, ammo) end

---Sets color for entity outline. `255, 0, 255, 255` by default.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB41A56C2)
---@param red number Red component of color.
---@param green number Green component of color.
---@param blue number Blue component of color.
---@param alpha number Alpha component of color, ignored for shader `0`.
function SetEntityDrawOutlineColor(red, green, blue, alpha) end

---Sets whether or not the weather should be owned by the network subsystem.
---
---To be able to use [\_SET_WEATHER_TYPE_TRANSITION](#\_0x578C752848ECFA0C), this has to be set to false.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2703D582)
---@param network boolean true to let the network control weather, false to not use network weather behavior.
function SetWeatherOwnedByNetwork(network) end

---Prints 'structured trace' data to the server `file descriptor 3` channel. This is not generally useful outside of
---server monitoring utilities.
---[Native Documentation](https://docs.fivem.net/natives/?_0x90892DED)
---@param jsonString string JSON data to submit as `payload` in the `script_structured_trace` event.
function PrintStructuredTrace(jsonString) end

---Equivalent of [START_FIND_KVP](#\_0xDD379006), but for another resource than the current one.
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F2EECC3)
---Example: 
---```local kvpHandle = StartFindExternalKvp('drugs', 'mollis:')
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
---end```
---@param resourceName string The resource to try finding the key/values for
---@param prefix string A prefix match
---@return number retval A KVP find handle to use with [FIND_KVP](#\_0xBD7BEBC5) and close with [END_FIND_KVP](#\_0xB3210203)
function StartFindExternalKvp(resourceName, prefix) end

---Sets an entity's matrix. Arguments are in the same order as with GET_ENTITY_MATRIX.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB0639B)
---@param entity number A valid entity handle.
---@param forwardX number 
---@param forwardY number 
---@param forwardZ number 
---@param rightX number 
---@param rightY number 
---@param rightZ number 
---@param upX number 
---@param upY number 
---@param upZ number 
---@param atX number 
---@param atY number 
---@param atZ number 
function SetEntityMatrix(entity, forwardX, forwardY, forwardZ, rightX, rightY, rightZ, upX, upY, upZ, atX, atY, atZ) end

---A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8), but for a specified resource.
---[Native Documentation](https://docs.fivem.net/natives/?_0x12B8D689)
---Example: 
---```local kvpValue = GetExternalKvpInt('food', 'bananabread') 
---if kvpValue then
---	-- do something!
---end```
---@param resource string The resource to fetch from.
---@param key string The key to fetch
---@return number retval A int that contains the value stored in the Kvp or nil/null if none.
function GetExternalKvpInt(resource, key) end

---Returns mapdata's entity matrix. This function supports SDK infrastructure and is not intended to be used directly from your code.
---
---This should be used from JavaScript or another language supporting mutable buffers like ArrayBuffer.
---
---Matrix layout is as follows:
---
---*   Element \[0], \[1] and \[2] should represent the right vector.
---*   Element \[4], \[5] and \[6] should represent the forward vector.
---*   Element \[8], \[9] and \[10] should represent the up vector.
---*   Element \[12], \[13] and \[14] should represent X, Y and Z translation coordinates.
---*   All other elements should be \[0, 0, 0, 1].
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C3CDA93)
---@param mapDataHash number A mapdata hash from `mapDataLoaded` event.
---@param entityInternalIdx number An internal entity's index.
---@param matrixPtr number A mutable pointer to a 64-byte buffer of floating-point values, representing an XMFLOAT4X4 in layout.
---@return boolean retval Whether or not the matrix was retrieved.
function GetMapdataEntityMatrix(mapDataHash, entityInternalIdx, matrixPtr) end

---Sets the traction vector length of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---[Native Documentation](https://docs.fivem.net/natives/?_0x85C85A3A)
---@param vehicle number 
---@param wheelIndex number 
---@param length number 
function SetVehicleWheelTractionVectorLength(vehicle, wheelIndex, length) end

---The backing function for TriggerEvent.
---[Native Documentation](https://docs.fivem.net/natives/?_0x91310870)
---@param eventName string 
---@param eventPayload string 
---@param payloadLength number 
function TriggerEventInternal(eventName, eventPayload, payloadLength) end

---**This is the server-side RPC native equivalent of the client native [GIVE_WEAPON_COMPONENT_TO_PED](?\_0xD966D51AA5B28BB9).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x3E1E286D)
---@param ped number 
---@param weaponHash number | string 
---@param componentHash number | string 
function GiveWeaponComponentToPed(ped, weaponHash, componentHash) end

---Resets mapdata entity transform matrix to its original state.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---[Native Documentation](https://docs.fivem.net/natives/?_0x8143FA4F)
---@param mapDataHash number A mapdata hash from `mapDataLoaded` event.
---@param entityInternalIdx number An internal entity's index.
---@return boolean retval True if successful, false if not.
function ResetMapdataEntityMatrix(mapDataHash, entityInternalIdx) end

---Disables the editor runtime mode, changing game behavior to not track entity metadata.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB1622B17)
function DisableEditorRuntime() end

---Create a blip that by default is red (enemy), you can use [SET_BLIP_AS_FRIENDLY](#\_0xC6F43D0E) to make it blue (friend).\
---Can be used for objects, vehicles and peds.
---Example of enemy:
---![enemy](https://i.imgur.com/fl78svv.png)
---Example of friend:
---![friend](https://i.imgur.com/Q16ho5d.png)
---
---**This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_ENTITY](?\_0x5CDE92C702A8FCE7).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x30822554)
---@param entity number The entity handle to create the blip.
---@return blip retval A blip handle.
function AddBlipForEntity(entity) end

---**This is the server-side RPC native equivalent of the client native [SET_ENTITY_ROTATION](?\_0x8524A8B0171D5E07).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xA345EFE)
---@param entity number 
---@param pitch number 
---@param roll number 
---@param yaw number 
---@param rotationOrder number 
---@param p5 boolean 
function SetEntityRotation(entity, pitch, roll, yaw, rotationOrder, p5) end

---Sets variant of shader that will be used to draw entity outline.
---
---Variants are:
---
---*   **0**: Default value, gauss shader.
---*   **1**: 2px wide solid color outline.
---*   **2**: Fullscreen solid color except for entity.
---[Native Documentation](https://docs.fivem.net/natives/?_0x5261A01A)
---@param shader number An outline shader variant.
function SetEntityDrawOutlineShader(shader) end

---Removes the blip from your map.
---
---**This is the server-side RPC native equivalent of the client native [REMOVE_BLIP](?\_0x86A652570E5F25DD).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xD8C3C1CD)
---@param blip blip Blip handle to remove.
function RemoveBlip(blip) end

---Creates a ped (biped character, pedestrian, actor) with the specified model at the specified position and heading.
---This ped will initially be owned by the creating script as a mission entity, and the model should be loaded already
---(e.g. using REQUEST_MODEL).
---
---**This is the server-side RPC native equivalent of the client native [CREATE_PED](?\_0xD49F9B0955C367DE).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x389EF71)
---@param pedType number Unused. Peds get set to CIVMALE/CIVFEMALE/etc. no matter the value specified.
---@param modelHash number | string The model of ped to spawn.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component.
---@param heading number Heading to face towards, in degrees.
---@param isNetwork boolean Whether to create a network object for the ped. If false, the ped exists only locally.
---@param bScriptHostPed boolean Whether to register the ped as pinned to the script host in the R\* network model.
---@return number retval A script handle (fwScriptGuid index) for the ped, or `0` if the ped failed to be created.
function CreatePed(pedType, modelHash, x, y, z, heading, isNetwork, bScriptHostPed) end

---Sets the selected vehicle's colors to their default value (specific variant specified using the colorCombination parameter).
---Range of possible values for colorCombination is currently unknown, I couldn't find where these values are stored either (Disquse's guess was vehicles.meta but I haven't seen it in there.)
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_COLOUR_COMBINATION](?\_0x33E8CD3322E2FE31).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xA557AEAD)
---@param vehicle number The vehicle to modify.
---@param colorCombination number One of the default color values of the vehicle.
function SetVehicleColourCombination(vehicle, colorCombination) end

---Gets the selected entity at the current mouse cursor position, and changes the current selection depth. This function supports SDK infrastructure and is not intended to be used directly from your code.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3DD8130F)
---@param hitFlags number A bit mask of entity types to match.
---@param precise boolean Whether to do a *precise* test, i.e. of visual coordinates, too.
---@return number retval An entity handle, or zero.
function SelectEntityAtCursor(hitFlags, precise) end

---Set the heading of an entity in degrees also known as "Yaw".
---
---**This is the server-side RPC native equivalent of the client native [SET_ENTITY_HEADING](?\_0x8E2530AA8ADA980E).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xE0FF064D)
---@param entity number The entity to set the heading for.
---@param heading number The heading in degrees.
function SetEntityHeading(entity, heading) end

---p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_CUSTOM_SECONDARY_COLOUR](?\_0x36CED73BFED89754).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D77259E)
---@param vehicle number 
---@param r number 
---@param g number 
---@param b number 
function SetVehicleCustomSecondaryColour(vehicle, r, g, b) end

---Sets Ped Default Clothes
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_DEFAULT_COMPONENT_VARIATION](?\_0x45EEE61580806D63).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xC866A984)
---@param ped number 
function SetPedDefaultComponentVariation(ped) end

---Creates a vehicle with the specified model at the specified position. This vehicle will initially be owned by the creating
---script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
---
---```
---NativeDB Added Parameter 8: BOOL p7
---```
---
---**This is the server-side RPC native equivalent of the client native [CREATE_VEHICLE](?\_0xAF35D0D2583051B0).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xDD75460A)
---@param modelHash number | string The model of vehicle to spawn.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component.
---@param heading number Heading to face towards, in degrees.
---@param isNetwork boolean Whether to create a network object for the vehicle. If false, the vehicle exists only locally.
---@param netMissionEntity boolean Whether to register the vehicle as pinned to the script host in the R\* network model.
---@return number retval A script handle (fwScriptGuid index) for the vehicle, or `0` if the vehicle failed to be created.
function CreateVehicle(modelHash, x, y, z, heading, isNetwork, netMissionEntity) end

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
---**This is the server-side RPC native equivalent of the client native [SET_PED_COMPONENT_VARIATION](?\_0x262B14F48D29DE80).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xD4F7B05C)
---@param ped number The ped handle.
---@param componentId number The component that you want to set.
---@param drawableId number The drawable id that is going to be set.
---@param textureId number The texture id of the drawable.
---@param paletteId number 0 to 3.
function SetPedComponentVariation(ped, componentId, drawableId, textureId, paletteId) end

---Sets the dirt level of the passed vehicle.
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DIRT_LEVEL](?\_0x79D3B596FE44EE8B).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B39128B)
---@param vehicle number The vehicle to set.
---@param dirtLevel number A number between 0.0 and 15.0 representing the vehicles dirt level.
function SetVehicleDirtLevel(vehicle, dirtLevel) end

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
---**This is the server-side RPC native equivalent of the client native [ADD_PED_DECORATION_FROM_HASHES](?\_0x5F5D1665E352A839).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x70559AC7)
---@param ped number 
---@param collection number | string 
---@param overlay number | string 
function AddPedDecorationFromHashes(ped, collection, overlay) end

---Creates an object (prop) with the specified model at the specified position, offset on the Z axis by the radius of the object's model.
---This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
---
---**This is the server-side RPC native equivalent of the client native [CREATE_OBJECT](?\_0x509D5878EB39E842).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x2F7AA05C)
---@param modelHash number | string The model to spawn.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component, 'ground level'.
---@param isNetwork boolean Whether to create a network object for the object. If false, the object exists only locally.
---@param netMissionEntity boolean Whether to register the object as pinned to the script host in the R\* network model.
---@param doorFlag boolean False to create a door archetype (archetype flag bit 26 set) as a door. Required to be set to true to create door models in network mode.
---@return number retval A script handle (fwScriptGuid index) for the object, or `0` if the object failed to be created.
function CreateObject(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag) end

---Returns the transient entity index for a specified mapdata/entity pair.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---[Native Documentation](https://docs.fivem.net/natives/?_0xEE43540D)
---@param mapdata number The input map data index from GET_MAPDATA_FROM_HASH_KEY.
---@param entity number The input entity handle from GET_ENTITY_MAPDATA_OWNER.
---@return number retval A transient (non-persistable) index to the requested entity, or -1.
function GetEntityIndexFromMapdata(mapdata, entity) end

---PED::SET_PED_RESET_FLAG(PLAYER::PLAYER_PED_ID(), 240, 1);
---Known values:
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_RESET_FLAG](?\_0xC1E8A365BF3B29F2).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xCFF6FF66)
---@param ped number 
---@param flagId number 
---@param doReset boolean 
function SetPedResetFlag(ped, flagId, doReset) end

---Note that the third parameter(denoted as z) is "up and down" with positive numbers encouraging upwards movement.
---
---**This is the server-side RPC native equivalent of the client native [SET_ENTITY_VELOCITY](?\_0x1C99BB7B6E96D16F).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF5A1988)
---@param entity number 
---@param x number 
---@param y number 
---@param z number 
function SetEntityVelocity(entity, x, y, z) end

---Return variable is never used in R\*'s scripts.
---Not sure what p2 does. It seems like it would be a time judging by it's usage in R\*'s scripts, but didn't seem to affect anything in my testings.
---x, y, and z are coordinates, most likely to where the ped will fall.
---p7 is probably the force of the fall, but untested, so I left the variable name the same.
---p8 to p13 are always 0f in R\*'s scripts.
---(Simplified) Example of the usage of the function from R\*'s scripts:
---ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_TO_RAGDOLL_WITH_FALL](?\_0xD76632D99E4966C8).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xFA12E286)
---@param ped number 
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

---**This is the server-side RPC native equivalent of the client native [CREATE_PED_INSIDE_VEHICLE](?\_0x7DD959874C1FD534).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x3000F092)
---@param vehicle number 
---@param pedType number 
---@param modelHash number | string 
---@param seat number 
---@param isNetwork boolean 
---@param bScriptHostPed boolean 
---@return number retval 
function CreatePedInsideVehicle(vehicle, pedType, modelHash, seat, isNetwork, bScriptHostPed) end

---This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);
---PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.
---
---**This is the server-side RPC native equivalent of the client native [CLEAR_PLAYER_WANTED_LEVEL](?\_0xB302540597885499).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x54EA5BCC)
---@param player number 
function ClearPlayerWantedLevel(player) end

---```
---Used for freemode (online) characters.
---Called after SET_PED_HEAD_OVERLAY().
---```
---
---**Note:**
---You may need to call [`SetPedHeadBlendData`](#0x9414E18B9434C2FE) prior to calling this native in order for it to work.
---
---**This is the server-side RPC native equivalent of the client native [\_SET_PED_HEAD_OVERLAY_COLOR](?\_0x497BF74A7B9CB952).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x78935A27)
---@param ped number The ped entity
---@param overlayID number An integer representing the overlay id
---@param colorType number 1 for eyebrows, beards, and chest hair; 2 for blush and lipstick; and 0 otherwise, though not called in those cases.
---@param colorID number An integer representing the primary color id
---@param secondColorID number An integer representing the secondary color id
function SetPedHeadOverlayColor(ped, overlayID, colorType, colorID, secondColorID) end

---**This is the server-side RPC native equivalent of the client native [SET_PED_INTO_VEHICLE](?\_0xF75B0D629E1C063D).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x7500C79)
---@param ped number 
---@param vehicle number 
---@param seatIndex number 
function SetPedIntoVehicle(ped, vehicle, seatIndex) end

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
---**This is the server-side RPC native equivalent of the client native [APPLY_FORCE_TO_ENTITY](?\_0xC5F68BE9613E2D18).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xC1C0855A)
---@param entity number The entity you want to apply a force on
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
function ApplyForceToEntity(entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13) end

---<!--
---_loc1_.map((name, idx) => `| ${idx} | ${name} | ![${name}](https://runtime.fivem.net/blips/${name}.svg) |`).join('\n')
----->
---
---Sets the displayed sprite for a specific blip.
---There's a [list of sprites](https://docs.fivem.net/game-references/blips/) on the FiveM documentation site.
---
---**This is the server-side RPC native equivalent of the client native [SET_BLIP_SPRITE](?\_0xDF735600A4696DAF).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x8DBBB0B9)
---@param blip blip The blip to change.
---@param spriteId number The sprite ID to set.
function SetBlipSprite(blip, spriteId) end

---List of component/props ID
---gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
---
---**This is the server-side RPC native equivalent of the client native [CLEAR_PED_PROP](?\_0x0943E5B8E078E76E).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x2D23D743)
---@param ped number 
---@param propId number 
function ClearPedProp(ped, propId) end

---p2 often set to 1000.0 in the decompiled scripts.
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_BODY_HEALTH](?\_0xB77D05AC8C78AADB).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x920C2517)
---@param vehicle number 
---@param value number 
function SetVehicleBodyHealth(vehicle, value) end

---**This is the server-side RPC native equivalent of the client native [SET_PED_CAN_RAGDOLL](?\_0xB128377056A54E2A).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF1384C4)
---@param ped number 
---@param toggle boolean 
function SetPedCanRagdoll(ped, toggle) end

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
---**This is the server-side RPC native equivalent of the client native [SET_PED_HEAD_OVERLAY](?\_0x48F44967FA05CC1E).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xD28DBA90)
---@param ped number The ped entity
---@param overlayID number The overlay id displayed up above.
---@param index number An integer representing the index (from 0 to `_GET_NUM_OVERLAY_VALUES(overlayID)-1`)
---@param opacity number A float ranging from 0.0 to 1.0
function SetPedHeadOverlay(ped, overlayID, index, opacity) end

---Immediately stops the pedestrian from whatever it's doing. The difference between this and [CLEAR_PED_TASKS](#\_0xE1EF3C1216AFF2CD) is that this one teleports the ped but does not change the position of the ped.
---
---**This is the server-side RPC native equivalent of the client native [CLEAR_PED_TASKS_IMMEDIATELY](?\_0xAAA34F8A7CB32098).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC045625)
---@param ped number Ped id.
function ClearPedTasksImmediately(ped) end

---Creates a blip for the specified coordinates. You can use `SET_BLIP_` natives to change the blip.
---
---**This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_COORD](?\_0x5A039BB0BCA604B6).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6F43D0E)
---@param x number The X coordinate to create the blip on.
---@param y number The Y coordinate.
---@param z number The Z coordinate.
---@return blip retval A blip handle.
function AddBlipForCoord(x, y, z) end

---**This is the server-side RPC native equivalent of the client native [REMOVE_WEAPON_COMPONENT_FROM_PED](?\_0x1E8BE90C74FB4C09).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x412AA00D)
---@param ped number 
---@param weaponHash number | string 
---@param componentHash number | string 
function RemoveWeaponComponentFromPed(ped, weaponHash, componentHash) end

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
---**This is the server-side RPC native equivalent of the client native [SET_PLAYER_CONTROL](?\_0x8D32347D6D4C40A2).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xD17AFCD8)
---@param player number 
---@param bHasControl boolean 
---@param flags number 
function SetPlayerControl(player, bHasControl, flags) end

---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_ALARM](?\_0xCDE5E70C1DDB954C).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x24877D84)
---@param vehicle number 
---@param state boolean 
function SetVehicleAlarm(vehicle, state) end

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
---**This is the server-side RPC native equivalent of the client native [TASK_LEAVE_VEHICLE](?\_0xD3DBCE61A490BE02).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x7B1141C6)
---@param ped number 
---@param vehicle number 
---@param flags number 
function TaskLeaveVehicle(ped, vehicle, flags) end

---Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
---
---**This is the server-side RPC native equivalent of the client native [SET_ENTITY_COORDS](?\_0x06843DA7060A026B).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF70B41B)
---@param entity number The entity to change coordinates for.
---@param xPos number The X coordinate.
---@param yPos number The Y coordinate.
---@param zPos number The Z coordinate, ground level.
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@param deadFlag boolean Whether to disable physics for dead peds, too, and not just living peds.
---@param ragdollFlag boolean A special flag used for ragdolling peds.
---@param clearArea boolean Whether to clear any entities in the target area.
function SetEntityCoords(entity, xPos, yPos, zPos, alive, deadFlag, ragdollFlag, clearArea) end

---Creates an object (prop) with the specified model centered at the specified position.
---This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
---
---**This is the server-side RPC native equivalent of the client native [CREATE_OBJECT_NO_OFFSET](?\_0x9A294B2138ABB884).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x58040420)
---@param modelHash number | string The model to spawn.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component.
---@param isNetwork boolean Whether to create a network object for the object. If false, the object exists only locally.
---@param netMissionEntity boolean Whether to register the object as pinned to the script host in the R\* network model.
---@param doorFlag boolean False to create a door archetype (archetype flag bit 26 set) as a door. Required to be set to true to create door models in network mode.
---@return number retval A script handle (fwScriptGuid index) for the object, or `0` if the object failed to be created.
function CreateObjectNoOffset(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag) end

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
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DOORS_LOCKED](?\_0xB664292EAECF7FA6).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x4CDD35D0)
---@param vehicle number 
---@param doorLockStatus number 
function SetVehicleDoorsLocked(vehicle, doorLockStatus) end

---It's similar to the one above, except the first 6 floats let you specify the initial position and rotation of the task. (Ped gets teleported to the position).
---[Animations list](https://alexguirre.github.io/animations-list/)
---
---**This is the server-side RPC native equivalent of the client native [TASK_PLAY_ANIM_ADVANCED](?\_0x83CDB10EA29B370B).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x3DDEB0E6)
---@param ped number The target ped
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
function TaskPlayAnimAdvanced(ped, animDict, animName, posX, posY, posZ, rotX, rotY, rotZ, animEnterSpeed, animExitSpeed, duration, flag, animTime, p14, p15) end

---Sets the armor of the specified ped.
---ped: The Ped to set the armor of.
---amount: A value between 0 and 100 indicating the value to set the Ped's armor to.
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_ARMOUR](?\_0xCEA04D83135264CC).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x4E3A0CC4)
---@param ped number 
---@param amount number 
function SetPedArmour(ped, amount) end

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
---**This is the server-side RPC native equivalent of the client native [SET_PED_HEAD_BLEND_DATA](?\_0x9414E18B9434C2FE).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x60746B88)
---@param ped number The ped entity
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
function SetPedHeadBlendData(ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent) end

---Used for freemode (online) characters.
---
---**This is the server-side RPC native equivalent of the client native [\_SET_PED_HAIR_COLOR](?\_0x4CFFC65454C93A49).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xBB43F090)
---@param ped number 
---@param colorID number 
---@param highlightColorID number 
function SetPedHairColor(ped, colorID, highlightColorID) end

---**This is the server-side RPC native equivalent of the client native [TASK_EVERYONE_LEAVE_VEHICLE](?\_0x7F93691AB4B92272).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xC1971F30)
---@param vehicle number 
function TaskEveryoneLeaveVehicle(vehicle) end

---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_NUMBER_PLATE_TEXT](?\_0x95A88F0B409CDA47).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x400F9556)
---@param vehicle number 
---@param plateText string 
function SetVehicleNumberPlateText(vehicle, plateText) end

---Set the model for a specific Player. Note that this will destroy the current Ped for the Player and create a new one, any reference to the old ped will be invalid after calling this.
---As per usual, make sure to request the model first and wait until it has loaded.
---
---**This is the server-side RPC native equivalent of the client native [SET_PLAYER_MODEL](?\_0x00A1CADD00108836).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x774A4C54)
---@param player number The player to set the model for
---@param model number | string The model to use
function SetPlayerModel(player, model) end

---Simply sets you as invincible (Health will not deplete).
---Use 0x733A643B5B0C53C1 instead if you want Ragdoll enabled, which is equal to:
---\*(DWORD \*)(playerPedAddress + 0x188) |= (1 << 9);
---
---**This is the server-side RPC native equivalent of the client native [SET_PLAYER_INVINCIBLE](?\_0x239528EACDC3E7DE).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFB9A2A2)
---@param player number 
---@param toggle boolean 
function SetPlayerInvincible(player, toggle) end

---**This is the server-side RPC native equivalent of the client native [SET_CURRENT_PED_WEAPON](?\_0xADF692B254977C0C).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8278882)
---@param ped number 
---@param weaponHash number | string 
---@param bForceInHand boolean 
function SetCurrentPedWeapon(ped, weaponHash, bForceInHand) end

---p1 is always 0 in R\* scripts; and a quick disassembly seems to indicate that p1 is unused.
---List of component/props ID:
---gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_RANDOM_COMPONENT_VARIATION](?\_0xC8A9481A01E63C28).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x4111BA46)
---@param ped number 
---@param p1 number 
function SetPedRandomComponentVariation(ped, p1) end

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
---**This is the server-side RPC native equivalent of the client native [TASK_PLAY_ANIM](?\_0xEA47FE3719165B94).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x5AB552C6)
---@param ped number 
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
function TaskPlayAnim(ped, animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ) end

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
---**This is the server-side RPC native equivalent of the client native [\_SET_PED_EYE_COLOR](?\_0x50B56988B170AFDF).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC09DB1B)
---@param ped number 
---@param index number 
function SetPedEyeColor(ped, index) end

---example from fm_mission_controller
---TASK::TASK_GO_TO_COORD_ANY_MEANS(l\_649, sub_f7e86(-1, 0), 1.0, 0, 0, 786603, 0xbf800000);
---
---**This is the server-side RPC native equivalent of the client native [TASK_GO_TO_COORD_ANY_MEANS](?\_0x5BC448CB78FA3E88).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xF91DF93B)
---@param ped number 
---@param x number 
---@param y number 
---@param z number 
---@param speed number 
---@param p5 any 
---@param p6 boolean 
---@param walkingStyle number 
---@param p8 number 
function TaskGoToCoordAnyMeans(ped, x, y, z, speed, p5, p6, walkingStyle, p8) end

---speed 1.0 = walk, 2.0 = run
---p5 1 = normal, 3 = teleport to vehicle, 8 = normal/carjack ped from seat, 16 = teleport directly into vehicle
---p6 is always 0
---
---**This is the server-side RPC native equivalent of the client native [TASK_ENTER_VEHICLE](?\_0xC20E50AA46D09CA8).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8689B4E)
---@param ped number 
---@param vehicle number 
---@param timeout number 
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@param speed number 
---@param flag number 
---@param p6 any 
function TaskEnterVehicle(ped, vehicle, timeout, seatIndex, speed, flag, p6) end

---p4/p5: Unusued in TU27
---
---### Ragdoll Types
---
---**0**: CTaskNMRelax
---**1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.
---**Else**: CTaskNMBalance
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_TO_RAGDOLL](?\_0xAE99FB955581844A).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x83CB5052)
---@param ped number 
---@param time1 number Time(ms) Ped is in ragdoll mode; only applies to ragdoll types 0 and not 1.
---@param time2 number 
---@param ragdollType number 
---@param p4 boolean 
---@param p5 boolean 
---@param p6 boolean 
function SetPedToRagdoll(ped, time1, time2, ragdollType, p4, p5, p6) end

---Flags are the same flags used in [`TASK_LEAVE_VEHICLE`](#\_0xD3DBCE61A490BE02)
---
---**This is the server-side RPC native equivalent of the client native [TASK_LEAVE_ANY_VEHICLE](?\_0x504D54DF3F6F2247).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xDBDD79FA)
---@param ped number 
---@param p1 number 
---@param flags number 
function TaskLeaveAnyVehicle(ped, p1, flags) end

---Firing Pattern Hash Information: https://pastebin.com/Px036isB
---
---**This is the server-side RPC native equivalent of the client native [TASK_SHOOT_AT_COORD](?\_0x46A6CC01E0826106).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x601C22E3)
---@param ped number 
---@param x number 
---@param y number 
---@param z number 
---@param duration number 
---@param firingPattern number | string 
function TaskShootAtCoord(ped, x, y, z, duration, firingPattern) end

---Example:
---TASK::TASK_DRIVE_BY(l\_467\[1/*22*/], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});
---Needs working example. Doesn't seem to do anything.
---I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.
---I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.
---I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.
---
---**This is the server-side RPC native equivalent of the client native [TASK_DRIVE_BY](?\_0x2F8AF0E82773A171).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B84D1C4)
---@param driverPed number 
---@param targetPed number 
---@param targetVehicle number 
---@param targetX number 
---@param targetY number 
---@param targetZ number 
---@param distanceToShoot number 
---@param pedAccuracy number 
---@param p8 boolean 
---@param firingPattern number | string 
function TaskDriveBy(driverPed, targetPed, targetVehicle, targetX, targetY, targetZ, distanceToShoot, pedAccuracy, p8, firingPattern) end

---Parameter `p1` does not seem to be used or referenced in game binaries.\
---**Note:** When called for networked entities, a `CRemoveAllWeaponsEvent` will be created per request.
---
---**This is the server-side RPC native equivalent of the client native [REMOVE_ALL_PED_WEAPONS](?\_0xF25DF915FA38C5F3).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xA44CE817)
---@param ped number The ped entity
---@param p1 boolean 
function RemoveAllPedWeapons(ped, p1) end

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
---**This is the server-side RPC native equivalent of the client native [SET_PED_PROP_INDEX](?\_0x93376B65A266EB5F).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x829F2E2)
---@param ped number The ped handle.
---@param componentId number The component that you want to set.
---@param drawableId number The drawable id that is going to be set.
---@param textureId number The texture id of the drawable.
---@param attach boolean Attached or not.
function SetPedPropIndex(ped, componentId, drawableId, textureId, attach) end

---colorPrimary & colorSecondary are the paint indexes for the vehicle.
---For a list of valid paint indexes, view: pastebin.com/pwHci0xK
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_COLOURS](?\_0x4F1D4BE3A7F24601).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x57F24253)
---@param vehicle number 
---@param colorPrimary number 
---@param colorSecondary number 
function SetVehicleColours(vehicle, colorPrimary, colorSecondary) end

---**This is the server-side RPC native equivalent of the client native [TASK_GO_STRAIGHT_TO_COORD](?\_0xD76B57B44F1E6F8B).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x80A9E7A7)
---@param ped number 
---@param x number 
---@param y number 
---@param z number 
---@param speed number 
---@param timeout number 
---@param targetHeading number 
---@param distanceToSlide number 
function TaskGoStraightToCoord(ped, x, y, z, speed, timeout, targetHeading, distanceToSlide) end

---List of component/props ID
---gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
---
---**This is the server-side RPC native equivalent of the client native [SET_PED_RANDOM_PROPS](?\_0xC44AA05345C992C6).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xE3318E0E)
---@param ped number 
function SetPedRandomProps(ped) end

---See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DOOR_BROKEN](?\_0xD4D4F6A4AB575A33).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x8147FEA7)
---@param vehicle number 
---@param doorIndex number 
---@param deleteDoor boolean 
function SetVehicleDoorBroken(vehicle, doorIndex, deleteDoor) end

---**This is the server-side RPC native equivalent of the client native [TASK_WARP_PED_INTO_VEHICLE](?\_0x9A7D091411C5F684).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x65D4A35D)
---@param ped number 
---@param vehicle number 
---@param seatIndex number 
function TaskWarpPedIntoVehicle(ped, vehicle, seatIndex) end

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
---**This is the server-side RPC native equivalent of the client native [\_SET_PED_FACE_FEATURE](?\_0x71A5C1DBA060049E).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x6C8D4458)
---@param ped number The ped entity
---@param index number An integer ranging from 0 to 19
---@param scale number A float ranging from -1.0 to 1.0
function SetPedFaceFeature(ped, index, scale) end

---p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
---
---**This is the server-side RPC native equivalent of the client native [SET_VEHICLE_CUSTOM_PRIMARY_COLOUR](?\_0x7141766F91D15BEA).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x8DF9F9BC)
---@param vehicle number 
---@param r number 
---@param g number 
---@param b number 
function SetVehicleCustomPrimaryColour(vehicle, r, g, b) end

---Makes the specified ped attack the target ped.
---p2 should be 0
---p3 should be 16
---
---**This is the server-side RPC native equivalent of the client native [TASK_COMBAT_PED](?\_0xF166E48407BAC484).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xCB0D8932)
---@param ped number 
---@param targetPed number 
---@param p2 number 
---@param p3 number 
function TaskCombatPed(ped, targetPed, p2, p3) end

---The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0
---Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.
---Example: TASK::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)
---Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).
---
---**This is the server-side RPC native equivalent of the client native [TASK_GO_TO_ENTITY](?\_0x6A071245EB0D1882).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x374827C2)
---@param entity number 
---@param target number 
---@param duration number 
---@param distance number 
---@param speed number 
---@param p5 number 
---@param p6 number 
function TaskGoToEntity(entity, target, duration, distance, speed, p5, p6) end

---In the scripts, p3 was always -1.
---p3 seems to be duration or timeout of turn animation.
---Also facingPed can be 0 or -1 so ped will just raise hands up.
---
---**This is the server-side RPC native equivalent of the client native [TASK_HANDS_UP](?\_0xF2EAB31979A7F910).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x8DCC19C5)
---@param ped number 
---@param duration number 
---@param facingPed number 
---@param p3 number 
---@param p4 boolean 
function TaskHandsUp(ped, duration, facingPed, p3, p4) end

---**This is the server-side RPC native equivalent of the client native [TASK_REACT_AND_FLEE_PED](?\_0x72C896464915D1B1).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x8A632BD8)
---@param ped number 
---@param fleeTarget number 
function TaskReactAndFleePed(ped, fleeTarget) end

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
---**This is the server-side RPC native equivalent of the client native [SET_PED_CONFIG_FLAG](?\_0x1913FE4CBF41C463).**
---[Native Documentation](https://docs.fivem.net/natives/?_0x9CFBE10D)
---@param ped number 
---@param flagId number 
---@param value boolean 
function SetPedConfigFlag(ped, flagId, value) end

---Call SET_PLAYER_WANTED_LEVEL_NOW for immediate effect
---wantedLevel is an integer value representing 0 to 5 stars even though the game supports the 6th wanted level but no police will appear since no definitions are present for it in the game files
---disableNoMission-  Disables When Off Mission- appears to always be false
---
---**This is the server-side RPC native equivalent of the client native [SET_PLAYER_WANTED_LEVEL](?\_0x39FF19C64EF7DA5B).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7A0914B)
---@param player number 
---@param wantedLevel number 
---@param disableNoMission boolean 
function SetPlayerWantedLevel(player, wantedLevel, disableNoMission) end

---//this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds
---Entity aimedentity;
---Player player = PLAYER::PLAYER_ID();
---PLAYER::\_GET_AIMED_ENTITY(player, \&aimedentity);
---//bg is an array of peds
---TASK::TASK_SHOOT_AT_ENTITY(bg\[i], aimedentity, 5000, MISC::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));
---in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.
---Firing Pattern Hash Information: https://pastebin.com/Px036isB
---
---**This is the server-side RPC native equivalent of the client native [TASK_SHOOT_AT_ENTITY](?\_0x08DA95E8298AE772).**
---[Native Documentation](https://docs.fivem.net/natives/?_0xAC0631C9)
---@param entity number 
---@param target number 
---@param duration number 
---@param firingPattern number | string 
function TaskShootAtEntity(entity, target, duration, firingPattern) end

