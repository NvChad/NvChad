---@meta

---```
---More info: http://gtaforums.com/topic/836367-adding-props-to-interiors/  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x55E86AF2712B36A1)
---@param interior number 
---@param entitySetName string 
function ActivateInteriorEntitySet(interior, entitySetName) end

---```
---More info: http://gtaforums.com/topic/836367-adding-props-to-interiors/  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x55E86AF2712B36A1)
---@param interior number 
---@param entitySetName string 
function N_0x55E86AF2712B36A1(interior, entitySetName) end

---```
---More info: http://gtaforums.com/topic/836367-adding-props-to-interiors/  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x55E86AF2712B36A1)
---@param interior number 
---@param entitySetName string 
function EnableInteriorProp(interior, entitySetName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3F6167F351168730)
---@param pickup pickup 
---@param roomName string 
function AddPickupToInteriorRoomByName(pickup, roomName) end

---```
---Does something similar to INTERIOR::DISABLE_INTERIOR  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD9175F941610DB54)
---@param interiorID number 
---@param toggle boolean 
function CapInterior(interiorID, toggle) end

---Immediately removes entity from an interior. Like sets entity to `limbo` room.
---
---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x85D5422B2039A70D)
---@param entity number 
function ClearInteriorForEntity(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x23B59D8912F94246)
function ClearRoomForGameViewport() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x23B59D8912F94246)
function N_0x23B59D8912F94246() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB365FC0C4E27FFA7)
---@param entity number 
function ClearRoomForEntity(entity) end

---```
---Example:   
---This removes the interior from the strip club and when trying to walk inside the player just falls:  
---INTERIOR::DISABLE_INTERIOR(118018, true);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6170941419D7D8EC)
---@param interiorID number 
---@param toggle boolean 
function DisableInterior(interiorID, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x420BD37289EEE162)
---@param interior number 
---@param entitySetName string 
function DeactivateInteriorEntitySet(interior, entitySetName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x420BD37289EEE162)
---@param interior number 
---@param entitySetName string 
function N_0x420BD37289EEE162(interior, entitySetName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x420BD37289EEE162)
---@param interior number 
---@param entitySetName string 
function DisableInteriorProp(interior, entitySetName) end

---```
---This is the native that is used to hide the exterior of GTA Online apartment buildings when you are inside an apartment.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA97F257D0151A6AB)
---@param mapObjectHash number | string 
function EnableExteriorCullModelThisFrame(mapObjectHash) end

---```
---This is the native that is used to hide the exterior of GTA Online apartment buildings when you are inside an apartment.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA97F257D0151A6AB)
---@param mapObjectHash number | string 
function N_0xA97F257D0151A6AB(mapObjectHash) end

---```
---This is the native that is used to hide the exterior of GTA Online apartment buildings when you are inside an apartment.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA97F257D0151A6AB)
---@param mapObjectHash number | string 
function HideMapObjectThisFrame(mapObjectHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x50C375537449F369)
---@param mapObjectHash number | string 
function EnableScriptCullModelThisFrame(mapObjectHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x50C375537449F369)
---@param mapObjectHash number | string 
function N_0x50C375537449F369(mapObjectHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x920D853F3E17F1DA)
---@param interiorID number 
---@param roomHashKey number | string 
function ForceRoomForGameViewport(interiorID, roomHashKey) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x920D853F3E17F1DA)
---@param interiorID number 
---@param roomHashKey number | string 
function N_0x920D853F3E17F1DA(interiorID, roomHashKey) end

---```
---Forces the particular room in an interior to load incase not teleporting into the portal.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x52923C4710DD9907)
---@param entity number 
---@param interior number 
---@param roomHashKey number | string 
function ForceRoomForEntity(entity, interior, roomHashKey) end

---```
---Returns interior ID from specified coordinates. If coordinates are outside, then it returns 0.  
---Example for VB.NET  
---Dim interiorID As Integer = Native.Function.Call(Of Integer)(Hash.GET_INTERIOR_AT_COORDS, X, Y, Z)  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB0F7F8663821D9C3)
---@param x number 
---@param y number 
---@param z number 
---@return number retval 
function GetInteriorAtCoords(x, y, z) end

---```
---Returns the interior ID representing the requested interior at that location (if found?). The supplied interior string is not the same as the one used to load the interior.  
---Use: INTERIOR::UNPIN_INTERIOR(INTERIOR::GET_INTERIOR_AT_COORDS_WITH_TYPE(x, y, z, interior))  
---Interior types include: "V_Michael", "V_Franklins", "V_Franklinshouse", etc.. you can find them in the scripts.  
---Not a very useful native as you could just use GET_INTERIOR_AT_COORDS instead and get the same result, without even having to specify the interior type.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x05B7A89BD78797FC)
---@param x number 
---@param y number 
---@param z number 
---@param interiorType string 
---@return number retval 
function GetInteriorAtCoordsWithType(x, y, z, interiorType) end

---```
---Returns the interior ID representing the requested interior at that location (if found?). The supplied interior string is not the same as the one used to load the interior.  
---Use: INTERIOR::UNPIN_INTERIOR(INTERIOR::GET_INTERIOR_AT_COORDS_WITH_TYPE(x, y, z, interior))  
---Interior types include: "V_Michael", "V_Franklins", "V_Franklinshouse", etc.. you can find them in the scripts.  
---Not a very useful native as you could just use GET_INTERIOR_AT_COORDS instead and get the same result, without even having to specify the interior type.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x05B7A89BD78797FC)
---@param x number 
---@param y number 
---@param z number 
---@param interiorType string 
---@return number retval 
function N_0x05B7A89BD78797FC(x, y, z, interiorType) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC4CF9FCB29A4424)
---@param x number 
---@param y number 
---@param z number 
---@return number retval 
function GetInteriorFromCollision(x, y, z) end

---```
---Hashed version of GET_INTERIOR_AT_COORDS_WITH_TYPE
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0F77ADB9F67E79D)
---@param x number 
---@param y number 
---@param z number 
---@param typeHash number | string 
---@return number retval 
function GetInteriorAtCoordsWithTypehash(x, y, z, typeHash) end

---```
---Hashed version of GET_INTERIOR_AT_COORDS_WITH_TYPE
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0F77ADB9F67E79D)
---@param x number 
---@param y number 
---@param z number 
---@param typeHash number | string 
---@return number retval 
function N_0xF0F77ADB9F67E79D(x, y, z, typeHash) end

---```
---Hashed version of GET_INTERIOR_AT_COORDS_WITH_TYPE
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0F77ADB9F67E79D)
---@param x number 
---@param y number 
---@param z number 
---@param typeHash number | string 
---@return number retval 
function UnkGetInteriorAtCoords(x, y, z, typeHash) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE7D267EC6CA966C3)
---@return number retval 
function GetInteriorFromPrimaryView() end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE7D267EC6CA966C3)
---@return number retval 
function N_0xE7D267EC6CA966C3() end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE7D267EC6CA966C3)
---@return number retval 
function GetInteriorFromGameplayCam() end

---```
---Returns the handle of the interior that the entity is in. Returns 0 if outside.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2107BA504071A6BB)
---@param entity number 
---@return number retval 
function GetInteriorFromEntity(entity) end

---```
---GET_INTERIOR_*
---
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF49B58631D9E22D9)
---@param interior number 
---@return number retval 
function GetInteriorHeading(interior) end

---```
---Returns the group ID of the specified interior. For example, regular interiors have group 0, subway interiors have group 1. There are a few other groups too.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE4A84ABF135EF91A)
---@param interior number 
---@return number retval 
function GetInteriorGroupId(interior) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x252BDC06B73FA6EA)
---@param interior number 
---@param position vector3 
---@param nameHash number | string 
function GetInteriorLocationAndNamehash(interior, position, nameHash) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x252BDC06B73FA6EA)
---@param interior number 
---@param position vector3 
---@param nameHash number | string 
function N_0x252BDC06B73FA6EA(interior, position, nameHash) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x252BDC06B73FA6EA)
---@param interior number 
---@param position vector3 
---@param nameHash number | string 
function GetInteriorInfo(interior, position, nameHash) end

---```
---Seems to do the exact same as INTERIOR::GET_ROOM_KEY_FROM_ENTITY  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x399685DB942336BC)
---@param entity number 
---@return number | string retval 
function GetKeyForEntityInRoom(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6575914D2A0B450)
---@return number | string retval 
function GetRoomKeyForGameViewport() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6575914D2A0B450)
---@return number | string retval 
function N_0xA6575914D2A0B450() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6575914D2A0B450)
---@return number | string retval 
function GetRoomKeyFromGameplayCam() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9E3B3E6D66F6E22F)
---@param interior number 
---@param x number 
---@param y number 
---@param z number 
---@return vector3 retval 
function GetOffsetFromInteriorInWorldCoords(interior, x, y, z) end

---```
---Gets the room hash key from the room that the specified entity is in. Each room in every interior has a unique key. Returns 0 if the entity is outside.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x47C2A06D4F5F424B)
---@param entity number 
---@return number | string retval 
function GetRoomKeyFromEntity(entity) end

---Returns true if the collision at the specified coords is marked as being outside (false if there's an interior)
---[Native Documentation](https://docs.fivem.net/natives/?_0xEEA5AC2EDA7C33E8)
---@param x number 
---@param y number 
---@param z number 
---@return boolean retval 
function IsCollisionMarkedOutside(x, y, z) end

---Returns true if the collision at the specified coords is marked as being outside (false if there's an interior)
---[Native Documentation](https://docs.fivem.net/natives/?_0xEEA5AC2EDA7C33E8)
---@param x number 
---@param y number 
---@param z number 
---@return boolean retval 
function N_0xEEA5AC2EDA7C33E8(x, y, z) end

---Returns true if the collision at the specified coords is marked as being outside (false if there's an interior)
---[Native Documentation](https://docs.fivem.net/natives/?_0xEEA5AC2EDA7C33E8)
---@param x number 
---@param y number 
---@param z number 
---@return boolean retval 
function AreCoordsCollidingWithExterior(x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC5115A5A939DD15)
---@param interior number 
---@return boolean retval 
function IsInteriorDisabled(interior) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x92BAC8ACF88CEC26)
---@param interiorID number 
---@return boolean retval 
function IsInteriorCapped(interiorID) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6726BDCCC1932F0E)
---@param interiorID number 
---@return boolean retval 
function IsInteriorReady(interiorID) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x35F7DD45E8C0A16D)
---@param interior number 
---@param entitySetName string 
---@return boolean retval 
function IsInteriorEntitySetActive(interior, entitySetName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x35F7DD45E8C0A16D)
---@param interior number 
---@param entitySetName string 
---@return boolean retval 
function N_0x35F7DD45E8C0A16D(interior, entitySetName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x35F7DD45E8C0A16D)
---@param interior number 
---@param entitySetName string 
---@return boolean retval 
function IsInteriorPropEnabled(interior, entitySetName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x26B0E73D7EAAF4D3)
---@param interior number 
---@return boolean retval 
function IsValidInterior(interior) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC72B5D7A1CBD54D)
---@return boolean retval 
function IsInteriorScene() end

---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x38C1CB1CB119A016)
---@param p0 any 
---@param p1 any 
function N_0x38C1CB1CB119A016(p0, p1) end

---```
---Usage: INTERIOR::_0x405DC2AEF6AF95B9(INTERIOR::GET_KEY_FOR_ENTITY_IN_ROOM(PLAYER::PLAYER_PED_ID()));  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x405DC2AEF6AF95B9)
---@param roomHashKey number | string 
function N_0x405DC2AEF6AF95B9(roomHashKey) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x483ACA1176CA93F1)
function N_0x483ACA1176CA93F1() end

---```
---Only used once in the entire game scripts.
---Does not actually return anything.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C2330E61D3DEB56)
---@param interior number 
---@return any retval 
function N_0x4C2330E61D3DEB56(interior) end

---```
---Jenkins hash _might_ be 0xFC227584.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7241CCB7D020DB69)
---@param entity number 
---@param toggle boolean 
function N_0x7241CCB7D020DB69(entity, toggle) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7ECDF98587E92DEC)
---@param p0 any 
function N_0x7ECDF98587E92DEC(p0) end

---```
---DISABLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9E6542F0CE8E70A3)
---@param toggle boolean 
function N_0x9E6542F0CE8E70A3(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x82EBB79E258FA2B7)
---@param entity number 
---@param interiorID number 
function N_0x82EBB79E258FA2B7(entity, interiorID) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2CA429C029CCF247)
---@param interior number 
function PinInteriorInMemory(interior) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2CA429C029CCF247)
---@param interior number 
function N_0x2CA429C029CCF247(interior) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2CA429C029CCF247)
---@param interior number 
function LoadInterior(interior) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC1F1920BAF281317)
---@param interior number 
---@param entitySetName string 
---@param color number 
function SetInteriorEntitySetColor(interior, entitySetName, color) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC1F1920BAF281317)
---@param interior number 
---@param entitySetName string 
---@param color number 
function SetInteriorPropColor(interior, entitySetName, color) end

---```
---Exemple of use(carmod_shop.c4)  
---INTERIOR::_AF348AFCB575A441("V_CarModRoom");  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAF348AFCB575A441)
---@param roomName string 
function N_0xAF348AFCB575A441(roomName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x41F37C3427C75AE0)
---@param interiorID number 
function RefreshInterior(interiorID) end

---```
---Does something similar to INTERIOR::DISABLE_INTERIOR.  
---You don't fall through the floor but everything is invisible inside and looks the same as when INTERIOR::DISABLE_INTERIOR is used. Peds behaves normally inside.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x261CCE7EED010641)
---@param interior number 
function UnpinInterior(interior) end

