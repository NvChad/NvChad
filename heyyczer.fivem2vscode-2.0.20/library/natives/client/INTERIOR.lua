---@meta
---**`INTERIOR` `client` [`0x38C1CB1CB119A016`](https://docs.fivem.net/natives/?_0x38C1CB1CB119A016)**
---
---```
---NativeDB Introduced: v1493
---```
---
---@param p0 any
---@param p1 any
function N_0x38c1cb1cb119a016(p0, p1) end

---**`INTERIOR` `client` [`0x405DC2AEF6AF95B9`](https://docs.fivem.net/natives/?_0x405DC2AEF6AF95B9)**
---
---```
---Usage: INTERIOR::_0x405DC2AEF6AF95B9(INTERIOR::GET_KEY_FOR_ENTITY_IN_ROOM(PLAYER::PLAYER_PED_ID()));
---```
---
---@param roomHashKey Hash
function N_0x405dc2aef6af95b9(roomHashKey) end

---**`INTERIOR` `client` [`0x483ACA1176CA93F1`](https://docs.fivem.net/natives/?_0x483ACA1176CA93F1)**
---
function N_0x483aca1176ca93f1() end

---**`INTERIOR` `client` [`0x4C2330E61D3DEB56`](https://docs.fivem.net/natives/?_0x4C2330E61D3DEB56)**
---
---```
---Only used once in the entire game scripts.
---Does not actually return anything.
---```
---
---@param interior number
---@return any
function N_0x4c2330e61d3deb56(interior) end

---**`INTERIOR` `client` [`0x7241CCB7D020DB69`](https://docs.fivem.net/natives/?_0x7241CCB7D020DB69)**
---
---```
---Jenkins hash _might_ be 0xFC227584.
---```
---
---@param entity Entity
---@param toggle boolean
function N_0x7241ccb7d020db69(entity, toggle) end

---**`INTERIOR` `client` [`0x7ECDF98587E92DEC`](https://docs.fivem.net/natives/?_0x7ECDF98587E92DEC)**
---
---```
---NativeDB Introduced: v1604
---```
---
---@param p0 any
function N_0x7ecdf98587e92dec(p0) end

---**`INTERIOR` `client` [`0x82EBB79E258FA2B7`](https://docs.fivem.net/natives/?_0x82EBB79E258FA2B7)**
---
---@param entity Entity
---@param interiorID number
function N_0x82ebb79e258fa2b7(entity, interiorID) end

---**`INTERIOR` `client` [`0x9E6542F0CE8E70A3`](https://docs.fivem.net/natives/?_0x9E6542F0CE8E70A3)**
---
---```
---DISABLE_*
---```
---
---@param toggle boolean
function N_0x9e6542f0ce8e70a3(toggle) end

---**`INTERIOR` `client` [`0xAF348AFCB575A441`](https://docs.fivem.net/natives/?_0xAF348AFCB575A441)**
---
---```
---Exemple of use(carmod_shop.c4)
---INTERIOR::_AF348AFCB575A441("V_CarModRoom");
---```
---
---@param roomName string
function N_0xaf348afcb575a441(roomName) end

---**`INTERIOR` `client` [`0x55E86AF2712B36A1`](https://docs.fivem.net/natives/?_0x55E86AF2712B36A1)**
---
---```
---More info: http://gtaforums.com/topic/836367-adding-props-to-interiors/
---```
---
---@param interior number
---@param entitySetName string
function ActivateInteriorEntitySet(interior, entitySetName) end

---**`INTERIOR` `client` [`0x3F6167F351168730`](https://docs.fivem.net/natives/?_0x3F6167F351168730)**
---
---@param pickup Pickup
---@param roomName string
function AddPickupToInteriorRoomByName(pickup, roomName) end

---**`INTERIOR` `client` [`0xD9175F941610DB54`](https://docs.fivem.net/natives/?_0xD9175F941610DB54)**
---
---```
---Does something similar to INTERIOR::DISABLE_INTERIOR
---```
---
---@param interiorID number
---@param toggle boolean
function CapInterior(interiorID, toggle) end

---**`INTERIOR` `client` [`0xB365FC0C4E27FFA7`](https://docs.fivem.net/natives/?_0xB365FC0C4E27FFA7)**
---
---@param entity Entity
function ClearRoomForEntity(entity) end

---**`INTERIOR` `client` [`0x23B59D8912F94246`](https://docs.fivem.net/natives/?_0x23B59D8912F94246)**
---
function ClearRoomForGameViewport() end

---**`INTERIOR` `client` [`0x420BD37289EEE162`](https://docs.fivem.net/natives/?_0x420BD37289EEE162)**
---
---@param interior number
---@param entitySetName string
function DeactivateInteriorEntitySet(interior, entitySetName) end

---**`INTERIOR` `client` [`0x6170941419D7D8EC`](https://docs.fivem.net/natives/?_0x6170941419D7D8EC)**
---
---```
---Example:
---This removes the interior from the strip club and when trying to walk inside the player just falls:
---INTERIOR::DISABLE_INTERIOR(118018, true);
---```
---
---@param interiorID number
---@param toggle boolean
function DisableInterior(interiorID, toggle) end

---**`INTERIOR` `client` [`0xA97F257D0151A6AB`](https://docs.fivem.net/natives/?_0xA97F257D0151A6AB)**
---
---```
---This is the native that is used to hide the exterior of GTA Online apartment buildings when you are inside an apartment.
---```
---
---@param mapObjectHash Hash
function EnableExteriorCullModelThisFrame(mapObjectHash) end

---**`INTERIOR` `client` [`0x52923C4710DD9907`](https://docs.fivem.net/natives/?_0x52923C4710DD9907)**
---
---```
---Forces the particular room in an interior to load incase not teleporting into the portal.
---```
---
---@param entity Entity
---@param interior number
---@param roomHashKey Hash
function ForceRoomForEntity(entity, interior, roomHashKey) end

---**`INTERIOR` `client` [`0x920D853F3E17F1DA`](https://docs.fivem.net/natives/?_0x920D853F3E17F1DA)**
---
---@param interiorID number
---@param roomHashKey Hash
function ForceRoomForGameViewport(interiorID, roomHashKey) end

---**`INTERIOR` `client` [`0xB0F7F8663821D9C3`](https://docs.fivem.net/natives/?_0xB0F7F8663821D9C3)**
---
---```
---Returns interior ID from specified coordinates. If coordinates are outside, then it returns 0.
---Example for VB.NET
---Dim interiorID As Integer = Native.Function.Call(Of Integer)(Hash.GET_INTERIOR_AT_COORDS, X, Y, Z)
---```
---
---@param x number
---@param y number
---@param z number
---@return number
function GetInteriorAtCoords(x, y, z) end

---**`INTERIOR` `client` [`0x05B7A89BD78797FC`](https://docs.fivem.net/natives/?_0x05B7A89BD78797FC)**
---
---```
---Returns the interior ID representing the requested interior at that location (if found?). The supplied interior string is not the same as the one used to load the interior.
---Use: INTERIOR::UNPIN_INTERIOR(INTERIOR::GET_INTERIOR_AT_COORDS_WITH_TYPE(x, y, z, interior))
---Interior types include: "V_Michael", "V_Franklins", "V_Franklinshouse", etc.. you can find them in the scripts.
---Not a very useful native as you could just use GET_INTERIOR_AT_COORDS instead and get the same result, without even having to specify the interior type.
---```
---
---@param x number
---@param y number
---@param z number
---@param interiorType string
---@return number
function GetInteriorAtCoordsWithType(x, y, z, interiorType) end

---**`INTERIOR` `client` [`0xF0F77ADB9F67E79D`](https://docs.fivem.net/natives/?_0xF0F77ADB9F67E79D)**
---
---```
---Hashed version of GET_INTERIOR_AT_COORDS_WITH_TYPE
---```
---
---@param x number
---@param y number
---@param z number
---@param typeHash Hash
---@return number
function GetInteriorAtCoordsWithTypehash(x, y, z, typeHash) end

---**`INTERIOR` `client` [`0xEC4CF9FCB29A4424`](https://docs.fivem.net/natives/?_0xEC4CF9FCB29A4424)**
---
---@param x number
---@param y number
---@param z number
---@return number
function GetInteriorFromCollision(x, y, z) end

---**`INTERIOR` `client` [`0x2107BA504071A6BB`](https://docs.fivem.net/natives/?_0x2107BA504071A6BB)**
---
---```
---Returns the handle of the interior that the entity is in. Returns 0 if outside.
---```
---
---@param entity Entity
---@return number
function GetInteriorFromEntity(entity) end

---**`INTERIOR` `client` [`0xE7D267EC6CA966C3`](https://docs.fivem.net/natives/?_0xE7D267EC6CA966C3)**
---
---```
---NativeDB Introduced: v1604
---```
---
---@return number
function GetInteriorFromPrimaryView() end

---**`INTERIOR` `client` [`0xE4A84ABF135EF91A`](https://docs.fivem.net/natives/?_0xE4A84ABF135EF91A)**
---
---```
---Returns the group ID of the specified interior. For example, regular interiors have group 0, subway interiors have group 1. There are a few other groups too.
---```
---
---@param interior number
---@return number
function GetInteriorGroupId(interior) end

---**`INTERIOR` `client` [`0x252BDC06B73FA6EA`](https://docs.fivem.net/natives/?_0x252BDC06B73FA6EA)**
---
---```
---NativeDB Introduced: v1290
---```
---
---@param interior number
---@param position vector3
---@param nameHash Hash
function GetInteriorLocationAndNamehash(interior, position, nameHash) end

---**`INTERIOR` `client` [`0x399685DB942336BC`](https://docs.fivem.net/natives/?_0x399685DB942336BC)**
---
---```
---Seems to do the exact same as INTERIOR::GET_ROOM_KEY_FROM_ENTITY
---```
---
---@param entity Entity
---@return Hash
function GetKeyForEntityInRoom(entity) end

---**`INTERIOR` `client` [`0x9E3B3E6D66F6E22F`](https://docs.fivem.net/natives/?_0x9E3B3E6D66F6E22F)**
---
---@param interior number
---@param x number
---@param y number
---@param z number
---@return vector3
function GetOffsetFromInteriorInWorldCoords(interior, x, y, z) end

---**`INTERIOR` `client` [`0xA6575914D2A0B450`](https://docs.fivem.net/natives/?_0xA6575914D2A0B450)**
---
---@return Hash
function GetRoomKeyForGameViewport() end

---**`INTERIOR` `client` [`0x47C2A06D4F5F424B`](https://docs.fivem.net/natives/?_0x47C2A06D4F5F424B)**
---
---```
---Gets the room hash key from the room that the specified entity is in. Each room in every interior has a unique key. Returns 0 if the entity is outside.
---```
---
---@param entity Entity
---@return Hash
function GetRoomKeyFromEntity(entity) end

---**`INTERIOR` `client` [`0xEEA5AC2EDA7C33E8`](https://docs.fivem.net/natives/?_0xEEA5AC2EDA7C33E8)**
---
---Returns true if the collision at the specified coords is marked as being outside (false if there's an interior)
---
---@param x number
---@param y number
---@param z number
---@return boolean
function IsCollisionMarkedOutside(x, y, z) end

---**`INTERIOR` `client` [`0x92BAC8ACF88CEC26`](https://docs.fivem.net/natives/?_0x92BAC8ACF88CEC26)**
---
---@param interiorID number
---@return boolean
function IsInteriorCapped(interiorID) end

---**`INTERIOR` `client` [`0xBC5115A5A939DD15`](https://docs.fivem.net/natives/?_0xBC5115A5A939DD15)**
---
---@param interior number
---@return boolean
function IsInteriorDisabled(interior) end

---**`INTERIOR` `client` [`0x35F7DD45E8C0A16D`](https://docs.fivem.net/natives/?_0x35F7DD45E8C0A16D)**
---
---@param interior number
---@param entitySetName string
---@return boolean
function IsInteriorEntitySetActive(interior, entitySetName) end

---**`INTERIOR` `client` [`0x6726BDCCC1932F0E`](https://docs.fivem.net/natives/?_0x6726BDCCC1932F0E)**
---
---@param interiorID number
---@return boolean
function IsInteriorReady(interiorID) end

---**`INTERIOR` `client` [`0xBC72B5D7A1CBD54D`](https://docs.fivem.net/natives/?_0xBC72B5D7A1CBD54D)**
---
---@return boolean
function IsInteriorScene() end

---**`INTERIOR` `client` [`0x26B0E73D7EAAF4D3`](https://docs.fivem.net/natives/?_0x26B0E73D7EAAF4D3)**
---
---@param interior number
---@return boolean
function IsValidInterior(interior) end

---**`INTERIOR` `client` [`0x2CA429C029CCF247`](https://docs.fivem.net/natives/?_0x2CA429C029CCF247)**
---
---@param interior number
function PinInteriorInMemory(interior) end

---**`INTERIOR` `client` [`0x41F37C3427C75AE0`](https://docs.fivem.net/natives/?_0x41F37C3427C75AE0)**
---
---@param interiorID number
function RefreshInterior(interiorID) end

---**`INTERIOR` `client` [`0x261CCE7EED010641`](https://docs.fivem.net/natives/?_0x261CCE7EED010641)**
---
---```
---Does something similar to INTERIOR::DISABLE_INTERIOR.
---You don't fall through the floor but everything is invisible inside and looks the same as when INTERIOR::DISABLE_INTERIOR is used. Peds behaves normally inside.
---```
---
---@param interior number
function UnpinInterior(interior) end

---**`INTERIOR` `client` [`0x85D5422B2039A70D`](https://docs.fivem.net/natives/?_0x85D5422B2039A70D)**
---
---Immediately removes entity from an interior. Like sets entity to `limbo` room.
---
---```
---NativeDB Introduced: v2189
---```
---
---@param entity Entity
function ClearInteriorForEntity(entity) end

---**`INTERIOR` `client` [`0x50C375537449F369`](https://docs.fivem.net/natives/?_0x50C375537449F369)**
---
---@param mapObjectHash Hash
function EnableScriptCullModelThisFrame(mapObjectHash) end

---**`INTERIOR` `client` [`0xF49B58631D9E22D9`](https://docs.fivem.net/natives/?_0xF49B58631D9E22D9)**
---
---```
---GET_INTERIOR_*
---
---NativeDB Introduced: v1493
---```
---
---@param interior number
---@return number
function GetInteriorHeading(interior) end

---**`INTERIOR` `client` [`0xC1F1920BAF281317`](https://docs.fivem.net/natives/?_0xC1F1920BAF281317)**
---
---@param interior number
---@param entitySetName string
---@param color number
function SetInteriorEntitySetColor(interior, entitySetName, color) end
