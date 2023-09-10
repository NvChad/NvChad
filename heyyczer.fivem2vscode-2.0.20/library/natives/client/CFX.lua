---@meta
---**`CFX` `client` [`0xAC6E290D`](https://docs.fivem.net/natives/?_0xAC6E290D)**
---
---Adds an output for the specified audio submix.
---
---@param submixId number The input submix.
---@param outputSubmixId number The output submix. Use `0` for the master game submix.
function AddAudioSubmixOutput(submixId, outputSubmixId) end

---**`CFX` `client` [`0x4AFD2499`](https://docs.fivem.net/natives/?_0x4AFD2499)**
---
---Loads a minimap overlay from a GFx file in the current resource.
---
---@param name string The path to a `.gfx` file in the current resource. It has to be specified as a `file`.
---@return number # A minimap overlay ID.
function AddMinimapOverlay(name) end

---**`CFX` `client` [`0xA66F8F75`](https://docs.fivem.net/natives/?_0xA66F8F75)**
---
---Experimental natives, please do not use in a live environment.
---
---@param origTxd string
---@param origTxn string
---@param newTxd string
---@param newTxn string
function AddReplaceTexture(origTxd, origTxn, newTxd, newTxn) end

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

---**`CFX` `client` [`0x32CA01C3`](https://docs.fivem.net/natives/?_0x32CA01C3)**
---
---@param entryKey string
---@param entryText string
function AddTextEntry(entryKey, entryText) end

---**`CFX` `client` [`0x289DA860`](https://docs.fivem.net/natives/?_0x289DA860)**
---
---@param entryKey Hash
---@param entryText string
function AddTextEntryByHash(entryKey, entryText) end

---**`CFX` `client` [`0x4C89C0ED`](https://docs.fivem.net/natives/?_0x4C89C0ED)**
---
---This is similar to the PushScaleformMovieFunction natives, except it calls in the `TIMELINE` of a minimap overlay.
---
---@param miniMap number The minimap overlay ID.
---@param fnName string A function in the overlay's TIMELINE.
---@return boolean
function CallMinimapScaleformFunction(miniMap, fnName) end

---**`CFX` `shared` [`0xFA29D35D`](https://docs.fivem.net/natives/?_0xFA29D35D)**
---
---Cancels the currently executing event.
---
function CancelEvent() end

---**`CFX` `client` [`0x2867ED8C`](https://docs.fivem.net/natives/?_0x2867ED8C)**
---
---Removes vehicle xenon lights custom RGB color.
---
---@param vehicle Vehicle The vehicle handle.
function ClearVehicleXenonLightsCustomColor(vehicle) end

---**`CFX` `client` [`0x19D81F4E`](https://docs.fivem.net/natives/?_0x19D81F4E)**
---
---Commits the backing pixels to the specified runtime texture.
---
---@param tex number The runtime texture handle.
function CommitRuntimeTexture(tex) end

---**`CFX` `client` [`0x658D2BC8`](https://docs.fivem.net/natives/?_0x658D2BC8)**
---
---Creates an audio submix with the specified name, or gets the existing audio submix by that name.
---
---@param name string The audio submix name.
---@return number # A submix ID, or -1 if the submix could not be created.
function CreateAudioSubmix(name) end

---**`CFX` `client` [`0xEB1C6DD`](https://docs.fivem.net/natives/?_0xEB1C6DD)**
---
---Creates a volume where water effects do not apply.
---Useful for preventing water collisions from flooding areas underneath them.
---This has no effect on waterquads, only water created from drawables and collisions.
---Don't create volumes when your local ped is swimming (e.g. use IS_PED_SWIMMING in your scripts before you call this)
---
---@param xMin number The min X component of the AABB volume where water does not affect the player.
---@param yMin number The min Y component for the AABB volume.
---@param zMin number The min Z component for the AABB volume.
---@param xMax number The max X component for the AABB volume.
---@param yMax number The max Y component for the AABB volume.
---@param zMax number The max Z component for the AABB volume.
---@return number
function CreateDryVolume(xMin, yMin, zMin, xMax, yMax, zMax) end

---**`CFX` `client` [`0x23EAF899`](https://docs.fivem.net/natives/?_0x23EAF899)**
---
---Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
---
---@param url string The initial URL to load in the browser.
---@param width number The width of the backing surface.
---@param height number The height of the backing surface.
---@return number # A DUI object.
function CreateDui(url, width, height) end

---**`CFX` `client` [`0xFEC3766D`](https://docs.fivem.net/natives/?_0xFEC3766D)**
---
---Creates a blank runtime texture.
---
---@param txd number A handle to the runtime TXD to create the runtime texture in.
---@param txn string The name for the texture in the runtime texture dictionary.
---@param width number The width of the new texture.
---@param height number The height of the new texture.
---@return number # A runtime texture handle.
function CreateRuntimeTexture(txd, txn, width, height) end

---**`CFX` `client` [`0xB135472B`](https://docs.fivem.net/natives/?_0xB135472B)**
---
---Creates a runtime texture from a DUI handle.
---
---@param txd number A handle to the runtime TXD to create the runtime texture in.
---@param txn string The name for the texture in the runtime texture dictionary.
---@param duiHandle string The DUI handle returned from GET_DUI_HANDLE.
---@return number # The runtime texture handle.
function CreateRuntimeTextureFromDuiHandle(txd, txn, duiHandle) end

---**`CFX` `client` [`0x786D8BC3`](https://docs.fivem.net/natives/?_0x786D8BC3)**
---
---Creates a runtime texture from the specified file in the current resource or a base64 data URL.
---
---@param txd number A handle to the runtime TXD to create the runtime texture in.
---@param txn string The name for the texture in the runtime texture dictionary.
---@param fileName string The file name of an image to load or a base64 data URL. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.
---@return number # A runtime texture handle.
function CreateRuntimeTextureFromImage(txd, txn, fileName) end

---**`CFX` `client` [`0x1F3AC778`](https://docs.fivem.net/natives/?_0x1F3AC778)**
---
---Creates a runtime texture dictionary with the specified name.
---Example:
---
---```lua
---local txd = CreateRuntimeTxd('meow')
---```
---
---@param name string The name for the runtime TXD.
---@return number # A handle to the runtime TXD.
function CreateRuntimeTxd(name) end

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

---**`CFX` `client` [`0xA085CB10`](https://docs.fivem.net/natives/?_0xA085CB10)**
---
---Destroys a DUI browser.
---
---@param duiObject number The DUI browser handle.
function DestroyDui(duiObject) end

---**`CFX` `client` [`0xB1622B17`](https://docs.fivem.net/natives/?_0xB1622B17)**
---
---Disables the editor runtime mode, changing game behavior to not track entity metadata.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---
function DisableEditorRuntime() end

---**`CFX` `client` [`0x3D5AB7F0`](https://docs.fivem.net/natives/?_0x3D5AB7F0)**
---
---Disables the game's afk camera that starts panning around after 30 seconds of inactivity.
---
---@param state boolean On/Off
function DisableIdleCamera(state) end

---**`CFX` `client` [`0xA9C92CDC`](https://docs.fivem.net/natives/?_0xA9C92CDC)**
---
---Disables the game's world horizon lods rendering (see `farlods.#dd`).
---Using the island hopper natives might also affect this state.
---
---@param state boolean On/Off
function DisableWorldhorizonRendering(state) end

---**`CFX` `client` [`0xF65BBA4B`](https://docs.fivem.net/natives/?_0xF65BBA4B)**
---
---Returns a list of door system entries: a door system hash (see [ADD_DOOR_TO_SYSTEM](#\_0x6F8838D03D1DC226)) and its object handle.
---
---The data returned adheres to the following layout:
---
---```
---[{doorHash1, doorHandle1}, ..., {doorHashN, doorHandleN}]
---```
---
---@return table # An object containing a list of door system entries.
function DoorSystemGetActive() end

---**`CFX` `client` [`0x237613B3`](https://docs.fivem.net/natives/?_0x237613B3)**
---
---@return number # The number of doors registered in the system
function DoorSystemGetSize() end

---**`CFX` `client` [`0xEB2EDCA2`](https://docs.fivem.net/natives/?_0xEB2EDCA2)**
---
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
---
---@param matrixPtr number A mutable pointer to a 64-byte buffer of floating-point values, representing an XMFLOAT4X4 in layout.
---@param id string A unique identifier of what the gizmo is affecting.
---@return boolean # Whether or not the matrix was modified.
function DrawGizmo(matrixPtr, id) end

---**`CFX` `client` [`0xB856A90`](https://docs.fivem.net/natives/?_0xB856A90)**
---
---Like DRAW_RECT, but it's a line.
---
---@param x1 number First x.
---@param y1 number First y.
---@param x2 number Second x.
---@param y2 number Second y.
---@param width number Width of line.
---@param r number Red.
---@param g number Green.
---@param b number Blue.
---@param a number Alpha.
function DrawLine_2d(x1, y1, x2, y2, width, r, g, b, a) end

---**`CFX` `client` [`0xEC37C168`](https://docs.fivem.net/natives/?_0xEC37C168)**
---
---DRAW_RECT, but with a rotation. Seems to be broken.
---
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

---**`CFX` `shared` [`0xF4E2079D`](https://docs.fivem.net/natives/?_0xF4E2079D)**
---
---@param referenceIdentity string
---@return string
function DuplicateFunctionReference(referenceIdentity) end

---**`CFX` `client` [`0xC383871D`](https://docs.fivem.net/natives/?_0xC383871D)**
---
---Enables the editor runtime mode, changing game behavior to track entity metadata.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---
function EnableEditorRuntime() end

---**`CFX` `shared` [`0xB3210203`](https://docs.fivem.net/natives/?_0xB3210203)**
---
---@param handle number The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
function EndFindKvp(handle) end

---**`CFX` `client` [`0xDEDA4E50`](https://docs.fivem.net/natives/?_0xDEDA4E50)**
---
---@param findHandle number
function EndFindObject(findHandle) end

---**`CFX` `client` [`0x9615C2AD`](https://docs.fivem.net/natives/?_0x9615C2AD)**
---
---@param findHandle number
function EndFindPed(findHandle) end

---**`CFX` `client` [`0x3C407D53`](https://docs.fivem.net/natives/?_0x3C407D53)**
---
---@param findHandle number
function EndFindPickup(findHandle) end

---**`CFX` `client` [`0x9227415A`](https://docs.fivem.net/natives/?_0x9227415A)**
---
---@param findHandle number
function EndFindVehicle(findHandle) end

---**`CFX` `shared` [`0x3BB78F05`](https://docs.fivem.net/natives/?_0x3BB78F05)**
---
---Internal function for ensuring an entity has a state bag.
---
---@param entity Entity
function EnsureEntityStateBag(entity) end

---**`CFX` `client` [`0x780DA86`](https://docs.fivem.net/natives/?_0x780DA86)**
---
---Enters cursor mode, suppressing mouse movement to the game and displaying a mouse cursor instead. This function supports
---SDK infrastructure and is not intended to be used directly from your code.
---
function EnterCursorMode() end

---**`CFX` `shared` [`0x561C060B`](https://docs.fivem.net/natives/?_0x561C060B)**
---
---@param commandString string
function ExecuteCommand(commandString) end

---**`CFX` `client` [`0xD2CB95A3`](https://docs.fivem.net/natives/?_0xD2CB95A3)**
---
---This native is not implemented.
---
---@param data string
---@param objectId number
---@param tree string
---@return Entity
function ExperimentalLoadCloneCreate(data, objectId, tree) end

---**`CFX` `client` [`0x6BC189AC`](https://docs.fivem.net/natives/?_0x6BC189AC)**
---
---This native is not implemented.
---
---@param entity Entity
---@param data string
function ExperimentalLoadCloneSync(entity, data) end

---**`CFX` `client` [`0x9D65CAD2`](https://docs.fivem.net/natives/?_0x9D65CAD2)**
---
---This native is not implemented.
---
---@param entity Entity
---@return string
function ExperimentalSaveCloneCreate(entity) end

---**`CFX` `client` [`0x38D19210`](https://docs.fivem.net/natives/?_0x38D19210)**
---
---This native is not implemented.
---
---@param entity Entity
---@return string
function ExperimentalSaveCloneSync(entity) end

---**`CFX` `client` [`0xFAA6CB5D`](https://docs.fivem.net/natives/?_0xFAA6CB5D)**
---
---@param outEntity Entity
---@return number, Entity
function FindFirstObject(outEntity) end

---**`CFX` `client` [`0xFB012961`](https://docs.fivem.net/natives/?_0xFB012961)**
---
---@param outEntity Entity
---@return number, Entity
function FindFirstPed(outEntity) end

---**`CFX` `client` [`0x3FF9D340`](https://docs.fivem.net/natives/?_0x3FF9D340)**
---
---@param outEntity Entity
---@return number, Entity
function FindFirstPickup(outEntity) end

---**`CFX` `client` [`0x15E55694`](https://docs.fivem.net/natives/?_0x15E55694)**
---
---@param outEntity Entity
---@return number, Entity
function FindFirstVehicle(outEntity) end

---**`CFX` `shared` [`0xBD7BEBC5`](https://docs.fivem.net/natives/?_0xBD7BEBC5)**
---
---@param handle number The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
---@return string # None.
function FindKvp(handle) end

---**`CFX` `client` [`0x4E129DBF`](https://docs.fivem.net/natives/?_0x4E129DBF)**
---
---@param findHandle number
---@param outEntity Entity
---@return boolean, Entity
function FindNextObject(findHandle, outEntity) end

---**`CFX` `client` [`0xAB09B548`](https://docs.fivem.net/natives/?_0xAB09B548)**
---
---@param findHandle number
---@param outEntity Entity
---@return boolean, Entity
function FindNextPed(findHandle, outEntity) end

---**`CFX` `client` [`0x4107EF0F`](https://docs.fivem.net/natives/?_0x4107EF0F)**
---
---@param findHandle number
---@param outEntity Entity
---@return boolean, Entity
function FindNextPickup(findHandle, outEntity) end

---**`CFX` `client` [`0x8839120D`](https://docs.fivem.net/natives/?_0x8839120D)**
---
---@param findHandle number
---@param outEntity Entity
---@return boolean, Entity
function FindNextVehicle(findHandle, outEntity) end

---**`CFX` `client` [`0xE6E16170`](https://docs.fivem.net/natives/?_0xE6E16170)**
---
---Forces the game snow pass to render.
---
---@param enabled boolean Whether or not to force rendering to use a snow pass.
function ForceSnowPass(enabled) end

---**`CFX` `client` [`0xCF143FB9`](https://docs.fivem.net/natives/?_0xCF143FB9)**
---
---Returns all player indices for 'active' physical players known to the client.
---The data returned adheres to the following layout:
---
---```
---[127, 42, 13, 37]
---```
---
---@return table # An object containing a list of player indices.
function GetActivePlayers() end

---**`CFX` `client` [`0x760A2D67`](https://docs.fivem.net/natives/?_0x760A2D67)**
---
---Returns all rope handles. The data returned adheres to the following layout:
---
---```
---[ 770, 1026, 1282, 1538, 1794, 2050, 2306, 2562, 2818, 3074, 3330, 3586, 3842, 4098, 4354, 4610, ...]
---```
---
---@return table # An object containing a list of all rope handles.
function GetAllRopes() end

---**`CFX` `client` [`0xD7531645`](https://docs.fivem.net/natives/?_0xD7531645)**
---
---Returns all registered vehicle model names, including non-dlc vehicles and custom vehicles in no particular order.
---
---**Example output**
---
---```
---	["dubsta", "dubsta2", "dubsta3", "myverycoolcar", "sultan", "sultanrs", ...]
---```
---
---This native will not return vehicles that are unregistered (i.e from a resource being stopped) during runtime.
---
---Example code:
---```lua
---RegisterCommand("spawnrandomcar", function()
---	local vehicles = GetAllVehicleModels()
---	local veh = vehicles[math.random(1, #vehicles)]
---	RequestModel(veh)
---	repeat Wait(0) until HasModelLoaded(veh)
---	local veh = CreateVehicle(veh, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), true, false)
---	SetPedIntoVehicle(PlayerPedId(), veh, -1)
---end)
---```
---
---@return table
function GetAllVehicleModels() end

---**`CFX` `client` [`0xB550232D`](https://docs.fivem.net/natives/?_0xB550232D)**
---
---A getter for [SET_AMBIENT_PED_RANGE_MULTIPLIER_THIS_FRAME](#\_0x0B919E1FB47CC4E0).
---
---@return number # Returns ambient ped range multiplier value.
function GetAmbientPedRangeMultiplier() end

---**`CFX` `client` [`0x667EC929`](https://docs.fivem.net/natives/?_0x667EC929)**
---
---A getter for [SET_AMBIENT_VEHICLE_RANGE_MULTIPLIER_THIS_FRAME](#\_0x90B6DA738A9A25DA).
---
---@return number # Returns ambient vehicle range multiplier value.
function GetAmbientVehicleRangeMultiplier() end

---**`CFX` `client` [`0x8F57A89D`](https://docs.fivem.net/natives/?_0x8F57A89D)**
---
---Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
---
---@param camera Cam
---@param rightVector vector3
---@param forwardVector vector3
---@param upVector vector3
---@param position vector3
function GetCamMatrix(camera, rightVector, forwardVector, upVector, position) end

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

---**`CFX` `client` [`0xACA18ECD`](https://docs.fivem.net/natives/?_0xACA18ECD)**
---
---This native returns the currently used game's name.
---
---@return string # The game name as a string, one of the following values: gta4, gta5, rdr3
function GetCurrentGameName() end

---**`CFX` `shared` [`0xE5E9EBBB`](https://docs.fivem.net/natives/?_0xE5E9EBBB)**
---
---Returns the name of the currently executing resource.
---
---@return string # The name of the resource.
function GetCurrentResourceName() end

---**`CFX` `client` [`0xEA11BFBA`](https://docs.fivem.net/natives/?_0xEA11BFBA)**
---
---Returns the peer address of the remote game server that the user is currently connected to.
---
---@return string # The peer address of the game server (e.g. `127.0.0.1:30120`), or NULL if not available.
function GetCurrentServerEndpoint() end

---**`CFX` `client` [`0x1655D41D`](https://docs.fivem.net/natives/?_0x1655D41D)**
---
---Returns the NUI window handle for a specified DUI browser object.
---
---@param duiObject number The DUI browser handle.
---@return string # The NUI window handle, for use in e.g. CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
function GetDuiHandle(duiObject) end

---**`CFX` `client` [`0x47B870F5`](https://docs.fivem.net/natives/?_0x47B870F5)**
---
---Returns entity's archetype name, if available.
---
---@param entity Entity An entity handle.
---@return string # Entity's archetype name
function GetEntityArchetypeName(entity) end

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

---**`CFX` `client` [`0xEE43540D`](https://docs.fivem.net/natives/?_0xEE43540D)**
---
---Returns the transient entity index for a specified mapdata/entity pair.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---
---@param mapdata number The input map data index from GET_MAPDATA_FROM_HASH_KEY.
---@param entity number The input entity handle from GET_ENTITY_MAPDATA_OWNER.
---@return number # A transient (non-persistable) index to the requested entity, or -1.
function GetEntityIndexFromMapdata(mapdata, entity) end

---**`CFX` `client` [`0xF6B815C5`](https://docs.fivem.net/natives/?_0xF6B815C5)**
---
---Retrieves the map data and entity handles from a specific entity.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---
---@param entity Entity An entity owned by map data.
---@param mapdataHandle number The output map data handle.
---@param entityHandle number The output entity handle.
---@return boolean, number, number # True if successful, false if not.
function GetEntityMapdataOwner(entity, mapdataHandle, entityHandle) end

---**`CFX` `client` [`0x3CC98B25`](https://docs.fivem.net/natives/?_0x3CC98B25)**
---
---A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938), but for a specified resource.
---
---Example code:
---```lua
---local kvpValue = GetExternalKvpFloat('drugs', 'mollis')
---if kvpValue then
---	-- do something!
---end
---```
---
---@param resource string The resource to fetch from.
---@param key string The key to fetch
---@return number # A float that contains the value stored in the Kvp or nil/null if none.
function GetExternalKvpFloat(resource, key) end

---**`CFX` `client` [`0x12B8D689`](https://docs.fivem.net/natives/?_0x12B8D689)**
---
---A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8), but for a specified resource.
---
---Example code:
---```lua
---local kvpValue = GetExternalKvpInt('food', 'bananabread')
---if kvpValue then
---	-- do something!
---end
---```
---
---@param resource string The resource to fetch from.
---@param key string The key to fetch
---@return number # A int that contains the value stored in the Kvp or nil/null if none.
function GetExternalKvpInt(resource, key) end

---**`CFX` `client` [`0x9080363A`](https://docs.fivem.net/natives/?_0x9080363A)**
---
---A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B), but for a specified resource.
---
---Example code:
---```lua
---local kvpValue = GetExternalKvpString('food', 'codfish')
---if kvpValue then
---	-- do something!
---end
---```
---
---@param resource string The resource to fetch from.
---@param key string The key to fetch
---@return string # A string that contains the value stored in the Kvp or nil/null if none.
function GetExternalKvpString(resource, key) end

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

---**`CFX` `client` [`0x2B9D4F50`](https://docs.fivem.net/natives/?_0x2B9D4F50)**
---
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
---
---Example code:
---```lua
---local vehiclePool = GetGamePool('CVehicle') -- Get the list of vehicles (entities) from the pool
---for i = 1, #vehiclePool do -- loop through each vehicle (entity)
---    if GetPedInVehicleSeat(vehiclePool[i], -1) == 0 then
---        DeleteEntity(vehiclePool[i]) -- Delete vehicles (entities) that don't have a driver
---    end
---end
---```
---
---@param poolName string The pool name to get a list of entities from.
---@return table # An array containing entity handles for each entity in the named pool.
function GetGamePool(poolName) end

---**`CFX` `shared` [`0x9F1C4383`](https://docs.fivem.net/natives/?_0x9F1C4383)**
---
---@return number
function GetInstanceId() end

---**`CFX` `client` [`0x322B1192`](https://docs.fivem.net/natives/?_0x322B1192)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local minX, minY, minZ, maxX, maxY, maxZ = GetInteriorEntitiesExtents(interiorId, roomId)
---  print("current entities extents is: " .. vec(minX, minY, minZ) .." / " .. vec(maxX, maxY, maxZ))
---end
---```
---
---@param interiorId number The target interior.
---@param bbMinX number
---@param bbMinY number
---@param bbMinZ number
---@param bbMaxX number
---@param bbMaxY number
---@param bbMaxZ number
function GetInteriorEntitiesExtents(interiorId, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ) end

---**`CFX` `client` [`0xF772BB2C`](https://docs.fivem.net/natives/?_0xF772BB2C)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local portalIndex = 0
---  local cornerIndex = 0
---
---  local x, y, z = GetInteriorPortalCornerPosition(interiorId, portalIndex, cornerIndex)
---  print("position of portal " .. portalIndex .. "corner index " .. cornerIndex .. " is: " .. vec(x, y, z))
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param cornerIndex number Portal's corner index.
---@param posX number
---@param posY number
---@param posZ number
function GetInteriorPortalCornerPosition(interiorId, portalIndex, cornerIndex, posX, posY, posZ) end

---**`CFX` `client` [`0xD05BB8B1`](https://docs.fivem.net/natives/?_0xD05BB8B1)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalCount(interiorId)
---  print("interior " .. interiorId .. "has " .. count .. " portals")
---end
---```
---
---@param interiorId number The target interior.
---@return number # The amount of portals in interior.
function GetInteriorPortalCount(interiorId) end

---**`CFX` `client` [`0x9A0E1700`](https://docs.fivem.net/natives/?_0x9A0E1700)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local portalIndex = 0
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalEntityCount(interiorId, portalIndex)
---  for i=0, count-1 do
---    local archetype = GetInteriorPortalEntityArchetype(interiorId, portalIndex, i)
---    print("portal " .. portalIndex .." entity " .. i .. " archetype is: " .. archetype)
---  end
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param entityIndex number Portal entity index.
---@return number # Portal entity archetype.
function GetInteriorPortalEntityArchetype(interiorId, portalIndex, entityIndex) end

---**`CFX` `client` [`0xC68021B`](https://docs.fivem.net/natives/?_0xC68021B)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local portalIndex = 0
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalEntityCount(interiorId, portalIndex)
---  print("portal " .. portalIndex .." entity count is: " .. count)
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@return number # Portal entity count.
function GetInteriorPortalEntityCount(interiorId, portalIndex) end

---**`CFX` `client` [`0x9DA2E811`](https://docs.fivem.net/natives/?_0x9DA2E811)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local portalIndex = 0
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalEntityCount(interiorId, portalIndex)
---  for i=0, count-1 do
---    local flag = GetInteriorPortalEntityFlag(interiorId, portalIndex, i)
---    print("portal " .. portalIndex .." entity " .. i .. " flag is: " .. flag)
---  end
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param entityIndex number Portal entity index.
---@return number # Portal entity flag.
function GetInteriorPortalEntityFlag(interiorId, portalIndex, entityIndex) end

---**`CFX` `client` [`0x9B7AB83C`](https://docs.fivem.net/natives/?_0x9B7AB83C)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local portalIndex = 0
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalEntityCount(interiorId, portalIndex)
---  for i=0, count-1 do
---    local x, y, z = GetInteriorPortalEntityPosition(interiorId, portalIndex, i)
---    print("portal " .. portalIndex .." entity " .. i .. " position is: " .. vec3(x, y, z))
---  end
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param entityIndex number Portal entity index.
---@param posX number
---@param posY number
---@param posZ number
function GetInteriorPortalEntityPosition(interiorId, portalIndex, entityIndex, posX, posY, posZ) end

---**`CFX` `client` [`0x9F9CEB63`](https://docs.fivem.net/natives/?_0x9F9CEB63)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local portalIndex = 0
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalEntityCount(interiorId, portalIndex)
---  for i=0, count-1 do
---    local x, y, z, w = GetInteriorPortalEntityRotation(interiorId, portalIndex, i)
---    print("portal " .. portalIndex .." entity " .. i .. " rotation is: " .. vec4(x, y, z, w))
---  end
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param entityIndex number Portal entity index.
---@param rotX number
---@param rotY number
---@param rotZ number
---@param rotW number
function GetInteriorPortalEntityRotation(interiorId, portalIndex, entityIndex, rotX, rotY, rotZ, rotW) end

---**`CFX` `client` [`0xC74DA47C`](https://docs.fivem.net/natives/?_0xC74DA47C)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local portalFlag = GetInteriorPortalFlag(interiorId, 0)
---  print("portal 0 flag is: " .. portalRoomFrom)
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@return number # Portal's flag.
function GetInteriorPortalFlag(interiorId, portalIndex) end

---**`CFX` `client` [`0xAA9C141D`](https://docs.fivem.net/natives/?_0xAA9C141D)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local roomIndex = 0
---
---  local portalRoomFrom = GetInteriorPortalRoomFrom(interiorId, 0)
---  print("portal " .. roomIndex .. " room FROM is: " .. portalRoomFrom)
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@return number # Portal's room FROM index.
function GetInteriorPortalRoomFrom(interiorId, portalIndex) end

---**`CFX` `client` [`0x3F47F0E8`](https://docs.fivem.net/natives/?_0x3F47F0E8)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local roomIndex = 0
---
---  local portalRoomTo = GetInteriorPortalRoomTo(interiorId, 0)
---  print("portal " .. roomIndex .. " room TO is: " .. portalRoomTo)
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@return number # Portal's room TO index.
function GetInteriorPortalRoomTo(interiorId, portalIndex) end

---**`CFX` `client` [`0x77A435B0`](https://docs.fivem.net/natives/?_0x77A435B0)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local x, y, z = GetInteriorPosition(interiorId)
---  print("current interior " .. interiorId .. " position is: " .. vec(x, y, z))
---end
---```
---
---@param interiorId number The target interior.
---@param posX number
---@param posY number
---@param posZ number
function GetInteriorPosition(interiorId, posX, posY, posZ) end

---**`CFX` `client` [`0xA2737C2C`](https://docs.fivem.net/natives/?_0xA2737C2C)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local count = GetInteriorRoomCount(interiorId)
---  print("interior " .. interiorId .. "has " .. count .. " rooms")
---end
---```
---
---@param interiorId number The target interior.
---@return number # The amount of rooms in interior.
function GetInteriorRoomCount(interiorId) end

---**`CFX` `client` [`0xF9E795DD`](https://docs.fivem.net/natives/?_0xF9E795DD)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  local minX, minY, minZ, maxX, maxY, maxZ = GetInteriorRoomExtents(interiorId, roomId)
---  print("current room extents is: " .. vec(minX, minY, minZ) .." / " .. vec(maxX, maxY, maxZ))
---end
---```
---
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@param bbMinX number
---@param bbMinY number
---@param bbMinZ number
---@param bbMaxX number
---@param bbMaxY number
---@param bbMaxZ number
function GetInteriorRoomExtents(interiorId, roomIndex, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ) end

---**`CFX` `client` [`0x6B7AF743`](https://docs.fivem.net/natives/?_0x6B7AF743)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  local roomFlag = GetInteriorRoomFlag(interiorId, roomId)
---  print("current room flag is: " .. roomFlag)
---end
---```
---
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@return number # Room's flag.
function GetInteriorRoomFlag(interiorId, roomIndex) end

---**`CFX` `client` [`0xE0EE05F8`](https://docs.fivem.net/natives/?_0xE0EE05F8)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  print("current room index is: " .. roomId)
---end
---```
---
---@param interiorId number The target interior.
---@param roomHash number Interior room hash.
---@return number # Room index, -1 if failed.
function GetInteriorRoomIndexByHash(interiorId, roomHash) end

---**`CFX` `client` [`0x11755DF2`](https://docs.fivem.net/natives/?_0x11755DF2)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  local roomName = GetInteriorRoomName(interiorId, roomId)
---  print("current room name is: " .. roomName)
---end
---```
---
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@return string # Room's name.
function GetInteriorRoomName(interiorId, roomIndex) end

---**`CFX` `client` [`0x82BA3F88`](https://docs.fivem.net/natives/?_0x82BA3F88)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  local roomTimecycle = GetInteriorRoomTimecycle(interiorId, roomId)
---  print("current room timecycle hash is: " .. roomTimecycle)
---end
---```
---
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@return number # Room's timecycle hash.
function GetInteriorRoomTimecycle(interiorId, roomIndex) end

---**`CFX` `client` [`0x5A039998`](https://docs.fivem.net/natives/?_0x5A039998)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local x, y, z, w = GetInteriorRotation(interiorId)
---  print("current interior " .. interiorId .. " rotation is: " .. vec(x, y, z, w))
---end
---```
---
---@param interiorId number The target interior.
---@param rotx number
---@param rotY number
---@param rotZ number
---@param rotW number
function GetInteriorRotation(interiorId, rotx, rotY, rotZ, rotW) end

---**`CFX` `shared` [`0x4D52FE5B`](https://docs.fivem.net/natives/?_0x4D52FE5B)**
---
---@return string
function GetInvokingResource() end

---**`CFX` `client` [`0x30AA6911`](https://docs.fivem.net/natives/?_0x30AA6911)**
---
---Retrieves the map data entity handle.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---
---@param mapDataHash number A mapdata hash from `mapDataLoaded` event.
---@param entityInternalIdx number An internal entity's index.
---@param entityHandle number The output entity handle.
---@return boolean, number # True if successful, false if not.
function GetMapdataEntityHandle(mapDataHash, entityInternalIdx, entityHandle) end

---**`CFX` `client` [`0x2C3CDA93`](https://docs.fivem.net/natives/?_0x2C3CDA93)**
---
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
---
---@param mapDataHash number A mapdata hash from `mapDataLoaded` event.
---@param entityInternalIdx number An internal entity's index.
---@param matrixPtr number A mutable pointer to a 64-byte buffer of floating-point values, representing an XMFLOAT4X4 in layout.
---@return boolean # Whether or not the matrix was retrieved.
function GetMapdataEntityMatrix(mapDataHash, entityInternalIdx, matrixPtr) end

---**`CFX` `client` [`0xD29D8EDD`](https://docs.fivem.net/natives/?_0xD29D8EDD)**
---
---Returns the transient map data index for a specified hash.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---
---@param mapdataHandle Hash The input map data handle.
---@return number # A transient (non-persistable) index to the requested mapdata, or -1.
function GetMapdataFromHashKey(mapdataHandle) end

---**`CFX` `client` [`0x1363A998`](https://docs.fivem.net/natives/?_0x1363A998)**
---
---Returns the zoom level data by index from mapzoomdata.meta file.
---
---@param index number Zoom level index.
---@param zoomScale number fZoomScale value.
---@param zoomSpeed number fZoomSpeed value.
---@param scrollSpeed number fScrollSpeed value.
---@param tilesX number vTiles X.
---@param tilesY number vTiles Y.
---@return boolean, number, number, number, number, number # A boolean indicating TRUE if the data was received successfully.
function GetMapZoomDataLevel(index, zoomScale, zoomSpeed, scrollSpeed, tilesX, tilesY) end

---**`CFX` `client` [`0x2CAFD5E9`](https://docs.fivem.net/natives/?_0x2CAFD5E9)**
---
---@return boolean
function GetNetworkWalkMode() end

---**`CFX` `client` [`0xBDBA226F`](https://docs.fivem.net/natives/?_0xBDBA226F)**
---
---@param x number
---@param y number
function GetNuiCursorPosition(x, y) end

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

---**`CFX` `client` [`0xFF72DF84`](https://docs.fivem.net/natives/?_0xFF72DF84)**
---
---A getter for [SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xEAE6DCC7EEE3DB1D).
---
---@return number # Returns parked vehicle density multiplier value.
function GetParkedVehicleDensityMultiplier() end

---**`CFX` `client` [`0x7CCE1163`](https://docs.fivem.net/natives/?_0x7CCE1163)**
---
---Returns a list of decorations applied to a ped.
---
---The data returned adheres to the following layout:
---
---```
---[ [ collectionHash1, overlayHash1 ], ..., [c ollectionHashN, overlayHashN ] ]
---```
---
---This command will return undefined data if invoked on a remote player ped.
---
---@param ped Ped The ped you want to retrieve data for.
---@return table # An object containing a list of applied decorations.
function GetPedDecorations(ped) end

---**`CFX` `client` [`0xF5A904F9`](https://docs.fivem.net/natives/?_0xF5A904F9)**
---
---A getter for [SET_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x95E3D6257B166CF2).
---
---@return number # Returns ped density multiplier value.
function GetPedDensityMultiplier() end

---**`CFX` `client` [`0xA47B860F`](https://docs.fivem.net/natives/?_0xA47B860F)**
---
---A getter for [\_SET_PED_EYE_COLOR](#\_0x50B56988B170AFDF). Returns -1 if fails to get.
---
---Example code:
---```lua
---local pedEyeColour = GetPedEyeColor(PlayerPedId())
---if pedEyeColour == 7 then
---  print("Gray eyes!")
---end
---```
---
---@param ped Ped The target ped
---@return number # Returns ped's eye colour, or -1 if fails to get.
function GetPedEyeColor(ped) end

---**`CFX` `client` [`0xBA352ADD`](https://docs.fivem.net/natives/?_0xBA352ADD)**
---
---A getter for [\_SET_PED_FACE_FEATURE](#\_0x71A5C1DBA060049E). Returns 0.0 if fails to get.
---
---Example code:
---```lua
---local noseWidth = GetPedFaceFeature(PlayerPedId(), 0)
---if noseWidth == 1.0 then
---  print("You have big nose!")
---end
---```
---
---@param ped Ped The target ped
---@param index number Face feature index
---@return number # Returns ped's face feature value, or 0.0 if fails to get.
function GetPedFaceFeature(ped, index) end

---**`CFX` `client` [`0xA3EA2893`](https://docs.fivem.net/natives/?_0xA3EA2893)**
---
---A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
---
---Example code:
---```lua
---local primaryColour = GetPedHairColor(PlayerPedId())
---if primaryColour == 18 then
---  print("You have red hair!")
---end
---```
---
---@param ped Ped The target ped
---@return number # Returns ped's primary hair colour.
function GetPedHairColor(ped) end

---**`CFX` `client` [`0x4B087305`](https://docs.fivem.net/natives/?_0x4B087305)**
---
---A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
---
---Example code:
---```lua
---local secondaryColour = GetPedHairHighlightColor(PlayerPedId())
---if secondaryColour == 32 then
---  print("You have pink hair highlight colour!")
---end
---```
---
---@param ped Ped The target ped
---@return number # Returns ped's secondary hair colour.
function GetPedHairHighlightColor(ped) end

---**`CFX` `client` [`0xC46EE605`](https://docs.fivem.net/natives/?_0xC46EE605)**
---
---A getter for [SET_PED_HEAD_OVERLAY](#\_0x48F44967FA05CC1E) and [\_SET_PED_HEAD_OVERLAY_COLOR](#\_0x497BF74A7B9CB952) natives.
---
---Example code:
---```lua
----- getting beard overlay data
---local success, overlayValue, colourType, firstColour, secondColour, overlayOpacity = GetPedHeadOverlayData(PlayerPedId(), 1)
---if success then
---  -- incrementing value
---  SetPedHeadOverlay(PlayerPedId(), 1, overlayValue + 1, overlayOpacity)
---end
---```
---
---@param ped Ped The target ped
---@param index number Overlay index
---@param overlayValue number Overlay value pointer
---@param colourType number Colour type pointer
---@param firstColour number First colour pointer
---@param secondColour number Second colour pointer
---@param overlayOpacity number Opacity pointer
---@return boolean, number, number, number, number, number # Returns ped's head overlay data.
function GetPedHeadOverlayData(ped, index, overlayValue, colourType, firstColour, secondColour, overlayOpacity) end

---**`CFX` `client` [`0xFE08CAD6`](https://docs.fivem.net/natives/?_0xFE08CAD6)**
---
---Gets a ped model's personality type.
---
---@param modelHash Hash Ped's model.
---@return Hash
function GetPedModelPersonality(modelHash) end

---**`CFX` `client` [`0x69E81E3D`](https://docs.fivem.net/natives/?_0x69E81E3D)**
---
---@param ped Ped The target ped.
---@return number # The current movement clipset hash.
function GetPedMovementClipset(ped) end

---**`CFX` `client` [`0x344EA166`](https://docs.fivem.net/natives/?_0x344EA166)**
---
---@param serverId number
---@return Player
function GetPlayerFromServerId(serverId) end

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

---**`CFX` `client` [`0xF2E3912B`](https://docs.fivem.net/natives/?_0xF2E3912B)**
---
---Unlike [GET_PLAYER_INVINCIBLE](#\_0xB721981B2B939E07) this native gets both [SET_PLAYER_INVINCIBLE_KEEP_RAGDOLL_ENABLED](#\_0x6BC97F4F4BB3C04B) and [SET_PLAYER_INVINCIBLE](#\_0x239528EACDC3E7DE) invincibility state.
---
---@param player Player The player id
---@return boolean # A boolean to tell if the player is invincible.
function GetPlayerInvincible_2(player) end

---**`CFX` `client` [`0xD014AB79`](https://docs.fivem.net/natives/?_0xD014AB79)**
---
---@param playerId Player The player index.
---@return number # The value of player max stamina.
function GetPlayerMaxStamina(playerId) end

---**`CFX` `shared` [`0x8689A825`](https://docs.fivem.net/natives/?_0x8689A825)**
---
---A getter for [SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER](#\_0x4A3DC7ECCC321032).
---
---@param playerId Player The player index.
---@return number # Returns player melee weapon damage modifier value.
function GetPlayerMeleeWeaponDamageModifier(playerId) end

---**`CFX` `client` [`0x27E94EF8`](https://docs.fivem.net/natives/?_0x27E94EF8)**
---
---A getter for [SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER](#\_0xAE540335B4ABC4E2).
---
---@param playerId Player The player index.
---@return number # The value of player melee weapon defense modifier.
function GetPlayerMeleeWeaponDefenseModifier(playerId) end

---**`CFX` `client` [`0x4D97BCC7`](https://docs.fivem.net/natives/?_0x4D97BCC7)**
---
---@param player Player
---@return number
function GetPlayerServerId(player) end

---**`CFX` `client` [`0xE415EC5C`](https://docs.fivem.net/natives/?_0xE415EC5C)**
---
---@param playerId Player The player index.
---@return number # The value of player stamina.
function GetPlayerStamina(playerId) end

---**`CFX` `client` [`0x78F27B1F`](https://docs.fivem.net/natives/?_0x78F27B1F)**
---
---A getter for [SET_PLAYER_VEHICLE_DAMAGE_MODIFIER](#\_0xA50E117CDDF82F0C).
---
---@param playerId Player The player index.
---@return number # The value of player vehicle damage modifier.
function GetPlayerVehicleDamageModifier(playerId) end

---**`CFX` `client` [`0x8326E7CD`](https://docs.fivem.net/natives/?_0x8326E7CD)**
---
---A getter for [SET_PLAYER_VEHICLE_DEFENSE_MODIFIER](#\_0x4C60E6EFDAFF2462).
---
---@param playerId Player The player index.
---@return number # The value of player vehicle defense modifier.
function GetPlayerVehicleDefenseModifier(playerId) end

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

---**`CFX` `client` [`0x7B0D00C5`](https://docs.fivem.net/natives/?_0x7B0D00C5)**
---
---A getter for [SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xB3B3359379FE77D3).
---Same as vehicle density multiplier.
---
---@return number # Returns random vehicle density multiplier value.
function GetRandomVehicleDensityMultiplier() end

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

---**`CFX` `shared` [`0x4039B485`](https://docs.fivem.net/natives/?_0x4039B485)**
---
---Returns the current state of the specified resource.
---
---@param resourceName string The name of the resource.
---@return string # The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.
function GetResourceState(resourceName) end

---**`CFX` `client` [`0xA80FFE99`](https://docs.fivem.net/natives/?_0xA80FFE99)**
---
---```cpp
---enum eRopeFlags
---{
---    DrawShadowEnabled = 2,
---	Breakable = 4,
---	RopeUnwindingFront = 8,
---	RopeWinding = 32
---}
---```
---
---@param rope number The rope to get the flags for.
---@return number # The rope's flags.
function GetRopeFlags(rope) end

---**`CFX` `client` [`0x66D70EA3`](https://docs.fivem.net/natives/?_0x66D70EA3)**
---
---@param rope number The rope to get the length change rate for.
---@return number # The rope's length change rate.
function GetRopeLengthChangeRate(rope) end

---**`CFX` `client` [`0xF341E6CA`](https://docs.fivem.net/natives/?_0xF341E6CA)**
---
---@param rope number The rope to get the time multiplier for.
---@return number # The rope's time multiplier.
function GetRopeTimeMultiplier(rope) end

---**`CFX` `client` [`0x2AB2E0F6`](https://docs.fivem.net/natives/?_0x2AB2E0F6)**
---
---@param rope number The rope to get the update order for.
---@return number # The rope's update order.
function GetRopeUpdateOrder(rope) end

---**`CFX` `client` [`0x3574AACE`](https://docs.fivem.net/natives/?_0x3574AACE)**
---
---Gets the height of the specified runtime texture.
---
---@param tex number A handle to the runtime texture.
---@return number # The height in pixels.
function GetRuntimeTextureHeight(tex) end

---**`CFX` `client` [`0xCA0A085F`](https://docs.fivem.net/natives/?_0xCA0A085F)**
---
---Gets the row pitch of the specified runtime texture, for use when creating data for `SET_RUNTIME_TEXTURE_ARGB_DATA`.
---
---@param tex number A handle to the runtime texture.
---@return number # The row pitch in bytes.
function GetRuntimeTexturePitch(tex) end

---**`CFX` `client` [`0xC9F55558`](https://docs.fivem.net/natives/?_0xC9F55558)**
---
---Gets the width of the specified runtime texture.
---
---@param tex number A handle to the runtime texture.
---@return number # The width in pixels.
function GetRuntimeTextureWidth(tex) end

---**`CFX` `client` [`0x77C598B2`](https://docs.fivem.net/natives/?_0x77C598B2)**
---
---A getter for [SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x7A556143A1C03898).
---
---@return number # Returns scenario ped density multiplier value.
function GetScenarioPedDensityMultiplier() end

---**`CFX` `shared` [`0x637F4C75`](https://docs.fivem.net/natives/?_0x637F4C75)**
---
---Returns the value of a state bag key.
---
---@param bagName string
---@param key string
---@return table # Value.
function GetStateBagValue(bagName, key) end

---**`CFX` `client` [`0xE015E854`](https://docs.fivem.net/natives/?_0xE015E854)**
---
---@param train Vehicle The target train.
---@return number # Train's current track node index.
function GetTrainCurrentTrackNode(train) end

---**`CFX` `client` [`0x99974721`](https://docs.fivem.net/natives/?_0x99974721)**
---
---Gets the door count for the specified train.
---
---@param train Vehicle The train to obtain the door count for.
---@return number # The door count.
function GetTrainDoorCount(train) end

---**`CFX` `client` [`0x40B16551`](https://docs.fivem.net/natives/?_0x40B16551)**
---
---Gets the ratio that a door is open for on a train.
---
---Example code:
---```lua
---local doorCount = GetTrainDoorCount(train)
---for doorIndex = 0, doorCount - 1 do
---    local ratio = GetTrainDoorOpenRatio(train, doorIndex)
---    print("Door " .. tostring(doorIndex) .. " is open by a ratio of " .. tostring(ratio))
---end
---```
---
---@param train Vehicle The train to obtain the door ratio for.
---@param doorIndex number Zero-based door index.
---@return number # A value between 0.0 (fully closed) and 1.0 (fully open).
function GetTrainDoorOpenRatio(train, doorIndex) end

---**`CFX` `client` [`0xC62AAC98`](https://docs.fivem.net/natives/?_0xC62AAC98)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleAlarmTimeLeft(vehicle) end

---**`CFX` `client` [`0xC3C93F28`](https://docs.fivem.net/natives/?_0xC3C93F28)**
---
---A getter for [SET_VEHICLE_CHEAT_POWER_INCREASE](#\_0xB59E4BD37AE292DB).
---
---@param vehicle Vehicle The target vehicle.
---@return number # Returns vehicle's cheat power increase modifier value.
function GetVehicleCheatPowerIncrease(vehicle) end

---**`CFX` `client` [`0x1DAD4583`](https://docs.fivem.net/natives/?_0x1DAD4583)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleClutch(vehicle) end

---**`CFX` `client` [`0xB4F4E566`](https://docs.fivem.net/natives/?_0xB4F4E566)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleCurrentGear(vehicle) end

---**`CFX` `client` [`0xE7B12B54`](https://docs.fivem.net/natives/?_0xE7B12B54)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleCurrentRpm(vehicle) end

---**`CFX` `client` [`0xDFFABA2A`](https://docs.fivem.net/natives/?_0xDFFABA2A)**
---
---@return number
function GetVehicleDashboardBoost() end

---**`CFX` `client` [`0x19B0B2CE`](https://docs.fivem.net/natives/?_0x19B0B2CE)**
---
---@return number
function GetVehicleDashboardFuel() end

---**`CFX` `client` [`0x500FFE9D`](https://docs.fivem.net/natives/?_0x500FFE9D)**
---
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
---
---@return number
function GetVehicleDashboardLights() end

---**`CFX` `client` [`0x3856D767`](https://docs.fivem.net/natives/?_0x3856D767)**
---
---@return number
function GetVehicleDashboardOilPressure() end

---**`CFX` `client` [`0x1F5996AA`](https://docs.fivem.net/natives/?_0x1F5996AA)**
---
---@return number
function GetVehicleDashboardOilTemp() end

---**`CFX` `client` [`0xF9716A11`](https://docs.fivem.net/natives/?_0xF9716A11)**
---
---@return number # float 0 to ~1.1 representing the angle of the rpm gauge on the player's vehicle dashboard
function GetVehicleDashboardRpm() end

---**`CFX` `client` [`0x9AAD420E`](https://docs.fivem.net/natives/?_0x9AAD420E)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleDashboardSpeed(vehicle) end

---**`CFX` `client` [`0x6B6ADAFA`](https://docs.fivem.net/natives/?_0x6B6ADAFA)**
---
---@return number
function GetVehicleDashboardTemp() end

---**`CFX` `client` [`0xFABE67A9`](https://docs.fivem.net/natives/?_0xFABE67A9)**
---
---@return number
function GetVehicleDashboardVacuum() end

---**`CFX` `client` [`0x8E3B3E42`](https://docs.fivem.net/natives/?_0x8E3B3E42)**
---
---@return number
function GetVehicleDashboardWaterTemp() end

---**`CFX` `client` [`0xEF7C6538`](https://docs.fivem.net/natives/?_0xEF7C6538)**
---
---A getter for [SET_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x245A6883D966D537).
---
---@return number # Returns vehicle density multiplier value.
function GetVehicleDensityMultiplier() end

---**`CFX` `client` [`0x21C1DA8E`](https://docs.fivem.net/natives/?_0x21C1DA8E)**
---
---Gets a vehicle's multiplier used with a wheel's GET_VEHICLE_WHEEL_STEERING_ANGLE to determine the angle the wheel is rendered.
---
---@param vehicle Vehicle
---@return number
function GetVehicleDrawnWheelAngleMult(vehicle) end

---**`CFX` `client` [`0xF4F495CB`](https://docs.fivem.net/natives/?_0xF4F495CB)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleEngineTemperature(vehicle) end

---**`CFX` `client` [`0x5F739BB8`](https://docs.fivem.net/natives/?_0x5F739BB8)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleFuelLevel(vehicle) end

---**`CFX` `client` [`0xB48A1292`](https://docs.fivem.net/natives/?_0xB48A1292)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleGravityAmount(vehicle) end

---**`CFX` `shared` [`0x483B013C`](https://docs.fivem.net/natives/?_0x483B013C)**
---
---@param vehicle Vehicle
---@return boolean
function GetVehicleHandbrake(vehicle) end

---**`CFX` `client` [`0x642FC12F`](https://docs.fivem.net/natives/?_0x642FC12F)**
---
---Returns the effective handling data of a vehicle as a floating-point value.
---Example: `local fSteeringLock = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock')`
---
---@param vehicle Vehicle The vehicle to obtain data for.
---@param class_ string The handling class to get. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to get. These match the keys in `handling.meta`.
---@return number # A floating-point value.
function GetVehicleHandlingFloat(vehicle, class_, fieldName) end

---**`CFX` `client` [`0x27396C75`](https://docs.fivem.net/natives/?_0x27396C75)**
---
---Returns the effective handling data of a vehicle as an integer value.
---Example: `local modelFlags = GetVehicleHandlingInt(vehicle, 'CHandlingData', 'strModelFlags')`
---
---@param vehicle Vehicle The vehicle to obtain data for.
---@param class_ string The handling class to get. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to get. These match the keys in `handling.meta`.
---@return number # An integer.
function GetVehicleHandlingInt(vehicle, class_, fieldName) end

---**`CFX` `client` [`0xFB341304`](https://docs.fivem.net/natives/?_0xFB341304)**
---
---Returns the effective handling data of a vehicle as a vector value.
---Example: `local inertiaMultiplier = GetVehicleHandlingVector(vehicle, 'CHandlingData', 'vecInertiaMultiplier')`
---
---@param vehicle Vehicle The vehicle to obtain data for.
---@param class_ string The handling class to get. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to get. These match the keys in `handling.meta`.
---@return vector3 # An integer.
function GetVehicleHandlingVector(vehicle, class_, fieldName) end

---**`CFX` `client` [`0xF1D1D689`](https://docs.fivem.net/natives/?_0xF1D1D689)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleHighGear(vehicle) end

---**`CFX` `client` [`0x83070354`](https://docs.fivem.net/natives/?_0x83070354)**
---
---Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
---
---@param vehicle Vehicle
---@return number # An integer.
function GetVehicleIndicatorLights(vehicle) end

---**`CFX` `client` [`0x7E6E219C`](https://docs.fivem.net/natives/?_0x7E6E219C)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleLightMultiplier(vehicle) end

---**`CFX` `client` [`0xDDB298AE`](https://docs.fivem.net/natives/?_0xDDB298AE)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleNextGear(vehicle) end

---**`CFX` `client` [`0xEDF4B0FC`](https://docs.fivem.net/natives/?_0xEDF4B0FC)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleNumberOfWheels(vehicle) end

---**`CFX` `client` [`0xFC7F8EF4`](https://docs.fivem.net/natives/?_0xFC7F8EF4)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleOilLevel(vehicle) end

---**`CFX` `shared` [`0x1382FCEA`](https://docs.fivem.net/natives/?_0x1382FCEA)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleSteeringAngle(vehicle) end

---**`CFX` `client` [`0x954465DE`](https://docs.fivem.net/natives/?_0x954465DE)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleSteeringScale(vehicle) end

---**`CFX` `client` [`0xD1D07351`](https://docs.fivem.net/natives/?_0xD1D07351)**
---
---@param vehicle Vehicle
---@return number # A float among -1 and 1 according if the vehicle is moving forwards or backwards
function GetVehicleThrottleOffset(vehicle) end

---**`CFX` `client` [`0x998B7FEE`](https://docs.fivem.net/natives/?_0x998B7FEE)**
---
---A getter for [MODIFY_VEHICLE_TOP_SPEED](#\_0x93A3996368C94158). Returns -1.0 if a modifier is not set.
---
---@param vehicle Vehicle The target vehicle.
---@return number # Returns vehicle's modified top speed.
function GetVehicleTopSpeedModifier(vehicle) end

---**`CFX` `client` [`0xE02B51D7`](https://docs.fivem.net/natives/?_0xE02B51D7)**
---
---@param vehicle Vehicle
---@return number
function GetVehicleTurboPressure(vehicle) end

---**`CFX` `client` [`0x137260D1`](https://docs.fivem.net/natives/?_0x137260D1)**
---
---List of known states:
---
---```
---1: Not wheeling.
---65: Vehicle is ready to do wheelie (burnouting).
---129: Vehicle is doing wheelie.
---```
---
---Example code:
---```lua
---Citizen.CreateThread(function()
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
---end)
---```
---
---@param vehicle Vehicle Vehicle
---@return number # Vehicle's current wheelie state.
function GetVehicleWheelieState(vehicle) end

---**`CFX` `client` [`0x70FE2EFF`](https://docs.fivem.net/natives/?_0x70FE2EFF)**
---
---Gets brake pressure of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---Normal values around 1.0f when braking.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@return number
function GetVehicleWheelBrakePressure(vehicle, wheelIndex) end

---**`CFX` `client` [`0xC70FA0C7`](https://docs.fivem.net/natives/?_0xC70FA0C7)**
---
---Gets the flags of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@return number # An unsigned int containing bit flags.
function GetVehicleWheelFlags(vehicle, wheelIndex) end

---**`CFX` `client` [`0x54A677F5`](https://docs.fivem.net/natives/?_0x54A677F5)**
---
---@param vehicle Vehicle
---@param wheelIndex number
---@return number
function GetVehicleWheelHealth(vehicle, wheelIndex) end

---**`CFX` `client` [`0x3CCF1B49`](https://docs.fivem.net/natives/?_0x3CCF1B49)**
---
---Gets whether the wheel is powered.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---This is a shortcut to a flag in GET_VEHICLE_WHEEL_FLAGS.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@return boolean
function GetVehicleWheelIsPowered(vehicle, wheelIndex) end

---**`CFX` `client` [`0xD203287`](https://docs.fivem.net/natives/?_0xD203287)**
---
---Gets power being sent to a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@return number
function GetVehicleWheelPower(vehicle, wheelIndex) end

---**`CFX` `client` [`0xCEE21AB2`](https://docs.fivem.net/natives/?_0xCEE21AB2)**
---
---@param vehicle Vehicle The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@return number # Float representing size of the rim collider. Not sure what it is used for, probably to detect whether bullets hit rim or tire and puncture it (and to determine size of the wheel when tire is fully blown).
function GetVehicleWheelRimColliderSize(vehicle, wheelIndex) end

---**`CFX` `client` [`0xEA1859E5`](https://docs.fivem.net/natives/?_0xEA1859E5)**
---
---Gets the rotation speed of a wheel.
---This is used internally to calcuate GET_VEHICLE_WHEEL_SPEED.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@return number # The angular velocity of the wheel.
function GetVehicleWheelRotationSpeed(vehicle, wheelIndex) end

---**`CFX` `client` [`0x4046B66`](https://docs.fivem.net/natives/?_0x4046B66)**
---
---Returns vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).
---Only works on non-default wheels (returns 0 in case of default wheels).
---
---@param vehicle Vehicle The vehicle to obtain data for.
---@return number # Float representing size of the wheel (usually between 0.5 and 1.5)
function GetVehicleWheelSize(vehicle) end

---**`CFX` `client` [`0x149C9DA0`](https://docs.fivem.net/natives/?_0x149C9DA0)**
---
---Gets speed of a wheel at the tyre.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@return number # An integer.
function GetVehicleWheelSpeed(vehicle, wheelIndex) end

---**`CFX` `client` [`0xA0867448`](https://docs.fivem.net/natives/?_0xA0867448)**
---
---Gets steering angle of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@return number # The steering angle of the wheel, with 0 being straight.
function GetVehicleWheelSteeringAngle(vehicle, wheelIndex) end

---**`CFX` `client` [`0xA7F04022`](https://docs.fivem.net/natives/?_0xA7F04022)**
---
---@param vehicle Vehicle The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@return number # Integer representing the index of the current surface material of that wheel. Check materials.dat for the indexes.
function GetVehicleWheelSurfaceMaterial(vehicle, wheelIndex) end

---**`CFX` `client` [`0x2B48175B`](https://docs.fivem.net/natives/?_0x2B48175B)**
---
---Gets the current suspension compression of a wheel.
---Returns a positive value. 0 means the suspension is fully extended, the wheel is off the ground.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@return number # The current compression of the wheel's suspension.
function GetVehicleWheelSuspensionCompression(vehicle, wheelIndex) end

---**`CFX` `client` [`0xE0BA9FE6`](https://docs.fivem.net/natives/?_0xE0BA9FE6)**
---
---@param vehicle Vehicle The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@return number # Float representing size of the wheel collider.
function GetVehicleWheelTireColliderSize(vehicle, wheelIndex) end

---**`CFX` `client` [`0xEF65929C`](https://docs.fivem.net/natives/?_0xEF65929C)**
---
---@param vehicle Vehicle The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@return number # Float representing width of the wheel collider.
function GetVehicleWheelTireColliderWidth(vehicle, wheelIndex) end

---**`CFX` `client` [`0x3BCFEE14`](https://docs.fivem.net/natives/?_0x3BCFEE14)**
---
---Gets the traction vector length of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@return number
function GetVehicleWheelTractionVectorLength(vehicle, wheelIndex) end

---**`CFX` `client` [`0x9C7B59F9`](https://docs.fivem.net/natives/?_0x9C7B59F9)**
---
---Returns vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).
---Only works on non-default wheels (returns 0 in case of default wheels).
---
---@param vehicle Vehicle The vehicle to obtain data for.
---@return number # Float representing width of the wheel (usually between 0.1 and 1.5)
function GetVehicleWheelWidth(vehicle) end

---**`CFX` `client` [`0xCC90CBCA`](https://docs.fivem.net/natives/?_0xCC90CBCA)**
---
---Returns the offset of the specified wheel relative to the wheel's axle center.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@return number
function GetVehicleWheelXOffset(vehicle, wheelIndex) end

---**`CFX` `client` [`0x2EA4AFFE`](https://docs.fivem.net/natives/?_0x2EA4AFFE)**
---
---@param vehicle Vehicle
---@param wheelIndex number
---@return number
function GetVehicleWheelYRotation(vehicle, wheelIndex) end

---**`CFX` `client` [`0xC715F730`](https://docs.fivem.net/natives/?_0xC715F730)**
---
---Returns vehicle xenon lights custom RGB color values. Do note this native doesn't return non-RGB colors that was set with [\_SET_VEHICLE_XENON_LIGHTS_COLOR](#\_0xE41033B25D003A07).
---
---@param vehicle Vehicle The vehicle handle.
---@param red number Red color (0-255).
---@param green number Green color (0-255).
---@param blue number Blue color (0-255).
---@return boolean, number, number, number # A boolean indicating if vehicle have custom xenon lights RGB color.
function GetVehicleXenonLightsCustomColor(vehicle, red, green, blue) end

---**`CFX` `client` [`0x63ED2E7`](https://docs.fivem.net/natives/?_0x63ED2E7)**
---
---A getter for [SET_WEAPON_ANIMATION_OVERRIDE](\_0x1055AC3A667F09D9).
---
---Example code:
---```lua
---local weaponAnimation = GetWeaponAnimationOverride(PlayerPedId())
---```
---
---@param ped Ped The target ped.
---@return Hash # The weapon animation override.
function GetWeaponAnimationOverride(ped) end

---**`CFX` `client` [`0xC693E278`](https://docs.fivem.net/natives/?_0xC693E278)**
---
---A getter for `CWeaponAccuracyModifier` in a weapon component.
---
---@param componentHash Hash Weapon component name hash.
---@return number # A weapon component accuracy modifier.
function GetWeaponComponentAccuracyModifier(componentHash) end

---**`CFX` `client` [`0xACB7E68F`](https://docs.fivem.net/natives/?_0xACB7E68F)**
---
---A getter for `CameraHash` in a weapon scope component.
---
---@param componentHash Hash Weapon component name hash.
---@return number # The hash of the scope camera.
function GetWeaponComponentCameraHash(componentHash) end

---**`CFX` `client` [`0xE14CF665`](https://docs.fivem.net/natives/?_0xE14CF665)**
---
---A getter for `ClipSize` in a weapon component.
---
---@param componentHash Hash Weapon component name hash.
---@return number # A weapon component clip size.
function GetWeaponComponentClipSize(componentHash) end

---**`CFX` `client` [`0x4A0E3855`](https://docs.fivem.net/natives/?_0x4A0E3855)**
---
---A getter for `CWeaponDamageModifier` in a weapon component.
---
---@param componentHash Hash Weapon component name hash.
---@return number # A weapon component damage modifier.
function GetWeaponComponentDamageModifier(componentHash) end

---**`CFX` `client` [`0xE134FB8D`](https://docs.fivem.net/natives/?_0xE134FB8D)**
---
---A getter for `CWeaponFallOffModifier` damage modifier value in a weapon component.
---
---@param componentHash Hash Weapon component name hash.
---@return number # A weapon component damage modifier.
function GetWeaponComponentRangeDamageModifier(componentHash) end

---**`CFX` `client` [`0x2FD0BC1B`](https://docs.fivem.net/natives/?_0x2FD0BC1B)**
---
---A getter for `CWeaponFallOffModifier` range modifier value in a weapon component.
---
---@param componentHash Hash Weapon component name hash.
---@return number # A weapon component range modifier.
function GetWeaponComponentRangeModifier(componentHash) end

---**`CFX` `client` [`0xF9AB9297`](https://docs.fivem.net/natives/?_0xF9AB9297)**
---
---A getter for `ReticuleHash` in a weapon scope component.
---
---@param componentHash Hash Weapon component name hash.
---@return number # The hash of the reticule camera.
function GetWeaponComponentReticuleHash(componentHash) end

---**`CFX` `client` [`0xD979143`](https://docs.fivem.net/natives/?_0xD979143)**
---
---A getter for [\_SET_WEAPON_DAMAGE_MODIFIER](#\_0x4757F00BC6323CFE).
---
---@param weaponHash Hash Weapon name hash.
---@return number # A weapon damage modifier.
function GetWeaponDamageModifier(weaponHash) end

---**`CFX` `client` [`0x5E1AF5F`](https://docs.fivem.net/natives/?_0x5E1AF5F)**
---
---A getter for the recoil shake amplitude of a weapon.
---
---@param weaponHash Hash Weapon name hash.
---@return number # The recoil shake amplitude of a weapon.
function GetWeaponRecoilShakeAmplitude(weaponHash) end

---**`CFX` `client` [`0xC81D0659`](https://docs.fivem.net/natives/?_0xC81D0659)**
---
---Converts a screen coordinate into its relative world coordinate.
---
---Example code:
---```lua
---CreateThread(function()
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
---end)
---```
---
---@param screenX number A screen horizontal axis coordinate (0.0 - 1.0).
---@param screenY number A screen vertical axis coordinate (0.0 - 1.0).
---@param worldVector vector3 The world coord vector pointer.
---@param normalVector vector3 The screen normal vector pointer.
function GetWorldCoordFromScreenCoord(screenX, screenY, worldVector, normalVector) end

---**`CFX` `client` [`0xF7535F32`](https://docs.fivem.net/natives/?_0xF7535F32)**
---
---Returns whether or not the specific minimap overlay has loaded.
---
---@param id number A minimap overlay ID.
---@return boolean # A boolean indicating load status.
function HasMinimapOverlayLoaded(id) end

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

---**`CFX` `client` [`0xFFF65C63`](https://docs.fivem.net/natives/?_0xFFF65C63)**
---
---<!-- Native implemented by Disquse. 0xFFF65C63 -->
---
---Returns true if the minimap is currently expanded. False if it's the normal minimap state.
---Use [`IsBigmapFull`](#\_0x66EE14B2) to check if the full map is currently revealed on the minimap.
---
---Example code:
---```lua
---local expanded = IsBigmapActive()
---local fullMap = IsBigmapFull()
---print("The minimap is currently " .. (expanded and "expanded" or "normal size") .. " and the full map is currently " .. (fullMap and "revealed" or "not revealed") .. ".")
---```
---
---@return boolean # A bool indicating if the minimap is currently expanded or normal state.
function IsBigmapActive() end

---**`CFX` `client` [`0x66EE14B2`](https://docs.fivem.net/natives/?_0x66EE14B2)**
---
---<!-- Native implemented by Disquse. 0x66EE14B2 -->
---
---Example code:
---```lua
---local expanded = IsBigmapActive()
---local fullMap = IsBigmapFull()
---print("The minimap is currently " .. (expanded and "expanded" or "normal size") .. " and the full map is currently " .. (fullMap and "revealed" or "not revealed") .. ".")
---```
---
---@return boolean # Returns true if the full map is currently revealed on the minimap.<br>Use [`IsBigmapActive`](#\_0xFFF65C63) to check if the minimap is currently expanded or in it's normal state.
function IsBigmapFull() end

---**`CFX` `client` [`0x7AAC3B4C`](https://docs.fivem.net/natives/?_0x7AAC3B4C)**
---
---Returns whether or not a browser is created for a specified DUI browser object.
---
---@param duiObject number The DUI browser handle.
---@return boolean # A boolean indicating TRUE if the browser is created.
function IsDuiAvailable(duiObject) end

---**`CFX` `shared` [`0xCF24C52E`](https://docs.fivem.net/natives/?_0xCF24C52E)**
---
---Gets whether or not this is the CitizenFX server.
---
---@return boolean # A boolean value.
function IsDuplicityVersion() end

---**`CFX` `client` [`0xEDBE6ADD`](https://docs.fivem.net/natives/?_0xEDBE6ADD)**
---
---A getter for [FREEZE_ENTITY_POSITION](#\_0x428CA6DBD1094446).
---
---Example code:
---```lua
---local isFrozen = IsEntityPositionFrozen(PlayerPedId())
---```
---
---@param entity Entity The entity to check for
---@return boolean # Boolean stating if it is frozen or not.
function IsEntityPositionFrozen(entity) end

---**`CFX` `client` [`0x98545E6D`](https://docs.fivem.net/natives/?_0x98545E6D)**
---
---Returns the current NUI focus state previously set with `SET_NUI_FOCUS`.
---
---@return boolean # True or false.
function IsNuiFocused() end

---**`CFX` `client` [`0x39C9DC92`](https://docs.fivem.net/natives/?_0x39C9DC92)**
---
---Checks if keyboard input is enabled during NUI focus using `SET_NUI_FOCUS_KEEP_INPUT`.
---
---@return boolean # True or false.
function IsNuiFocusKeepingInput() end

---**`CFX` `shared` [`0x37CF52CE`](https://docs.fivem.net/natives/?_0x37CF52CE)**
---
---@param principal string
---@param object string
---@return boolean
function IsPrincipalAceAllowed(principal, object) end

---**`CFX` `client` [`0xA194934D`](https://docs.fivem.net/natives/?_0xA194934D)**
---
---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Returns whether an asynchronous streaming file registration completed.
---
---@param registerAs string The file name to check, for example `asset.ydr`.
---@return boolean # Whether or not the streaming file has been registered.
function IsStreamingFileReady(registerAs) end

---**`CFX` `client` [`0xDC921211`](https://docs.fivem.net/natives/?_0xDC921211)**
---
---@param vehicle Vehicle
---@return boolean
function IsVehicleAlarmSet(vehicle) end

---**`CFX` `shared` [`0xBB340D04`](https://docs.fivem.net/natives/?_0xBB340D04)**
---
---@param vehicle Vehicle
---@return boolean
function IsVehicleEngineStarting(vehicle) end

---**`CFX` `client` [`0xA411F72C`](https://docs.fivem.net/natives/?_0xA411F72C)**
---
---@param vehicle Vehicle
---@return boolean
function IsVehicleInteriorLightOn(vehicle) end

---**`CFX` `client` [`0xF9933BF4`](https://docs.fivem.net/natives/?_0xF9933BF4)**
---
---@param vehicle Vehicle
---@return boolean
function IsVehicleNeedsToBeHotwired(vehicle) end

---**`CFX` `client` [`0xF849ED67`](https://docs.fivem.net/natives/?_0xF849ED67)**
---
---@param vehicle Vehicle
---@return boolean
function IsVehiclePreviouslyOwnedByPlayer(vehicle) end

---**`CFX` `client` [`0xA7DAF7C`](https://docs.fivem.net/natives/?_0xA7DAF7C)**
---
---@param vehicle Vehicle
---@return boolean
function IsVehicleWanted(vehicle) end

---**`CFX` `client` [`0xADECF19E`](https://docs.fivem.net/natives/?_0xADECF19E)**
---
---Leaves cursor mode. This function supports SDK infrastructure and is not intended to be used directly from your code.
---
function LeaveCursorMode() end

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

---**`CFX` `client` [`0xC79F44BF`](https://docs.fivem.net/natives/?_0xC79F44BF)**
---
---Starts listening to the specified channel, when available.
---
---@param channel number A game voice channel ID.
function MumbleAddVoiceChannelListen(channel) end

---**`CFX` `client` [`0x4D386C9E`](https://docs.fivem.net/natives/?_0x4D386C9E)**
---
---Adds the specified channel to the target list for the specified Mumble voice target ID.
---
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param channel number A game voice channel ID.
function MumbleAddVoiceTargetChannel(targetId, channel) end

---**`CFX` `client` [`0x32C5355A`](https://docs.fivem.net/natives/?_0x32C5355A)**
---
---Adds the specified player to the target list for the specified Mumble voice target ID.
---
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param player Player A game player index.
function MumbleAddVoiceTargetPlayer(targetId, player) end

---**`CFX` `client` [`0x25F2B65F`](https://docs.fivem.net/natives/?_0x25F2B65F)**
---
---Adds the specified player to the target list for the specified Mumble voice target ID.
---
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param serverId number The player's server id.
function MumbleAddVoiceTargetPlayerByServerId(targetId, serverId) end

---**`CFX` `client` [`0xBF847807`](https://docs.fivem.net/natives/?_0xBF847807)**
---
function MumbleClearVoiceChannel() end

---**`CFX` `client` [`0x8555DCBA`](https://docs.fivem.net/natives/?_0x8555DCBA)**
---
---Clears the target list for the specified Mumble voice target ID.
---
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
function MumbleClearVoiceTarget(targetId) end

---**`CFX` `client` [`0x5EA72E76`](https://docs.fivem.net/natives/?_0x5EA72E76)**
---
---Clears channels from the target list for the specified Mumble voice target ID.
---
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
function MumbleClearVoiceTargetChannels(targetId) end

---**`CFX` `client` [`0x912E21DA`](https://docs.fivem.net/natives/?_0x912E21DA)**
---
---Clears players from the target list for the specified Mumble voice target ID.
---
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
function MumbleClearVoiceTargetPlayers(targetId) end

---**`CFX` `client` [`0x84E02A32`](https://docs.fivem.net/natives/?_0x84E02A32)**
---
---@return number # Talker proximity value.
function MumbleGetTalkerProximity() end

---**`CFX` `client` [`0x221C09F1`](https://docs.fivem.net/natives/?_0x221C09F1)**
---
---Returns the mumble voice channel from a player's server id.
---
---@param serverId number The player's server id.
---@return number # Int representing the identifier of the voice channel.
function MumbleGetVoiceChannelFromServerId(serverId) end

---**`CFX` `client` [`0xE820BC10`](https://docs.fivem.net/natives/?_0xE820BC10)**
---
---@return boolean # True if the player has enabled voice chat.
function MumbleIsActive() end

---**`CFX` `client` [`0xB816370A`](https://docs.fivem.net/natives/?_0xB816370A)**
---
---This native will return true if the user succesfully connected to the voice server.
---If the user disabled the voice-chat setting it will return false.
---
---@return boolean # True if the player is connected to a mumble server.
function MumbleIsConnected() end

---**`CFX` `client` [`0x33EEF97F`](https://docs.fivem.net/natives/?_0x33EEF97F)**
---
---@param player Player The target player.
---@return boolean # Whether or not the player is talking.
function MumbleIsPlayerTalking(player) end

---**`CFX` `client` [`0x231523B7`](https://docs.fivem.net/natives/?_0x231523B7)**
---
---Stops listening to the specified channel.
---
---@param channel number A game voice channel ID.
function MumbleRemoveVoiceChannelListen(channel) end

---**`CFX` `client` [`0x268DB867`](https://docs.fivem.net/natives/?_0x268DB867)**
---
---Removes the specified voice channel from the user's voice targets.
---
---Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_CHANNEL](#\_0x4D386C9E)
---
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param channel number The game voice channel ID to remove from the target.
function MumbleRemoveVoiceTargetChannel(targetId, channel) end

---**`CFX` `client` [`0x88CD646F`](https://docs.fivem.net/natives/?_0x88CD646F)**
---
---Removes the specified player from the user's voice targets.
---
---Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER](#\_0x32C5355A)
---
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param player Player The player index to remove from the target.
function MumbleRemoveVoiceTargetPlayer(targetId, player) end

---**`CFX` `client` [`0x930BD34B`](https://docs.fivem.net/natives/?_0x930BD34B)**
---
---Removes the specified player from the user's voice targets.
---
---Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER_BY_SERVER_ID](#\_0x25F2B65F)
---
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param serverId number The player's server id to remove from the target.
function MumbleRemoveVoiceTargetPlayerByServerId(targetId, serverId) end

---**`CFX` `client` [`0xD932A3F3`](https://docs.fivem.net/natives/?_0xD932A3F3)**
---
---@param state boolean Voice chat state.
function MumbleSetActive(state) end

---**`CFX` `client` [`0x1B1052E2`](https://docs.fivem.net/natives/?_0x1B1052E2)**
---
---Sets the current input distance. The player will be able to talk to other players within this distance.
---
---@param distance number The input distance.
function MumbleSetAudioInputDistance(distance) end

---**`CFX` `client` [`0x6383526B`](https://docs.fivem.net/natives/?_0x6383526B)**
---
---Use this native to disable noise suppression and high pass filters.
---
---The possible intents for this are as follows (backticks are used to represent hashes):
---
---| Index | Description |
---|-|-|
---| \`speech\` | Default intent |
---| \`music\` | Disable noise suppression and high pass filter |
---
---Example code:
---```lua
----- disable noise suppression and high pass filter
---MumbleSetAudioInputIntent(`music`)
---
----- set the default intent (enable noise suppression and high pass filter)
---MumbleSetAudioInputIntent(`speech`)
---```
---
---@param intentHash Hash The intent hash.
function MumbleSetAudioInputIntent(intentHash) end

---**`CFX` `client` [`0x74C597D9`](https://docs.fivem.net/natives/?_0x74C597D9)**
---
---Sets the current output distance. The player will be able to hear other players talking within this distance.
---
---@param distance number The output distance.
function MumbleSetAudioOutputDistance(distance) end

---**`CFX` `client` [`0xE6EB2CD8`](https://docs.fivem.net/natives/?_0xE6EB2CD8)**
---
---Changes the Mumble server address to connect to, and reconnects to the new address.
---
---@param address string The address of the mumble server.
---@param port number The port of the mumble server.
function MumbleSetServerAddress(address, port) end

---**`CFX` `client` [`0xFE3A3054`](https://docs.fivem.net/natives/?_0xFE3A3054)**
---
---Sets the audio submix ID for a specified player using Mumble 'Native Audio' functionality.
---
---@param serverId number The player's server ID.
---@param submixId number The submix ID.
function MumbleSetSubmixForServerId(serverId, submixId) end

---**`CFX` `client` [`0x74E927B0`](https://docs.fivem.net/natives/?_0x74E927B0)**
---
---@param value number Proximity value.
function MumbleSetTalkerProximity(value) end

---**`CFX` `client` [`0x8737EEE8`](https://docs.fivem.net/natives/?_0x8737EEE8)**
---
---@param channel number A game voice channel ID.
function MumbleSetVoiceChannel(channel) end

---**`CFX` `client` [`0x960A4A95`](https://docs.fivem.net/natives/?_0x960A4A95)**
---
---Sets the current Mumble voice target ID to broadcast voice to.
---
---@param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive). 0 disables voice targets, and 31 is server loopback.
function MumbleSetVoiceTarget(targetId) end

---**`CFX` `client` [`0x61C309E3`](https://docs.fivem.net/natives/?_0x61C309E3)**
---
---Overrides the output volume for a particular player on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
---
---Set to -1.0 to reset the Volume override.
---
---@param player Player A game player index.
---@param volume number The volume, ranging from 0.0 to 1.0 (or above).
function MumbleSetVolumeOverride(player, volume) end

---**`CFX` `client` [`0xCE8E25B4`](https://docs.fivem.net/natives/?_0xCE8E25B4)**
---
---Overrides the output volume for a particular player with the specified server id and player name on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
---
---@param serverId number The player's server id.
---@param volume number The volume, ranging from 0.0 to 1.0 (or above).
function MumbleSetVolumeOverrideByServerId(serverId, volume) end

---**`CFX` `shared` [`0x526FEE31`](https://docs.fivem.net/natives/?_0x526FEE31)**
---
---Returns the owner ID of the specified entity.
---
---@param entity Entity The entity to get the owner for.
---@return number # On the server, the server ID of the entity owner. On the client, returns the player/slot ID of the entity owner.
function NetworkGetEntityOwner(entity) end

---**`CFX` `client` [`0x90A9E0B2`](https://docs.fivem.net/natives/?_0x90A9E0B2)**
---
---Sets whether peds can stand on top of *all* vehicles without falling off.
---
---Note this flag is not replicated automatically, you will have to manually do so.
---
---@param flag boolean true to override, false to use default game behavior.
function OverridePedsCanStandOnTopFlag(flag) end

---**`CFX` `client` [`0xD3BC438F`](https://docs.fivem.net/natives/?_0xD3BC438F)**
---
---Replaces the `popgroups` (CPopGroupList) meta file with the file in the specified path.
---
---Example code:
---```lua
----- fxmanifest.lua:
---file 'popgroups_dlc.xml'
---
----- client.lua:
---OverridePopGroups('popgroups_dlc.xml')
---
----- restore the original after five minutes
---Wait(1000 * 60 * 5)
---OverridePopGroups(nil)
---```
---
---@param path string The file path to load (`popgroups`, `@resource/popgroups`), or `null` to reload the default population groups file.
function OverridePopGroups(path) end

---**`CFX` `client` [`0x7FA03E76`](https://docs.fivem.net/natives/?_0x7FA03E76)**
---
---Overrides whether or not peds can stand on top of the specified vehicle.
---
---Note this flag is not replicated automatically, you will have to manually do so.
---
---@param vehicle Vehicle The vehicle.
---@param can boolean Can they?
function OverrideVehiclePedsCanStandOnTopFlag(vehicle, can) end

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

---**`CFX` `client` [`0x3C2F9037`](https://docs.fivem.net/natives/?_0x3C2F9037)**
---
---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Registers a set of archetypes with the game engine. These should match `CBaseArchetypeDef` class information from the game.
---
---Example code:
---```lua
---RegisterArchetypes(function()
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
---end)
---```
---
---@param factory function A function returning a list of archetypes.
function RegisterArchetypes(factory) end

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

---**`CFX` `client` [`0x410DA7D3`](https://docs.fivem.net/natives/?_0x410DA7D3)**
---
---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Registers a set of entities with the game engine. These should match `CEntityDef` class information from the game.
---At this time, this function **should not be used in a live environment**.
---
---@param factory function A function returning a list of entities.
function RegisterEntities(factory) end

---**`CFX` `client` [`0x1B3A363`](https://docs.fivem.net/natives/?_0x1B3A363)**
---
---Registers a specified .gfx file as GFx font library.
---The .gfx file has to be registered with the streamer already.
---
---@param fileName string The name of the .gfx file, without extension.
function RegisterFontFile(fileName) end

---**`CFX` `client` [`0xACF6D8EE`](https://docs.fivem.net/natives/?_0xACF6D8EE)**
---
---Registers a specified font name for use with text draw commands.
---
---@param fontName string The name of the font in the GFx font library.
---@return number # An index to use with [SET_TEXT_FONT](#\_0x66E0276CC5F6B9DA) and similar natives.
function RegisterFontId(fontName) end

---**`CFX` `client` [`0xD7664FD1`](https://docs.fivem.net/natives/?_0xD7664FD1)**
---
---Registers a key mapping for the current resource.
---
---See the related [cookbook post](https://cookbook.fivem.net/2020/01/06/using-the-new-console-key-bindings/) for more information.
---
---Example code:
---```lua
---local handsUp = false
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
---RegisterKeyMapping('+handsup', 'Hands Up', 'keyboard', 'i')
---```
---
---@param commandString string The command to execute, and the identifier of the binding.
---@param description string A description for in the settings menu.
---@param defaultMapper string The [mapper ID](https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/) to use for the default binding, e.g. `keyboard`.
---@param defaultParameter string The [IO parameter ID](https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/) to use for the default binding, e.g. `f3`.
function RegisterKeyMapping(commandString, description, defaultMapper, defaultParameter) end

---**`CFX` `client` [`0xC59B980C`](https://docs.fivem.net/natives/?_0xC59B980C)**
---
---@param callbackType string
---@param callback function
function RegisterNuiCallback(callbackType, callback) end

---**`CFX` `client` [`0xCD03CDA9`](https://docs.fivem.net/natives/?_0xCD03CDA9)**
---
---@param callbackType string
function RegisterNuiCallbackType(callbackType) end

---**`CFX` `client` [`0xA8AE9C2F`](https://docs.fivem.net/natives/?_0xA8AE9C2F)**
---
---@param callbackType string
---@param callback function
function RegisterRawNuiCallback(callbackType, callback) end

---**`CFX` `shared` [`0xD233A168`](https://docs.fivem.net/natives/?_0xD233A168)**
---
---An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
---
---@param eventName string An event name, or "\*" to disable HLL event filtering for this resource.
function RegisterResourceAsEventHandler(eventName) end

---**`CFX` `client` [`0xCEAD2D4B`](https://docs.fivem.net/natives/?_0xCEAD2D4B)**
---
---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Registers a dynamic streaming asset from the server with the GTA streaming module system.
---
---@param resourceName string The resource to add the asset to.
---@param fileName string A file name in the resource.
---@param cacheString string The string returned from `REGISTER_RESOURCE_ASSET` on the server.
function RegisterStreamingFileFromCache(resourceName, fileName, cacheString) end

---**`CFX` `client` [`0x1493DCC1`](https://docs.fivem.net/natives/?_0x1493DCC1)**
---
---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Registers a KVP value as an asset with the GTA streaming module system. This function currently won't work.
---
---@param kvsKey string The KVP key in the current resource to register as an asset.
function RegisterStreamingFileFromKvs(kvsKey) end

---**`CFX` `client` [`0xF44BFB95`](https://docs.fivem.net/natives/?_0xF44BFB95)**
---
---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Registers a file from an URL as a streaming asset in the GTA streaming subsystem. This will asynchronously register the asset, and caching is done based on the URL itself - cache headers are ignored.
---
---Use `IS_STREAMING_FILE_READY` to check if the asset has been registered successfully.
---
---@param registerAs string The file name to register as, for example `asset.ydr`.
---@param url string The URL to fetch the asset from.
function RegisterStreamingFileFromUrl(registerAs, url) end

---**`CFX` `client` [`0x7BCAA6E7`](https://docs.fivem.net/natives/?_0x7BCAA6E7)**
---
---Removes a dry volume from the game session.
---See CREATE_DRY_VOLUME for more info
---
---@param handle number The handle of the dry volume that needs to be removed.
function RemoveDryVolume(handle) end

---**`CFX` `client` [`0xA896B20A`](https://docs.fivem.net/natives/?_0xA896B20A)**
---
---Experimental natives, please do not use in a live environment.
---
---@param origTxd string
---@param origTxn string
function RemoveReplaceTexture(origTxd, origTxn) end

---**`CFX` `shared` [`0xD36BE661`](https://docs.fivem.net/natives/?_0xD36BE661)**
---
---**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
---Removes a handler for changes to a state bag.
---
---@param cookie number The cookie.
function RemoveStateBagChangeHandler(cookie) end

---**`CFX` `client` [`0xE7490533`](https://docs.fivem.net/natives/?_0xE7490533)**
---
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
---
---Example code:
---```lua
----- fxmanifest.lua
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
---end)
---```
---
---@param setName string The name of the file set as specified in `fxmanifest.lua`.
---@return boolean # `TRUE` if the set is mounted, `FALSE` if the request is still pending.
function RequestResourceFileSet(setName) end

---**`CFX` `client` [`0x6D712937`](https://docs.fivem.net/natives/?_0x6D712937)**
---
---Resets parameters which is used by the game for checking is ped needs to fly through windscreen after a crash to default values.
---
function ResetFlyThroughWindscreenParams() end

---**`CFX` `client` [`0x8143FA4F`](https://docs.fivem.net/natives/?_0x8143FA4F)**
---
---Resets mapdata entity transform matrix to its original state.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---
---@param mapDataHash number A mapdata hash from `mapDataLoaded` event.
---@param entityInternalIdx number An internal entity's index.
---@return boolean # True if successful, false if not.
function ResetMapdataEntityMatrix(mapDataHash, entityInternalIdx) end

---**`CFX` `client` [`0x11A5B7ED`](https://docs.fivem.net/natives/?_0x11A5B7ED)**
---
---Resets values from the zoom level data by index to defaults from mapzoomdata.meta.
---
---@param index number Zoom level index.
function ResetMapZoomDataLevel(index) end

---**`CFX` `client` [`0x79A12861`](https://docs.fivem.net/natives/?_0x79A12861)**
---
---Restores an overridden ped model personality type to the default value.
---
---@param modelHash Hash Ped's model.
function ResetPedModelPersonality(modelHash) end

---**`CFX` `client` [`0xDF62CFE2`](https://docs.fivem.net/natives/?_0xDF62CFE2)**
---
---Resets whether or not peds can stand on top of the specified vehicle.
---
---Note this flag is not replicated automatically, you will have to manually do so.
---
---@param vehicle Vehicle The vehicle.
function ResetVehiclePedsCanStandOnTopFlag(vehicle) end

---**`CFX` `client` [`0x3DD8130F`](https://docs.fivem.net/natives/?_0x3DD8130F)**
---
---Gets the selected entity at the current mouse cursor position, and changes the current selection depth. This function supports SDK infrastructure and is not intended to be used directly from your code.
---
---@param hitFlags number A bit mask of entity types to match.
---@param precise boolean Whether to do a *precise* test, i.e. of visual coordinates, too.
---@return Entity # An entity handle, or zero.
function SelectEntityAtCursor(hitFlags, precise) end

---**`CFX` `client` [`0xAFE8D405`](https://docs.fivem.net/natives/?_0xAFE8D405)**
---
---Gets the selected entity at the specified mouse cursor position, and changes the current selection depth. This function supports SDK infrastructure and is not intended to be used directly from your code.
---
---@param fracX number Mouse cursor X fraction.
---@param fracY number Mouse cursor Y fraction.
---@param hitFlags number A bit mask of entity types to match.
---@param precise boolean Whether to do a *precise* test, i.e. of visual coordinates, too.
---@return Entity # An entity handle, or zero.
function SelectEntityAtPos(fracX, fracY, hitFlags, precise) end

---**`CFX` `client` [`0xCD380DA9`](https://docs.fivem.net/natives/?_0xCD380DA9)**
---
---Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
---
---@param duiObject number The DUI browser handle.
---@param jsonString string The message, encoded as JSON.
function SendDuiMessage(duiObject, jsonString) end

---**`CFX` `client` [`0x5D01F191`](https://docs.fivem.net/natives/?_0x5D01F191)**
---
---Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
---
---@param duiObject number The DUI browser handle.
---@param button string Either `'left'`, `'middle'` or `'right'`.
function SendDuiMouseDown(duiObject, button) end

---**`CFX` `client` [`0xD9D7A0AA`](https://docs.fivem.net/natives/?_0xD9D7A0AA)**
---
---Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
---
---@param duiObject number The DUI browser handle.
---@param x number The mouse X position.
---@param y number The mouse Y position.
function SendDuiMouseMove(duiObject, x, y) end

---**`CFX` `client` [`0x1D735B93`](https://docs.fivem.net/natives/?_0x1D735B93)**
---
---Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
---
---@param duiObject number The DUI browser handle.
---@param button string Either `'left'`, `'middle'` or `'right'`.
function SendDuiMouseUp(duiObject, button) end

---**`CFX` `client` [`0x2D62133A`](https://docs.fivem.net/natives/?_0x2D62133A)**
---
---Injects a 'mouse wheel' event for a DUI object.
---
---@param duiObject number The DUI browser handle.
---@param deltaY number The wheel Y delta.
---@param deltaX number The wheel X delta.
function SendDuiMouseWheel(duiObject, deltaY, deltaX) end

---**`CFX` `client` [`0x8BBE6CC0`](https://docs.fivem.net/natives/?_0x8BBE6CC0)**
---
---Sends a message to the `loadingScreen` NUI frame, which contains the HTML page referenced in `loadscreen` resources.
---
---@param jsonString string The JSON-encoded message.
---@return boolean # A success value.
function SendLoadingScreenMessage(jsonString) end

---**`CFX` `client` [`0x78608ACB`](https://docs.fivem.net/natives/?_0x78608ACB)**
---
---@param jsonString string
---@return boolean
function SendNuiMessage(jsonString) end

---**`CFX` `client` [`0xA42A3DBF`](https://docs.fivem.net/natives/?_0xA42A3DBF)**
---
---Adds a cooldown between instances of moving and then aiming.
---Can be optionally used to hinder 'speedboosting'
---To turn off, set value to 0
---
---@param value number Number of milliseconds between allowed aiming
function SetAimCooldown(value) end

---**`CFX` `client` [`0x9A209B3C`](https://docs.fivem.net/natives/?_0x9A209B3C)**
---
---Sets a floating-point parameter for a submix effect.
---
---@param submixId number The submix.
---@param effectSlot number The effect slot for the submix. It is expected that the effect is set in this slot beforehand.
---@param paramIndex number The parameter index for the effect.
---@param paramValue number The parameter value to set.
function SetAudioSubmixEffectParamFloat(submixId, effectSlot, paramIndex, paramValue) end

---**`CFX` `client` [`0x77FAE2B8`](https://docs.fivem.net/natives/?_0x77FAE2B8)**
---
---Sets an integer parameter for a submix effect.
---
---@param submixId number The submix.
---@param effectSlot number The effect slot for the submix. It is expected that the effect is set in this slot beforehand.
---@param paramIndex number The parameter index for the effect.
---@param paramValue number The parameter value to set.
function SetAudioSubmixEffectParamInt(submixId, effectSlot, paramIndex, paramValue) end

---**`CFX` `client` [`0xAAA94D53`](https://docs.fivem.net/natives/?_0xAAA94D53)**
---
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
---
---Example code:
---```lua
----- we want to change the master output
---local submix = 0
---
----- add a RadioFX effect to slot 0
---SetAudioSubmixEffectRadioFx(submix, 0)
---
----- set the default values
---SetAudioSubmixEffectParamInt(submix, 0, `default`, 1)
---```
---
---@param submixId number The submix.
---@param effectSlot number The effect slot for the submix.
function SetAudioSubmixEffectRadioFx(submixId, effectSlot) end

---**`CFX` `client` [`0x825DC0D1`](https://docs.fivem.net/natives/?_0x825DC0D1)**
---
---Sets the volumes for the sound channels in a submix effect.
---Values can be between 0.0 and 1.0.
---Channel 5 and channel 6 are not used in voice chat but are believed to be center and LFE channels.
---Output slot starts at 0 for the first ADD_AUDIO_SUBMIX_OUTPUT call then incremented by 1 on each subsequent call.
---
---@param submixId number The submix.
---@param outputSlot number The output slot index.
---@param frontLeftVolume number The volume for the front left channel.
---@param frontRightVolume number The volume for the front right channel.
---@param rearLeftVolume number The volume for the rear left channel.
---@param rearRightVolume number The volume for the rear right channel.
---@param channel5Volume number The volume for channel 5.
---@param channel6Volume number The volume for channel 6.
function SetAudioSubmixOutputVolumes(
	submixId,
	outputSlot,
	frontLeftVolume,
	frontRightVolume,
	rearLeftVolume,
	rearRightVolume,
	channel5Volume,
	channel6Volume
)
end

---**`CFX` `client` [`0x8A7A8DAC`](https://docs.fivem.net/natives/?_0x8A7A8DAC)**
---
---@param x number X position.
---@param y number Y position.
---@return boolean # A boolean.
function SetCursorLocation(x, y) end

---**`CFX` `client` [`0x79780FD2`](https://docs.fivem.net/natives/?_0x79780FD2)**
---
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
---
---Example code:
---```lua
---SetDefaultVehicleNumberPlateTextPattern(-1, ' AAA111 ')
---SetDefaultVehicleNumberPlateTextPattern(4 , ' AAAAAA ')
---
----- fixed characters: plate will be FAYUM69C for example
---SetDefaultVehicleNumberPlateTextPattern(-1, 'F^AYUM11A')
---```
---
---@param plateIndex number A plate index, or `-1` to set a default for any indices that do not have a specific value.
---@param pattern string A number plate pattern string, or a null value to reset to default.
function SetDefaultVehicleNumberPlateTextPattern(plateIndex, pattern) end

---**`CFX` `client` [`0x6A02254D`](https://docs.fivem.net/natives/?_0x6A02254D)**
---
---This native sets the app id for the discord rich presence implementation.
---
---@param appId string A valid Discord API App Id, can be generated at https://discordapp.com/developers/applications/
function SetDiscordAppId(appId) end

---**`CFX` `client` [`0xCBBC3FAC`](https://docs.fivem.net/natives/?_0xCBBC3FAC)**
---
---Sets a clickable button to be displayed in a player's Discord rich presence.
---
---@param index number The button index, either 0 or 1.
---@param label string The text to display on the button.
---@param url string The URL to open when clicking the button. This has to start with `fivem://connect/` or `https://`.
function SetDiscordRichPresenceAction(index, label, url) end

---**`CFX` `client` [`0x53DFD530`](https://docs.fivem.net/natives/?_0x53DFD530)**
---
---This native sets the image asset for the discord rich presence implementation.
---
---@param assetName string The name of a valid asset registered on Discordapp's developer dashboard. note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
function SetDiscordRichPresenceAsset(assetName) end

---**`CFX` `client` [`0xF61D04C4`](https://docs.fivem.net/natives/?_0xF61D04C4)**
---
---This native sets the small image asset for the discord rich presence implementation.
---
---@param assetName string The name of a valid asset registered on Discordapp's developer dashboard. Note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
function SetDiscordRichPresenceAssetSmall(assetName) end

---**`CFX` `client` [`0x35E62B6A`](https://docs.fivem.net/natives/?_0x35E62B6A)**
---
---This native sets the hover text of the small image asset for the discord rich presence implementation.
---
---@param text string Text to be displayed when hovering over small image asset. Note that you must also set a valid small image asset using the SET_DISCORD_RICH_PRESENCE_ASSET_SMALL native.
function SetDiscordRichPresenceAssetSmallText(text) end

---**`CFX` `client` [`0xB029D2FA`](https://docs.fivem.net/natives/?_0xB029D2FA)**
---
---This native sets the hover text of the image asset for the discord rich presence implementation.
---
---@param text string Text to be displayed when hovering over image asset. Note that you must also set a valid image asset using the SET_DISCORD_RICH_PRESENCE_ASSET native.
function SetDiscordRichPresenceAssetText(text) end

---**`CFX` `client` [`0xF761D9F3`](https://docs.fivem.net/natives/?_0xF761D9F3)**
---
---Navigates the specified DUI browser to a different URL.
---
---@param duiObject number The DUI browser handle.
---@param url string The new URL.
function SetDuiUrl(duiObject, url) end

---**`CFX` `client` [`0x76180407`](https://docs.fivem.net/natives/?_0x76180407)**
---
---Draws an outline around a given entity. This function supports SDK infrastructure and is not intended to be used directly from your code.
---
---@param entity Entity A valid entity handle.
---@param enabled boolean Whether or not to draw an outline.
function SetEntityDrawOutline(entity, enabled) end

---**`CFX` `client` [`0xB41A56C2`](https://docs.fivem.net/natives/?_0xB41A56C2)**
---
---Sets color for entity outline. `255, 0, 255, 255` by default.
---
---@param red number Red component of color.
---@param green number Green component of color.
---@param blue number Blue component of color.
---@param alpha number Alpha component of color, ignored for shader `0`.
function SetEntityDrawOutlineColor(red, green, blue, alpha) end

---**`CFX` `client` [`0x5261A01A`](https://docs.fivem.net/natives/?_0x5261A01A)**
---
---Sets variant of shader that will be used to draw entity outline.
---
---Variants are:
---
---*   **0**: Default value, gauss shader.
---*   **1**: 2px wide solid color outline.
---*   **2**: Fullscreen solid color except for entity.
---
---@param shader number An outline shader variant.
function SetEntityDrawOutlineShader(shader) end

---**`CFX` `client` [`0xFB0639B`](https://docs.fivem.net/natives/?_0xFB0639B)**
---
---Sets an entity's matrix. Arguments are in the same order as with GET_ENTITY_MATRIX.
---
---@param entity Entity A valid entity handle.
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

---**`CFX` `client` [`0x7635B349`](https://docs.fivem.net/natives/?_0x7635B349)**
---
---Allows Weapon-Flashlight beams to stay visible while moving. Normally it only stays on while aiming.
---
---@param state boolean On/Off
function SetFlashLightKeepOnWhileMoving(state) end

---**`CFX` `client` [`0x4D3118ED`](https://docs.fivem.net/natives/?_0x4D3118ED)**
---
---Sets some in-game parameters which is used for checks is ped needs to fly through windscreen after a crash.
---
---@param vehMinSpeed number Vehicle minimum speed (default 35.0).
---@param unkMinSpeed number Unknown minimum speed (default 40.0).
---@param unkModifier number Unknown modifier (default 17.0).
---@param minDamage number Minimum damage (default 2000.0).
---@return boolean # A bool indicating if parameters was set successfully.
function SetFlyThroughWindscreenParams(vehMinSpeed, unkMinSpeed, unkModifier, minDamage) end

---**`CFX` `client` [`0xFE8064E3`](https://docs.fivem.net/natives/?_0xFE8064E3)**
---
---Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
---Example: `SetHandlingField('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
---
---@param vehicle string The vehicle class to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value any The value to set.
function SetHandlingField(vehicle, class_, fieldName, value) end

---**`CFX` `client` [`0x90DD01C`](https://docs.fivem.net/natives/?_0x90DD01C)**
---
---Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
---Example: `SetHandlingFloat('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
---
---@param vehicle string The vehicle class to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value number The floating-point value to set.
function SetHandlingFloat(vehicle, class_, fieldName, value) end

---**`CFX` `client` [`0x8AB3F46C`](https://docs.fivem.net/natives/?_0x8AB3F46C)**
---
---Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
---
---@param vehicle string The vehicle class to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value number The integer value to set.
function SetHandlingInt(vehicle, class_, fieldName, value) end

---**`CFX` `client` [`0x7F9D543`](https://docs.fivem.net/natives/?_0x7F9D543)**
---
---Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
---Example: `SetHandlingVector('AIRTUG', 'CHandlingData', 'vecCentreOfMassOffset', vector3(0.0, 0.0, -5.0))`
---
---@param vehicle string The vehicle class to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value vector3 The Vector3 value to set.
function SetHandlingVector(vehicle, class_, fieldName, value) end

---**`CFX` `client` [`0x85A10FFD`](https://docs.fivem.net/natives/?_0x85A10FFD)**
---
---Sets whether or not ownership checks should be performed while trying to stow a carriable on a hunting wagon.
---
---@param ignore boolean true to let the local player stow carriables on any hunting wagon, false to use the default behaviour.
function SetIgnoreVehicleOwnershipForStowing(ignore) end

---**`CFX` `client` [`0x87F43553`](https://docs.fivem.net/natives/?_0x87F43553)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
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
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param cornerIndex number Interior corner index.
---@param posX number
---@param posY number
---@param posZ number
function SetInteriorPortalCornerPosition(interiorId, portalIndex, cornerIndex, posX, posY, posZ) end

---**`CFX` `client` [`0x8349CD76`](https://docs.fivem.net/natives/?_0x8349CD76)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local portalIndex = 0
---
---if interiorId ~= 0 then
---  local count = GetInteriorPortalEntityCount(interiorId, portalIndex)
---  for i=0, count-1 do
---    SetInteriorPortalEntityFlag(interiorId, portalIndex, i, 0)
---  end
---  RefreshInterior(interiorId)
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param entityIndex number Portal entity index.
---@param flag number New flag value.
function SetInteriorPortalEntityFlag(interiorId, portalIndex, entityIndex, flag) end

---**`CFX` `client` [`0x88B2355E`](https://docs.fivem.net/natives/?_0x88B2355E)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local portalIndex = 0
---
---  SetInteriorPortalFlag(interiorId, portalIndex, 1)
---  RefreshInterior(interiorId)
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param flag number New flag value.
function SetInteriorPortalFlag(interiorId, portalIndex, flag) end

---**`CFX` `client` [`0x298FC783`](https://docs.fivem.net/natives/?_0x298FC783)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local portalIndex = 0
---
---  SetInteriorPortalRoomFrom(interiorId, portalIndex, 0)
---  RefreshInterior(interiorId)
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param roomFrom number New value.
function SetInteriorPortalRoomFrom(interiorId, portalIndex, roomFrom) end

---**`CFX` `client` [`0x58982680`](https://docs.fivem.net/natives/?_0x58982680)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  local portalIndex = 0
---
---  SetInteriorPortalRoomTo(interiorId, portalIndex, 0)
---  RefreshInterior(interiorId)
---end
---```
---
---@param interiorId number The target interior.
---@param portalIndex number Interior portal index.
---@param roomTo number New value.
function SetInteriorPortalRoomTo(interiorId, portalIndex, roomTo) end

---**`CFX` `client` [`0x4FDCF51E`](https://docs.fivem.net/natives/?_0x4FDCF51E)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---
---if interiorId ~= 0 then
---  SetInteriorRoomExtents(interiorId, 0, -999.0, -999.0, -100.0, 999.0, 999.0, 100.0) -- 0 is a limbo usually
---  RefreshInterior(interiorId)
---end
---```
---
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@param bbMinX number
---@param bbMinY number
---@param bbMinZ number
---@param bbMaxX number
---@param bbMaxY number
---@param bbMaxZ number
function SetInteriorRoomExtents(interiorId, roomIndex, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ) end

---**`CFX` `client` [`0x5518D60B`](https://docs.fivem.net/natives/?_0x5518D60B)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  SetInteriorRoomFlag(interiorId, roomId, 64)
---  RefreshInterior(interiorId)
---end
---```
---
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@param flag number New flag value.
function SetInteriorRoomFlag(interiorId, roomIndex, flag) end

---**`CFX` `client` [`0x31C9A848`](https://docs.fivem.net/natives/?_0x31C9A848)**
---
---Example code:
---```lua
---local playerPed = PlayerPedId()
---local interiorId = GetInteriorFromEntity(playerPed)
---local roomHash = GetRoomKeyFromEntity(playerPed)
---local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)
---
---if roomId ~= -1 then
---  local timecycleHash = GetHashKey("scanline_cam")
---  SetInteriorRoomTimecycle(interiorId, roomId, timecycleHash)
---  RefreshInterior(interiorId)
---end
---```
---
---@param interiorId number The target interior.
---@param roomIndex number Interior room index.
---@param timecycleHash number Timecycle hash.
function SetInteriorRoomTimecycle(interiorId, roomIndex, timecycleHash) end

---**`CFX` `client` [`0x1722C938`](https://docs.fivem.net/natives/?_0x1722C938)**
---
---Sets whether or not `SHUTDOWN_LOADING_SCREEN` automatically shuts down the NUI frame for the loading screen. If this is enabled,
---you will have to manually invoke `SHUTDOWN_LOADING_SCREEN_NUI` whenever you want to hide the NUI loading screen.
---
---@param manualShutdown boolean TRUE to manually shut down the loading screen NUI.
function SetManualShutdownLoadingScreenNui(manualShutdown) end

---**`CFX` `client` [`0x447C718E`](https://docs.fivem.net/natives/?_0x447C718E)**
---
---Sets values to the zoom level data by index.
---
---@param index number Zoom level index.
---@param zoomScale number fZoomScale value.
---@param zoomSpeed number fZoomSpeed value.
---@param scrollSpeed number fScrollSpeed value.
---@param tilesX number vTiles X.
---@param tilesY number vTiles Y.
function SetMapZoomDataLevel(index, zoomScale, zoomSpeed, scrollSpeed, tilesX, tilesY) end

---**`CFX` `client` [`0x36CA2554`](https://docs.fivem.net/natives/?_0x36CA2554)**
---
---Overrides how many real ms are equal to one game minute.
---A setter for [`GetMillisecondsPerGameMinute`](#\_0x2F8B4D1C595B11DB).
---
---@param value number Milliseconds.
function SetMillisecondsPerGameMinute(value) end

---**`CFX` `client` [`0xB8B4490C`](https://docs.fivem.net/natives/?_0xB8B4490C)**
---
---Sets the type for the minimap blip clipping object to be either rectangular or rounded.
---
---@param type number 0 for rectangular, 1 for rounded.
function SetMinimapClipType(type) end

---**`CFX` `client` [`0x3E882B23`](https://docs.fivem.net/natives/?_0x3E882B23)**
---
---Overrides the minimap component data (from `common:/data/ui/frontend.xml`) for a specified component.
---
---@param name string The name of the minimap component to override.
---@param alignX string Equivalent to the `alignX` field in `frontend.xml`.
---@param alignY string Equivalent to the `alignY` field in `frontend.xml`.
---@param posX number Equivalent to the `posX` field in `frontend.xml`.
---@param posY number Equivalent to the `posY` field in `frontend.xml`.
---@param sizeX number Equivalent to the `sizeX` field in `frontend.xml`.
---@param sizeY number Equivalent to the `sizeY` field in `frontend.xml`.
function SetMinimapComponentPosition(name, alignX, alignY, posX, posY, sizeX, sizeY) end

---**`CFX` `client` [`0x6A48B3CA`](https://docs.fivem.net/natives/?_0x6A48B3CA)**
---
---Sets the display info for a minimap overlay.
---
---@param miniMap number The minimap overlay ID.
---@param x number The X position for the overlay. This is equivalent to a game coordinate X.
---@param y number The Y position for the overlay. This is equivalent to a game coordinate Y, except that it's inverted (gfxY = -gameY).
---@param xScale number The X scale for the overlay. This is equivalent to the Flash \_xscale property, therefore 100 = 100%.
---@param yScale number The Y scale for the overlay. This is equivalent to the Flash \_yscale property.
---@param alpha number The alpha value for the overlay. This is equivalent to the Flash \_alpha property, therefore 100 = 100%.
function SetMinimapOverlayDisplay(miniMap, x, y, xScale, yScale, alpha) end

---**`CFX` `client` [`0x5FB53015`](https://docs.fivem.net/natives/?_0x5FB53015)**
---
---Possible Types:
---
---```
---0 = Off,
---1 = Regular,
---2 = Expanded,
---3 = Simple,
---```
---
---@param type number Type to set the minimap to.
function SetMinimapType(type) end

---**`CFX` `client` [`0x7F6B8D75`](https://docs.fivem.net/natives/?_0x7F6B8D75)**
---
---@param modelHash Hash
---@param ratePerSecond number
---@param headlightRotation number
---@param invertRotation boolean
function SetModelHeadlightConfiguration(modelHash, ratePerSecond, headlightRotation, invertRotation) end

---**`CFX` `client` [`0x7A27BC93`](https://docs.fivem.net/natives/?_0x7A27BC93)**
---
---Sets whether all tags should group (normal game behavior) or should remain independent and above each ped's respective head when in a vehicle.
---
---@param enabled boolean Whether tags should use normal game behavior. Default is true.
function SetMpGamerTagsUseVehicleBehavior(enabled) end

---**`CFX` `client` [`0xD61676B3`](https://docs.fivem.net/natives/?_0xD61676B3)**
---
---Sets the maximum distance at which all tags will be visible and which beyond will not be displayed. Distance is measured from the camera position.
---
---@param distance number The visible distance. Default is 100.0f.
function SetMpGamerTagsVisibleDistance(distance) end

---**`CFX` `client` [`0x55188D2D`](https://docs.fivem.net/natives/?_0x55188D2D)**
---
---@param enabled boolean
function SetNetworkWalkMode(enabled) end

---**`CFX` `client` [`0x5B98AE30`](https://docs.fivem.net/natives/?_0x5B98AE30)**
---
---@param hasFocus boolean
---@param hasCursor boolean
function SetNuiFocus(hasFocus, hasCursor) end

---**`CFX` `client` [`0x3FF5E5F8`](https://docs.fivem.net/natives/?_0x3FF5E5F8)**
---
---@param keepInput boolean
function SetNuiFocusKeepInput(keepInput) end

---**`CFX` `client` [`0x46F6B38B`](https://docs.fivem.net/natives/?_0x46F6B38B)**
---
---Overrides a ped model personality type.
---
---@param modelHash Hash Ped's model.
---@param personalityHash Hash Personality hash.
function SetPedModelPersonality(modelHash, personalityHash) end

---**`CFX` `client` [`0x35594F67`](https://docs.fivem.net/natives/?_0x35594F67)**
---
---@param playerId Player The player index
---@param maxStamina number The value you want to set
---@return boolean # Did you manage to set the value.
function SetPlayerMaxStamina(playerId, maxStamina) end

---**`CFX` `client` [`0xA9EC16C7`](https://docs.fivem.net/natives/?_0xA9EC16C7)**
---
---@param playerId Player The player index
---@param stamina number The value you want to set
---@return boolean # Did you manage to set the value.
function SetPlayerStamina(playerId, stamina) end

---**`CFX` `client` [`0xFC02CAF6`](https://docs.fivem.net/natives/?_0xFC02CAF6)**
---
---the status of default voip system. It affects on `NETWORK_IS_PLAYER_TALKING` and `mp_facial` animation.
---This function doesn't need to be called every frame, it works like a switcher.
---
---@param player Player The target player.
---@param state boolean Overriding state.
function SetPlayerTalkingOverride(player, state) end

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

---**`CFX` `client` [`0x7BDCBD45`](https://docs.fivem.net/natives/?_0x7BDCBD45)**
---
---Sets the player's rich presence detail state for social platform providers to a specified string.
---
---@param presenceState string The rich presence string to set.
function SetRichPresence(presenceState) end

---**`CFX` `client` [`0xE62FC73`](https://docs.fivem.net/natives/?_0xE62FC73)**
---
---Toggles whether the usage of [ADD_ROPE](#\_0xE832D760399EB220) should create an underlying CNetworkRopeWorldStateData. By default this is set to false.
---
---@param shouldCreate boolean Whether to create an underlying network world state
function SetRopesCreateNetworkWorldState(shouldCreate) end

---**`CFX` `client` [`0x69B680A7`](https://docs.fivem.net/natives/?_0x69B680A7)**
---
---Set's the ropes length change rate, which is the speed that rope should wind if started.
---
---@param rope number The rope to set the length change rate for.
---@param lengthChangeRate number The rope's new length change rate.
function SetRopeLengthChangeRate(rope, lengthChangeRate) end

---**`CFX` `client` [`0x3963D527`](https://docs.fivem.net/natives/?_0x3963D527)**
---
---@param tex number
---@param buffer string
---@param length number
---@return boolean
function SetRuntimeTextureArgbData(tex, buffer, length) end

---**`CFX` `client` [`0x28FC4ECB`](https://docs.fivem.net/natives/?_0x28FC4ECB)**
---
---Replaces the pixel data in a runtime texture with the image data from a file in the current resource, or a data URL.
---
---If the bitmap is a different size compared to the existing texture, it will be resampled.
---
---This command may end up executed asynchronously, and only update the texture data at a later time.
---
---@param tex number A runtime texture handle.
---@param fileName string The file name of an image to load, or a base64 "data:" URL. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.
---@return boolean # TRUE for success, FALSE for failure.
function SetRuntimeTextureImage(tex, fileName) end

---**`CFX` `client` [`0xAB65ACEE`](https://docs.fivem.net/natives/?_0xAB65ACEE)**
---
---Sets a pixel in the specified runtime texture. This will have to be committed using `COMMIT_RUNTIME_TEXTURE` to have any effect.
---
---@param tex number A handle to the runtime texture.
---@param x number The X position of the pixel to change.
---@param y number The Y position of the pixel to change.
---@param r number The new R value (0-255).
---@param g number The new G value (0-255).
---@param b number The new B value (0-255).
---@param a number The new A value (0-255).
function SetRuntimeTexturePixel(tex, x, y, r, g, b, a) end

---**`CFX` `client` [`0xA7DD3209`](https://docs.fivem.net/natives/?_0xA7DD3209)**
---
---@param name string
---@param path string
---@param data string
function SetSnakeoilForEntry(name, path, data) end

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

---**`CFX` `client` [`0x97B2F9F8`](https://docs.fivem.net/natives/?_0x97B2F9F8)**
---
---@param enabled boolean
---@return boolean
function SetTextChatEnabled(enabled) end

---**`CFX` `client` [`0xD4D1BA63`](https://docs.fivem.net/natives/?_0xD4D1BA63)**
---
---Enables or disables whether train doors should be forced open whilst a player is inside the train. This is enabled by default in multiplayer.
---
---@param forceOpen boolean Should force open.
function SetTrainsForceDoorsOpen(forceOpen) end

---**`CFX` `client` [`0x2468DBE8`](https://docs.fivem.net/natives/?_0x2468DBE8)**
---
---Sets the ratio that a door is open for on a train.
---
---Example code:
---```lua
----- open all doors on a train
---local doorCount = GetTrainDoorCount(train)
---for doorIndex = 0, doorCount - 1 do
---    SetTrainDoorOpenRatio(train, doorIndex, 1.0)
---end
---```
---
---@param train Vehicle The train to set the door ratio for.
---@param doorIndex number Zero-based door index.
---@param ratio number A value between 0.0 (fully closed) and 1.0 (fully open).
function SetTrainDoorOpenRatio(train, doorIndex, ratio) end

---**`CFX` `client` [`0xC108EE6F`](https://docs.fivem.net/natives/?_0xC108EE6F)**
---
---@param vehicle Vehicle
---@param time number
function SetVehicleAlarmTimeLeft(vehicle, time) end

---**`CFX` `client` [`0x5F3A3574`](https://docs.fivem.net/natives/?_0x5F3A3574)**
---
---Disables the vehicle from being repaired when a vehicle extra is enabled.
---
---@param vehicle Vehicle The vehicle to set disable auto vehicle repair.
---@param value boolean Setting the value to  true prevents the vehicle from being repaired when a extra is enabled. Setting the value to false allows the vehicle from being repaired when a extra is enabled.
function SetVehicleAutoRepairDisabled(vehicle, value) end

---**`CFX` `client` [`0x2F70ACED`](https://docs.fivem.net/natives/?_0x2F70ACED)**
---
---@param vehicle Vehicle
---@param clutch number
function SetVehicleClutch(vehicle, clutch) end

---**`CFX` `client` [`0x2A01A8FC`](https://docs.fivem.net/natives/?_0x2A01A8FC)**
---
---@param vehicle Vehicle
---@param rpm number
function SetVehicleCurrentRpm(vehicle, rpm) end

---**`CFX` `client` [`0x6C93C4A9`](https://docs.fivem.net/natives/?_0x6C93C4A9)**
---
---@param vehicle Vehicle
---@param temperature number
function SetVehicleEngineTemperature(vehicle, temperature) end

---**`CFX` `client` [`0xBA970511`](https://docs.fivem.net/natives/?_0xBA970511)**
---
---@param vehicle Vehicle
---@param level number
function SetVehicleFuelLevel(vehicle, level) end

---**`CFX` `client` [`0x1A963E58`](https://docs.fivem.net/natives/?_0x1A963E58)**
---
---@param vehicle Vehicle
---@param gravity number
function SetVehicleGravityAmount(vehicle, gravity) end

---**`CFX` `client` [`0x2BA40795`](https://docs.fivem.net/natives/?_0x2BA40795)**
---
---Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FIELD`, this might require some experimentation.
---Example: `SetVehicleHandlingField(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
---
---@param vehicle Vehicle The vehicle to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value any The value to set.
function SetVehicleHandlingField(vehicle, class_, fieldName, value) end

---**`CFX` `client` [`0x488C86D2`](https://docs.fivem.net/natives/?_0x488C86D2)**
---
---Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FLOAT`, this might require some experimentation.
---Example: `SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
---
---@param vehicle Vehicle The vehicle to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value number The floating-point value to set.
function SetVehicleHandlingFloat(vehicle, class_, fieldName, value) end

---**`CFX` `client` [`0xC37F4CF9`](https://docs.fivem.net/natives/?_0xC37F4CF9)**
---
---Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_INT`, this might require some experimentation.
---
---@param vehicle Vehicle The vehicle to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value number The integer value to set.
function SetVehicleHandlingInt(vehicle, class_, fieldName, value) end

---**`CFX` `client` [`0x12497890`](https://docs.fivem.net/natives/?_0x12497890)**
---
---Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_VECTOR`, this might require some experimentation.
---
---@param vehicle Vehicle The vehicle to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value vector3 The Vector3 value to set.
function SetVehicleHandlingVector(vehicle, class_, fieldName, value) end

---**`CFX` `client` [`0x20B1B3E6`](https://docs.fivem.net/natives/?_0x20B1B3E6)**
---
---@param vehicle Vehicle
---@param gear number
function SetVehicleHighGear(vehicle, gear) end

---**`CFX` `client` [`0x90D1CAD1`](https://docs.fivem.net/natives/?_0x90D1CAD1)**
---
---@param vehicle Vehicle
---@param level number
function SetVehicleOilLevel(vehicle, level) end

---**`CFX` `client` [`0xFFCCC2EA`](https://docs.fivem.net/natives/?_0xFFCCC2EA)**
---
---@param vehicle Vehicle
---@param angle number
function SetVehicleSteeringAngle(vehicle, angle) end

---**`CFX` `client` [`0xEB46596F`](https://docs.fivem.net/natives/?_0xEB46596F)**
---
---@param vehicle Vehicle
---@param scale number
function SetVehicleSteeringScale(vehicle, scale) end

---**`CFX` `client` [`0xB3439A01`](https://docs.fivem.net/natives/?_0xB3439A01)**
---
---Sets the height of the vehicle's suspension.
---This changes the same value set by Suspension in the mod shop.
---Negatives values raise the car. Positive values lower the car.
---
---This is change is visual only. The collision of the vehicle will not move.
---
---@param vehicle Vehicle
---@param newHeight number
function SetVehicleSuspensionHeight(vehicle, newHeight) end

---**`CFX` `client` [`0x6485615E`](https://docs.fivem.net/natives/?_0x6485615E)**
---
---@param vehicle Vehicle
---@param pressure number
function SetVehicleTurboPressure(vehicle, pressure) end

---**`CFX` `client` [`0xEAB8DB65`](https://docs.fivem.net/natives/?_0xEAB8DB65)**
---
---Example script: https://pastebin.com/J6XGbkCW
---
---List of known states:
---
---```
---1: Not wheeling.
---65: Vehicle is ready to do wheelie (burnouting).
---129: Vehicle is doing wheelie.
---```
---
---Example code:
---```lua
---Citizen.CreateThread(function()
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
---end)
---```
---
---@param vehicle Vehicle Vehicle
---@param state number Wheelie state
function SetVehicleWheelieState(vehicle, state) end

---**`CFX` `client` [`0xE80F4E31`](https://docs.fivem.net/natives/?_0xE80F4E31)**
---
---Sets brake pressure of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---Normal values around 1.0f
---
---@param vehicle Vehicle
---@param wheelIndex number
---@param pressure number
function SetVehicleWheelBrakePressure(vehicle, wheelIndex, pressure) end

---**`CFX` `client` [`0xD2B9E90D`](https://docs.fivem.net/natives/?_0xD2B9E90D)**
---
---Sets the flags of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@param flags number bit flags
function SetVehicleWheelFlags(vehicle, wheelIndex, flags) end

---**`CFX` `client` [`0xB22ECEFD`](https://docs.fivem.net/natives/?_0xB22ECEFD)**
---
---@param vehicle Vehicle
---@param wheelIndex number
---@param health number
function SetVehicleWheelHealth(vehicle, wheelIndex, health) end

---**`CFX` `client` [`0xBD5291A0`](https://docs.fivem.net/natives/?_0xBD5291A0)**
---
---Sets whether the wheel is powered.
---On all wheel drive cars this works to change which wheels receive power, but if a car's fDriveBiasFront doesn't send power to that wheel, it won't get power anyway. This can be fixed by changing the fDriveBiasFront with SET_VEHICLE_HANDLING_FLOAT.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---This is a shortcut to a flag in SET_VEHICLE_WHEEL_FLAGS.
---
---Example code:
---```lua
---SetVehicleWheelIsPowered(vehicle, 0, true);
---```
---
---@param vehicle Vehicle
---@param wheelIndex number
---@param powered boolean
function SetVehicleWheelIsPowered(vehicle, wheelIndex, powered) end

---**`CFX` `client` [`0xC6146043`](https://docs.fivem.net/natives/?_0xC6146043)**
---
---Sets power being sent to a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@param power number
function SetVehicleWheelPower(vehicle, wheelIndex, power) end

---**`CFX` `client` [`0xF380E184`](https://docs.fivem.net/natives/?_0xF380E184)**
---
---Not sure what this changes, probably determines physical rim size in case the tire is blown.
---
---@param vehicle Vehicle The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@param value number Size of rim collider.
function SetVehicleWheelRimColliderSize(vehicle, wheelIndex, value) end

---**`CFX` `client` [`0x35ED100D`](https://docs.fivem.net/natives/?_0x35ED100D)**
---
---Sets the rotation speed of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@param speed number
function SetVehicleWheelRotationSpeed(vehicle, wheelIndex, speed) end

---**`CFX` `client` [`0x53AB5C35`](https://docs.fivem.net/natives/?_0x53AB5C35)**
---
---Sets vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).
---Only works on non-default wheels.
---Returns whether change was successful (can be false if trying to set size for non-default wheels).
---
---@param vehicle Vehicle The vehicle to set data for.
---@param size number Size of the wheels (usually between 0.5 and 1.5 is reasonable).
---@return boolean # Bool - whether change was successful or not
function SetVehicleWheelSize(vehicle, size) end

---**`CFX` `client` [`0xB962D05C`](https://docs.fivem.net/natives/?_0xB962D05C)**
---
---Use along with SetVehicleWheelSize to resize the wheels (this native sets the collider size affecting physics while SetVehicleWheelSize will change visual size).
---
---@param vehicle Vehicle The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@param value number Radius of tire collider.
function SetVehicleWheelTireColliderSize(vehicle, wheelIndex, value) end

---**`CFX` `client` [`0x47BD0270`](https://docs.fivem.net/natives/?_0x47BD0270)**
---
---Use along with SetVehicleWheelWidth to resize the wheels (this native sets the collider width affecting physics while SetVehicleWheelWidth will change visual width).
---
---@param vehicle Vehicle The vehicle to obtain data for.
---@param wheelIndex number Index of wheel, 0-3.
---@param value number Width of tire collider.
function SetVehicleWheelTireColliderWidth(vehicle, wheelIndex, value) end

---**`CFX` `client` [`0x85C85A3A`](https://docs.fivem.net/natives/?_0x85C85A3A)**
---
---Sets the traction vector length of a wheel.
---Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
---
---@param vehicle Vehicle
---@param wheelIndex number
---@param length number
function SetVehicleWheelTractionVectorLength(vehicle, wheelIndex, length) end

---**`CFX` `client` [`0x64C3F1C0`](https://docs.fivem.net/natives/?_0x64C3F1C0)**
---
---Sets vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).
---Only works on non-default wheels.
---Returns whether change was successful (can be false if trying to set width for non-default wheels).
---
---@param vehicle Vehicle The vehicle to set data for.
---@param width number Width of the wheels (usually between 0.1 and 1.5 is reasonable).
---@return boolean # Bool - whether change was successful or not
function SetVehicleWheelWidth(vehicle, width) end

---**`CFX` `client` [`0xBD6357D`](https://docs.fivem.net/natives/?_0xBD6357D)**
---
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
---
---@param vehicle Vehicle
---@param wheelIndex number
---@param offset number
function SetVehicleWheelXOffset(vehicle, wheelIndex, offset) end

---**`CFX` `client` [`0xC6C2171F`](https://docs.fivem.net/natives/?_0xC6C2171F)**
---
---@param vehicle Vehicle
---@param wheelIndex number
---@param value number
function SetVehicleWheelYRotation(vehicle, wheelIndex, value) end

---**`CFX` `client` [`0x1683E7F0`](https://docs.fivem.net/natives/?_0x1683E7F0)**
---
---Sets custom vehicle xenon lights color, allowing to use RGB palette. The game will ignore lights color set by [\_SET_VEHICLE_XENON_LIGHTS_COLOR](#\_0xE41033B25D003A07) when custom color is active. This native is not synced between players. Requires xenon lights mod to be set on vehicle.
---
---Example code:
---```lua
---local vehicle = GetVehiclePedIsUsing(PlayerPedId())
---if DoesEntityExist(vehicle) then
---  -- Toggle xenon lights mod.
---  ToggleVehicleMod(vehicle, 22, true)
---
---  -- Set pink lights color.
---  SetVehicleXenonLightsCustomColor(vehicle, 244, 5, 82)
---end
---```
---
---@param vehicle Vehicle The vehicle handle.
---@param red number Red color (0-255).
---@param green number Green color (0-255).
---@param blue number Blue color (0-255).
function SetVehicleXenonLightsCustomColor(vehicle, red, green, blue) end

---**`CFX` `client` [`0xD1D31681`](https://docs.fivem.net/natives/?_0xD1D31681)**
---
---Overrides a floating point value from `visualsettings.dat` temporarily.
---
---@param name string The name of the value to set, such as `pedLight.color.red`.
---@param value number The value to write.
function SetVisualSettingFloat(name, value) end

---**`CFX` `client` [`0x311150E5`](https://docs.fivem.net/natives/?_0x311150E5)**
---
---Disables the game's built-in auto-reloading.
---
---@param state boolean On/Off
function SetWeaponsNoAutoreload(state) end

---**`CFX` `client` [`0x2A7B50E`](https://docs.fivem.net/natives/?_0x2A7B50E)**
---
---Disables autoswapping to another weapon when the current weapon runs out of ammo.
---
---@param state boolean On/Off
function SetWeaponsNoAutoswap(state) end

---**`CFX` `client` [`0x9864312F`](https://docs.fivem.net/natives/?_0x9864312F)**
---
---A setter for the recoil shake amplitude of a weapon.
---
---@param weaponHash Hash Weapon name hash.
---@param amplitude number Recoil shake amplitude
function SetWeaponRecoilShakeAmplitude(weaponHash, amplitude) end

---**`CFX` `client` [`0x2703D582`](https://docs.fivem.net/natives/?_0x2703D582)**
---
---Sets whether or not the weather should be owned by the network subsystem.
---
---To be able to use [\_SET_WEATHER_TYPE_TRANSITION](#\_0x578C752848ECFA0C), this has to be set to false.
---
---@param network boolean true to let the network control weather, false to not use network weather behavior.
function SetWeatherOwnedByNetwork(network) end

---**`CFX` `client` [`0xB9234AFB`](https://docs.fivem.net/natives/?_0xB9234AFB)**
---
---Shuts down the `loadingScreen` NUI frame, similarly to `SHUTDOWN_LOADING_SCREEN`.
---
function ShutdownLoadingScreenNui() end

---**`CFX` `client` [`0x8F2EECC3`](https://docs.fivem.net/natives/?_0x8F2EECC3)**
---
---Equivalent of [START_FIND_KVP](#\_0xDD379006), but for another resource than the current one.
---
---Example code:
---```lua
---local kvpHandle = StartFindExternalKvp('drugs', 'mollis:')
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
---@param resourceName string The resource to try finding the key/values for
---@param prefix string A prefix match
---@return number # A KVP find handle to use with [FIND_KVP](#\_0xBD7BEBC5) and close with [END_FIND_KVP](#\_0xB3210203)
function StartFindExternalKvp(resourceName, prefix) end

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

---**`CFX` `shared` [`0x91310870`](https://docs.fivem.net/natives/?_0x91310870)**
---
---The backing function for TriggerEvent.
---
---@param eventName string
---@param eventPayload string
---@param payloadLength number
function TriggerEventInternal(eventName, eventPayload, payloadLength) end

---**`CFX` `client` [`0x128737EA`](https://docs.fivem.net/natives/?_0x128737EA)**
---
---The backing function for TriggerLatentServerEvent.
---
---@param eventName string
---@param eventPayload string
---@param payloadLength number
---@param bps number
function TriggerLatentServerEventInternal(eventName, eventPayload, payloadLength, bps) end

---**`CFX` `client` [`0x7FDD1128`](https://docs.fivem.net/natives/?_0x7FDD1128)**
---
---The backing function for TriggerServerEvent.
---
---@param eventName string
---@param eventPayload string
---@param payloadLength number
function TriggerServerEventInternal(eventName, eventPayload, payloadLength) end

---**`CFX` `client` [`0x7FB46432`](https://docs.fivem.net/natives/?_0x7FB46432)**
---
---Will unregister and cleanup a registered NUI callback handler.
---
---Use along side the REGISTER_RAW_NUI_CALLBACK native.
---
---@param callbackType string The callback type to target
function UnregisterRawNuiCallback(callbackType) end

---**`CFX` `client` [`0xFC52CB91`](https://docs.fivem.net/natives/?_0xFC52CB91)**
---
---Transiently updates the entity with the specified mapdata index and entity index.
---This function supports SDK infrastructure and is not intended to be used directly from your code.
---
---@param mapdata number A fwMapData index from GET_MAPDATA_FROM_HASH_KEY.
---@param entity number An entity index from GET_ENTITY_INDEX_FROM_MAPDATA.
---@param entityDef table The new entity definition in fwEntityDef format.
function UpdateMapdataEntity(mapdata, entity, entityDef) end

---**`CFX` `shared` [`0x58382A19`](https://docs.fivem.net/natives/?_0x58382A19)**
---
---Returns whether or not the currently executing event was canceled.
---
---@return boolean # A boolean.
function WasEventCanceled() end
