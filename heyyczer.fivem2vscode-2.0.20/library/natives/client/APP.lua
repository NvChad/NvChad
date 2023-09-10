---@meta
---**`APP` `client` [`0x5FE1DF3342DB7DBA`](https://docs.fivem.net/natives/?_0x5FE1DF3342DB7DBA)**
---
function AppClearBlock() end

---**`APP` `client` [`0xE41C65E07A5F05FC`](https://docs.fivem.net/natives/?_0xE41C65E07A5F05FC)**
---
function AppCloseApp() end

---**`APP` `client` [`0xE8E3FCF72EAC0EF8`](https://docs.fivem.net/natives/?_0xE8E3FCF72EAC0EF8)**
---
function AppCloseBlock() end

---**`APP` `client` [`0x846AA8E7D55EE5B6`](https://docs.fivem.net/natives/?_0x846AA8E7D55EE5B6)**
---
---@return boolean
function AppDataValid() end

---**`APP` `client` [`0x44151AEA95C8A003`](https://docs.fivem.net/natives/?_0x44151AEA95C8A003)**
---
---@param appName string
---@return boolean
function AppDeleteAppData(appName) end

---**`APP` `client` [`0xC9853A2BE3DED1A6`](https://docs.fivem.net/natives/?_0xC9853A2BE3DED1A6)**
---
---@return number
function AppGetDeletedFileStatus() end

---**`APP` `client` [`0x1514FB24C02C2322`](https://docs.fivem.net/natives/?_0x1514FB24C02C2322)**
---
---@param property string
---@return number
function AppGetFloat(property) end

---**`APP` `client` [`0xD3A58A12C77D9D4B`](https://docs.fivem.net/natives/?_0xD3A58A12C77D9D4B)**
---
---@param property string
---@return number
function AppGetInt(property) end

---**`APP` `client` [`0x749B023950D2311C`](https://docs.fivem.net/natives/?_0x749B023950D2311C)**
---
---@param property string
---@return string
function AppGetString(property) end

---**`APP` `client` [`0x71EEE69745088DA0`](https://docs.fivem.net/natives/?_0x71EEE69745088DA0)**
---
---@return boolean
function AppHasLinkedSocialClubAccount() end

---**`APP` `client` [`0xCA52279A7271517F`](https://docs.fivem.net/natives/?_0xCA52279A7271517F)**
---
---@param appName string
---@return boolean
function AppHasSyncedData(appName) end

---**`APP` `client` [`0x95C5D356CDA6E85F`](https://docs.fivem.net/natives/?_0x95C5D356CDA6E85F)**
---
function AppSaveData() end

---**`APP` `client` [`0xCFD0406ADAF90D2B`](https://docs.fivem.net/natives/?_0xCFD0406ADAF90D2B)**
---
---```
---Called in the gamescripts like:
---APP::APP_SET_APP("car");
---APP::APP_SET_APP("dog");
---```
---
---@param appName string
function AppSetApp(appName) end

---**`APP` `client` [`0x262AB456A3D21F93`](https://docs.fivem.net/natives/?_0x262AB456A3D21F93)**
---
---@param blockName string
function AppSetBlock(blockName) end

---**`APP` `client` [`0x25D7687C68E0DAA4`](https://docs.fivem.net/natives/?_0x25D7687C68E0DAA4)**
---
---@param property string
---@param value number
function AppSetFloat(property, value) end

---**`APP` `client` [`0x607E8E3D3E4F9611`](https://docs.fivem.net/natives/?_0x607E8E3D3E4F9611)**
---
---@param property string
---@param value number
function AppSetInt(property, value) end

---**`APP` `client` [`0x3FF2FCEC4B7721B4`](https://docs.fivem.net/natives/?_0x3FF2FCEC4B7721B4)**
---
---@param property string
---@param value string
function AppSetString(property, value) end
