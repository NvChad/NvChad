---@meta
---**`WATER` `client` [`0x547237AA71AB44DE`](https://docs.fivem.net/natives/?_0x547237AA71AB44DE)**
---
---@param p0 number
function N_0x547237aa71ab44de(p0) end

---**`WATER` `client` [`0xFDBF4CDBC07E1706`](https://docs.fivem.net/natives/?_0xFDBF4CDBC07E1706)**
---
---Only 8 current rises can exist. If rises need to be changed, use REMOVE_EXTRA_CALMING_QUAD and then ADD_EXTRA_CALMING_QUAD again.
---After removing a rise, you will be able to add a rise again.
---
---@param xLow number
---@param yLow number
---@param xHigh number
---@param yHigh number
---@param height number
---@return number # If succeeded to add, returns a rise index that can be used on REMOVE_EXTRA_CALMING_QUAD.<br>If failed to add, returns -1 (make sure you don't pass -1 to REMOVE_EXTRA_CALMING_QUAD).
function AddExtraCalmingQuad(xLow, yLow, xHigh, yHigh, height) end

---**`WATER` `client` [`0x2B2A2CC86778B619`](https://docs.fivem.net/natives/?_0x2B2A2CC86778B619)**
---
---```
---Gets the aggressiveness factor of the ocean waves.
---```
---
---@return number
function GetDeepOceanScaler() end

---**`WATER` `client` [`0xF6829842C06AE524`](https://docs.fivem.net/natives/?_0xF6829842C06AE524)**
---
---```
---This function set height to the value of z-axis of the water surface.
---This function works with sea and lake. However it does not work with shallow rivers (e.g. raton canyon will return -100000.0f)
---note: seems to return true when you are in water
---```
---
---@param x number
---@param y number
---@param z number
---@param height number
---@return boolean, number
function GetWaterHeight(x, y, z, height) end

---**`WATER` `client` [`0x8EE6B53CE13A9794`](https://docs.fivem.net/natives/?_0x8EE6B53CE13A9794)**
---
---@param x number
---@param y number
---@param z number
---@param height number
---@return boolean, number
function GetWaterHeightNoWaves(x, y, z, height) end

---**`WATER` `client` [`0xC443FD757C3BA637`](https://docs.fivem.net/natives/?_0xC443FD757C3BA637)**
---
---```
---Sets the water height for a given position and radius.
---```
---
---@param x number
---@param y number
---@param height number
---@param radius number
function ModifyWater(x, y, height, radius) end

---**`WATER` `client` [`0x5E5E99285AE812DB`](https://docs.fivem.net/natives/?_0x5E5E99285AE812DB)**
---
---```
---Sets the waves intensity back to original (1.0 in most cases).
---```
---
function ResetDeepOceanScaler() end

---**`WATER` `client` [`0xB96B00E976BE977F`](https://docs.fivem.net/natives/?_0xB96B00E976BE977F)**
---
---```
---Sets a value that determines how aggressive the ocean waves will be. Values of 2.0 or more make for very aggressive waves like you see during a thunderstorm.
---Works only ~200 meters around the player.
---```
---
---@param intensity number
function SetDeepOceanScaler(intensity) end

---**`WATER` `client` [`0x8974647ED222EA5F`](https://docs.fivem.net/natives/?_0x8974647ED222EA5F)**
---
---Flags are identical to START_SHAPE_TEST\*, however, 128 is automatically set.
---
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param flag number See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param result vector3
---@return boolean, vector3
function TestProbeAgainstAllWater(x1, y1, z1, x2, y2, z2, flag, result) end

---**`WATER` `client` [`0xFFA5D878809819DB`](https://docs.fivem.net/natives/?_0xFFA5D878809819DB)**
---
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param result vector3
---@return boolean, vector3
function TestProbeAgainstWater(x1, y1, z1, x2, y2, z2, result) end

---**`WATER` `client` [`0x2B3451FA1E3142E2`](https://docs.fivem.net/natives/?_0x2B3451FA1E3142E2)**
---
---@param x number
---@param y number
---@param z number
---@param flag number See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param height number
---@return boolean, number
function TestVerticalProbeAgainstAllWater(x, y, z, flag, height) end

---**`WATER` `client` [`0xB1252E3E59A82AAF`](https://docs.fivem.net/natives/?_0xB1252E3E59A82AAF)**
---
---```
---p0 is the handle returned from _0xFDBF4CDBC07E1706
---```
---
---@param p0 number
function RemoveCurrentRise(p0) end
