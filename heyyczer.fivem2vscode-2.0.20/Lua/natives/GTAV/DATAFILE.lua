---@meta

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57A995FD75D37F56)
---@param arrayData any 
---@param value number 
function DataarrayAddFloat(arrayData, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57A995FD75D37F56)
---@param arrayData any 
---@param value number 
function ArrayValueAddFloat(arrayData, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF8B0F5A43E928C76)
---@param arrayData any 
---@param value boolean 
function DataarrayAddBool(arrayData, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF8B0F5A43E928C76)
---@param arrayData any 
---@param value boolean 
function ArrayValueAddBoolean(arrayData, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCABDB751D86FE93B)
---@param arrayData any 
---@param value number 
function DataarrayAddInt(arrayData, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCABDB751D86FE93B)
---@param arrayData any 
---@param value number 
function ArrayValueAddInteger(arrayData, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6889498B3E19C797)
---@param arrayData any 
---@return any retval 
function DataarrayAddDict(arrayData) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6889498B3E19C797)
---@param arrayData any 
---@return any retval 
function ArrayValueAddObject(arrayData) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x407F8D034F70F0C2)
---@param arrayData any 
---@param valueX number 
---@param valueY number 
---@param valueZ number 
function DataarrayAddVector(arrayData, valueX, valueY, valueZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x407F8D034F70F0C2)
---@param arrayData any 
---@param valueX number 
---@param valueY number 
---@param valueZ number 
function ArrayValueAddVector3(arrayData, valueX, valueY, valueZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2F0661C155AEEEAA)
---@param arrayData any 
---@param value string 
function DataarrayAddString(arrayData, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2F0661C155AEEEAA)
---@param arrayData any 
---@param value string 
function ArrayValueAddString(arrayData, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x50C1B2874E50C114)
---@param arrayData any 
---@param arrayIndex number 
---@return boolean retval 
function DataarrayGetBool(arrayData, arrayIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x50C1B2874E50C114)
---@param arrayData any 
---@param arrayIndex number 
---@return boolean retval 
function ArrayValueGetBoolean(arrayData, arrayIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x065DB281590CEA2D)
---@param arrayData any 
---@return number retval 
function DataarrayGetCount(arrayData) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x065DB281590CEA2D)
---@param arrayData any 
---@return number retval 
function ArrayValueGetSize(arrayData) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8B5FADCC4E3A145F)
---@param arrayData any 
---@param arrayIndex number 
---@return any retval 
function DataarrayGetDict(arrayData, arrayIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8B5FADCC4E3A145F)
---@param arrayData any 
---@param arrayIndex number 
---@return any retval 
function ArrayValueGetObject(arrayData, arrayIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3F2FFEB8D836F52)
---@param arrayData any 
---@param arrayIndex number 
---@return string retval 
function DataarrayGetString(arrayData, arrayIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3F2FFEB8D836F52)
---@param arrayData any 
---@param arrayIndex number 
---@return string retval 
function ArrayValueGetString(arrayData, arrayIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0C527B525D7CFB5)
---@param arrayData any 
---@param arrayIndex number 
---@return number retval 
function DataarrayGetFloat(arrayData, arrayIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0C527B525D7CFB5)
---@param arrayData any 
---@param arrayIndex number 
---@return number retval 
function ArrayValueGetFloat(arrayData, arrayIndex) end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A0014ADB172A3C5)
---@param arrayData any 
---@param arrayIndex number 
---@return number retval 
function DataarrayGetType(arrayData, arrayIndex) end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A0014ADB172A3C5)
---@param arrayData any 
---@param arrayIndex number 
---@return number retval 
function ArrayValueGetType(arrayData, arrayIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3E5AE19425CD74BE)
---@param arrayData any 
---@param arrayIndex number 
---@return number retval 
function DataarrayGetInt(arrayData, arrayIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3E5AE19425CD74BE)
---@param arrayData any 
---@param arrayIndex number 
---@return number retval 
function ArrayValueGetInteger(arrayData, arrayIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D2064E5B64A628A)
---@param arrayData any 
---@param arrayIndex number 
---@return vector3 retval 
function DataarrayGetVector(arrayData, arrayIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D2064E5B64A628A)
---@param arrayData any 
---@param arrayIndex number 
---@return vector3 retval 
function ArrayValueGetVector3(arrayData, arrayIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B11728527CA6E5F)
---@param objectData any 
---@param key string 
---@return any retval 
function DatadictCreateArray(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B11728527CA6E5F)
---@param objectData any 
---@param key string 
---@return any retval 
function ObjectValueAddArray(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7A983AA9DA2659ED)
---@param objectData any 
---@param key string 
---@return any retval 
function DatadictGetArray(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7A983AA9DA2659ED)
---@param objectData any 
---@param key string 
---@return any retval 
function ObjectValueGetArray(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA358F56F10732EE1)
---@param objectData any 
---@param key string 
---@return any retval 
function DatadictCreateDict(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA358F56F10732EE1)
---@param objectData any 
---@param key string 
---@return any retval 
function ObjectValueAddObject(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB6B9DDC412FCEEE2)
---@param objectData any 
---@param key string 
---@return any retval 
function DatadictGetDict(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB6B9DDC412FCEEE2)
---@param objectData any 
---@param key string 
---@return any retval 
function ObjectValueGetObject(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1186940ED72FFEEC)
---@param objectData any 
---@param key string 
---@return boolean retval 
function DatadictGetBool(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1186940ED72FFEEC)
---@param objectData any 
---@param key string 
---@return boolean retval 
function ObjectValueGetBoolean(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x06610343E73B9727)
---@param objectData any 
---@param key string 
---@return number retval 
function DatadictGetFloat(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x06610343E73B9727)
---@param objectData any 
---@param key string 
---@return number retval 
function ObjectValueGetFloat(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x78F06F6B1FB5A80C)
---@param objectData any 
---@param key string 
---@return number retval 
function DatadictGetInt(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x78F06F6B1FB5A80C)
---@param objectData any 
---@param key string 
---@return number retval 
function ObjectValueGetInteger(objectData, key) end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0x031C55ED33227371)
---@param objectData any 
---@param key string 
---@return number retval 
function DatadictGetType(objectData, key) end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0x031C55ED33227371)
---@param objectData any 
---@param key string 
---@return number retval 
function ObjectValueGetType(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3D2FD9E763B24472)
---@param objectData any 
---@param key string 
---@return string retval 
function DatadictGetString(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3D2FD9E763B24472)
---@param objectData any 
---@param key string 
---@return string retval 
function ObjectValueGetString(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x35124302A556A325)
---@param objectData any 
---@param key string 
---@param value boolean 
function DatadictSetBool(objectData, key, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x35124302A556A325)
---@param objectData any 
---@param key string 
---@param value boolean 
function ObjectValueAddBoolean(objectData, key, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x46CD3CB66E0825CC)
---@param objectData any 
---@param key string 
---@return vector3 retval 
function DatadictGetVector(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x46CD3CB66E0825CC)
---@param objectData any 
---@param key string 
---@return vector3 retval 
function ObjectValueGetVector3(objectData, key) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE7E035450A7948D5)
---@param objectData any 
---@param key string 
---@param value number 
function DatadictSetInt(objectData, key, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE7E035450A7948D5)
---@param objectData any 
---@param key string 
---@param value number 
function ObjectValueAddInteger(objectData, key, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC27E1CC2D795105E)
---@param objectData any 
---@param key string 
---@param value number 
function DatadictSetFloat(objectData, key, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC27E1CC2D795105E)
---@param objectData any 
---@param key string 
---@param value number 
function ObjectValueAddFloat(objectData, key, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8FF3847DADD8E30C)
---@param objectData any 
---@param key string 
---@param value string 
function DatadictSetString(objectData, key, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8FF3847DADD8E30C)
---@param objectData any 
---@param key string 
---@param value string 
function ObjectValueAddString(objectData, key, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6CC86E78358D5119)
function DatafileClearWatchList() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6CC86E78358D5119)
function N_0x6CC86E78358D5119() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4CD49B76338C7DEE)
---@param objectData any 
---@param key string 
---@param valueX number 
---@param valueY number 
---@param valueZ number 
function DatadictSetVector(objectData, key, valueX, valueY, valueZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4CD49B76338C7DEE)
---@param objectData any 
---@param key string 
---@param valueX number 
---@param valueY number 
---@param valueZ number 
function ObjectValueAddVector3(objectData, key, valueX, valueY, valueZ) end

---```
---NativeDB Added Parameter 1: int p0
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9AB9C1CFC8862DFB)
function DatafileDelete() end

---```
---NativeDB Added Parameter 1: int p0
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD27058A1CA2B13EE)
function DatafileCreate() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC55854C7D7274882)
function DatafileFlushMissionHeader() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC55854C7D7274882)
function N_0xC55854C7D7274882() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F5EA1C01D65A100)
---@param p0 any 
---@return boolean retval 
function DatafileDeleteRequestedFile(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F5EA1C01D65A100)
---@param p0 any 
---@return boolean retval 
function N_0x8F5EA1C01D65A100(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x15FF52B809DB2353)
---@param p0 any 
---@return boolean retval 
function DatafileHasLoadedFileData(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x15FF52B809DB2353)
---@param p0 any 
---@return boolean retval 
function N_0x15FF52B809DB2353(p0) end

---```
---NativeDB Added Parameter 1: int p0
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x906B778CA1DC72B6)
---@return string retval 
function DatafileGetFileDict() end

---```
---NativeDB Added Parameter 1: int p0
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x906B778CA1DC72B6)
---@return string retval 
function N_0x906B778CA1DC72B6() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF8CC1EBE0B62E29F)
---@param p0 any 
---@return boolean retval 
function DatafileHasValidFileData(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF8CC1EBE0B62E29F)
---@param p0 any 
---@return boolean retval 
function N_0xF8CC1EBE0B62E29F(p0) end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0xBEDB96A7584AA8CF)
---@return boolean retval 
function DatafileIsSavePending() end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0xBEDB96A7584AA8CF)
---@return boolean retval 
function N_0xBEDB96A7584AA8CF() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFCCAE5B92A830878)
---@param index number 
---@return boolean retval 
function DatafileIsValidRequestId(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFCCAE5B92A830878)
---@param index number 
---@return boolean retval 
function N_0xFCCAE5B92A830878(index) end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0xC5238C011AF405E4)
---@param filename string 
---@return boolean retval 
function DatafileLoadOfflineUgc(filename) end

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
---[Native Documentation](https://docs.fivem.net/natives/?_0xC5238C011AF405E4)
---@param filename string 
---@return boolean retval 
function LoadUgcFile(filename) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x22DA66936E0FFF37)
---@param p0 any 
---@return boolean retval 
function DatafileSelectActiveFile(p0) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x22DA66936E0FFF37)
---@param p0 any 
---@return boolean retval 
function N_0x22DA66936E0FFF37(p0) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x01095C95CD46B624)
---@param p0 number 
---@return boolean retval 
function DatafileSelectCreatorStats(p0) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x01095C95CD46B624)
---@param p0 number 
---@return boolean retval 
function N_0x01095C95CD46B624(p0) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x52818819057F2B40)
---@param p0 number 
---@return boolean retval 
function DatafileSelectUgcPlayerData(p0) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x52818819057F2B40)
---@param p0 number 
---@return boolean retval 
function N_0x52818819057F2B40(p0) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA69AC4ADE82B57A4)
---@param p0 number 
---@return boolean retval 
function DatafileSelectUgcData(p0) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA69AC4ADE82B57A4)
---@param p0 number 
---@return boolean retval 
function N_0xA69AC4ADE82B57A4(p0) end

---```
---NativeDB Added Parameter 3: Any p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9CB0BFA7A9342C3D)
---@param p0 number 
---@param p1 boolean 
---@return boolean retval 
function DatafileSelectUgcStats(p0, p1) end

---```
---NativeDB Added Parameter 3: Any p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9CB0BFA7A9342C3D)
---@param p0 number 
---@param p1 boolean 
---@return boolean retval 
function N_0x9CB0BFA7A9342C3D(p0, p1) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x83BCCE3224735F05)
---@param filename string 
---@return boolean retval 
function DatafileStartSaveToCloud(filename) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x83BCCE3224735F05)
---@param filename string 
---@return boolean retval 
function N_0x83BCCE3224735F05(filename) end

---```
---NativeDB Added Parameter 1: int p0
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2ED61456317B8178)
function DatafileStoreMissionHeader() end

---```
---NativeDB Added Parameter 1: int p0
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2ED61456317B8178)
function N_0x2ED61456317B8178() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4DFDD9EB705F8140)
---@param p0 boolean 
---@return boolean retval 
function DatafileUpdateSaveToCloud(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4DFDD9EB705F8140)
---@param p0 boolean 
---@return boolean retval 
function N_0x4DFDD9EB705F8140(p0) end

---```
---Adds the given request ID to the watch list.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAD6875BBC0FC899C)
---@param id number 
function DatafileWatchRequestId(id) end

---```
---Adds the given request ID to the watch list.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAD6875BBC0FC899C)
---@param id number 
function N_0xAD6875BBC0FC899C(id) end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6AD0BD5E087866CB)
---@param p0 any 
function N_0x6AD0BD5E087866CB(p0) end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDBF860CF1DB8E599)
---@param p0 any 
---@return any retval 
function N_0xDBF860CF1DB8E599(p0) end

---```
---NativeDB Added Parameter 6: Any p5
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA5EFC3E847D60507)
---@param contentName string 
---@param description string 
---@param tagsCsv string 
---@param contentTypeName string 
---@param publish boolean 
---@return boolean retval 
function UgcCreateMission(contentName, description, tagsCsv, contentTypeName, publish) end

---```
---NativeDB Added Parameter 6: Any p5
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA5EFC3E847D60507)
---@param contentName string 
---@param description string 
---@param tagsCsv string 
---@param contentTypeName string 
---@param publish boolean 
---@return boolean retval 
function N_0xA5EFC3E847D60507(contentName, description, tagsCsv, contentTypeName, publish) end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6EEF01087181EDD)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0xA6EEF01087181EDD(p0, p1) end

---```
---NativeDB Added Parameter 8: Any p7
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x648E7A5434AF7969)
---@param contentId string 
---@param data any 
---@param dataCount number 
---@param contentName string 
---@param description string 
---@param tagsCsv string 
---@param contentTypeName string 
---@return boolean retval 
function UgcUpdateContent(contentId, data, dataCount, contentName, description, tagsCsv, contentTypeName) end

---```
---NativeDB Added Parameter 8: Any p7
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x648E7A5434AF7969)
---@param contentId string 
---@param data any 
---@param dataCount number 
---@param contentName string 
---@param description string 
---@param tagsCsv string 
---@param contentTypeName string 
---@return boolean retval 
function N_0x648E7A5434AF7969(contentId, data, dataCount, contentName, description, tagsCsv, contentTypeName) end

---```
---NativeDB Added Parameter 8: Any p7
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC84527E235FCA219)
---@param data string 
---@param dataCount number 
---@param contentName string 
---@param description string 
---@param tagsCsv string 
---@param contentTypeName string 
---@param publish boolean 
---@return boolean retval 
function UgcCreateContent(data, dataCount, contentName, description, tagsCsv, contentTypeName, publish) end

---```
---NativeDB Added Parameter 8: Any p7
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC84527E235FCA219)
---@param data string 
---@param dataCount number 
---@param contentName string 
---@param description string 
---@param tagsCsv string 
---@param contentTypeName string 
---@param publish boolean 
---@return boolean retval 
function N_0xC84527E235FCA219(data, dataCount, contentName, description, tagsCsv, contentTypeName, publish) end

---```
---NativeDB Added Parameter 6: Any p5
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4645DE9980999E93)
---@param contentId string 
---@param contentName string 
---@param description string 
---@param tagsCsv string 
---@param contentTypeName string 
---@return boolean retval 
function UgcUpdateMission(contentId, contentName, description, tagsCsv, contentTypeName) end

---```
---NativeDB Added Parameter 6: Any p5
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4645DE9980999E93)
---@param contentId string 
---@param contentName string 
---@param description string 
---@param tagsCsv string 
---@param contentTypeName string 
---@return boolean retval 
function N_0x4645DE9980999E93(contentId, contentName, description, tagsCsv, contentTypeName) end

---```
---NativeDB Added Parameter 4: Any p3
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x692D808C34A82143)
---@param contentId string 
---@param rating number 
---@param contentTypeName string 
---@return boolean retval 
function UgcSetPlayerData(contentId, rating, contentTypeName) end

---```
---NativeDB Added Parameter 4: Any p3
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x692D808C34A82143)
---@param contentId string 
---@param rating number 
---@param contentTypeName string 
---@return boolean retval 
function N_0x692D808C34A82143(contentId, rating, contentTypeName) end

