---@meta

---Only 8 current rises can exist. If rises need to be changed, use REMOVE_EXTRA_CALMING_QUAD and then ADD_EXTRA_CALMING_QUAD again.
---After removing a rise, you will be able to add a rise again.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFDBF4CDBC07E1706)
---@param xLow number 
---@param yLow number 
---@param xHigh number 
---@param yHigh number 
---@param height number 
---@return number retval If succeeded to add, returns a rise index that can be used on REMOVE_EXTRA_CALMING_QUAD.
If failed to add, returns -1 (make sure you don't pass -1 to REMOVE_EXTRA_CALMING_QUAD).
function AddExtraCalmingQuad(xLow, yLow, xHigh, yHigh, height) end

---Only 8 current rises can exist. If rises need to be changed, use REMOVE_EXTRA_CALMING_QUAD and then ADD_EXTRA_CALMING_QUAD again.
---After removing a rise, you will be able to add a rise again.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFDBF4CDBC07E1706)
---@param xLow number 
---@param yLow number 
---@param xHigh number 
---@param yHigh number 
---@param height number 
---@return number retval If succeeded to add, returns a rise index that can be used on REMOVE_EXTRA_CALMING_QUAD.
If failed to add, returns -1 (make sure you don't pass -1 to REMOVE_EXTRA_CALMING_QUAD).
function N_0xFDBF4CDBC07E1706(xLow, yLow, xHigh, yHigh, height) end

---Only 8 current rises can exist. If rises need to be changed, use REMOVE_EXTRA_CALMING_QUAD and then ADD_EXTRA_CALMING_QUAD again.
---After removing a rise, you will be able to add a rise again.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFDBF4CDBC07E1706)
---@param xLow number 
---@param yLow number 
---@param xHigh number 
---@param yHigh number 
---@param height number 
---@return number retval If succeeded to add, returns a rise index that can be used on REMOVE_EXTRA_CALMING_QUAD.
If failed to add, returns -1 (make sure you don't pass -1 to REMOVE_EXTRA_CALMING_QUAD).
function AddCurrentRise(xLow, yLow, xHigh, yHigh, height) end

---```
---Gets the aggressiveness factor of the ocean waves.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B2A2CC86778B619)
---@return number retval 
function GetDeepOceanScaler() end

---```
---Gets the aggressiveness factor of the ocean waves.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B2A2CC86778B619)
---@return number retval 
function N_0x2B2A2CC86778B619() end

---```
---Gets the aggressiveness factor of the ocean waves.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B2A2CC86778B619)
---@return number retval 
function GetWavesIntensity() end

---```
---Gets the aggressiveness factor of the ocean waves.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B2A2CC86778B619)
---@return number retval 
function GetCurrentIntensity() end

---```
---This function set height to the value of z-axis of the water surface.  
---This function works with sea and lake. However it does not work with shallow rivers (e.g. raton canyon will return -100000.0f)  
---note: seems to return true when you are in water  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6829842C06AE524)
---@param x number 
---@param y number 
---@param z number 
---@param height number 
---@return boolean retval 
function GetWaterHeight(x, y, z, height) end

---```
---Sets the water height for a given position and radius.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC443FD757C3BA637)
---@param x number 
---@param y number 
---@param height number 
---@param radius number 
function ModifyWater(x, y, height, radius) end

---```
---Sets the waves intensity back to original (1.0 in most cases). 
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E5E99285AE812DB)
function ResetDeepOceanScaler() end

---```
---Sets the waves intensity back to original (1.0 in most cases). 
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E5E99285AE812DB)
function N_0x5E5E99285AE812DB() end

---```
---Sets the waves intensity back to original (1.0 in most cases). 
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E5E99285AE812DB)
function ResetWavesIntensity() end

---```
---Sets the waves intensity back to original (1.0 in most cases). 
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E5E99285AE812DB)
function ResetCurrentIntensity() end

---```
---Sets a value that determines how aggressive the ocean waves will be. Values of 2.0 or more make for very aggressive waves like you see during a thunderstorm.  
---Works only ~200 meters around the player.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB96B00E976BE977F)
---@param intensity number 
function SetDeepOceanScaler(intensity) end

---```
---Sets a value that determines how aggressive the ocean waves will be. Values of 2.0 or more make for very aggressive waves like you see during a thunderstorm.  
---Works only ~200 meters around the player.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB96B00E976BE977F)
---@param intensity number 
function N_0xB96B00E976BE977F(intensity) end

---```
---Sets a value that determines how aggressive the ocean waves will be. Values of 2.0 or more make for very aggressive waves like you see during a thunderstorm.  
---Works only ~200 meters around the player.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB96B00E976BE977F)
---@param intensity number 
function SetWavesIntensity(intensity) end

---```
---Sets a value that determines how aggressive the ocean waves will be. Values of 2.0 or more make for very aggressive waves like you see during a thunderstorm.  
---Works only ~200 meters around the player.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB96B00E976BE977F)
---@param intensity number 
function SetCurrentIntensity(intensity) end

---Flags are identical to START_SHAPE_TEST\*, however, 128 is automatically set.
---[Native Documentation](https://docs.fivem.net/natives/?_0x8974647ED222EA5F)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param flag number See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param result vector3 
---@return boolean retval 
function TestProbeAgainstAllWater(x1, y1, z1, x2, y2, z2, flag, result) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8EE6B53CE13A9794)
---@param x number 
---@param y number 
---@param z number 
---@param height number 
---@return boolean retval 
function GetWaterHeightNoWaves(x, y, z, height) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x547237AA71AB44DE)
---@param p0 number 
function N_0x547237AA71AB44DE(p0) end

---```
---p0 is the handle returned from _0xFDBF4CDBC07E1706  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB1252E3E59A82AAF)
---@param p0 number 
function RemoveCurrentRise(p0) end

---```
---p0 is the handle returned from _0xFDBF4CDBC07E1706  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB1252E3E59A82AAF)
---@param p0 number 
function N_0xB1252E3E59A82AAF(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B3451FA1E3142E2)
---@param x number 
---@param y number 
---@param z number 
---@param flag number See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param height number 
---@return boolean retval 
function TestVerticalProbeAgainstAllWater(x, y, z, flag, height) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFFA5D878809819DB)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param result vector3 
---@return boolean retval 
function TestProbeAgainstWater(x1, y1, z1, x2, y2, z2, result) end

