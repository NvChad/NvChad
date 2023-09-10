---@meta
---**`DATAFILE` `client` [`0x6AD0BD5E087866CB`](https://docs.fivem.net/natives/?_0x6AD0BD5E087866CB)**
---
---```
---NativeDB Introduced: v2189
---```
---
---@param p0 any
function N_0x6ad0bd5e087866cb(p0) end

---**`DATAFILE` `client` [`0xA6EEF01087181EDD`](https://docs.fivem.net/natives/?_0xA6EEF01087181EDD)**
---
---```
---NativeDB Introduced: v2189
---```
---
---@param p0 any
---@param p1 any
---@return any
function N_0xa6eef01087181edd(p0, p1) end

---**`DATAFILE` `client` [`0xDBF860CF1DB8E599`](https://docs.fivem.net/natives/?_0xDBF860CF1DB8E599)**
---
---```
---NativeDB Introduced: v2189
---```
---
---@param p0 any
---@return any
function N_0xdbf860cf1db8e599(p0) end

---**`DATAFILE` `client` [`0xF8B0F5A43E928C76`](https://docs.fivem.net/natives/?_0xF8B0F5A43E928C76)**
---
---@param arrayData any
---@param value boolean
function DataarrayAddBool(arrayData, value) end

---**`DATAFILE` `client` [`0x6889498B3E19C797`](https://docs.fivem.net/natives/?_0x6889498B3E19C797)**
---
---@param arrayData any
---@return any, any
function DataarrayAddDict(arrayData) end

---**`DATAFILE` `client` [`0x57A995FD75D37F56`](https://docs.fivem.net/natives/?_0x57A995FD75D37F56)**
---
---@param arrayData any
---@param value number
function DataarrayAddFloat(arrayData, value) end

---**`DATAFILE` `client` [`0xCABDB751D86FE93B`](https://docs.fivem.net/natives/?_0xCABDB751D86FE93B)**
---
---@param arrayData any
---@param value number
function DataarrayAddInt(arrayData, value) end

---**`DATAFILE` `client` [`0x2F0661C155AEEEAA`](https://docs.fivem.net/natives/?_0x2F0661C155AEEEAA)**
---
---@param arrayData any
---@param value string
function DataarrayAddString(arrayData, value) end

---**`DATAFILE` `client` [`0x407F8D034F70F0C2`](https://docs.fivem.net/natives/?_0x407F8D034F70F0C2)**
---
---@param arrayData any
---@param valueX number
---@param valueY number
---@param valueZ number
function DataarrayAddVector(arrayData, valueX, valueY, valueZ) end

---**`DATAFILE` `client` [`0x50C1B2874E50C114`](https://docs.fivem.net/natives/?_0x50C1B2874E50C114)**
---
---@param arrayData any
---@param arrayIndex number
---@return boolean, any
function DataarrayGetBool(arrayData, arrayIndex) end

---**`DATAFILE` `client` [`0x065DB281590CEA2D`](https://docs.fivem.net/natives/?_0x065DB281590CEA2D)**
---
---@param arrayData any
---@return number, any
function DataarrayGetCount(arrayData) end

---**`DATAFILE` `client` [`0x8B5FADCC4E3A145F`](https://docs.fivem.net/natives/?_0x8B5FADCC4E3A145F)**
---
---@param arrayData any
---@param arrayIndex number
---@return any, any
function DataarrayGetDict(arrayData, arrayIndex) end

---**`DATAFILE` `client` [`0xC0C527B525D7CFB5`](https://docs.fivem.net/natives/?_0xC0C527B525D7CFB5)**
---
---@param arrayData any
---@param arrayIndex number
---@return number, any
function DataarrayGetFloat(arrayData, arrayIndex) end

---**`DATAFILE` `client` [`0x3E5AE19425CD74BE`](https://docs.fivem.net/natives/?_0x3E5AE19425CD74BE)**
---
---@param arrayData any
---@param arrayIndex number
---@return number, any
function DataarrayGetInt(arrayData, arrayIndex) end

---**`DATAFILE` `client` [`0xD3F2FFEB8D836F52`](https://docs.fivem.net/natives/?_0xD3F2FFEB8D836F52)**
---
---@param arrayData any
---@param arrayIndex number
---@return string, any
function DataarrayGetString(arrayData, arrayIndex) end

---**`DATAFILE` `client` [`0x3A0014ADB172A3C5`](https://docs.fivem.net/natives/?_0x3A0014ADB172A3C5)**
---
---```
---Types:
---1 = Boolean
---2 = Integer
---3 = Float
---4 = String
---5 = Vector3
---6 = Object
---7 = Array
---```
---
---@param arrayData any
---@param arrayIndex number
---@return number, any
function DataarrayGetType(arrayData, arrayIndex) end

---**`DATAFILE` `client` [`0x8D2064E5B64A628A`](https://docs.fivem.net/natives/?_0x8D2064E5B64A628A)**
---
---@param arrayData any
---@param arrayIndex number
---@return vector3, any
function DataarrayGetVector(arrayData, arrayIndex) end

---**`DATAFILE` `client` [`0x5B11728527CA6E5F`](https://docs.fivem.net/natives/?_0x5B11728527CA6E5F)**
---
---@param objectData any
---@param key string
---@return any, any
function DatadictCreateArray(objectData, key) end

---**`DATAFILE` `client` [`0xA358F56F10732EE1`](https://docs.fivem.net/natives/?_0xA358F56F10732EE1)**
---
---@param objectData any
---@param key string
---@return any, any
function DatadictCreateDict(objectData, key) end

---**`DATAFILE` `client` [`0x7A983AA9DA2659ED`](https://docs.fivem.net/natives/?_0x7A983AA9DA2659ED)**
---
---@param objectData any
---@param key string
---@return any, any
function DatadictGetArray(objectData, key) end

---**`DATAFILE` `client` [`0x1186940ED72FFEEC`](https://docs.fivem.net/natives/?_0x1186940ED72FFEEC)**
---
---@param objectData any
---@param key string
---@return boolean, any
function DatadictGetBool(objectData, key) end

---**`DATAFILE` `client` [`0xB6B9DDC412FCEEE2`](https://docs.fivem.net/natives/?_0xB6B9DDC412FCEEE2)**
---
---@param objectData any
---@param key string
---@return any, any
function DatadictGetDict(objectData, key) end

---**`DATAFILE` `client` [`0x06610343E73B9727`](https://docs.fivem.net/natives/?_0x06610343E73B9727)**
---
---@param objectData any
---@param key string
---@return number, any
function DatadictGetFloat(objectData, key) end

---**`DATAFILE` `client` [`0x78F06F6B1FB5A80C`](https://docs.fivem.net/natives/?_0x78F06F6B1FB5A80C)**
---
---@param objectData any
---@param key string
---@return number, any
function DatadictGetInt(objectData, key) end

---**`DATAFILE` `client` [`0x3D2FD9E763B24472`](https://docs.fivem.net/natives/?_0x3D2FD9E763B24472)**
---
---@param objectData any
---@param key string
---@return string, any
function DatadictGetString(objectData, key) end

---**`DATAFILE` `client` [`0x031C55ED33227371`](https://docs.fivem.net/natives/?_0x031C55ED33227371)**
---
---```
---Types:
---1 = Boolean
---2 = Integer
---3 = Float
---4 = String
---5 = Vector3
---6 = Object
---7 = Array
---```
---
---@param objectData any
---@param key string
---@return number, any
function DatadictGetType(objectData, key) end

---**`DATAFILE` `client` [`0x46CD3CB66E0825CC`](https://docs.fivem.net/natives/?_0x46CD3CB66E0825CC)**
---
---@param objectData any
---@param key string
---@return vector3, any
function DatadictGetVector(objectData, key) end

---**`DATAFILE` `client` [`0x35124302A556A325`](https://docs.fivem.net/natives/?_0x35124302A556A325)**
---
---@param objectData any
---@param key string
---@param value boolean
function DatadictSetBool(objectData, key, value) end

---**`DATAFILE` `client` [`0xC27E1CC2D795105E`](https://docs.fivem.net/natives/?_0xC27E1CC2D795105E)**
---
---@param objectData any
---@param key string
---@param value number
function DatadictSetFloat(objectData, key, value) end

---**`DATAFILE` `client` [`0xE7E035450A7948D5`](https://docs.fivem.net/natives/?_0xE7E035450A7948D5)**
---
---@param objectData any
---@param key string
---@param value number
function DatadictSetInt(objectData, key, value) end

---**`DATAFILE` `client` [`0x8FF3847DADD8E30C`](https://docs.fivem.net/natives/?_0x8FF3847DADD8E30C)**
---
---@param objectData any
---@param key string
---@param value string
function DatadictSetString(objectData, key, value) end

---**`DATAFILE` `client` [`0x4CD49B76338C7DEE`](https://docs.fivem.net/natives/?_0x4CD49B76338C7DEE)**
---
---@param objectData any
---@param key string
---@param valueX number
---@param valueY number
---@param valueZ number
function DatadictSetVector(objectData, key, valueX, valueY, valueZ) end

---**`DATAFILE` `client` [`0x6CC86E78358D5119`](https://docs.fivem.net/natives/?_0x6CC86E78358D5119)**
---
function DatafileClearWatchList() end

---**`DATAFILE` `client` [`0xD27058A1CA2B13EE`](https://docs.fivem.net/natives/?_0xD27058A1CA2B13EE)**
---
---```
---NativeDB Added Parameter 1: int p0
---```
---
function DatafileCreate() end

---**`DATAFILE` `client` [`0x9AB9C1CFC8862DFB`](https://docs.fivem.net/natives/?_0x9AB9C1CFC8862DFB)**
---
---```
---NativeDB Added Parameter 1: int p0
---```
---
function DatafileDelete() end

---**`DATAFILE` `client` [`0x8F5EA1C01D65A100`](https://docs.fivem.net/natives/?_0x8F5EA1C01D65A100)**
---
---@param p0 any
---@return boolean
function DatafileDeleteRequestedFile(p0) end

---**`DATAFILE` `client` [`0xC55854C7D7274882`](https://docs.fivem.net/natives/?_0xC55854C7D7274882)**
---
function DatafileFlushMissionHeader() end

---**`DATAFILE` `client` [`0x906B778CA1DC72B6`](https://docs.fivem.net/natives/?_0x906B778CA1DC72B6)**
---
---```
---NativeDB Added Parameter 1: int p0
---```
---
---@return string
function DatafileGetFileDict() end

---**`DATAFILE` `client` [`0x15FF52B809DB2353`](https://docs.fivem.net/natives/?_0x15FF52B809DB2353)**
---
---@param p0 any
---@return boolean
function DatafileHasLoadedFileData(p0) end

---**`DATAFILE` `client` [`0xF8CC1EBE0B62E29F`](https://docs.fivem.net/natives/?_0xF8CC1EBE0B62E29F)**
---
---@param p0 any
---@return boolean
function DatafileHasValidFileData(p0) end

---**`DATAFILE` `client` [`0xBEDB96A7584AA8CF`](https://docs.fivem.net/natives/?_0xBEDB96A7584AA8CF)**
---
---```
---Example:
---if (!DATAFILE::_BEDB96A7584AA8CF())
---{
---    if (!g_109E3)
---	{
---        if (((sub_d4f() == 2) == 0) && (!NETWORK::NETWORK_IS_GAME_IN_PROGRESS()))
---{
---            if (NETWORK::NETWORK_IS_CLOUD_AVAILABLE())
---	{
---                g_17A8B = 0;
---            }
---            if (!g_D52C)
---	{
---                sub_730();
---            }
---        }
---    }
---}
---```
---
---@return boolean
function DatafileIsSavePending() end

---**`DATAFILE` `client` [`0xFCCAE5B92A830878`](https://docs.fivem.net/natives/?_0xFCCAE5B92A830878)**
---
---@param index number
---@return boolean
function DatafileIsValidRequestId(index) end

---**`DATAFILE` `client` [`0xC5238C011AF405E4`](https://docs.fivem.net/natives/?_0xC5238C011AF405E4)**
---
---```
---Loads a User-Generated Content (UGC) file. These files can be found in "[GTA5]\data\ugc" and "[GTA5]\common\patch\ugc". They seem to follow a naming convention, most likely of "[name]_[part].ugc". See example below for usage.
---Returns whether or not the file was successfully loaded.
---Example:
---DATAFILE::_LOAD_UGC_FILE("RockstarPlaylists") // loads "rockstarplaylists_00.ugc"
---```
---
---```
---NativeDB Added Parameter 2: Any p1
---```
---
---@param filename string
---@return boolean
function DatafileLoadOfflineUgc(filename) end

---**`DATAFILE` `client` [`0x22DA66936E0FFF37`](https://docs.fivem.net/natives/?_0x22DA66936E0FFF37)**
---
---```
---NativeDB Added Parameter 2: Any p1
---```
---
---@param p0 any
---@return boolean
function DatafileSelectActiveFile(p0) end

---**`DATAFILE` `client` [`0x01095C95CD46B624`](https://docs.fivem.net/natives/?_0x01095C95CD46B624)**
---
---```
---NativeDB Added Parameter 2: Any p1
---```
---
---@param p0 number
---@return boolean
function DatafileSelectCreatorStats(p0) end

---**`DATAFILE` `client` [`0xA69AC4ADE82B57A4`](https://docs.fivem.net/natives/?_0xA69AC4ADE82B57A4)**
---
---```
---NativeDB Added Parameter 2: Any p1
---```
---
---@param p0 number
---@return boolean
function DatafileSelectUgcData(p0) end

---**`DATAFILE` `client` [`0x52818819057F2B40`](https://docs.fivem.net/natives/?_0x52818819057F2B40)**
---
---```
---NativeDB Added Parameter 2: Any p1
---```
---
---@param p0 number
---@return boolean
function DatafileSelectUgcPlayerData(p0) end

---**`DATAFILE` `client` [`0x9CB0BFA7A9342C3D`](https://docs.fivem.net/natives/?_0x9CB0BFA7A9342C3D)**
---
---```
---NativeDB Added Parameter 3: Any p2
---```
---
---@param p0 number
---@param p1 boolean
---@return boolean
function DatafileSelectUgcStats(p0, p1) end

---**`DATAFILE` `client` [`0x83BCCE3224735F05`](https://docs.fivem.net/natives/?_0x83BCCE3224735F05)**
---
---```
---NativeDB Added Parameter 2: Any p1
---```
---
---@param filename string
---@return boolean
function DatafileStartSaveToCloud(filename) end

---**`DATAFILE` `client` [`0x2ED61456317B8178`](https://docs.fivem.net/natives/?_0x2ED61456317B8178)**
---
---```
---NativeDB Added Parameter 1: int p0
---```
---
function DatafileStoreMissionHeader() end

---**`DATAFILE` `client` [`0x4DFDD9EB705F8140`](https://docs.fivem.net/natives/?_0x4DFDD9EB705F8140)**
---
---@param p0 boolean
---@return boolean, boolean
function DatafileUpdateSaveToCloud(p0) end

---**`DATAFILE` `client` [`0xAD6875BBC0FC899C`](https://docs.fivem.net/natives/?_0xAD6875BBC0FC899C)**
---
---```
---Adds the given request ID to the watch list.
---```
---
---@param id number
function DatafileWatchRequestId(id) end

---**`DATAFILE` `client` [`0xC84527E235FCA219`](https://docs.fivem.net/natives/?_0xC84527E235FCA219)**
---
---```
---NativeDB Added Parameter 8: Any p7
---```
---
---@param data string
---@param dataCount number
---@param contentName string
---@param description string
---@param tagsCsv string
---@param contentTypeName string
---@param publish boolean
---@return boolean
function UgcCreateContent(data, dataCount, contentName, description, tagsCsv, contentTypeName, publish) end

---**`DATAFILE` `client` [`0xA5EFC3E847D60507`](https://docs.fivem.net/natives/?_0xA5EFC3E847D60507)**
---
---```
---NativeDB Added Parameter 6: Any p5
---```
---
---@param contentName string
---@param description string
---@param tagsCsv string
---@param contentTypeName string
---@param publish boolean
---@return boolean
function UgcCreateMission(contentName, description, tagsCsv, contentTypeName, publish) end

---**`DATAFILE` `client` [`0x692D808C34A82143`](https://docs.fivem.net/natives/?_0x692D808C34A82143)**
---
---```
---NativeDB Added Parameter 4: Any p3
---```
---
---@param contentId string
---@param rating number
---@param contentTypeName string
---@return boolean
function UgcSetPlayerData(contentId, rating, contentTypeName) end

---**`DATAFILE` `client` [`0x648E7A5434AF7969`](https://docs.fivem.net/natives/?_0x648E7A5434AF7969)**
---
---```
---NativeDB Added Parameter 8: Any p7
---```
---
---@param contentId string
---@param data any
---@param dataCount number
---@param contentName string
---@param description string
---@param tagsCsv string
---@param contentTypeName string
---@return boolean, any
function UgcUpdateContent(contentId, data, dataCount, contentName, description, tagsCsv, contentTypeName) end

---**`DATAFILE` `client` [`0x4645DE9980999E93`](https://docs.fivem.net/natives/?_0x4645DE9980999E93)**
---
---```
---NativeDB Added Parameter 6: Any p5
---```
---
---@param contentId string
---@param contentName string
---@param description string
---@param tagsCsv string
---@param contentTypeName string
---@return boolean
function UgcUpdateMission(contentId, contentName, description, tagsCsv, contentTypeName) end
