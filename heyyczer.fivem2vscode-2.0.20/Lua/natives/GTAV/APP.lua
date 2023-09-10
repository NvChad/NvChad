---@meta

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE41C65E07A5F05FC)
function AppCloseApp() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x846AA8E7D55EE5B6)
---@return boolean retval 
function AppDataValid() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC9853A2BE3DED1A6)
---@return number retval 
function AppGetDeletedFileStatus() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5FE1DF3342DB7DBA)
function AppClearBlock() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE8E3FCF72EAC0EF8)
function AppCloseBlock() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3A58A12C77D9D4B)
---@param property string 
---@return number retval 
function AppGetInt(property) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x44151AEA95C8A003)
---@param appName string 
---@return boolean retval 
function AppDeleteAppData(appName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1514FB24C02C2322)
---@param property string 
---@return number retval 
function AppGetFloat(property) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x71EEE69745088DA0)
---@return boolean retval 
function AppHasLinkedSocialClubAccount() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA52279A7271517F)
---@param appName string 
---@return boolean retval 
function AppHasSyncedData(appName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x749B023950D2311C)
---@param property string 
---@return string retval 
function AppGetString(property) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x95C5D356CDA6E85F)
function AppSaveData() end

---```
---Called in the gamescripts like:  
---APP::APP_SET_APP("car");  
---APP::APP_SET_APP("dog");  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCFD0406ADAF90D2B)
---@param appName string 
function AppSetApp(appName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x262AB456A3D21F93)
---@param blockName string 
function AppSetBlock(blockName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x25D7687C68E0DAA4)
---@param property string 
---@param value number 
function AppSetFloat(property, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x607E8E3D3E4F9611)
---@param property string 
---@param value number 
function AppSetInt(property, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3FF2FCEC4B7721B4)
---@param property string 
---@param value string 
function AppSetString(property, value) end

