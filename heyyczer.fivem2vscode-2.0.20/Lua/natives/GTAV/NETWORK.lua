---@meta

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD45B1FFCCD52FF19)
---@param netID number 
---@param toggle boolean 
function ActivateDamageTrackerOnNetworkId(netID, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC5E3AF5289DCA81)
---@param networkHandle number 
---@param event number 
---@param amountReceived number 
---@return boolean retval 
function BadSportPlayerLeftDetected(networkHandle, event, amountReceived) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC5E3AF5289DCA81)
---@param networkHandle number 
---@param event number 
---@param amountReceived number 
---@return boolean retval 
function N_0xEC5E3AF5289DCA81(networkHandle, event, amountReceived) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x800DD4721A8B008B)
---@param amount number 
---@return boolean retval 
function CanRegisterMissionObjects(amount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBEC0816FF5ACBCDA)
---@param player number 
---@param toggle boolean 
function ActivateDamageTrackerOnPlayer(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBEC0816FF5ACBCDA)
---@param player number 
---@param toggle boolean 
function N_0xBEC0816FF5ACBCDA(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x69778E7564BADE6D)
---@param ped_amt number 
---@param vehicle_amt number 
---@param object_amt number 
---@param pickup_amt number 
---@return boolean retval 
function CanRegisterMissionEntities(ped_amt, vehicle_amt, object_amt, pickup_amt) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A49D1CB6E34AF72)
---@param amount number 
---@return boolean retval 
function CanRegisterMissionPickups(amount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBCBF4FEF9FA5D781)
---@param amount number 
---@return boolean retval 
function CanRegisterMissionPeds(amount) end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x966DD84FB6A46017)
function ClearLaunchParams() end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x966DD84FB6A46017)
function N_0x966DD84FB6A46017() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7277F1F2E085EE74)
---@param amount number 
---@return boolean retval 
function CanRegisterMissionVehicles(amount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC64DED7EF0D2FE37)
---@param p0 string 
---@return number retval 
function CloudDeleteMemberFile(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC64DED7EF0D2FE37)
---@param p0 string 
---@return number retval 
function N_0xC64DED7EF0D2FE37(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0B0CC10720653F3B)
---@return boolean retval 
function CloudGetAvailabilityCheckResult() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0B0CC10720653F3B)
---@return boolean retval 
function NetworkEnableMotionDrugged() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0B0CC10720653F3B)
---@return boolean retval 
function N_0x0B0CC10720653F3B() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C61B39930D045DA)
---@param handle number 
---@return boolean retval 
function CloudHasRequestCompleted(handle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C61B39930D045DA)
---@param handle number 
---@return boolean retval 
function N_0x4C61B39930D045DA(handle) end

---```
---Downloads prod.cloud.rockstargames.com/titles/gta5/[platform]/check.json
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4F18196C8D38768D)
function CloudCheckAvailability() end

---```
---Downloads prod.cloud.rockstargames.com/titles/gta5/[platform]/check.json
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4F18196C8D38768D)
function N_0x4F18196C8D38768D() end

---```
---Downloads prod.cloud.rockstargames.com/titles/gta5/[platform]/check.json
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4F18196C8D38768D)
function DownloadCheck() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7ABAC5DE675EE3B)
---@return boolean retval 
function CloudIsCheckingAvailability() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7ABAC5DE675EE3B)
---@return boolean retval 
function N_0xC7ABAC5DE675EE3B() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A3D5568AF297CD5)
---@param handle number 
---@return boolean retval 
function CloudDidRequestSucceed(handle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A3D5568AF297CD5)
---@param handle number 
---@return boolean retval 
function N_0x3A3D5568AF297CD5(handle) end

---```
---Takes the specified time and writes it to the structure specified in the second argument.  
---struct date_time  
---{ 
---    alignas(8) int year;  
---    alignas(8) int month;  
---    alignas(8) int day;  
---    alignas(8) int hour;  
---    alignas(8) int minute;  
---    alignas(8) int second;  
---};
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAC97AF97FA68E5D5)
---@param posixTime number 
---@param timeStructure any 
function ConvertPosixTime(posixTime, timeStructure) end

---```
---Takes the specified time and writes it to the structure specified in the second argument.  
---struct date_time  
---{ 
---    alignas(8) int year;  
---    alignas(8) int month;  
---    alignas(8) int day;  
---    alignas(8) int hour;  
---    alignas(8) int minute;  
---    alignas(8) int second;  
---};
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAC97AF97FA68E5D5)
---@param posixTime number 
---@param timeStructure any 
function GetDateAndTimeFromUnixEpoch(posixTime, timeStructure) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x62B9FEC9A11F10EF)
---@return boolean retval 
function FacebookIsSendingData() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x62B9FEC9A11F10EF)
---@return boolean retval 
function N_0x62B9FEC9A11F10EF() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA75E2B6733DA5142)
---@return boolean retval 
function FacebookDoUnkCheck() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA75E2B6733DA5142)
---@return boolean retval 
function N_0xA75E2B6733DA5142() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x43865688AE10F0D7)
---@return boolean retval 
function FacebookIsAvailable() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x43865688AE10F0D7)
---@return boolean retval 
function N_0x43865688AE10F0D7() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC48473142545431)
---@return boolean retval 
function FacebookSetCreateCharacterComplete() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC48473142545431)
---@return boolean retval 
function N_0xDC48473142545431() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x098AB65B9ED9A9EC)
---@param heistName string 
---@param cashEarned number 
---@param xpEarned number 
---@return boolean retval 
function FacebookSetHeistComplete(heistName, cashEarned, xpEarned) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x098AB65B9ED9A9EC)
---@param heistName string 
---@param cashEarned number 
---@param xpEarned number 
---@return boolean retval 
function N_0x098AB65B9ED9A9EC(heistName, cashEarned, xpEarned) end

---```
---milestoneId:  
---0 = "percentcomplete"  
---1 = "storycomplete"  
---2 = "vehicles"  
---3 = "properties"  
---4 = "psych"  
---5 = "mapreveal"  
---6 = "prologue"  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0AE1F1653B554AB9)
---@param milestoneId number 
---@return boolean retval 
function FacebookSetMilestoneComplete(milestoneId) end

---```
---milestoneId:  
---0 = "percentcomplete"  
---1 = "storycomplete"  
---2 = "vehicles"  
---3 = "properties"  
---4 = "psych"  
---5 = "mapreveal"  
---6 = "prologue"  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0AE1F1653B554AB9)
---@param milestoneId number 
---@return boolean retval 
function N_0x0AE1F1653B554AB9(milestoneId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCBBD7C4991B64809)
---@param networkHandle number 
---@param p1 any 
---@param p2 any 
---@return boolean retval 
function FilloutPmPlayerList(networkHandle, p1, p2) end

---```
---Hardcoded to not work in SP.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x416DBD4CD6ED8DD2)
---@param p0 boolean 
function FadeOutLocalPlayer(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x716B6DB9D1886106)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function FilloutPmPlayerListWithNames(p0, p1, p2, p3) end

---```
---Same as GET_CLOUD_TIME_AS_INT but returns the value as a hex string (%I64X).
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF12E6CD06C73D69E)
---@return string retval 
function GetCloudTimeAsString() end

---```
---Same as GET_CLOUD_TIME_AS_INT but returns the value as a hex string (%I64X).
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF12E6CD06C73D69E)
---@return string retval 
function N_0xF12E6CD06C73D69E() end

---Returns POSIX timestamp.
---
---Renamed from `_GET_POSIX_TIME` to `GET_CLOUD_TIME_AS_INT` because of conflicting native names ([`0xDA488F299A5B164E`](#\_0xDA488F299A5B164E))
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A73240B49945C76)
---@return number retval An int representing the cloud time.
function GetCloudTimeAsInt() end

---Returns POSIX timestamp.
---
---Renamed from `_GET_POSIX_TIME` to `GET_CLOUD_TIME_AS_INT` because of conflicting native names ([`0xDA488F299A5B164E`](#\_0xDA488F299A5B164E))
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A73240B49945C76)
---@return number retval An int representing the cloud time.
function N_0x9A73240B49945C76() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x662635855957C411)
---@param index number 
---@return string retval 
function GetCommerceItemId(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x662635855957C411)
---@param index number 
---@return string retval 
function N_0x662635855957C411(index) end

---```
---index2 is unused
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F44CBF56D79FAC0)
---@param index number 
---@param index2 number 
---@return string retval 
function GetCommerceItemCat(index, index2) end

---```
---index2 is unused
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F44CBF56D79FAC0)
---@param index number 
---@param index2 number 
---@return string retval 
function N_0x6F44CBF56D79FAC0(index, index2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB4271092CA7EDF48)
---@param index number 
---@return string retval 
function GetCommerceItemName(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB4271092CA7EDF48)
---@param index number 
---@return string retval 
function N_0xB4271092CA7EDF48(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA94551B50B4932C)
---@param index number 
---@return string retval 
function GetCommerceProductPrice(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA94551B50B4932C)
---@param index number 
---@return string retval 
function N_0xCA94551B50B4932C(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C1F7D49C39D2289)
---@return number retval 
function GetMaxNumNetworkPeds() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C1F7D49C39D2289)
---@return number retval 
function N_0x0C1F7D49C39D2289() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A7776C709904AB0)
---@param index number 
---@return number retval 
function GetCommerceItemNumCats(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A7776C709904AB0)
---@param index number 
---@return number retval 
function N_0x2A7776C709904AB0(index) end

---```
---NativeDB Added Parameter 3: int p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x722F5D28B61C5EA8)
---@param index number 
---@return string retval 
function GetCommerceItemTexturename(index) end

---```
---NativeDB Added Parameter 3: int p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x722F5D28B61C5EA8)
---@param index number 
---@return string retval 
function N_0x722F5D28B61C5EA8(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA72835064DD63E4C)
---@return number retval 
function GetMaxNumNetworkPickups() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA72835064DD63E4C)
---@return number retval 
function N_0xA72835064DD63E4C() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7BE335216B5EC7C)
---@return number retval 
function GetMaxNumNetworkObjects() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7BE335216B5EC7C)
---@return number retval 
function N_0xC7BE335216B5EC7C() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7A5487FE9FAA6B48)
---@return number retval 
function GetNetworkTime() end

---Returns the same value as [`GetNetworkTime`](#\_0x7A5487FE9FAA6B48) in freemode, but as opposed to `GetNetworkTime` it always gets the most recent time, instead of once per tick.
---
---Could be used for benchmarking since it can return times in ticks.
---[Native Documentation](https://docs.fivem.net/natives/?_0x89023FBBF9200E9F)
---@return number retval Returns the network time as an integer
function GetNetworkTimeAccurate() end

---Returns the same value as [`GetNetworkTime`](#\_0x7A5487FE9FAA6B48) in freemode, but as opposed to `GetNetworkTime` it always gets the most recent time, instead of once per tick.
---
---Could be used for benchmarking since it can return times in ticks.
---[Native Documentation](https://docs.fivem.net/natives/?_0x89023FBBF9200E9F)
---@return number retval Returns the network time as an integer
function N_0x89023FBBF9200E9F() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2EAC213D5EA0623)
---@return number retval 
function GetNumCommerceItems() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2EAC213D5EA0623)
---@return number retval 
function N_0xF2EAC213D5EA0623() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0AFCE529F69B21FF)
---@return number retval 
function GetMaxNumNetworkVehicles() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0AFCE529F69B21FF)
---@return number retval 
function N_0x0AFCE529F69B21FF() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0CD9AB83489430EA)
---@param p0 boolean 
---@return number retval 
function GetNumCreatedMissionVehicles(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0CD9AB83489430EA)
---@param p0 boolean 
---@return number retval 
function N_0x0CD9AB83489430EA(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x12B6281B6C6706C0)
---@param p0 boolean 
---@return number retval 
function GetNumCreatedMissionObjects(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x12B6281B6C6706C0)
---@param p0 boolean 
---@return number retval 
function N_0x12B6281B6C6706C0(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCB215C4B56A7FAE7)
---@param p0 boolean 
---@return number retval 
function GetNumCreatedMissionPeds(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCB215C4B56A7FAE7)
---@param p0 boolean 
---@return number retval 
function N_0xCB215C4B56A7FAE7(p0) end

---```
---p0 appears to be for MP  
---```
---
---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F13D5AE5CB17E17)
---@param p0 boolean 
---@return number retval 
function GetNumReservedMissionPeds(p0) end

---```
---p0 appears to be for MP  
---```
---
---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA81B5F10BC43AC2)
---@param p0 boolean 
---@return number retval 
function GetNumReservedMissionObjects(p0) end

---```
---p0 appears to be for MP  
---```
---
---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF3A965906452031)
---@param p0 boolean 
---@return number retval 
function GetNumReservedMissionVehicles(p0) end

---```
---0 = succeeded
---1 = pending
---2 = failed
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BD6C6DEA20E82C6)
---@param p0 number 
---@return number retval 
function GetStatusOfTextureDownload(p0) end

---```
---0 = succeeded
---1 = pending
---2 = failed
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BD6C6DEA20E82C6)
---@param p0 number 
---@return number retval 
function N_0x8BD6C6DEA20E82C6(p0) end

---```
---0 = succeeded
---1 = pending
---2 = failed
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BD6C6DEA20E82C6)
---@param p0 number 
---@return number retval 
function GetStatusOfTextureDownload(p0) end

---```
---Online version is defined here: update\update.rpf\common\data\version.txt
---Example:
---[ONLINE_VERSION_NUMBER]
---1.33
---_GET_ONLINE_VERSION() will return "1.33"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFCA9373EF340AC0A)
---@return string retval 
function GetOnlineVersion() end

---```
---Online version is defined here: update\update.rpf\common\data\version.txt
---Example:
---[ONLINE_VERSION_NUMBER]
---1.33
---_GET_ONLINE_VERSION() will return "1.33"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFCA9373EF340AC0A)
---@return string retval 
function GetGameVersion() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9E23B1777A927DAD)
---@param time number 
---@return string retval 
function GetTimeAsString(time) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9E23B1777A927DAD)
---@param time number 
---@return string retval 
function FormatTime(time) end

---```
---Subtracts the second argument from the first.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2C6FC031D46FFF0)
---@param timeA number 
---@param timeB number 
---@return number retval 
function GetTimeDifference(timeA, timeB) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA14EEF5B7CD2C30)
---@return boolean retval 
function IsCommerceDataValid() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA14EEF5B7CD2C30)
---@return boolean retval 
function N_0xEA14EEF5B7CD2C30() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2EAC52B4019E2782)
---@return boolean retval 
function IsCommerceStoreOpen() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2EAC52B4019E2782)
---@return boolean retval 
function N_0x2EAC52B4019E2782() end

---```
---Adds the first argument to the second.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x017008CCDAD48503)
---@param timeA number 
---@param timeB number 
---@return number retval 
function GetTimeOffset(timeA, timeB) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x46718ACEEDEAFC84)
---@return boolean retval 
function HasNetworkTimeStarted() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x46718ACEEDEAFC84)
---@return boolean retval 
function N_0x46718ACEEDEAFC84() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB2092A1EAA7FD45F)
---@param player number 
---@return boolean retval 
function IsDamageTrackerActiveOnPlayer(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB2092A1EAA7FD45F)
---@param player number 
---@return boolean retval 
function N_0xB2092A1EAA7FD45F(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E192E33AD436366)
---@param netID number 
---@return boolean retval 
function IsDamageTrackerActiveOnNetworkId(netID) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x21D04D7BC538C146)
---@param entity number 
---@return boolean retval 
function IsEntityGhostedToLocalPlayer(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x21D04D7BC538C146)
---@param entity number 
---@return boolean retval 
function N_0x21D04D7BC538C146(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x21D04D7BC538C146)
---@param entity number 
---@return boolean retval 
function IsEntityAGhost(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD82CF8E64C8729D8)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@return boolean retval 
function IsSphereVisibleToAnotherMachine(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x883D79C4071E18B3)
---@return boolean retval 
function IsStoreAvailableToUser() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x883D79C4071E18B3)
---@return boolean retval 
function N_0x883D79C4071E18B3() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1607996431332DF)
---@param netId number 
---@return boolean retval 
function IsNetworkIdOwnedByParticipant(netId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1607996431332DF)
---@param netId number 
---@return boolean retval 
function N_0xA1607996431332DF(netId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1607996431332DF)
---@param netId number 
---@return boolean retval 
function NetworkCanNetworkIdBeSeen(netId) end

---```
---Returns true if the two times are equal; otherwise returns false.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF5BC95857BD6D512)
---@param timeA number 
---@param timeB number 
---@return boolean retval 
function IsTimeEqualTo(timeA, timeB) end

---```
---Returns true if the two times are equal; otherwise returns false.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF5BC95857BD6D512)
---@param timeA number 
---@param timeB number 
---@return boolean retval 
function AreIntegersEqual(timeA, timeB) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE73092F4157CD126)
---@param player number 
---@return boolean retval 
function IsPlayerInCutscene(player) end

---```
---Subtracts the first argument from the second, then returns whether the result is negative.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDE350F8651E4346C)
---@param timeA number 
---@param timeB number 
---@return boolean retval 
function IsTimeMoreThan(timeA, timeB) end

---```
---Subtracts the first argument from the second, then returns whether the result is negative.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDE350F8651E4346C)
---@param timeA number 
---@param timeB number 
---@return boolean retval 
function SubtractAFromBAndCheckIfNegative(timeA, timeB) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x04918A41BC9B8157)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@return any retval 
function N_0x04918A41BC9B8157(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC3A310219E5DA62)
---@param p0 any 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@return boolean retval 
function IsSphereVisibleToPlayer(p0, p1, p2, p3, p4) end

---```
---Subtracts the second argument from the first, then returns whether the result is negative.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCB2CF5148012C8D0)
---@param timeA number 
---@param timeB number 
---@return boolean retval 
function IsTimeLessThan(timeA, timeB) end

---```
---Subtracts the second argument from the first, then returns whether the result is negative.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCB2CF5148012C8D0)
---@param timeA number 
---@param timeB number 
---@return boolean retval 
function SubtractBFromAAndCheckIfNegative(timeA, timeB) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x07EAB372C8841D99)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@return any retval 
function N_0x07EAB372C8841D99(p0, p1, p2) end

---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x023ACAB2DC9DC4A4)
---@return any retval 
function N_0x023ACAB2DC9DC4A4() end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0CF6CC51AA18F0F8)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@return any retval 
function N_0x0CF6CC51AA18F0F8(p0, p1, p2) end

---```
---NETWORK_SET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0D77A82DC2D0DA59)
---@param p0 any 
---@param p1 any 
function N_0x0D77A82DC2D0DA59(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x041C7F2A6C9894E6)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@return any retval 
function N_0x041C7F2A6C9894E6(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0EDE326D47CD0F3E)
---@param ped number 
---@param player number 
---@return boolean retval 
function N_0x0EDE326D47CD0F3E(ped, player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1171A97A3D3981B6)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function N_0x1171A97A3D3981B6(p0, p1, p2, p3) end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0F1A4B45B7693B95)
---@param p0 any 
---@param p1 any 
function N_0x0F1A4B45B7693B95(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1153FA02A659051C)
function N_0x1153FA02A659051C() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x140E6A44870A11CE)
function N_0x140E6A44870A11CE() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1398582B7F72B3ED)
---@param p0 any 
function N_0x1398582B7F72B3ED(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x144DA052257AE7D8)
---@param p0 any 
function N_0x144DA052257AE7D8(p0) end

---```
---SET_NETWORK_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x13F1FCB111B820B0)
---@param p0 boolean 
function N_0x13F1FCB111B820B0(p0) end

---```
---Checks some commerce stuff
---
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x155467ACA0F55705)
---@return number retval 
function N_0x155467ACA0F55705() end

---```
---NETWORK_IS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x14922ED3E38761F0)
---@return boolean retval 
function N_0x14922ED3E38761F0() end

---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x17C9E241111A674D)
---@param p0 any 
---@param p1 any 
function N_0x17C9E241111A674D(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x162C23CA83ED0A62)
---@param p0 any 
---@return boolean retval 
function N_0x162C23CA83ED0A62(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1D610EB0FEA716D9)
---@param p0 number 
---@return boolean retval 
function N_0x1D610EB0FEA716D9(p0) end

---```
---IS_COMMERCE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1D4DC17C38FEAFF0)
---@return boolean retval 
function N_0x1D4DC17C38FEAFF0() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F8E00FB18239600)
---@param p0 any 
function N_0x1F8E00FB18239600(p0) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F7BC3539F9E0224)
function N_0x1F7BC3539F9E0224() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2302C0264EA58D31)
function N_0x2302C0264EA58D31() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x24E4E51FC16305F9)
---@return any retval 
function N_0x24E4E51FC16305F9() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x25D990F8E0E3F13C)
function N_0x25D990F8E0E3F13C() end

---```
---Does nothing (it's a nullsub).
---
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2555CF7DA5473794)
---@return any retval 
function N_0x2555CF7DA5473794() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x265635150FB0D82E)
function N_0x265635150FB0D82E() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x261E97AD7BCF3D40)
---@param p0 boolean 
function N_0x261E97AD7BCF3D40(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x26F07DD83A5F7F98)
---@return any retval 
function N_0x26F07DD83A5F7F98() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x265559DA40B3F327)
---@param p0 any 
function N_0x265559DA40B3F327(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B1C623823DB0D9D)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@param p6 any 
---@return any retval 
function N_0x2B1C623823DB0D9D(p0, p1, p2, p3, p4, p5, p6) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2BF66D2E7414F686)
---@return any retval 
function N_0x2BF66D2E7414F686() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2D5DC831176D0114)
---@param p0 any 
---@return boolean retval 
function N_0x2D5DC831176D0114(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x283B6062A2C01E9B)
function N_0x283B6062A2C01E9B() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2E0BF682CC778D49)
---@param p0 any 
---@return boolean retval 
function N_0x2E0BF682CC778D49(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B51EDBEFC301339)
---@param p0 number 
---@param p1 string 
---@return boolean retval 
function N_0x2B51EDBEFC301339(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2E4C123D1C8A710E)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@param p6 any 
---@return any retval 
function N_0x2E4C123D1C8A710E(p0, p1, p2, p3, p4, p5, p6) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x367EF5E2F439B4C6)
---@param p0 number 
function N_0x367EF5E2F439B4C6(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2CE9D95E4051AECD)
---@param p0 any 
function N_0x2CE9D95E4051AECD(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2DA41ED6E1FCD7A5)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0x2DA41ED6E1FCD7A5(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x32EBD154CB6B8B99)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_0x32EBD154CB6B8B99(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x36391F397731595D)
---@param p0 any 
---@return any retval 
function N_0x36391F397731595D(p0) end

---I've had this return the player's ped handle sometimes, but also other random entities.
---
---Whatever p0 is, it's at least not synced to other players.
---At least not all the time, some p0 values actually output the same entity, (different handle of course, but same entity).
---But another p0 value may return an entity for player x, but not for player y (it'll just return -1 even if the entity exists on both clients).
---[Native Documentation](https://docs.fivem.net/natives/?_0x37D5F739FD494675)
---@param p0 any unknown.
---@return number retval Returns an entity handle or -1, value changes based on p0's value.
function N_0x37D5F739FD494675(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3855FB5EB2C5E8B2)
---@param p0 any 
---@return any retval 
function N_0x3855FB5EB2C5E8B2(p0) end

---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x38B7C51AB1EDC7D8)
---@param entity number 
---@param toggle boolean 
function N_0x38B7C51AB1EDC7D8(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x39917E1B4CB0F911)
---@param p0 boolean 
function N_0x39917E1B4CB0F911(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3FA36981311FA4FF)
---@param netId number 
---@param state boolean 
function N_0x3FA36981311FA4FF(netId, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4237E822315D8BA9)
---@return boolean retval 
function N_0x4237E822315D8BA9() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x45E816772E93A9DB)
---@return any retval 
function N_0x45E816772E93A9DB() end

---```
---Sets some voice chat related value.
---
---NETWORK_SET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3C5C1E2C2FF814B1)
---@param toggle boolean 
function N_0x3C5C1E2C2FF814B1(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4811BBAC21C5FCD5)
---@param p0 any 
function N_0x4811BBAC21C5FCD5(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C2A9FDC22377075)
function N_0x4C2A9FDC22377075() end

---nullsub, doesn't do anything
---
---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3FC795691834481D)
---@param p0 any 
---@param p1 any 
function N_0x3FC795691834481D(p0, p1) end

---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C9034162368E206)
---@return any retval 
function N_0x4C9034162368E206() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4348BFDA56023A2F)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0x4348BFDA56023A2F(p0, p1) end

---```
---related to: 
---NETWORK_BAIL  
---NETWORK_BAIL_TRANSITION  
---NETWORK_JOIN_GROUP_ACTIVITY  
---NETWORK_JOIN_TRANSITION  
---NETWORK_LAUNCH_TRANSITION  
---NETWORK_SESSION_HOST  
---NETWORK_SESSION_HOST_CLOSED  
---NETWORK_SESSION_HOST_FRIENDS_ONLY  
---NETWORK_SESSION_HOST_SINGLE_PLAYER  
---NETWORK_SESSION_VOICE_LEAVE  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x444C4525ECE0A4B9)
function N_0x444C4525ECE0A4B9() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D02279C83BE69FE)
---@return any retval 
function N_0x4D02279C83BE69FE() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4DF7CFFF471A7FB1)
---@param p0 any 
---@return boolean retval 
function N_0x4DF7CFFF471A7FB1(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x45A83257ED02D9BC)
function N_0x45A83257ED02D9BC() end

---NETWORK_A\*
---Similar structure as NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE but it includes this time a hash.
---In casino_slots it is used one time in a synced scene involving a ped and the slot machine?
---
---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x45F35C0EDC33B03B)
---@param netScene number 
---@param modelHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param p5 number 
---@param p6 string 
---@param p7 number 
---@param p8 number 
---@param flags number 
function N_0x45F35C0EDC33B03B(netScene, modelHash, x, y, z, p5, p6, p7, p8, flags) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x53C10C8BD774F2C9)
---@return any retval 
function N_0x53C10C8BD774F2C9() end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x4A9FDE3A5A6D0437)
---@param toggle boolean 
function N_0x4A9FDE3A5A6D0437(toggle) end

---```
---_NETWORK_CAN_VIEW_* - _NETWORK_CAN_SESSION*
---
---NETWORK_CAN_PLAY_GAMER_USER_CONTENT?
---```
---
---```
---NativeDB Introduced: v2699
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x559EBF901A8C68E0)
---@param gamerHandle any 
---@return boolean retval 
function N_0x559EBF901A8C68E0(gamerHandle) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x560B423D73015E77)
---@param p0 any 
---@return any retval 
function N_0x560B423D73015E77(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4AD490AE1536933B)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0x4AD490AE1536933B(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5324A0E3E4CE3570)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function N_0x5324A0E3E4CE3570(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x584770794D758C18)
---@param p0 any 
---@param p1 any 
---@return boolean retval 
function N_0x584770794D758C18(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5539C3EBF104A53A)
---@param p0 boolean 
function N_0x5539C3EBF104A53A(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x59D421683D31835A)
---@param p0 any 
function N_0x59D421683D31835A(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E3AA4CA2B6FB0EE)
---@param p0 any 
function N_0x5E3AA4CA2B6FB0EE(p0) end

---```
---IS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x59328EB08C5CEB2B)
---@return boolean retval 
function N_0x59328EB08C5CEB2B() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x600F8CB31C7AAB6E)
---@param p0 any 
function N_0x600F8CB31C7AAB6E(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5A34CD9C3C5BEC44)
---@param p0 any 
---@return boolean retval 
function N_0x5A34CD9C3C5BEC44(p0) end

---```
---Returns true if profile setting 901 is set to true and sets it to false.
---
---NETWORK_C*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x60EDD13EB3AC1FF3)
---@return boolean retval 
function N_0x60EDD13EB3AC1FF3() end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x5C497525F803486B)
function N_0x5C497525F803486B() end

---```
---NETWORK_GET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x64D779659BC37B19)
---@param entity number 
---@return vector3 retval 
function N_0x64D779659BC37B19(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5ECD378EE64450AB)
---@param p0 any 
function N_0x5ECD378EE64450AB(p0) end

---Hardcoded to return false.
---
---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x64E5C4CC82847B73)
---@return boolean retval 
function N_0x64E5C4CC82847B73() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x68103E2247887242)
function N_0x68103E2247887242() end

---```
---NETWORK_GET_NUM_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x617F49C2668E6155)
---@return number retval 
function N_0x617F49C2668E6155() end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x6BFF5F84102DF80A)
---@param player number 
function N_0x6BFF5F84102DF80A(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x63B406D7884BFA95)
---@return any retval 
function N_0x63B406D7884BFA95() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x67FC09BC554A75E5)
---@return any retval Hard-coded to always return 0.
function N_0x67FC09BC554A75E5() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6CE50E47F5543D0C)
function N_0x6CE50E47F5543D0C() end

---```
---Does nothing (it's a nullsub).
---
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6FD992C4A1C1B986)
---@return any retval 
function N_0x6FD992C4A1C1B986() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x692D58DF40657E8C)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 boolean 
---@return boolean retval 
function N_0x692D58DF40657E8C(p0, p1, p2, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x702BC4D605522539)
---@param p0 any 
function N_0x702BC4D605522539(p0) end

---```
---Sets some voice chat related value.
---NETWORK_SET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6A5D89D7769A40D8)
---@param toggle boolean 
function N_0x6A5D89D7769A40D8(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6FB7BB3607D27FA2)
---@return any retval Hard-coded to always return 0.
function N_0x6FB7BB3607D27FA2() end

---```
---Has something to do with a host request.
---
---NETWORK_RE*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x741A3D8380319A81)
function N_0x741A3D8380319A81() end

---```
---Hardcoded to return zero.
---==== PS4 specific info ====
---Returns some sort of unavailable reason:
----1 = REASON_INVALID
--- 0 = REASON_OTHER
--- 1 = REASON_SYSTEM_UPDATE
--- 2 = REASON_GAME_UPDATE
--- 3 = REASON_SIGNED_OUT
--- 4 = REASON_AGE
--- 5 = REASON_CONNECTION
---=================================
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x74FB3E29E6D10FA9)
---@return number retval Hard-coded to always return 0.
function N_0x74FB3E29E6D10FA9() end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x76B3F29D3F967692)
---@param p0 any 
---@param p1 any 
function N_0x76B3F29D3F967692(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7808619F31FF22DB)
---@return any retval Hard-coded to always return 1.
function N_0x7808619F31FF22DB() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x742B58F723233ED9)
---@param p0 any 
---@return any retval 
function N_0x742B58F723233ED9(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x793FF272D5B365F4)
---@return any retval 
function N_0x793FF272D5B365F4() end

---```
---Checks some commerce stuff
---
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x754615490A029508)
---@return number retval 
function N_0x754615490A029508() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7D395EA61622E116)
---@param p0 boolean 
function N_0x7D395EA61622E116(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x77FADDCBE3499DF7)
---@param p0 any 
function N_0x77FADDCBE3499DF7(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x78321BEA235FD8CD)
---@param p0 any 
---@param p1 boolean 
---@return boolean retval 
function N_0x78321BEA235FD8CD(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7DB53B37A2F211A0)
---@return number retval 
function N_0x7DB53B37A2F211A0() end

---```
---IS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7EF7649B64D7FF10)
---@param entity number 
---@return boolean retval 
function N_0x7EF7649B64D7FF10(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x83FE8D7229593017)
function N_0x83FE8D7229593017() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7FCC39C46C3C03BD)
---@param p0 number 
---@return boolean retval 
function N_0x7FCC39C46C3C03BD(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x88B588B41FF7868E)
---@return any retval Hard-coded to always return 0.
function N_0x88B588B41FF7868E() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x83660B734994124D)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@return any retval 
function N_0x83660B734994124D(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8B0C2964BA471961)
---@return any retval Hard-coded to always return 0.
function N_0x8B0C2964BA471961() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8C8D2739BA44AF0F)
---@param p0 any 
---@return boolean retval 
function N_0x8C8D2739BA44AF0F(p0) end

---NETWORK_SET_\*
---
---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8EF52ACAECC51D9C)
---@param toggle boolean 
function N_0x8EF52ACAECC51D9C(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8B4FFC790CA131EF)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return any retval 
function N_0x8B4FFC790CA131EF(p0, p1, p2, p3) end

---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x906CA41A4B74ECA4)
---@return any retval 
function N_0x906CA41A4B74ECA4() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x973D76AA760A6CB6)
---@param p0 boolean 
function N_0x973D76AA760A6CB6(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x94538037EE44F5CF)
---@param p0 boolean 
function N_0x94538037EE44F5CF(p0) end

---```
---Sets some voice chat related value.
---
---NETWORK_SET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D7AFCBF21C51712)
---@param toggle boolean 
function N_0x9D7AFCBF21C51712(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9465E683B12D3F6B)
function N_0x9465E683B12D3F6B() end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x95BAF97C82464629)
---@param p0 any 
---@param p1 any 
function N_0x95BAF97C82464629(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0FA4EC6A05DA44E)
---@return any retval Hard-coded to always return 0.
function N_0xA0FA4EC6A05DA44E() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA12D3A5A3753CC23)
---@return any retval 
function N_0xA12D3A5A3753CC23() end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D724B400A7E8FFC)
---@param p0 any 
---@param p1 any 
function N_0x9D724B400A7E8FFC(p0, p1) end

---```
---Appears to set whether a transition should be started when the session is migrating.
---
---NETWORK_SET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2E9C1AB8A92E8CD)
---@param toggle boolean 
function N_0xA2E9C1AB8A92E8CD(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9FEDF86898F100E9)
---@return any retval 
function N_0x9FEDF86898F100E9() end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6FCECCF4721D679)
---@param p0 any 
function N_0xA6FCECCF4721D679(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA306F470D1660581)
---@return any retval 
function N_0xA306F470D1660581() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA8ACB6459542A8C8)
---@return any retval 
function N_0xA8ACB6459542A8C8() end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA5EAFE473E45C442)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@param p6 any 
---@param p7 any 
---@param p8 any 
---@param p9 any 
function N_0xA5EAFE473E45C442(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

---```
---NativeDB Added Parameter 1: Entity entity
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA5FAFCD2C5F5E47)
---@return vector3 retval 
function N_0xAA5FAFCD2C5F5E47() end

---```
---gets 2 floats from the CNetGamePlayer of p0 and stores them in p1 and p2.  
---Possibly waypoint?  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xADB57E5B663CCA8B)
---@param p0 number 
---@param p1 number 
---@param p2 number 
function N_0xADB57E5B663CCA8B(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7862BC5ED1DFD7E)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function N_0xA7862BC5ED1DFD7E(p0, p1, p2, p3) end

---```
---Does nothing (it's a nullsub).
---
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAEDF1BC1C133D6E3)
---@return any retval 
function N_0xAEDF1BC1C133D6E3() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAEAB987727C5A8A4)
---@param p0 any 
---@return boolean retval 
function N_0xAEAB987727C5A8A4(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB13E88E655E5A3BC)
function N_0xB13E88E655E5A3BC() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB37E4E6A2388CA7B)
---@return boolean retval 
function N_0xB37E4E6A2388CA7B() end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0xB606E6CC59664972)
---@param p0 any 
function N_0xB606E6CC59664972(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB309EBEA797E001F)
---@param p0 any 
---@return any retval 
function N_0xB309EBEA797E001F(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB5D3453C98456528)
---@return any retval 
function N_0xB5D3453C98456528() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB746D20B17F2A229)
---@param p0 any 
---@param p1 any 
---@return boolean retval 
function N_0xB746D20B17F2A229(p0, p1) end

---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9351A07A0D458B1)
---@param p0 any 
---@return any retval 
function N_0xB9351A07A0D458B1(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBD545D44CCE70597)
---@return boolean retval Hard-coded to always return 1.
function N_0xBD545D44CCE70597() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA7F0B77D80A4EB7)
---@param p0 any 
---@param p1 any 
function N_0xBA7F0B77D80A4EB7(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBF22E0F32968E967)
---@param player number 
---@param p1 boolean 
function N_0xBF22E0F32968E967(player, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC42DD763159F3461)
---@return boolean retval 
function N_0xC42DD763159F3461() end

---```
---NETWORK_IS_TRANSITION_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC571D0E77D8BBC29)
---@return boolean retval 
function N_0xC571D0E77D8BBC29() end

---```
---NETWORK_SESSION_IS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBDB6F89C729CF388)
---@return boolean retval 
function N_0xBDB6F89C729CF388() end

---NETWORK_S\*
---
---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA59CCAE5D01E4CE)
function N_0xCA59CCAE5D01E4CE() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC32EA7A2F6CA7557)
---@return any retval 
function N_0xC32EA7A2F6CA7557() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCFEB46DCD7D8D5EB)
---@param p0 boolean 
function N_0xCFEB46DCD7D8D5EB(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC434133D9BA52777)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0xC434133D9BA52777(p0, p1) end

---```
---NETWORK_SESSION_IS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD313DE83394AF134)
---@return boolean retval 
function N_0xD313DE83394AF134() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC87E740D9F3872CC)
---@return any retval 
function N_0xC87E740D9F3872CC() end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD6D7478CA62B8D41)
---@param p0 any 
---@param p1 any 
function N_0xD6D7478CA62B8D41(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA575C391FEA25CC)
---@param p0 any 
function N_0xCA575C391FEA25CC(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7B6C73CAD419BCF)
---@param p0 boolean 
function N_0xD7B6C73CAD419BCF(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCFEB8AF24FC1D0BB)
---@param toggle boolean 
function NetworkBlockJoinQueueInvites(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCFEB8AF24FC1D0BB)
---@param toggle boolean 
function N_0xCFEB8AF24FC1D0BB(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCFEB8AF24FC1D0BB)
---@param toggle boolean 
function NetworkBlockInvites2(toggle) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE42D626EEC94E5D9)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@param p6 any 
function N_0xE42D626EEC94E5D9(p0, p1, p2, p3, p4, p5, p6) end

---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDB663CC9FF3407A9)
---@param player number 
---@return number retval 
function N_0xDB663CC9FF3407A9(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE16AA70CE9BEEDC3)
---@param p0 any 
---@return any retval 
function N_0xE16AA70CE9BEEDC3(p0) end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA8C0DDB10E2822A)
---@param p0 any 
---@param p1 any 
function N_0xEA8C0DDB10E2822A(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEBF8284D8CADEB53)
function N_0xEBF8284D8CADEB53() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6717E652B8C8D8A)
---@param p0 any 
---@param p1 any 
function N_0xE6717E652B8C8D8A(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEBFA8D50ADDC54C4)
---@param p0 any 
---@return boolean retval 
function N_0xEBFA8D50ADDC54C4(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEBCAB9E5048434F4)
---@return any retval Hard-coded to always return 1.
function N_0xEBCAB9E5048434F4() end

---```
---NETWORK_RE*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF083835B70BA9BFE)
function N_0xF083835B70BA9BFE() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF287F506767CC8A9)
---@return any retval 
function N_0xF287F506767CC8A9() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6F4383B7C92F11A)
---@param p0 any 
function N_0xF6F4383B7C92F11A(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFA2888E3833C8E96)
function N_0xFA2888E3833C8E96() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF49ABC20D8552257)
---@param p0 any 
function N_0xF49ABC20D8552257(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFAE628F1E9ADB239)
---@param p0 number | string 
---@param p1 number 
---@param p2 number | string 
function N_0xFAE628F1E9ADB239(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB680D403909DC70)
---@param p0 any 
---@param p1 any 
function N_0xFB680D403909DC70(p0, p1) end

---```
---gets the entity id of a network id  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBFFEAB45A9A9094A)
---@param netHandle number 
---@return number retval 
function NetToEnt(netHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF814FEC6A19FD6E0)
function N_0xF814FEC6A19FD6E0() end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFAC18E7356BD3210)
function N_0xFAC18E7356BD3210() end

---```
---gets the ped id of a network id  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBDCD95FC216A8B3E)
---@param netHandle number 
---@return number retval 
function NetToPed(netHandle) end

---```
---p0 is always 0. p1 is pointing to a global.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB1F9381E80FA13F)
---@param p0 number 
---@param p1 any 
---@return any retval 
function N_0xFB1F9381E80FA13F(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x367B936610BA360C)
---@param netHandle number 
---@return number retval 
function NetToVeh(netHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFD75DABC0957BF33)
---@param p0 boolean 
function N_0xFD75DABC0957BF33(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA6A47A573ABB75A)
---@param tunableContext string 
---@param tunableName string 
---@return boolean retval 
function NetworkAccessTunableBool(tunableContext, tunableName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA6A47A573ABB75A)
---@param tunableContext string 
---@param tunableName string 
---@return boolean retval 
function N_0xAA6A47A573ABB75A(tunableContext, tunableName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE5608CA7BC163A5F)
---@param tunableContext string 
---@param tunableName string 
---@param value number 
---@return boolean retval 
function NetworkAccessTunableFloat(tunableContext, tunableName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE5608CA7BC163A5F)
---@param tunableContext string 
---@param tunableName string 
---@param value number 
---@return boolean retval 
function N_0xE5608CA7BC163A5F(tunableContext, tunableName, value) end

---```
---gets the object id of a network id  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD8515F5FEA14CB3F)
---@param netHandle number 
---@return number retval 
function NetToObj(netHandle) end

---```
---NETWORK_RE*
---
---Triggers a CEventNetworkInviteConfirmed event
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x62A0296C1BB1CEB3)
---@return boolean retval 
function NetworkAcceptInvite() end

---```
---NETWORK_RE*
---
---Triggers a CEventNetworkInviteConfirmed event
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x62A0296C1BB1CEB3)
---@return boolean retval 
function N_0x62A0296C1BB1CEB3() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFA91550DF9318B22)
---@param p0 any 
---@return boolean retval 
function NetworkAcceptPresenceInvite(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BE1146DFD5D4468)
---@param tunableContext string 
---@param tunableName string 
---@param value number 
---@return boolean retval 
function NetworkAccessTunableInt(tunableContext, tunableName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BE1146DFD5D4468)
---@param tunableContext string 
---@param tunableName string 
---@param value number 
---@return boolean retval 
function N_0x8BE1146DFD5D4468(tunableContext, tunableName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA16B69D93D71A45)
---@param tunableContext number | string 
---@param tunableName number | string 
---@return boolean retval 
function NetworkAccessTunableBoolHash(tunableContext, tunableName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA16B69D93D71A45)
---@param tunableContext number | string 
---@param tunableName number | string 
---@return boolean retval 
function N_0xEA16B69D93D71A45(tunableContext, tunableName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA16B69D93D71A45)
---@param tunableContext number | string 
---@param tunableName number | string 
---@return boolean retval 
function NetworkAccessTunableBoolHash(tunableContext, tunableName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x972BC203BBC4C4D5)
---@param tunableContext number | string 
---@param tunableName number | string 
---@param value number 
---@return boolean retval 
function NetworkAccessTunableFloatHash(tunableContext, tunableName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x972BC203BBC4C4D5)
---@param tunableContext number | string 
---@param tunableName number | string 
---@param value number 
---@return boolean retval 
function N_0x972BC203BBC4C4D5(tunableContext, tunableName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x972BC203BBC4C4D5)
---@param tunableContext number | string 
---@param tunableName number | string 
---@param value number 
---@return boolean retval 
function NetworkAccessTunableFloatHash(tunableContext, tunableName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x40FCE03E50E8DBE8)
---@param tunableContext number | string 
---@param tunableName number | string 
---@param value number 
---@return boolean retval 
function NetworkAccessTunableIntHash(tunableContext, tunableName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x40FCE03E50E8DBE8)
---@param tunableContext number | string 
---@param tunableName number | string 
---@param value number 
---@return boolean retval 
function N_0x40FCE03E50E8DBE8(tunableContext, tunableName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x40FCE03E50E8DBE8)
---@param tunableContext number | string 
---@param tunableName number | string 
---@param value number 
---@return boolean retval 
function NetworkAccessTunableIntHash(tunableContext, tunableName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC88156EBB786F8D5)
---@return any retval 
function NetworkActionFollowInvite() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC88156EBB786F8D5)
---@return any retval 
function N_0xC88156EBB786F8D5() end

---To remove, see: [`NETWORK_REMOVE_ENTITY_AREA`](#\_0x93CF869BAA0C4874).
---
---See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
---[Native Documentation](https://docs.fivem.net/natives/?_0x376C6375BA60293A)
---@param x1 number X dimension of the angled area 'origin'
---@param y1 number Y dimension of the angled area 'origin'
---@param z1 number Z dimension of the angled area 'origin'
---@param x2 number X dimension of the angled area 'extent'
---@param y2 number Y dimension of the angled area 'extent'
---@param z2 number Z dimension of the angled area 'extent'
---@param width number Width of the angled area
---@return any retval 
function NetworkAddEntityAngledArea(x1, y1, z1, x2, y2, z2, width) end

---To remove, see: [`NETWORK_REMOVE_ENTITY_AREA`](#\_0x93CF869BAA0C4874).
---
---See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
---[Native Documentation](https://docs.fivem.net/natives/?_0x376C6375BA60293A)
---@param x1 number X dimension of the angled area 'origin'
---@param y1 number Y dimension of the angled area 'origin'
---@param z1 number Z dimension of the angled area 'origin'
---@param x2 number X dimension of the angled area 'extent'
---@param y2 number Y dimension of the angled area 'extent'
---@param z2 number Z dimension of the angled area 'extent'
---@param width number Width of the angled area
---@return any retval 
function N_0x376C6375BA60293A(x1, y1, z1, x2, y2, z2, width) end

---To remove, see: [`NETWORK_REMOVE_ENTITY_AREA`](#\_0x93CF869BAA0C4874).
---
---See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
---[Native Documentation](https://docs.fivem.net/natives/?_0x376C6375BA60293A)
---@param x1 number X dimension of the angled area 'origin'
---@param y1 number Y dimension of the angled area 'origin'
---@param z1 number Z dimension of the angled area 'origin'
---@param x2 number X dimension of the angled area 'extent'
---@param y2 number Y dimension of the angled area 'extent'
---@param z2 number Z dimension of the angled area 'extent'
---@param width number Width of the angled area
---@return any retval 
function NetworkAddEntityAngledArea(x1, y1, z1, x2, y2, z2, width) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x494C8FB299290269)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@return any retval 
function NetworkAddEntityArea(p0, p1, p2, p3, p4, p5) end

---```
---..  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x236406F60CF216D6)
---@param p0 number 
---@param p1 number 
function NetworkAddFollowers(p0, p1) end

---```
---..  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x236406F60CF216D6)
---@param p0 number 
---@param p1 number 
function N_0x236406F60CF216D6(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8E02D73914064223)
---@param networkHandle number 
---@param message string 
---@return boolean retval 
function NetworkAddFriend(networkHandle, message) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x25B99872D588A101)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@return any retval 
function NetworkAddEntityDisplayedBoundaries(p0, p1, p2, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x25B99872D588A101)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@return any retval 
function N_0x25B99872D588A101(p0, p1, p2, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2404D68CBC855FA)
---@param entity number 
---@param netScene number 
---@param animDict string 
---@param animName string 
---@param speed number 
---@param speedMulitiplier number 
---@param flag number 
function NetworkAddEntityToSynchronisedScene(entity, netScene, animDict, animName, speed, speedMulitiplier, flag) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF8BD3B0BD6D42D7)
---@param netScene number 
---@param animDict string 
---@param animName string 
function NetworkAddSynchronisedSceneCamera(netScene, animDict, animName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF8BD3B0BD6D42D7)
---@param netScene number 
---@param animDict string 
---@param animName string 
function N_0xCF8BD3B0BD6D42D7(netScene, animDict, animName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x267C78C60E806B9A)
---@param entity number 
---@param toggle boolean 
function NetworkAllowLocalEntityAttachment(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x267C78C60E806B9A)
---@param entity number 
---@param toggle boolean 
function N_0x267C78C60E806B9A(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF02A2C93F1F26DA)
---@param networkHandle any 
---@return boolean retval 
function NetworkAmIMutedByGamer(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x742A637471BCECD9)
---@param ped number 
---@param netScene number 
---@param animDict string 
---@param animnName string 
---@param blendInSpeed number 
---@param blendOutSpeed number 
---@param duration number 
---@param flag number 
---@param playbackRate number 
---@param p9 any 
function NetworkAddPedToSynchronisedScene(ped, netScene, animDict, animnName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, p9) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D6981DFC91A8604)
---@param player number 
---@return boolean retval 
function NetworkAmIMutedByPlayer(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFAFC23AEE23868DB)
---@return boolean retval 
function NetworkAllocateTunablesRegistrationDataMap() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFAFC23AEE23868DB)
---@return boolean retval 
function N_0xFAFC23AEE23868DB() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x99B72C7ABDE5C910)
---@param ped number 
---@param player number 
---@return boolean retval 
function NetworkApplyCachedPlayerHeadBlendData(ped, player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x99B72C7ABDE5C910)
---@param ped number 
---@param player number 
---@return boolean retval 
function N_0x99B72C7ABDE5C910(ped, player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x99B72C7ABDE5C910)
---@param ped number 
---@param player number 
---@return boolean retval 
function NetworkCopyPedBlendData(ped, player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x15337C7C268A27B2)
---@param networkHandle any 
---@return boolean retval 
function NetworkAmIBlockedByGamer(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x521638ADA1BA0D18)
---@param p0 number 
---@param p1 number 
function NetworkApplyTransitionParameter(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x521638ADA1BA0D18)
---@param p0 number 
---@param p1 number 
function N_0x521638ADA1BA0D18(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x87F395D957D4353D)
---@param player number 
---@return boolean retval 
function NetworkAmIBlockedByPlayer(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEBEFC2E77084F599)
---@param p0 number 
---@param string string 
---@param p2 boolean 
function NetworkApplyTransitionParameterString(p0, string, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEBEFC2E77084F599)
---@param p0 number 
---@param string string 
---@param p2 boolean 
function N_0xEBEFC2E77084F599(p0, string, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE66C690248F11150)
---@param ped number 
---@param p1 number 
function NetworkApplyPedScarData(ped, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE66C690248F11150)
---@param ped number 
---@param p1 number 
function N_0xE66C690248F11150(ped, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57DBA049E110F217)
---@param netHandle1 number 
---@param netHandle2 number 
---@return boolean retval 
function NetworkAreHandlesTheSame(netHandle1, netHandle2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDBD2056652689917)
---@param x number 
---@param y number 
---@param z number 
function NetworkApplyVoiceProximityOverride(x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDBD2056652689917)
---@param x number 
---@param y number 
---@param z number 
function IsNetworkVehicleBeenDamagedByAnyObject(x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2615AA2A695930C1)
---@param p0 any 
---@return boolean retval 
function NetworkAreTransitionDetailsValid(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2615AA2A695930C1)
---@param p0 any 
---@return boolean retval 
function N_0x2615AA2A695930C1(p0) end

---```
---Getter for SET_NETWORK_CUTSCENE_ENTITIES.
---```
---
---```
---NativeDB Introduced: v2699
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x66D6A5E9C511214A)
---@return boolean retval 
function NetworkAreCutsceneEntities() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x478DCBD2A98B705A)
---@param netScene number 
---@param entity number 
---@param bone number 
function NetworkAttachSynchronisedSceneToEntity(netScene, entity, bone) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA9775570DB788CF)
---@return boolean retval 
function NetworkAreSocialClubPoliciesCurrent() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA9775570DB788CF)
---@return boolean retval 
function N_0xBA9775570DB788CF() end

---```
---NativeDB Introduced: v2699
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x023782EFC70585EE)
function NetworkBailTransitionQuickmatch() end

---```
---NativeDB Added Parameter 1: int p0
---NativeDB Added Parameter 2: int p1
---NativeDB Added Parameter 3: int p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x95914459A87EBA28)
function NetworkBail() end

---```
---NativeDB Added Parameter 1: int p0
---NativeDB Added Parameter 2: int p1
---NativeDB Added Parameter 3: int p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEAA572036990CD1B)
function NetworkBailTransition() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x34F9E9049454A7A0)
---@param toggle boolean 
function NetworkBlockInvites(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6B07B9CE4D390375)
---@param p0 boolean 
function NetworkBlockKickedPlayers(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6B07B9CE4D390375)
---@param p0 boolean 
function N_0x6B07B9CE4D390375(p0) end

---```
---11 - Need to download tunables.  
---12 - Need to download background script.  
---Returns 1 if the multiplayer is loaded, otherwhise 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAF50DA1A3F8B1BA4)
---@param loadingState number 
---@return boolean retval 
function NetworkCanAccessMultiplayer(loadingState) end

---```
---11 - Need to download tunables.  
---12 - Need to download background script.  
---Returns 1 if the multiplayer is loaded, otherwhise 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAF50DA1A3F8B1BA4)
---@param loadingState number 
---@return boolean retval 
function N_0xAF50DA1A3F8B1BA4(loadingState) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBD0BE0BFC927EAC1)
function NetworkCacheLocalPlayerHeadBlendData() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBD0BE0BFC927EAC1)
function N_0xBD0BE0BFC927EAC1() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA150A4F065806B1F)
---@param networkHandle number 
---@return boolean retval 
function NetworkCanCommunicateWithGamer(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x580CE4438479CC61)
---@return boolean retval 
function NetworkCanBail() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7E782A910C362C25)
---@return boolean retval 
function NetworkCanEnterMultiplayer() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x07DD29D5E22763F1)
---@param networkHandle any 
---@return boolean retval 
function NetworkCanPlayMultiplayerWithGamer(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x07DD29D5E22763F1)
---@param networkHandle any 
---@return boolean retval 
function N_0x07DD29D5E22763F1(networkHandle) end

---```
---Same as NETWORK_CAN_COMMUNICATE_WITH_GAMER
---
---NETWORK_CAN_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F5D1AD832AEB06C)
---@param networkHandle any 
---@return boolean retval 
function NetworkCanCommunicateWithGamer2(networkHandle) end

---```
---Same as NETWORK_CAN_COMMUNICATE_WITH_GAMER
---
---NETWORK_CAN_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F5D1AD832AEB06C)
---@param networkHandle any 
---@return boolean retval 
function N_0x8F5D1AD832AEB06C(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC927EC229934AF60)
---@return boolean retval 
function NetworkCanSetWaypoint() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x135F9B7B7ADD2185)
---@param networkHandle any 
---@return boolean retval 
function NetworkCanGamerPlayMultiplayerWithMe(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x135F9B7B7ADD2185)
---@param networkHandle any 
---@return boolean retval 
function N_0x135F9B7B7ADD2185(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB8F2A6F3DF08CBE)
function NetworkCancelRespawnSearch() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB8F2A6F3DF08CBE)
function N_0xFB8F2A6F3DF08CBE() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4EEBC3694E49C572)
---@return boolean retval 
function NetworkCanSessionEnd() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x83F28CE49FBBFFBA)
---@param p0 number 
---@param p1 number 
---@param p2 boolean 
---@return boolean retval 
function NetworkCheckCommunicationPrivileges(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x83F28CE49FBBFFBA)
---@param p0 number 
---@param p1 number 
---@param p2 boolean 
---@return boolean retval 
function N_0x83F28CE49FBBFFBA(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x595F028698072DD9)
---@param p0 number 
---@param p1 number 
---@param p2 boolean 
---@return boolean retval 
function NetworkCheckUserContentPrivileges(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x595F028698072DD9)
---@param p0 number 
---@param p1 number 
---@param p2 boolean 
---@return boolean retval 
function N_0x595F028698072DD9(p0, p1, p2) end

---```
---Only documented...  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x729E3401F0430686)
---@param animDict string 
---@param animName string 
---@return boolean retval 
function NetworkClanAnimation(animDict, animName) end

---```
---Only documented...  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x729E3401F0430686)
---@param animDict string 
---@param animName string 
---@return boolean retval 
function N_0x729E3401F0430686(animDict, animName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB57A49545BA53CE7)
---@param networkHandle any 
---@return boolean retval 
function NetworkCanViewGamerUserContent(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB57A49545BA53CE7)
---@param networkHandle any 
---@return boolean retval 
function N_0xB57A49545BA53CE7(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEEEDA5E6D7080987)
---@param p0 any 
---@param p1 any 
function NetworkChangeTransitionSlots(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEEEDA5E6D7080987)
---@param p0 any 
---@param p1 any 
function N_0xEEEDA5E6D7080987(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA989044E70010ABE)
---@param networkHandle number 
---@return boolean retval 
function NetworkClanDownloadMembership(networkHandle) end

---Checks if the friendDataIndex in the friend data manager contains the data for the specified networkHandle
---[Native Documentation](https://docs.fivem.net/natives/?_0x44B37CDCAE765AAE)
---@param friendDataIndex number 
---@param networkHandle number 
---@return boolean retval 
function NetworkCheckDataManagerSucceededForHandle(friendDataIndex, networkHandle) end

---Checks if the friendDataIndex in the friend data manager contains the data for the specified networkHandle
---[Native Documentation](https://docs.fivem.net/natives/?_0x44B37CDCAE765AAE)
---@param friendDataIndex number 
---@param networkHandle number 
---@return boolean retval 
function N_0x44B37CDCAE765AAE(friendDataIndex, networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5835D9CD92E83184)
---@param netHandle any 
---@param txdName string 
---@return boolean retval 
function NetworkClanGetEmblemTxdName(netHandle, txdName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5835D9CD92E83184)
---@param netHandle any 
---@param txdName string 
---@return boolean retval 
function N_0x5835D9CD92E83184(netHandle, txdName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5835D9CD92E83184)
---@param netHandle any 
---@param txdName string 
---@return boolean retval 
function NetworkGetPlayerCrewEmblemTxdName(netHandle, txdName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3F64A6A91432477)
---@return boolean retval True if there are any pending downloads, false otherwise.
function NetworkClanAnyDownloadMembershipPending() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3F64A6A91432477)
---@return boolean retval True if there are any pending downloads, false otherwise.
function N_0xB3F64A6A91432477() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3F64A6A91432477)
---@return boolean retval True if there are any pending downloads, false otherwise.
function NetworkIsClanMembershipFinishedDownloading() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B9E023DC6EBEDC0)
---@param p0 any 
---@return boolean retval 
function NetworkClanDownloadMembershipPending(p0) end

---Retrieves a membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP).
---
---Test C++ code:
---https://pastebin.com/CD8wni4C
---[Native Documentation](https://docs.fivem.net/natives/?_0xC8BC2011F67B3411)
---@param networkHandle number A player network handle.
---@param clanMembership number Output buffer for the membership data. Also known as "desc".
---@param membershipIndex number If the player has multiple crews/memberships, use \[0-9], or -1 to get the active crew/membership.
---@return boolean retval Returns true on success, false otherwise.
function NetworkClanGetMembership(networkHandle, clanMembership, membershipIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F471B79ACC90BEF)
---@return number retval 
function NetworkClanGetLocalMembershipsCount() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F471B79ACC90BEF)
---@return number retval 
function N_0x1F471B79ACC90BEF() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F471B79ACC90BEF)
---@return number retval 
function GetNumMembershipDesc() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F471B79ACC90BEF)
---@return number retval 
function NetworkClanGetNumMembershipDesc() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x48DE78AF2C8885B8)
---@param memberDesc number 
---@param p1 number 
---@return boolean retval 
function NetworkClanGetMembershipDesc(memberDesc, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAAB11F6C4ADBC2C1)
---@param p0 number 
---@return number retval 
function NetworkClanGetMembershipCount(p0) end

---Checks if a crew/membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP) is valid.
---[Native Documentation](https://docs.fivem.net/natives/?_0x48A59CF88D43DF0E)
---@param networkHandle number A player network handle.
---@param membershipIndex number If the player has multiple crews/memberships, use \[0-9], or -1 to get the active crew/membership.
---@return boolean retval Returns true if valid, false otherwise.
function NetworkClanGetMembershipValid(networkHandle, membershipIndex) end

---```
---bufferSize is 35 in the scripts.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF45352426FF3A4F0)
---@param clanDesc number 
---@param bufferSize number 
---@param formattedTag string 
function NetworkClanGetUiFormattedTag(clanDesc, bufferSize, formattedTag) end

---```
---bufferSize is 35 in the scripts.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF45352426FF3A4F0)
---@param clanDesc number 
---@param bufferSize number 
---@param formattedTag string 
function N_0xF45352426FF3A4F0(clanDesc, bufferSize, formattedTag) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA134777FF7F33331)
---@param p0 any 
---@param p1 any 
---@return boolean retval 
function NetworkClanIsEmblemReady(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA134777FF7F33331)
---@param p0 any 
---@param p1 any 
---@return boolean retval 
function N_0xA134777FF7F33331(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9FAAA4F4FC71F87F)
---@param clanDesc number 
---@return boolean retval 
function NetworkClanJoin(clanDesc) end

---```
---bufferSize is 35 in the scripts.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7543BB439F63792B)
---@param clanDesc number 
---@param bufferSize number 
---@return boolean retval 
function NetworkClanIsRockstarClan(clanDesc, bufferSize) end

---```
---bufferSize is 35 in the scripts.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7543BB439F63792B)
---@param clanDesc number 
---@param bufferSize number 
---@return boolean retval 
function N_0x7543BB439F63792B(clanDesc, bufferSize) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB124B57F571D8F18)
---@param networkHandle number 
---@return boolean retval 
function NetworkClanPlayerIsActive(networkHandle) end

---```
---bufferSize is 35 in the scripts.  
---bufferSize is the elementCount of p0(desc), sizeof(p0) == 280 == p1*8 == 35 * 8, p2(netHandle) is obtained from NETWORK::NETWORK_HANDLE_FROM_PLAYER.  And no, I can't explain why 35 * sizeof(int) == 280 and not 140, but I'll get back to you on that.  
---the answer is: because p0 an int64_t* / int64_t[35].  and FYI p2 is an int64_t[13]  
---pastebin.com/cSZniHak  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEEE6EACBE8874FBA)
---@param clanDesc number 
---@param bufferSize number 
---@param networkHandle number 
---@return boolean retval 
function NetworkClanPlayerGetDesc(clanDesc, bufferSize, networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x113E6E3E50E286B0)
---@param p0 any 
function NetworkClanReleaseEmblem(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x113E6E3E50E286B0)
---@param p0 any 
function N_0x113E6E3E50E286B0(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x13518FF1C6B28938)
---@param p0 any 
---@return boolean retval 
function NetworkClanRequestEmblem(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x13518FF1C6B28938)
---@param p0 any 
---@return boolean retval 
function N_0x13518FF1C6B28938(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBB6E6FEE99D866B2)
---@param p0 number 
---@return boolean retval 
function NetworkClanRemoteMembershipsAreInCache(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x579CCED0265D4896)
---@return boolean retval 
function NetworkClanServiceIsValid() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x579CCED0265D4896)
---@return boolean retval 
function NetworkPlayerIsInClan() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x439BFDE3CD0610F6)
---@return any retval 
function NetworkClearFollowInvite() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x439BFDE3CD0610F6)
---@return any retval 
function N_0x439BFDE3CD0610F6() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D14CCEE1B40381A)
function NetworkClearFoundGamers() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD972DF67326F966E)
function NetworkClearClockTimeOverride() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD972DF67326F966E)
function N_0xD972DF67326F966E() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x86E0660E4F5C956D)
function NetworkClearGetGamerStatus() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x86E0660E4F5C956D)
function N_0x86E0660E4F5C956D() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x058F43EC59A8631A)
function NetworkClearFollowers() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x058F43EC59A8631A)
function N_0x058F43EC59A8631A() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC2B82527CA77053E)
function NetworkClearPropertyId() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC2B82527CA77053E)
function N_0xC2B82527CA77053E() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1888694923EF4591)
function NetworkClearGroupActivity() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1888694923EF4591)
function N_0x1888694923EF4591() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE036A705F989E049)
function NetworkClearVoiceChannel() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE036A705F989E049)
function N_0xE036A705F989E049() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB3272229A82C759)
function NetworkClearTransitionCreatorHandle() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x43F4DBA69710E01E)
function NetworkCloseTransitionMatchmaking() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x43F4DBA69710E01E)
function N_0x43F4DBA69710E01E() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7CD6BC4C2BBDD526)
---@param x number 
---@param y number 
---@param z number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param rotationOrder number 
---@param holdLastFrame boolean 
---@param looped boolean 
---@param p9 number 
---@param animTime number 
---@param animSpeed number 
---@return number retval netScene id
function NetworkCreateSynchronisedScene(x, y, z, xRot, yRot, zRot, rotationOrder, holdLastFrame, looped, p9, animTime, animSpeed) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF03755696450470C)
function NetworkClearVoiceProximityOverride() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF03755696450470C)
function N_0xF03755696450470C() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5AE17C6B0134B7F1)
---@return boolean retval 
function NetworkDidGetGamerStatusSucceed() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5AE17C6B0134B7F1)
---@return boolean retval 
function N_0x5AE17C6B0134B7F1() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1632BE0AC1E62876)
---@param entity number 
---@param toggle boolean 
function NetworkConcealEntity(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC505036A35AFD01B)
---@param toggle boolean 
function NetworkDisableLeaveRemotePedBehind(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC505036A35AFD01B)
---@param toggle boolean 
function N_0xC505036A35AFD01B(toggle) end

---This is what R\* uses to hide players in MP interiors.
---[Native Documentation](https://docs.fivem.net/natives/?_0xBBDF066252829606)
---@param player number 
---@param toggle boolean 
---@param p2 boolean 
function NetworkConcealPlayer(player, toggle, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF9B83B77929D8863)
---@return boolean retval 
function NetworkDidFindGamersSucceed() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF9B83B77929D8863)
---@return boolean retval 
function N_0xF9B83B77929D8863() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9DD368BF06983221)
---@param player number 
---@param toggle boolean 
function NetworkDisableInvincibleFlashing(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9DD368BF06983221)
---@param player number 
---@param toggle boolean 
function N_0x9DD368BF06983221(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x407091CF6037118E)
---@param netID number 
function NetworkDisableProximityMigration(netID) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x407091CF6037118E)
---@param netID number 
function N_0x407091CF6037118E(netID) end

---```
---Hardcoded to return -1.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD66C9E72B3CC4982)
---@param p0 any 
---@param p1 any 
---@return number retval 
function NetworkDisplaynamesFromHandlesStart(p0, p1) end

---```
---Hardcoded to return -1.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD66C9E72B3CC4982)
---@param p0 any 
---@param p1 any 
---@return number retval 
function N_0xD66C9E72B3CC4982(p0, p1) end

---```
---NativeDB Added Parameter 5: Any p4
---NativeDB Added Parameter 6: Any p5
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x71FB0EBCD4915D56)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function NetworkDoTransitionQuickmatch(p0, p1, p2, p3) end

---```
---NativeDB Added Parameter 5: Any p4
---NativeDB Added Parameter 6: Any p5
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x71FB0EBCD4915D56)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function N_0x71FB0EBCD4915D56(p0, p1, p2, p3) end

---```
---NativeDB Added Parameter 5: Any p4
---NativeDB Added Parameter 6: Any p5
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA091A5E44F0072E5)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function NetworkDoTransitionQuickmatchAsync(p0, p1, p2, p3) end

---```
---NativeDB Added Parameter 5: Any p4
---NativeDB Added Parameter 6: Any p5
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA091A5E44F0072E5)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function N_0xA091A5E44F0072E5(p0, p1, p2, p3) end

---```
---NativeDB Added Parameter 7: Any p6
---NativeDB Added Parameter 8: Any p7
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9C4AB58491FDC98A)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@return boolean retval 
function NetworkDoTransitionQuickmatchWithGroup(p0, p1, p2, p3, p4, p5) end

---```
---p2 is true 3/4 of the occurrences I found.  
---'players' is the number of players for a session. On PS3/360 it's always 18. On PC it's 32.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3AAD8B2FCA1E289F)
---@param p0 any 
---@param p1 any 
---@param p2 boolean 
---@param players number 
---@param p4 boolean 
---@return boolean retval 
function NetworkDoTransitionToFreemode(p0, p1, p2, players, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3E9BB38102A589B0)
---@param p0 boolean 
---@param maxPlayers number 
---@return boolean retval 
function NetworkDoTransitionToGame(p0, maxPlayers) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4665F51EFED00034)
---@param p0 boolean 
---@param maxPlayers number 
---@param p2 boolean 
---@return boolean retval 
function NetworkDoTransitionToNewGame(p0, maxPlayers, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x38CE16C96BD11344)
---@param netId number 
---@return boolean retval 
function NetworkDoesNetworkIdExist(netId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9E80A5BA8109F974)
---@param p0 any 
---@param p1 any 
---@param players number 
---@param p3 boolean 
---@param p4 boolean 
---@param p5 boolean 
---@return boolean retval 
function NetworkDoTransitionToNewFreemode(p0, p1, players, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x18A47D074708FD68)
---@param netId number 
---@return boolean retval 
function NetworkDoesEntityExistWithNetworkId(netId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD0AFAFF5A51D72F7)
function NetworkEndTutorialSession() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4A2D4E8BF4265B0F)
---@param areaHandle number 
---@return boolean retval 
function NetworkEntityAreaIsOccupied(areaHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4A2D4E8BF4265B0F)
---@param areaHandle number 
---@return boolean retval 
function N_0x4A2D4E8BF4265B0F(areaHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x85E5F8B9B898B20A)
---@param tunableContext string 
---@param tunableName string 
---@return boolean retval 
function NetworkDoesTunableExist(tunableContext, tunableName) end

---```
---In the console script dumps, this is only referenced once.   
---NETWORK::NETWORK_EXPLODE_VEHICLE(vehicle, 1, 0, 0);  
---^^^^^ That must be PC script dumps? In X360 Script Dumps it is reference a few times with 2 differences in the parameters.  
---Which as you see below is 1, 0, 0 + 1, 1, 0 + 1, 0, and a *param?  
---am_plane_takedown.c   
---network_explode_vehicle(net_to_veh(Local_40.imm_2), 1, 1, 0);  
---armenian2.c   
---network_explode_vehicle(Local_80[6 <2>], 1, 0, 0);  
---fm_horde_controler.c  
---network_explode_vehicle(net_to_veh(*uParam0), 1, 0, *uParam0);  
---fm_mission_controller.c, has 6 hits so not going to list them.  
---Side note, setting the first parameter to 0 seems to mute sound or so?  
---Seems it's like ADD_EXPLOSION, etc. the first 2 params. The 3rd atm no need to worry since it always seems to be 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x301A42153C9AD707)
---@param vehicle number 
---@param isAudible boolean 
---@param isInvisible boolean 
---@param p3 boolean 
function NetworkExplodeVehicle(vehicle, isAudible, isInvisible, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE4E53E1419D81127)
---@param tunableContext number | string 
---@param tunableName number | string 
---@return boolean retval 
function NetworkDoesTunableExistHash(tunableContext, tunableName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE4E53E1419D81127)
---@param tunableContext number | string 
---@param tunableName number | string 
---@return boolean retval 
function N_0xE4E53E1419D81127(tunableContext, tunableName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE4E53E1419D81127)
---@param tunableContext number | string 
---@param tunableName number | string 
---@return boolean retval 
function NetworkDoesTunableExistHash(tunableContext, tunableName) end

---```
---state - 0 does 5 fades  
---state - 1 does 6 fades  
---native is missing third argument, also boolean, setting to 1 made vehicle fade in slower, probably "slow" as per NETWORK_FADE_OUT_ENTITY  
---```
---
---```
---NativeDB Added Parameter 3: BOOL slow
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F4ED342ACEFE62D)
---@param entity number 
---@param state boolean 
function NetworkFadeInEntity(entity, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE64A3CA08DFA37A9)
---@param areaHandle number 
---@return boolean retval 
function NetworkEntityAreaDoesExist(areaHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE64A3CA08DFA37A9)
---@param areaHandle number 
---@return boolean retval 
function N_0xE64A3CA08DFA37A9(areaHandle) end

---```
---normal - transition like when your coming out of LSC  
---slow - transition like when you walk into a mission  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDE564951F95E09ED)
---@param entity number 
---@param normal boolean 
---@param slow boolean 
function NetworkFadeOutEntity(entity, normal, slow) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE532D6811B3A4D2A)
---@param p0 any 
---@return boolean retval 
function NetworkFindGamersInCrew(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE532D6811B3A4D2A)
---@param p0 any 
---@return boolean retval 
function N_0xE532D6811B3A4D2A(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE532D6811B3A4D2A)
---@param p0 any 
---@return boolean retval 
function NetworkXAffectsGamers(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A5E0621DD815A9A)
---@param heli number Heli to explode
---@param isAudible boolean 
---@param isInvisible boolean 
---@param netScriptEntityId number 
function NetworkExplodeHeli(heli, isAudible, isInvisible, netScriptEntityId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A5E0621DD815A9A)
---@param heli number Heli to explode
---@param isAudible boolean 
---@param isInvisible boolean 
---@param netScriptEntityId number 
function N_0x2A5E0621DD815A9A(heli, isAudible, isInvisible, netScriptEntityId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF7B2CFDE5C9F700D)
---@param p0 any 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@return boolean retval 
function NetworkFindMatchedGamers(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF7B2CFDE5C9F700D)
---@param p0 any 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@return boolean retval 
function N_0xF7B2CFDE5C9F700D(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2FD55CB574BCC55)
---@param networkHandle any 
---@return boolean retval 
function NetworkGamerHasHeadset(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x64F62AFB081E260D)
function NetworkFinishBroadcastingData() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x64F62AFB081E260D)
function N_0x64F62AFB081E260D() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F0C0A981D73FA56)
---@param networkHandle number 
---@return boolean retval 
function NetworkGamertagFromHandleStart(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFD00798DBA7523DD)
---@return boolean retval 
function NetworkGamertagFromHandleSucceeded() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC9B43A33D09CADA7)
---@param sceneId number 
function NetworkForceLocalUseOfSyncedSceneCamera(sceneId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC9B43A33D09CADA7)
---@param sceneId number 
function N_0xC9B43A33D09CADA7(sceneId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x73E2B500410DA5A2)
---@param p0 boolean 
---@return number retval 
function NetworkGetActivityPlayerNum(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB071E27958EF4CF0)
---@return boolean retval 
function NetworkGamertagFromHandlePending() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9614B71F8ADB982B)
---@return number retval 
function NetworkGetAgeGroup() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9614B71F8ADB982B)
---@return number retval 
function N_0x9614B71F8ADB982B() end

---```
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD414BE129BB81B32)
---@param player number 
---@return number retval 
function NetworkGetAverageLatencyForPlayer(player) end

---```
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD414BE129BB81B32)
---@param player number 
---@return number retval 
function N_0xD414BE129BB81B32(player) end

---```
---Same as _NETWORK_GET_AVERAGE_LATENCY_FOR_PLAYER (0xD414BE129BB81B32)
---```
---
---```
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0E3A041ED6AC2B45)
---@param player number 
---@return number retval 
function NetworkGetAverageLatencyForPlayer2(player) end

---```
---Same as _NETWORK_GET_AVERAGE_LATENCY_FOR_PLAYER (0xD414BE129BB81B32)
---```
---
---```
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0E3A041ED6AC2B45)
---@param player number 
---@return number retval 
function N_0x0E3A041ED6AC2B45(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x97A770BEEF227E2B)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function NetworkGetBackgroundLoadingRecipients(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x97A770BEEF227E2B)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function N_0x97A770BEEF227E2B(p0, p1, p2, p3) end

---```
---NETWORK_GET_*
---
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x350C23949E43686C)
---@param player number 
---@return number retval 
function NetworkGetAveragePacketLossForPlayer(player) end

---```
---NETWORK_GET_*
---
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x350C23949E43686C)
---@param player number 
---@return number retval 
function N_0x350C23949E43686C(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x74881E6BCAE2327C)
---@param p0 any 
---@return boolean retval 
function NetworkGetCurrentlySelectedGamerHandleFromInviteMenu(p0) end

---```
---Return the content modifier id (the tunables context if you want) of a specific content.  
---It takes the content hash (which is the mission id hash), and return the content modifier id, used as the tunables context.  
---The mission id can be found on the Social club, for example, 'socialclub.rockstargames.com/games/gtav/jobs/job/A8M6Bz8MLEC5xngvDCzGwA'  
---'A8M6Bz8MLEC5xngvDCzGwA' is the mission id, so the game hash this and use it as the parameter for this native.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x187382F8A3E0A6C3)
---@param contentHash number | string 
---@return number retval 
function NetworkGetContentModifierListId(contentHash) end

---```
---Return the content modifier id (the tunables context if you want) of a specific content.  
---It takes the content hash (which is the mission id hash), and return the content modifier id, used as the tunables context.  
---The mission id can be found on the Social club, for example, 'socialclub.rockstargames.com/games/gtav/jobs/job/A8M6Bz8MLEC5xngvDCzGwA'  
---'A8M6Bz8MLEC5xngvDCzGwA' is the mission id, so the game hash this and use it as the parameter for this native.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x187382F8A3E0A6C3)
---@param contentHash number | string 
---@return number retval 
function N_0x187382F8A3E0A6C3(contentHash) end

---```
---Return the content modifier id (the tunables context if you want) of a specific content.  
---It takes the content hash (which is the mission id hash), and return the content modifier id, used as the tunables context.  
---The mission id can be found on the Social club, for example, 'socialclub.rockstargames.com/games/gtav/jobs/job/A8M6Bz8MLEC5xngvDCzGwA'  
---'A8M6Bz8MLEC5xngvDCzGwA' is the mission id, so the game hash this and use it as the parameter for this native.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x187382F8A3E0A6C3)
---@param contentHash number | string 
---@return number retval 
function GetTunablesContentModifierId(contentHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7A1ADEEF01740A24)
---@param netId number 
---@param weaponHash number | string 
---@return number retval 
function NetworkGetDestroyerOfNetworkId(netId, weaponHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4CACA84440FA26F6)
---@param p0 any 
---@param p1 any 
---@param weaponHash number | string 
---@return boolean retval 
function NetworkGetDestroyerOfEntity(p0, p1, weaponHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4CACA84440FA26F6)
---@param p0 any 
---@param p1 any 
---@param weaponHash number | string 
---@return boolean retval 
function N_0x4CACA84440FA26F6(p0, p1, weaponHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4CACA84440FA26F6)
---@param p0 any 
---@param p1 any 
---@param weaponHash number | string 
---@return boolean retval 
function NetworkGetDesroyerOfEntity(p0, p1, weaponHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0991549DE4D64762)
---@param entity number 
---@return boolean retval 
function NetworkGetEntityIsLocal(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x58CC181719256197)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@return number retval Hard-coded to always return 0.
function NetworkGetDisplaynamesFromHandles(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x58CC181719256197)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@return number retval Hard-coded to always return 0.
function N_0x58CC181719256197(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7827959479DCC78)
---@param entity number 
---@return boolean retval 
function NetworkGetEntityIsNetworked(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7827959479DCC78)
---@param entity number 
---@return boolean retval 
function N_0xC7827959479DCC78(entity) end

---Get the local entity handle of the given network id
---
---Through this native you can get back the entity that you previously converted to netid with [NetworkGetNetworkIdFromEntity](#\_0x9E35DAB6) or with the `ToNet` natives
---[Native Documentation](https://docs.fivem.net/natives/?_0xCE4E5D9B0A4FF560)
---Example: 
---```local entity = NetworkGetEntityFromNetworkId(netId)```
---@param netId number the network id of the entity
---@return number retval The local entity handle of the network id
function NetworkGetEntityFromNetworkId(netId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x815F18AD865F057F)
---@param entity number 
---@return number retval 
function NetworkGetEntityNetScriptId(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x815F18AD865F057F)
---@param entity number 
---@return number retval 
function N_0x815F18AD865F057F(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE11EBBB2A783FE8B)
---@param friendIndex number 
---@return string retval 
function NetworkGetFriendName(friendIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2CC848A861D01493)
---@return boolean retval 
function NetworkGetGamerStatusFromQueue() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2CC848A861D01493)
---@return boolean retval 
function N_0x2CC848A861D01493() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x42B2DAA6B596F5F8)
---@param player number 
---@param weaponHash number | string 
---@return number retval 
function NetworkGetEntityKillerOfPlayer(player, weaponHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x02A8BEC6FD9AF660)
---@param p0 any 
---@param p1 any 
---@return boolean retval 
function NetworkGetGamerStatusResult(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x02A8BEC6FD9AF660)
---@param p0 any 
---@param p1 any 
---@return boolean retval 
function N_0x02A8BEC6FD9AF660(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x426141162EBE5CDB)
---@param networkHandle number 
---@return string retval 
function NetworkGetGamertagFromHandle(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9DCFF2AFB68B3476)
---@param p0 any 
---@param p1 any 
---@return boolean retval 
function NetworkGetFoundGamer(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x203F1CFD823B27A4)
---@return number retval 
function NetworkGetFriendCount() end

---```
---scriptName examples:  
---"freemode", "AM_CR_SecurityVan", ...  
---Most of the time, these values are used:  
---p1 = -1  
---p2 = 0  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1D6A14F1F9A736FC)
---@param scriptName string 
---@param p1 number 
---@param p2 number 
---@return number retval 
function NetworkGetHostOfScript(scriptName, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4164F227D052E293)
---@param friendIndex number 
---@return string retval 
function NetworkGetFriendNameFromIndex(friendIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x638A3A81733086DB)
---@return number retval 
function NetworkGetInstanceIdOfThisScript() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x638A3A81733086DB)
---@return number retval 
function N_0x638A3A81733086DB() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D03BFBD643B2A02)
---@param hours number 
---@param minutes number 
---@param seconds number 
function NetworkGetGlobalMultiplayerClock(hours, minutes, seconds) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D03BFBD643B2A02)
---@param hours number 
---@param minutes number 
---@param seconds number 
function N_0x6D03BFBD643B2A02(hours, minutes, seconds) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D03BFBD643B2A02)
---@param hours number 
---@param minutes number 
---@param seconds number 
function NetworkGetServerTime(hours, minutes, seconds) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7B4D79B01FA7A5C)
---@return number retval 
function NetworkGetHostOfThisScript() end

---```
---Used by NetBlender
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x33DE49EDF4DDE77A)
---@param entity number 
---@return vector3 retval 
function NetworkGetLastVelocityReceived(entity) end

---```
---Used by NetBlender
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x33DE49EDF4DDE77A)
---@param entity number 
---@return vector3 retval 
function N_0x33DE49EDF4DDE77A(entity) end

---```
---Retrieves the local player's NetworkHandle* and stores it in the given buffer.  
---* Currently unknown struct  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE86051786B66CD8E)
---@param networkHandle number 
---@param bufferSize number 
function NetworkGetLocalHandle(networkHandle, bufferSize) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x02C40BF885C567B6)
---@param netId number 
---@return number retval 
function NetworkGetLocalSceneFromNetworkId(netId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x02C40BF885C567B6)
---@param netId number 
---@return number retval 
function N_0x02C40BF885C567B6(netId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x02C40BF885C567B6)
---@param netId number 
---@return number retval 
function NetworkUnlinkNetworkedSynchronisedScene(netId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x02C40BF885C567B6)
---@param netId number 
---@return number retval 
function NetworkConvertSynchronisedSceneToSynchronizedScene(netId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAFEBB0D5D8F687D2)
---@return number retval 
function NetworkGetMaxFriends() end

---```
---Seems to always return 0, but it's used in quite a few loops.
---for (num3 = 0; num3 < NETWORK::0xCCD8C02D(); num3++)
---    {
---        if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::0x98F3B274(num3)) != 0)
---        {
---            var num5 = NETWORK::NETWORK_GET_PLAYER_INDEX(PLAYER::0x98F3B274(num3));
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6C90FBC38E395EE)
---@return number retval 
function NetworkGetMaxNumParticipants() end

---```
---Seems to always return 0, but it's used in quite a few loops.
---for (num3 = 0; num3 < NETWORK::0xCCD8C02D(); num3++)
---    {
---        if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::0x98F3B274(num3)) != 0)
---        {
---            var num5 = NETWORK::NETWORK_GET_PLAYER_INDEX(PLAYER::0x98F3B274(num3));
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6C90FBC38E395EE)
---@return number retval 
function NetworkGetNumParticipantsHost() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD38C4A6D047C019D)
---@return number retval 
function NetworkGetNumBodyTrackers() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD38C4A6D047C019D)
---@return number retval 
function N_0xD38C4A6D047C019D() end

---Get the network id of the given entity
---
---An entity network id represents a given entity for other clients, it's a handle shared between clients, can be reconverted to a client entity handle.\
---These (entity network IDs) can and will be reused, the network id will not change.
---If you need to refer to an entity across machines (clients, or the server), you should use its network id.
---
---Read more at [Network and local IDs](https://docs.fivem.net/docs/scripting-manual/networking/ids/)
---[Native Documentation](https://docs.fivem.net/natives/?_0xA11700682F3AD45C)
---Example: 
---```local obj = CreateObject(`prop_weed_01`, vector3(0.0, 0.0, 0.0), true)
---local netId = NetworkGetNetworkIdFromEntity(obj)```
---@param entity number the handle of the entity from which the network id should be taken
---@return number retval The network id of the given entity
function NetworkGetNetworkIdFromEntity(entity) end

---```
---Returns the amount of players connected in the current session. Only works when connected to a session/server.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA4A79DD2D9600654)
---@return number retval 
function NetworkGetNumConnectedPlayers() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCEFA968912D0F78D)
---@return number retval 
function NetworkGetNumPresenceInvites() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCEFA968912D0F78D)
---@return number retval 
function N_0xCEFA968912D0F78D() end

---```
---NETWORK_GET_*
---
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x52C1EADAF7B10302)
---@param player number 
---@return number retval 
function NetworkGetOldestResendCountForPlayer(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1B043EE79A916FB)
---@return number retval 
function NetworkGetNumFoundGamers() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1B84DF6AF2A46938)
---@param index number 
---@return number retval 
function NetworkGetParticipantIndex(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x18D0456E86604654)
---@return number retval 
function NetworkGetNumParticipants() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x01ABCE5E7CBDA196)
---@return number retval 
function NetworkGetPlatformPartyUnk() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x01ABCE5E7CBDA196)
---@return number retval 
function N_0x01ABCE5E7CBDA196() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3658E8CD94FC121A)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@return number retval 
function NetworkGetNumScriptParticipants(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3658E8CD94FC121A)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@return number retval 
function N_0x3658E8CD94FC121A(p0, p1, p2) end

---```
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF8FCF9FFC458A1C)
---@param player number 
---@return number retval 
function NetworkGetNumUnackedForPlayer(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCE5F689CF5A0A49D)
---@param networkHandle number 
---@return number retval 
function NetworkGetPlayerFromGamerHandle(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x120364DE2845DAF8)
---@param data any 
---@param dataSize number 
---@return number retval 
function NetworkGetPlatformPartyMembers(data, dataSize) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x120364DE2845DAF8)
---@param data any 
---@param dataSize number 
---@return number retval 
function N_0x120364DE2845DAF8(data, dataSize) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x24FB80D107371267)
---@param player number 
---@return number retval 
function NetworkGetPlayerIndex(player) end

---Returns the coordinates of another player.
---
---Does not work if you enter your own player id as p0 (will return `(0.0, 0.0, 0.0)` in that case).
---[Native Documentation](https://docs.fivem.net/natives/?_0x125E6D638B8605D4)
---@param player number The player id, MUST be another player.
---@return vector3 retval A Vector3 containing the coordinates of another player.
function NetworkGetPlayerCoords(player) end

---Returns the coordinates of another player.
---
---Does not work if you enter your own player id as p0 (will return `(0.0, 0.0, 0.0)` in that case).
---[Native Documentation](https://docs.fivem.net/natives/?_0x125E6D638B8605D4)
---@param player number The player id, MUST be another player.
---@return vector3 retval A Vector3 containing the coordinates of another player.
function N_0x125E6D638B8605D4(player) end

---```
---Returns the Player associated to a given Ped when in an online session.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6C0E2E0125610278)
---@param ped number 
---@return number retval 
function NetworkGetPlayerIndexFromPed(ped) end

---```
---Returns the Player associated to a given Ped when in an online session.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6C0E2E0125610278)
---@param ped number 
---@return number retval 
function N_0x6C0E2E0125610278(ped) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x21A1684A25C2867F)
---@param player number 
---@return number retval 
function NetworkGetPlayerLoudness(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x82377B65E943F72D)
---@param player number 
---@return boolean retval 
function NetworkGetPlayerOwnsWaypoint(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x82377B65E943F72D)
---@param player number 
---@return boolean retval 
function N_0x82377B65E943F72D(player) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x257ED0FADF750BCF)
---@return any retval 
function NetworkGetPositionHashOfThisScript() end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x257ED0FADF750BCF)
---@return any retval 
function N_0x257ED0FADF750BCF() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x24409FC4C55CB22D)
---@param p0 any 
---@return any retval 
function NetworkGetPresenceInviteContentId(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x24409FC4C55CB22D)
---@param p0 any 
---@return any retval 
function N_0x24409FC4C55CB22D(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3B39236746714134)
---@param player number 
---@return number retval 
function NetworkGetPlayerTutorialSessionInstance(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3B39236746714134)
---@param player number 
---@return number retval 
function N_0x3B39236746714134(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3DBF2DF0AEB7D289)
---@param p0 any 
---@return boolean retval 
function NetworkGetPresenceInviteFromAdmin(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3DBF2DF0AEB7D289)
---@param p0 any 
---@return boolean retval 
function N_0x3DBF2DF0AEB7D289(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x38D5B0FEBB086F75)
---@param p0 any 
---@param p1 any 
---@return boolean retval 
function NetworkGetPresenceInviteHandle(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFF09646E12EC386)
---@param p0 any 
---@return any retval 
function NetworkGetPresenceInviteId(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFF09646E12EC386)
---@param p0 any 
---@return any retval 
function N_0xDFF09646E12EC386(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8806CEBFABD3CE05)
---@param p0 any 
---@return boolean retval 
function NetworkGetPresenceInviteIsTournament(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8806CEBFABD3CE05)
---@param p0 any 
---@return boolean retval 
function N_0x8806CEBFABD3CE05(p0) end

---Returns the Name of the inviter of the specific selected Invite.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4962CC4AA2F345B7)
---@param inviteIndex number 
---@return string retval The Name of the inviter.
function NetworkGetPresenceInviteInviter(inviteIndex) end

---Returns the Name of the inviter of the specific selected Invite.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4962CC4AA2F345B7)
---@param inviteIndex number 
---@return string retval The Name of the inviter.
function N_0x4962CC4AA2F345B7(inviteIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD39B3FFF8FFDD5BF)
---@param p0 any 
---@return any retval 
function NetworkGetPresenceInvitePlaylistLength(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD39B3FFF8FFDD5BF)
---@param p0 any 
---@return any retval 
function N_0xD39B3FFF8FFDD5BF(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x728C4CC7920CD102)
---@param p0 any 
---@return any retval 
function NetworkGetPresenceInvitePlaylistCurrent(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x728C4CC7920CD102)
---@param p0 any 
---@return any retval 
function N_0x728C4CC7920CD102(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x042E4B70B93E6054)
function NetworkGetPrimaryClanDataCancel() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x042E4B70B93E6054)
function N_0x042E4B70B93E6054() end

---The Native returns a hash of the session id as string from the specific invite index!
---[Native Documentation](https://docs.fivem.net/natives/?_0x26E1CD96B0903D60)
---@param inviteIndex number 
---@return number | string retval A hash of the session id.
function NetworkGetPresenceInviteSessionId(inviteIndex) end

---The Native returns a hash of the session id as string from the specific invite index!
---[Native Documentation](https://docs.fivem.net/natives/?_0x26E1CD96B0903D60)
---@param inviteIndex number 
---@return number | string retval A hash of the session id.
function N_0x26E1CD96B0903D60(inviteIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9AA46BADAD0E27ED)
---@return any retval 
function NetworkGetPrimaryClanDataClear() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9AA46BADAD0E27ED)
---@return any retval 
function N_0x9AA46BADAD0E27ED() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC080FF658B2E41DA)
---@param p0 any 
---@param p1 any 
---@return boolean retval 
function NetworkGetPrimaryClanDataNew(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB5074DB804E28CE7)
---@return any retval 
function NetworkGetPrimaryClanDataPending() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB5074DB804E28CE7)
---@return any retval 
function N_0xB5074DB804E28CE7() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCE86D8191B762107)
---@param p0 any 
---@param p1 any 
---@return boolean retval 
function NetworkGetPrimaryClanDataStart(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B4F04F19376A0BA)
---@return any retval 
function NetworkGetPrimaryClanDataSuccess() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B4F04F19376A0BA)
---@return any retval 
function N_0x5B4F04F19376A0BA() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x599E4FA1F87EB5FF)
---@return number retval 
function NetworkGetRandomInt() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x599E4FA1F87EB5FF)
---@return number retval 
function N_0x599E4FA1F87EB5FF() end

---```
---Same as GET_RANDOM_INT_IN_RANGE
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE30CF56F1EFA5F43)
---@param rangeStart number 
---@param rangeEnd number 
---@return number retval 
function NetworkGetRandomIntRanged(rangeStart, rangeEnd) end

---```
---Same as GET_RANDOM_INT_IN_RANGE
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE30CF56F1EFA5F43)
---@param rangeStart number 
---@param rangeEnd number 
---@return number retval 
function N_0xE30CF56F1EFA5F43(rangeStart, rangeEnd) end

---```
---Same as GET_RANDOM_INT_IN_RANGE
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE30CF56F1EFA5F43)
---@param rangeStart number 
---@param rangeEnd number 
---@return number retval 
function NetworkGetRandomIntInRange(rangeStart, rangeEnd) end

---```
---Based on scripts such as in freemode.c how they call their vars vVar and fVar the 2nd and 3rd param it a Vector3 and Float, but the first is based on get_random_int_in_range..  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x371EA43692861CF1)
---@param randomInt number 
---@param coordinates vector3 
---@param heading number 
function NetworkGetRespawnResult(randomInt, coordinates, heading) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x91B87C55093DE351)
---@return boolean retval 
function NetworkGetRosPrivilege25() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x91B87C55093DE351)
---@return boolean retval 
function N_0x91B87C55093DE351() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x66B59CFFD78467AF)
---@return boolean retval 
function NetworkGetRosPrivilege9() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x66B59CFFD78467AF)
---@return boolean retval 
function N_0x66B59CFFD78467AF() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6C34F1208B8923FD)
---@param p0 any 
---@return any retval 
function NetworkGetRespawnResultFlags(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6C34F1208B8923FD)
---@param p0 any 
---@return any retval 
function N_0x6C34F1208B8923FD(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x593570C289A77688)
---@return boolean retval 
function NetworkGetRosPrivilege24() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x593570C289A77688)
---@return boolean retval 
function N_0x593570C289A77688() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57D158647A6BFABF)
---@return number retval 
function NetworkGetScriptStatus() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFFA5BE8381C3314)
---@return number retval 
function NetworkGetTargetingMode() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFFA5BE8381C3314)
---@return number retval 
function N_0xDFFA5BE8381C3314() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5ED0356A0CE3A34F)
---@return number retval 
function NetworkGetTimeoutTime() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5ED0356A0CE3A34F)
---@return number retval 
function N_0x5ED0356A0CE3A34F() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x84F0F13120B4E098)
---@return number retval 
function NetworkGetTalkerProximity() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x65042B9774C4435E)
---@param networkHandle number 
---@return boolean retval 
function NetworkGetTransitionHost(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2910669969E9535E)
---@return boolean retval 
function NetworkGetThisScriptIsNetworkScript() end

---```
---Actually returns the version (TUNABLE_VERSION)
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x10BD227A753B0D84)
---@return number retval 
function NetworkGetTunableCloudCrc() end

---```
---Actually returns the version (TUNABLE_VERSION)
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x10BD227A753B0D84)
---@return number retval 
function N_0x10BD227A753B0D84() end

---```
---Actually returns the version (TUNABLE_VERSION)
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x10BD227A753B0D84)
---@return number retval 
function NetworkGetTunablesVersion() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF61D4B4702EE9EB)
---@return number retval 
function NetworkGetTotalNumPlayers() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF61D4B4702EE9EB)
---@return number retval 
function N_0xCF61D4B4702EE9EB() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD45CB817D7E177D2)
---@param friendIndex number 
---@param networkHandle number 
---@param bufferSize number 
function NetworkHandleFromFriend(friendIndex, networkHandle, bufferSize) end

---```
---Returns count.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x73B000F7FBC55829)
---@param data any 
---@param dataCount number 
---@return number retval 
function NetworkGetTransitionMembers(data, dataCount) end

---```
---NETWORK_*
---
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3765C3A3E8192E10)
---@param player number 
---@return number retval 
function NetworkGetUnreliableResendCountForPlayer(player) end

---```
---NETWORK_*
---
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3765C3A3E8192E10)
---@param player number 
---@return number retval 
function N_0x3765C3A3E8192E10(player) end

---```
---Returns a NetworkHandle* from the specified member ID and stores it in a given buffer.  
---* Currently unknown struct  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0FD21BED61E5C4C)
---@param memberId string 
---@param networkHandle number 
---@param bufferSize number 
function NetworkHandleFromMemberId(memberId, networkHandle, bufferSize) end

---```
---Returns a handle to networkHandle* from the specified player handle and stores it in a given buffer.  
---* Currently unknown struct  
---Example:  
---std::vector<UINT64> GetPlayerNetworkHandle(Player player) {  
---    const int size = 13;  
---    uint64_t *buffer = std::make_unique<uint64_t[]>(size).get();  
---    NETWORK::NETWORK_HANDLE_FROM_PLAYER(player, reinterpret_cast<int *>(buffer), 13);  
---    for (int i = 0; i < size; i++) {  
---        Log::Msg("networkhandle[%i]: %llx", i, buffer[i]);  
---    }  
---    std::vector<UINT64> result(buffer, buffer + sizeof(buffer));  
---    return result;  
---}  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x388EB2B86C73B6B3)
---@param player number 
---@param networkHandle number 
---@param bufferSize number 
function NetworkHandleFromPlayer(player, networkHandle, bufferSize) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1353F87E89946207)
---@return boolean retval 
function NetworkHasAgeRestrictedProfile() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1353F87E89946207)
---@return boolean retval 
function N_0x1353F87E89946207() end

---```
---Returns a NetworkHandle* from the specified user ID and stores it in a given buffer.  
---* Currently unknown struct  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDCD51DD8F87AEC5C)
---@param userId string 
---@param networkHandle number 
---@param bufferSize number 
function NetworkHandleFromUserId(userId, networkHandle, bufferSize) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x237D5336A9A54108)
---@param player number 
---@return boolean retval 
function NetworkHasCachedPlayerHeadBlendData(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x237D5336A9A54108)
---@param player number 
---@return boolean retval 
function N_0x237D5336A9A54108(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D36070FE0215186)
---@param netId number 
---@return boolean retval 
function NetworkHasControlOfNetworkId(netId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5BC9495F0B3B6FA6)
---@param pickup pickup 
---@return boolean retval 
function NetworkHasControlOfPickup(pickup) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCB3C68ADB06195DF)
---@param doorHash number | string 
---@return boolean retval 
function NetworkHasControlOfDoor(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE870F9F1F7B4F1FA)
---@return boolean retval 
function NetworkHasHeadset() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x01BF60A500E28887)
---@param entity number 
---@return boolean retval 
function NetworkHasControlOfEntity(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D86CD31E8976ECE)
---@param p0 any 
---@return boolean retval 
function NetworkHasInvitedGamer(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB07D3185E11657A5)
---@param entity number 
---@return boolean retval 
function NetworkHasEntityBeenRegisteredWithThisThread(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB07D3185E11657A5)
---@param entity number 
---@return boolean retval 
function N_0xB07D3185E11657A5(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAC8C7B9B88C4A668)
---@return boolean retval 
function NetworkHasPendingInvite() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x76D9B976C4C09FDE)
---@return boolean retval 
function NetworkHasFollowInvite() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x76D9B976C4C09FDE)
---@return boolean retval 
function N_0x76D9B976C4C09FDE() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5D10B3795F3FC886)
---@return boolean retval 
function NetworkHasReceivedHostBroadcastData() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5D10B3795F3FC886)
---@return boolean retval 
function N_0x5D10B3795F3FC886() end

---```
---Returns true if dinput8.dll is present in the game directory.
---You will get following error message if that is true: "You are attempting to access GTA Online servers with an altered version of the game."
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x659CF2EF7F550C4F)
---@return boolean retval 
function NetworkHasGameBeenAltered() end

---```
---Returns true if dinput8.dll is present in the game directory.
---You will get following error message if that is true: "You are attempting to access GTA Online servers with an altered version of the game."
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x659CF2EF7F550C4F)
---@return boolean retval 
function N_0x659CF2EF7F550C4F() end

---```
---index is always 18 in scripts
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA699957E60D80214)
---@param index number 
---@return boolean retval 
function NetworkHasRosPrivilege(index) end

---```
---index is always 18 in scripts
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA699957E60D80214)
---@param index number 
---@return boolean retval 
function N_0xA699957E60D80214(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x71DC455F5CD1C2B1)
---@param networkHandle number 
---@return boolean retval 
function NetworkHasInviteBeenAcked(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x71DC455F5CD1C2B1)
---@param networkHandle number 
---@return boolean retval 
function N_0x71DC455F5CD1C2B1(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC22912B1D85F26B1)
---@param privilege number 
---@param banType number 
---@param timeData vector3 
---@return boolean retval 
function NetworkHasRosPrivilegeEndDate(privilege, banType, timeData) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC22912B1D85F26B1)
---@param privilege number 
---@param banType number 
---@param timeData vector3 
---@return boolean retval 
function N_0xC22912B1D85F26B1(privilege, banType, timeData) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC22912B1D85F26B1)
---@param privilege number 
---@param banType number 
---@param timeData vector3 
---@return boolean retval 
function NetworkGetBanData(privilege, banType, timeData) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7284A47B3540E6CF)
---@param p0 any 
---@return boolean retval 
function NetworkHasInvitedGamerToTransition(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3F9990BF5F22759C)
---@param networkHandle number 
---@return boolean retval 
function NetworkHasTransitionInviteBeenAcked(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3F9990BF5F22759C)
---@param networkHandle number 
---@return boolean retval 
function N_0x3F9990BF5F22759C(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9AC9CCBFA8C29795)
---@param player number 
---@return boolean retval 
function NetworkHasPlayerStartedTransition(player) end

---```
---Returns whether the signed-in user has valid Rockstar Online Services (ROS) credentials.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x85443FF4C328F53B)
---@return boolean retval 
function NetworkHasValidRosCredentials() end

---```
---Returns whether the signed-in user has valid Rockstar Online Services (ROS) credentials.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x85443FF4C328F53B)
---@return boolean retval 
function N_0x85443FF4C328F53B() end

---```
---Returns whether the signed-in user has valid Rockstar Online Services (ROS) credentials.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x85443FF4C328F53B)
---@return boolean retval 
function NetworkAreRosAvailable() end

---```
---Returns whether the signed-in user has valid Rockstar Online Services (ROS) credentials.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x85443FF4C328F53B)
---@return boolean retval 
function NetworkHaveJustUploadLater() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x67A5589628E0CFF6)
---@return boolean retval 
function NetworkHasSocialClubAccount() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x67A5589628E0CFF6)
---@return boolean retval 
function N_0x67A5589628E0CFF6() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCCA4318E1AB03F1F)
---@param networkHandle any 
---@return boolean retval 
function NetworkHasViewGamerUserContentResult(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCCA4318E1AB03F1F)
---@param networkHandle any 
---@return boolean retval 
function N_0xCCA4318E1AB03F1F(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x76BF03FADBF154F5)
---@return boolean retval 
function NetworkHasSocialNetworkingSharingPriv() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x76BF03FADBF154F5)
---@return boolean retval 
function N_0x76BF03FADBF154F5() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x58575AC3CF2CA8EC)
---@param networkHandle number 
---@return number | string retval 
function NetworkHashFromGamerHandle(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x58575AC3CF2CA8EC)
---@param networkHandle number 
---@return number | string retval 
function N_0x58575AC3CF2CA8EC(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x58575AC3CF2CA8EC)
---@param networkHandle number 
---@return number | string retval 
function NetworkHashFromGamerHandle(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC1D768F2F5D6C05)
---@param player number 
---@return number | string retval 
function NetworkHashFromPlayerHandle(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC1D768F2F5D6C05)
---@param player number 
---@return number | string retval 
function N_0xBC1D768F2F5D6C05(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC1D768F2F5D6C05)
---@param player number 
---@return number | string retval 
function NetworkHashFromPlayerHandle(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5EA784D197556507)
---@return boolean retval 
function NetworkHaveOnlinePrivilege2() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5EA784D197556507)
---@return boolean retval 
function N_0x5EA784D197556507() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8020A73847E0CA7D)
---@return boolean retval 
function NetworkHaveRosBannedPriv() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8020A73847E0CA7D)
---@return boolean retval 
function IsRockstarBanned() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8020A73847E0CA7D)
---@return boolean retval 
function NetworkHasPlayerBeenBanned() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAEEF48CDF5B6CE7C)
---@param p0 number 
---@param player number 
---@return boolean retval 
function NetworkHaveCommunicationPrivileges(p0, player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAEEF48CDF5B6CE7C)
---@param p0 number 
---@param player number 
---@return boolean retval 
function N_0xAEEF48CDF5B6CE7C(p0, player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x422D396F80A96547)
---@return boolean retval 
function NetworkHaveRosLeaderboardWritePriv() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x422D396F80A96547)
---@return boolean retval 
function N_0x422D396F80A96547() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x422D396F80A96547)
---@return boolean retval 
function NetworkGetRosPrivilege4() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x25CB5A9F37BFD063)
---@return boolean retval 
function NetworkHaveOnlinePrivileges() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x606E4D3E3CCCF3EB)
---@return boolean retval 
function NetworkHaveRosSocialClubPriv() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x606E4D3E3CCCF3EB)
---@return boolean retval 
function N_0x606E4D3E3CCCF3EB() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x606E4D3E3CCCF3EB)
---@return boolean retval 
function NetworkGetRosPrivilege10() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0AD7E2AF5349F61)
---@return boolean retval 
function NetworkHaveRosCreateTicketPriv() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0AD7E2AF5349F61)
---@return boolean retval 
function IsSocialclubBanned() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0AD7E2AF5349F61)
---@return boolean retval 
function NetworkHaveSocialClubPrivilege() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F91D5D0B36AA310)
---@return boolean retval 
function NetworkHaveRosMultiplayerPriv() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F91D5D0B36AA310)
---@return boolean retval 
function IsPlayerBanned() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F91D5D0B36AA310)
---@return boolean retval 
function CanPlayOnline() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F91D5D0B36AA310)
---@return boolean retval 
function NetworkGetRosPrivilege3() end

---From what I can tell it looks like it does the following:
---
---Creates/hosts a new transition to another online session, using this in FiveM will result in other players being disconencted from the server/preventing them from joining. This is most likely because I entered the wrong session parameters since they're pretty much all unknown right now.
---
---You also need to use `NetworkJoinTransition(Player player)` and `NetworkLaunchTransition()`.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA60BB5CE242BB254)
---@param p0 number Unknown int
---@param p1 number Unknown int
---@param p2 number Unknown int
---@param p3 number Unknown int
---@param p4 any Unknown always 0 in decompiled scripts
---@param p5 boolean BOOL purpose unknown, both 0 and 1 are used in decompiled scripts.
---@param p6 boolean BOOL purpose unknown, both 0 and 1 are used in decompiled scripts.
---@param p7 number Unknown int, it's an int according to decompiled scripts, however the value is always 0 or 1.
---@param p8 any Unknown int, it's an int according to decompiled scripts, however the value is always 0 or 1.
---@param p9 number Unknown int, sometimes 0, but also 32768 or 16384 appear in decompiled scripst, maybe a flag of some sort?
---@return boolean retval Probably a bool indicating if the transition was created.
function NetworkHostTransition(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4A595C32F77DFF76)
---@param p0 any 
---@param p1 any 
---@return boolean retval 
function NetworkInviteGamersToTransition(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x12103B9E0C9F92FB)
---@return boolean retval 
function NetworkIsActivitySpectator() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x72D918C99BCACC54)
---@param p0 number 
---@return boolean retval 
function NetworkHaveUserContentPrivileges(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x72D918C99BCACC54)
---@param p0 number 
---@return boolean retval 
function N_0x72D918C99BCACC54(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6EA101606F6E4D81)
---@return any retval 
function NetworkIsAddingFriend() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D80CD1D0E6327DE)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function NetworkInviteGamers(p0, p1, p2, p3) end

---```
---This would be nice to see if someone is in party chat, but 2 sad notes.  
---1) It only becomes true if said person is speaking in that party at the time.  
---2) It will never, become true unless you are in that party with said person.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8DE9945BCC9AEC52)
---@param networkHandle number 
---@return boolean retval 
function NetworkIsChattingInPlatformParty(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x05095437424397FA)
---@return boolean retval 
function NetworkIsActivitySession() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2763BBAA72A7BCB9)
---@param networkHandle number 
---@return boolean retval 
function NetworkIsActivitySpectatorFromHandle(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFFB25453D8600F9)
---@return boolean retval 
function NetworkIsCableConnected() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFFB25453D8600F9)
---@return boolean retval 
function N_0xEFFB25453D8600F9() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A4CF4F48AD77302)
---@return boolean retval 
function NetworkIsCloudAvailable() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7C95D322FF57522)
---@return boolean retval 
function NetworkIsClockTimeOverridden() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7C95D322FF57522)
---@return boolean retval 
function N_0xD7C95D322FF57522() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8132C0EB8B2B3293)
---@return boolean retval 
function NetworkIsCloudBackgroundScriptRequestPending() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8132C0EB8B2B3293)
---@return boolean retval 
function N_0x8132C0EB8B2B3293() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8132C0EB8B2B3293)
---@return boolean retval 
function HasBgScriptBeenDownloaded() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8132C0EB8B2B3293)
---@return boolean retval 
function NetworkIsCloudBackgroundScriptsRequestPending() end

---```
---NETWORK_IS_*
---
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x16D3D49902F697BB)
---@param player number 
---@return boolean retval 
function NetworkIsConnectionEndpointRelayServer(player) end

---```
---NETWORK_IS_*
---
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x16D3D49902F697BB)
---@param player number 
---@return boolean retval 
function N_0x16D3D49902F697BB(player) end

---Note: This only works for vehicles, which appears to be a bug (since the setter *does* work for every entity type and the name is 99% correct).
---[Native Documentation](https://docs.fivem.net/natives/?_0x71302EC70689052A)
---@param entity number 
---@return boolean retval 
function NetworkIsEntityConcealed(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC01E93FAC20C3346)
---@param doorHash number | string 
---@return boolean retval 
function NetworkIsDoorNetworked(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC01E93FAC20C3346)
---@param doorHash number | string 
---@return boolean retval 
function N_0xC01E93FAC20C3346(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC01E93FAC20C3346)
---@param doorHash number | string 
---@return boolean retval 
function NetworkHasControlOfPavementStats(doorHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x422F32CC7E56ABAD)
---@param entity number 
---@return boolean retval 
function NetworkIsEntityFading(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x422F32CC7E56ABAD)
---@param entity number 
---@return boolean retval 
function N_0x422F32CC7E56ABAD(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDDDF64C91BFCF0AA)
---@return boolean retval 
function NetworkIsFindingGamers() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1A24A179F9B31654)
---@param networkHandle number 
---@return boolean retval 
function NetworkIsFriend(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57005C18827F3A28)
---@param friendName string 
---@return boolean retval 
function NetworkIsFriendInMultiplayer(friendName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x87EB7A3FFCB314DB)
---@param networkHandle number 
---@return boolean retval 
function NetworkIsFriendHandleOnline(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x87EB7A3FFCB314DB)
---@param networkHandle number 
---@return boolean retval 
function N_0x87EB7A3FFCB314DB(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x87EB7A3FFCB314DB)
---@param networkHandle number 
---@return boolean retval 
function NetworkIsFriendOnline2(networkHandle) end

---```
---In scripts R* calls 'NETWORK_GET_FRIEND_NAME' in this param.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2EA9A3BEDF3F17B8)
---@param friendName string 
---@return boolean retval 
function NetworkIsFriendInSameTitle(friendName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x425A44533437B64D)
---@param name string 
---@return boolean retval 
function NetworkIsFriendOnline(name) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBAD8F2A42B844821)
---@param friendIndex number 
---@return boolean retval 
function NetworkIsFriendIndexOnline(friendIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBAD8F2A42B844821)
---@param friendIndex number 
---@return boolean retval 
function N_0xBAD8F2A42B844821(friendIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE944C4F5AF1B5883)
---@param networkHandle any 
---@return boolean retval 
function NetworkIsGamerBlockedByMe(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x10FAB35428CCC9D7)
---@return boolean retval 
function NetworkIsGameInProgress() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCE60DE011B6C7978)
---@param networkHandle number 
---@return boolean retval 
function NetworkIsGamerMutedByMe(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0F10B05DDF8D16E9)
---@param networkHandle number 
---@return boolean retval 
function NetworkIsGamerInMySession(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x71C33B22606CD88A)
---@param networkHandle number 
---@return boolean retval 
function NetworkIsGamerTalking(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x94A8394D150B013A)
---@return boolean retval 
function NetworkIsGettingGamerStatus() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x94A8394D150B013A)
---@return boolean retval 
function N_0x94A8394D150B013A() end

---```
---If you are host, returns true else returns false.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8DB296B814EDDA07)
---@return boolean retval 
function NetworkIsHost() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F79B93B0A8E4133)
---@param networkHandle number 
---@param bufferSize number 
---@return boolean retval 
function NetworkIsHandleValid(networkHandle, bufferSize) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x83CD99A1E6061AB5)
---@return boolean retval 
function NetworkIsHostOfThisScript() end

---```
---Hardcoded to return false.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2FC5650B0271CB57)
---@return boolean retval 
function NetworkIsInPlatformParty() end

---```
---Hardcoded to return false.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2FC5650B0271CB57)
---@return boolean retval 
function N_0x2FC5650B0271CB57() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6CC27C9FA2040220)
---@return boolean retval 
function NetworkIsInMpCutscene() end

---```
---Hardcoded to return false.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFD8B834A8BA05048)
---@return boolean retval 
function NetworkIsInPlatformPartyChat() end

---```
---Hardcoded to return false.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFD8B834A8BA05048)
---@return boolean retval 
function N_0xFD8B834A8BA05048() end

---```
---Note according to IDA TU27 X360(Console),  
---This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.  
---Side note: This location just stops where it's at once jumped to.  
---Screenshot for side note,   
---h t t p ://i.imgur.com/m2ci1mF.png  
---h t t p://i.imgur.com/Z0Wx2B6.png  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x966C2BC2A7FE3F30)
---@return boolean retval 
function NetworkIsInParty() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x048746E388762E11)
---@return boolean retval 
function NetworkIsInSpectatorMode() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xADA24309FE08DACF)
---@return boolean retval 
function NetworkIsInTutorialSession() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA97246103B63917)
---@return boolean retval 
function NetworkIsInSession() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x68049AEFF83D8F0A)
---@return boolean retval 
function NetworkIsInTransition() end

---Checks if the networkHandle is the same as any other user that is signed in on the local machine.
---For example, if your console has two or more users signed in (on different controllers), the profile that is not controlling the game would be "inactive".
---[Native Documentation](https://docs.fivem.net/natives/?_0x7E58745504313A2E)
---@param networkHandle number 
---@return boolean retval Returns true if the networkHandle is signed in on the same machine, but is not the main player.
function NetworkIsInactiveProfile(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8A8694B48715B000)
---@return boolean retval 
function NetworkIsLocalPlayerInvincible() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9747292807126EDA)
---@return boolean retval 
function NetworkIsMultiplayerDisabled() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9747292807126EDA)
---@return boolean retval 
function N_0x9747292807126EDA() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0D2AF00BCC234CA)
---@return boolean retval 
function NetworkIsLocalTalking() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0D2AF00BCC234CA)
---@return boolean retval 
function N_0xC0D2AF00BCC234CA() end

---Returns true if the specified network id is controlled by someone else.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7242F8B741CE1086)
---@param netId number The network id for an object or entity.
---@return boolean retval Probably a bool, returns 1 if you don't have control over the netId entity.
function NetworkIsNetworkIdAClone(netId) end

---Returns true if the specified network id is controlled by someone else.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7242F8B741CE1086)
---@param netId number The network id for an object or entity.
---@return boolean retval Probably a bool, returns 1 if you don't have control over the netId entity.
function N_0x7242F8B741CE1086(netId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x74698374C45701D2)
---@return boolean retval 
function NetworkIsOfflineInvitePending() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x74698374C45701D2)
---@return boolean retval 
function N_0x74698374C45701D2() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6FF8FF40B6357D45)
---@param p0 number 
---@return boolean retval 
function NetworkIsParticipantActive(p0) end

---```
---Note according to IDA TU27 X360(Console),  
---This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.  
---Side note: This location just stops where it's at once jumped to.  
---Screenshot for side note,   
---h t t p ://i.imgur.com/m2ci1mF.png  
---h t t p://i.imgur.com/Z0Wx2B6.png  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x676ED266AADD31E0)
---@param networkHandle number 
---@return boolean retval 
function NetworkIsPartyMember(networkHandle) end

---```
---This function is hard-coded to always return 0.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0BE73DA6984A6E33)
---@param p0 any 
---@return any retval 
function NetworkIsPendingFriend(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1AD5B71586B94820)
---@param player1 number 
---@param script string 
---@param player2 number 
---@return boolean retval 
function NetworkIsPlayerAParticipantOnScript(player1, script, player2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1AD5B71586B94820)
---@param player1 number 
---@param script string 
---@param player2 number 
---@return boolean retval 
function N_0x1AD5B71586B94820(player1, script, player2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8DFD30D6973E135)
---@param player number 
---@return boolean retval 
function NetworkIsPlayerActive(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3CA58F6CB7CBD784)
---@param player number 
---@return boolean retval 
function NetworkIsPlayerAParticipant(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x919B3C98ED8292F9)
---@param player number 
---@return boolean retval 
function NetworkIsPlayerConcealed(player) end

---```
---NETWORK_ARE_*  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9DE986FC9A87C474)
---@param player number 
---@param index number 
---@return boolean retval 
function NetworkIsPlayerEqualToIndex(player, index) end

---```
---NETWORK_ARE_*  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9DE986FC9A87C474)
---@param player number 
---@param index number 
---@return boolean retval 
function N_0x9DE986FC9A87C474(player, index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8C71288AE68EDE39)
---@param player number 
---@return boolean retval 
function NetworkIsPlayerMutedByMe(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57AF1F8E27483721)
---@param player number 
---@return boolean retval 
function NetworkIsPlayerBlockedByMe(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x93DC1BE4E1ABE9D1)
---@param player number 
---@return boolean retval 
function NetworkIsPlayerConnected(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x631DC5DFF4B110E3)
---@param player number 
---@return boolean retval 
function NetworkIsPlayerFading(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x631DC5DFF4B110E3)
---@param player number 
---@return boolean retval 
function N_0x631DC5DFF4B110E3(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x63F9EE203C3619F2)
---@param player number 
---@return boolean retval 
function NetworkIsPlayerInMpCutscene(player) end

---```
---returns true if someone is screaming or talking in a microphone  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x031E11F3D447647E)
---@param player number 
---@return boolean retval 
function NetworkIsPlayerTalking(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D40DF90FAD26098)
---@param scriptName string 
---@param player number 
---@param p2 boolean 
---@param p3 any 
---@return boolean retval 
function NetworkIsScriptActive(scriptName, player, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D11E61A4ABF49CC)
---@return boolean retval 
function NetworkIsPsnAvailable() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D11E61A4ABF49CC)
---@return boolean retval 
function N_0x8D11E61A4ABF49CC() end

---```
---NativeDB Introduced: v2245
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA7DE67F5FE5EE13)
---@param scriptHash number | string 
---@param p1 number 
---@param p2 boolean 
---@param p3 number 
---@return boolean retval 
function NetworkIsScriptActiveByHash(scriptHash, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD83C2B94E7508980)
---@return boolean retval 
function NetworkIsSessionActive() end

---```
---This checks if player is playing on gta online or not.  
---Please add an if and block your mod if this is "true".  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9DE624D2FC4B603F)
---@return boolean retval 
function NetworkIsSessionStarted() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF4435D66A8E2905E)
---@return boolean retval 
function NetworkIsSessionBusy() end

---```
---Returns whether the player is signed into Social Club.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x054354A99211EB96)
---@return boolean retval 
function NetworkIsSignedIn() end

---```
---Returns whether the game is not in offline mode.  
---seemed not to work for some ppl  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1077788E268557C2)
---@return boolean retval 
function NetworkIsSignedOnline() end

---```
---Same as _IS_TEXT_CHAT_ACTIVE, except it does not check if the text chat HUD component is initialized, and therefore may crash.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5FCF4D7069B09026)
---@return boolean retval 
function NetworkIsTextChatActive() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0DBD5D7E3C5BEC3B)
---@return boolean retval 
function NetworkIsTransitionClosedCrew() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0DBD5D7E3C5BEC3B)
---@return boolean retval 
function N_0x0DBD5D7E3C5BEC3B() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x292564C735375EDF)
---@return boolean retval 
function NetworkIsTransitionMatchmaking() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x292564C735375EDF)
---@return boolean retval 
function N_0x292564C735375EDF() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x37A4494483B9F5C9)
---@return boolean retval 
function NetworkIsTransitionOpenToMatchmaking() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x37A4494483B9F5C9)
---@return boolean retval 
function N_0x37A4494483B9F5C9() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD1110739EEADB592)
---@param p0 any 
---@param p1 boolean 
---@param p2 any 
---@return boolean retval 
function NetworkIsThisScriptMarked(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD1110739EEADB592)
---@param p0 any 
---@param p1 boolean 
---@param p2 any 
---@return boolean retval 
function N_0xD1110739EEADB592(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD1110739EEADB592)
---@param p0 any 
---@param p1 boolean 
---@param p2 any 
---@return boolean retval 
function NetworkSetThisScriptMarked(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5A6AA44FF8E931E6)
---@return boolean retval 
function NetworkIsTransitionPrivate() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5A6AA44FF8E931E6)
---@return boolean retval 
function N_0x5A6AA44FF8E931E6() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x520F3282A53D26B7)
---@return boolean retval 
function NetworkIsTransitionBusy() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5DC577201723960A)
---@return boolean retval 
function NetworkIsTransitionSolo() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5DC577201723960A)
---@return boolean retval 
function N_0x5DC577201723960A() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6512765E3BE78C50)
---@return boolean retval 
function NetworkIsTransitionClosedFriends() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6512765E3BE78C50)
---@return boolean retval 
function N_0x6512765E3BE78C50() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0B824797C9BF2159)
---@return boolean retval 
function NetworkIsTransitionHost() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D7696D8F4FA6CB7)
---@return boolean retval 
function NetworkIsTransitionToGame() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6B5C83BA3EFE6A10)
---@param networkHandle number 
---@return boolean retval 
function NetworkIsTransitionHostFromHandle(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0467C11ED88B7D28)
---@return boolean retval 
function NetworkIsTunableCloudRequestPending() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0467C11ED88B7D28)
---@return boolean retval 
function N_0x0467C11ED88B7D28() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0467C11ED88B7D28)
---@return boolean retval 
function HasTunablesBeenDownloaded() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x53FA83401D9C07FE)
---@return boolean retval 
function NetworkIsTransitionStarted() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD0A484CB2F829FBE)
---@return boolean retval 
function NetworkIsTransitionVisibilityLocked() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD0A484CB2F829FBE)
---@return boolean retval 
function N_0xD0A484CB2F829FBE() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA06509A691D12BE4)
---@return any retval 
function NetworkJoinGroupActivity() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA06509A691D12BE4)
---@return any retval 
function N_0xA06509A691D12BE4() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFFE1E5B792D92B34)
---@return boolean retval 
function NetworkJoinPreviouslyFailedTransition() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFFE1E5B792D92B34)
---@return boolean retval 
function N_0xFFE1E5B792D92B34() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x35F0B98A8387274D)
---@return boolean retval 
function NetworkIsTutorialSessionChangePending() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x35F0B98A8387274D)
---@return boolean retval 
function N_0x35F0B98A8387274D() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2DCF46CB1A4F0884)
---@return boolean retval 
function NetworkLaunchTransition() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x59DF79317F85A7E0)
---@return boolean retval 
function NetworkJoinPreviouslyFailedSession() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x59DF79317F85A7E0)
---@return boolean retval 
function N_0x59DF79317F85A7E0() end

---```
---int handle[76];  
---NETWORK_HANDLE_FROM_FRIEND(iSelectedPlayer, &handle[0], 13);  
---Player uVar2 = NETWORK_GET_PLAYER_FROM_GAMER_HANDLE(&handle[0]);  
---NETWORK_JOIN_TRANSITION(uVar2);  
---		nothing doin.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D060B08CD63321A)
---@param player number 
---@return boolean retval 
function NetworkJoinTransition(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD23A1A815D21DB19)
---@return boolean retval 
function NetworkLeaveTransition() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B3A8F7CA3A38FDE)
function NetworkOpenTransitionMatchmaking() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B3A8F7CA3A38FDE)
function N_0x2B3A8F7CA3A38FDE() end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x42BF1D2E723B6D7E)
---@param ms number 
function NetworkOverrideClockMillisecondsPerGameMinute(ms) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7E30DE9272B6D49)
---@param entity number 
---@param x number 
---@param y number 
---@param z number 
---@param heading number 
function NetworkOverrideCoordsAndHeading(entity, x, y, z, heading) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7E30DE9272B6D49)
---@param entity number 
---@param x number 
---@param y number 
---@param z number 
---@param heading number 
function N_0xA7E30DE9272B6D49(entity, x, y, z, heading) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5728BB6D63E3FF1D)
---@param p0 any 
---@return boolean retval 
function NetworkMarkTransitionGamerAsFullyJoined(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC82630132081BB6F)
---@param networkHandle number 
---@return string retval 
function NetworkMemberIdFromGamerHandle(networkHandle) end

---```
---R* uses this to hear all player when spectating.   
---It allows you to hear other online players when their chat is on none, crew and or friends  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDDF73E2B1FEC5AB4)
---@param player number 
---@param toggle boolean 
function NetworkOverrideReceiveRestrictions(player, toggle) end

---```
---R* uses this to hear all player when spectating.   
---It allows you to hear other online players when their chat is on none, crew and or friends  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDDF73E2B1FEC5AB4)
---@param player number 
---@param toggle boolean 
function N_0xDDF73E2B1FEC5AB4(player, toggle) end

---```
---This is used alongside the native,
---'NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS'. Read its description for more info.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x97DD4C5944CC2E6A)
---@param player number 
---@param toggle boolean 
function NetworkOverrideSendRestrictions(player, toggle) end

---```
---This is used alongside the native,
---'NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS'. Read its description for more info.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x97DD4C5944CC2E6A)
---@param player number 
---@param toggle boolean 
function N_0x97DD4C5944CC2E6A(player, toggle) end

---```
---This is used alongside the native,
---'NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS'. Read its description for more info.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x97DD4C5944CC2E6A)
---@param player number 
---@param toggle boolean 
function NetworkOverrideSendRestrictions(player, toggle) end

---```
---Could possibly bypass being muted or automatically muted  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3039AE5AD2C9C0C4)
---@param player number 
---@param toggle boolean 
function NetworkOverrideChatRestrictions(player, toggle) end

---```
---Could possibly bypass being muted or automatically muted  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3039AE5AD2C9C0C4)
---@param player number 
---@param toggle boolean 
function N_0x3039AE5AD2C9C0C4(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F697A66CE78674E)
---@param team number 
---@param toggle boolean 
function NetworkOverrideTeamRestrictions(team, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F697A66CE78674E)
---@param team number 
---@param toggle boolean 
function N_0x6F697A66CE78674E(team, toggle) end

---Works in Singleplayer too.
---Passing wrong data (e.g. hours above 23) will cause the game to crash.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE679E3E06E363892)
---@param hours number 
---@param minutes number 
---@param seconds number 
function NetworkOverrideClockTime(hours, minutes, seconds) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAF66059A131AA269)
---@param p0 boolean 
function NetworkOverrideTransitionChat(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAF66059A131AA269)
---@param p0 boolean 
function N_0xAF66059A131AA269(p0) end

---```
---p0 is always false in scripts.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0FF2862B61A58AF9)
---@param toggle boolean 
function NetworkOverrideReceiveRestrictionsAll(toggle) end

---```
---p0 is always false in scripts.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0FF2862B61A58AF9)
---@param toggle boolean 
function N_0x0FF2862B61A58AF9(toggle) end

---```
---Returns the name of a given player. Returns "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7718D2E2060837D2)
---@param player number 
---@return string retval 
function NetworkPlayerGetName(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57B192B4D4AD23D5)
---@param toggle boolean 
function NetworkOverrideSendRestrictionsAll(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57B192B4D4AD23D5)
---@param toggle boolean 
function N_0x57B192B4D4AD23D5(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57B192B4D4AD23D5)
---@param toggle boolean 
function NetworkChatMute(toggle) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0BC9BCD24A511D5)
---@param ped number 
function NetworkPedForceGameStateUpdate(ped) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0BC9BCD24A511D5)
---@param ped number 
function N_0xF0BC9BCD24A511D5(ped) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3FB99A8B08D18FD6)
---@param player number 
---@return boolean retval 
function NetworkPlayerHasHeadset(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x172F75B6EE2233BA)
---@return number retval 
function NetworkPlayerGetCheaterReason() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x172F75B6EE2233BA)
---@return number retval 
function N_0x172F75B6EE2233BA() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x172F75B6EE2233BA)
---@return number retval 
function NetworkPlayerIsUnk() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x565E430DB3B05BEC)
---@param player number 
---@return boolean retval 
function NetworkPlayerIndexIsCheater(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x565E430DB3B05BEC)
---@param player number 
---@return boolean retval 
function N_0x565E430DB3B05BEC(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x565E430DB3B05BEC)
---@param player number 
---@return boolean retval 
function NetworkPlayerSomething(player) end

---```
---Takes a 24 char buffer. Returns the buffer or "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4927FC39CD0869A0)
---@param player number 
---@param userID number 
---@return string retval 
function NetworkPlayerGetUserid(player, userID) end

---```
---Takes a 24 char buffer. Returns the buffer or "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4927FC39CD0869A0)
---@param player number 
---@param userID number 
---@return string retval 
function NetworkPlayerGetUserId(player, userID) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x19D8DA0E5A68045A)
---@return boolean retval 
function NetworkPlayerIsBadsport() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x655B91F1495A9090)
---@return boolean retval 
function NetworkPlayerIsCheater() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x85A0EF54A500882C)
---@param p0 any 
---@return boolean retval 
function NetworkQueueGamerForStatus(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x85A0EF54A500882C)
---@param p0 any 
---@return boolean retval 
function N_0x85A0EF54A500882C(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x85A0EF54A500882C)
---@param p0 any 
---@return boolean retval 
function NetworkGetGamerStatus(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x06FAACD625D80CAA)
---@param entity number 
function NetworkRegisterEntityAsNetworked(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x06FAACD625D80CAA)
---@param entity number 
function N_0x06FAACD625D80CAA(entity) end

---```
---Checks if a specific value (BYTE) in CPlayerInfo is nonzero.  
---Returns always false in Singleplayer.  
---No longer used for dev checks since first mods were released on PS3 & 360.  
---R* now checks with the is_dlc_present native for the dlc hash 2532323046,  
---if that is present it will unlock dev stuff.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x544ABDDA3B409B6D)
---@param player number 
---@return boolean retval 
function NetworkPlayerIsRockstarDev(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x697F508861875B42)
---@param contextHash number | string 
---@param nameHash number | string 
---@param value boolean 
---@return boolean retval 
function NetworkRegisterTunableBoolHash(contextHash, nameHash, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x697F508861875B42)
---@param contextHash number | string 
---@param nameHash number | string 
---@param value boolean 
---@return boolean retval 
function N_0x697F508861875B42(contextHash, nameHash, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3C891A251567DFCE)
---@param p0 any 
---@return any retval 
function NetworkQueryRespawnResults(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3C891A251567DFCE)
---@param p0 any 
---@return any retval 
function N_0x3C891A251567DFCE(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3E9B2F01C50DF595)
---@param vars number 
---@param numVars number 
function NetworkRegisterHostBroadcastVariables(vars, numVars) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3364AA97340CA215)
---@param vars number 
---@param numVars number 
function NetworkRegisterPlayerBroadcastVariables(vars, numVars) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A8B55FDA4C8DDEF)
---@param contextHash number | string 
---@param nameHash number | string 
---@param value number 
---@return boolean retval 
function NetworkRegisterTunableIntHash(contextHash, nameHash, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A8B55FDA4C8DDEF)
---@param contextHash number | string 
---@param nameHash number | string 
---@param value number 
---@return boolean retval 
function N_0x3A8B55FDA4C8DDEF(contextHash, nameHash, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x93CF869BAA0C4874)
---@param p0 any 
---@return boolean retval 
function NetworkRemoveEntityArea(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7524B431B2E6F7EE)
---@param p0 any 
function NetworkRemoveTransitionInvite(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1950DAE9848A4739)
---@param contextHash number | string 
---@param nameHash number | string 
---@param value number 
---@return boolean retval 
function NetworkRegisterTunableFloatHash(contextHash, nameHash, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1950DAE9848A4739)
---@param contextHash number | string 
---@param nameHash number | string 
---@param value number 
---@return boolean retval 
function N_0x1950DAE9848A4739(contextHash, nameHash, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5626D9D6810730D5)
function NetworkReportMyself() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5626D9D6810730D5)
function N_0x5626D9D6810730D5() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x726E0375C7A26368)
function NetworkRemoveAllTransitionInvite() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x726E0375C7A26368)
function N_0x726E0375C7A26368() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x42FB3B532D526E6C)
function NetworkRequestCloudTunables() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x42FB3B532D526E6C)
function N_0x42FB3B532D526E6C() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0210268DB0974B1)
---@param p0 any 
---@return boolean retval 
function NetworkRemovePresenceInvite(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0210268DB0974B1)
---@param p0 any 
---@return boolean retval 
function N_0xF0210268DB0974B1(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB69317BF5E782347)
---@param entity number 
---@return boolean retval 
function NetworkRequestControlOfEntity(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x924426BFFD82E915)
---@return boolean retval 
function NetworkRequestCloudBackgroundScripts() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x924426BFFD82E915)
---@return boolean retval 
function N_0x924426BFFD82E915() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x924426BFFD82E915)
---@return boolean retval 
function NetworkRequestCloudBackgroundScripts() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA670B3662FAFFBD0)
---@param netId number 
---@return boolean retval 
function NetworkRequestControlOfNetworkId(netId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x870DDFD5A4A796E4)
---@param doorID number 
---@return boolean retval 
function NetworkRequestControlOfDoor(doorID) end

---```
---p4 and p5 are always 0 in scripts  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9769F811D1785B03)
---@param player number 
---@param x number 
---@param y number 
---@param z number 
---@param p4 boolean 
---@param p5 boolean 
function NetworkRespawnCoords(player, x, y, z, p4, p5) end

---```
---p4 and p5 are always 0 in scripts  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9769F811D1785B03)
---@param player number 
---@param x number 
---@param y number 
---@param z number 
---@param p4 boolean 
---@param p5 boolean 
function N_0x9769F811D1785B03(player, x, y, z, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x72433699B4E6DD64)
function NetworkResetBodyTracker() end

---```
---NativeDB Added Parameter 7: Any p6
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA23C49EAA83ACFB)
---@param x number 
---@param y number 
---@param z number 
---@param heading number 
---@param unk boolean 
---@param changetime boolean 
function NetworkResurrectLocalPlayer(x, y, z, heading, unk, changetime) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1B84178F8674195)
---@param seed number 
function NetworkSeedRandomNumberGenerator(seed) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1B84178F8674195)
---@param seed number 
function N_0xF1B84178F8674195(seed) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3C7A6AFDB244624)
---@param networkHandle number 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function NetworkSendInviteViaPresence(networkHandle, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3C7A6AFDB244624)
---@param networkHandle number 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function N_0xC3C7A6AFDB244624(networkHandle, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3C7A6AFDB244624)
---@param networkHandle number 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function NetworkSendPresenceInvite(networkHandle, p1, p2, p3) end

---```
---String "NETWORK_SEND_PRESENCE_TRANSITION_INVITE" is contained in the function in ida so this one is correct.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC116FF9B4D488291)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function NetworkSendPresenceTransitionInvite(p0, p1, p2, p3) end

---```
---String "NETWORK_SEND_PRESENCE_TRANSITION_INVITE" is contained in the function in ida so this one is correct.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC116FF9B4D488291)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function N_0xC116FF9B4D488291(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE3E347A87ACEB82)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function NetworkSessionActivityQuickmatch(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE3E347A87ACEB82)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function N_0xBE3E347A87ACEB82(p0, p1, p2, p3) end

---```
---Message is limited to 64 characters.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A214F2EC889B100)
---@param message string 
---@param networkHandle number 
---@return boolean retval 
function NetworkSendTextMessage(message, networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCAE55F48D3D7875C)
---@param groupId number An identifier value between zero and four
function NetworkSessionAddActiveMatchmakingGroup(groupId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCAE55F48D3D7875C)
---@param groupId number An identifier value between zero and four
function N_0xCAE55F48D3D7875C(groupId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA73667484D7037C3)
---@param toggle boolean 
function NetworkSessionBlockJoinRequests(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA73667484D7037C3)
---@param toggle boolean 
function N_0xA73667484D7037C3(toggle) end

---```
---the first arg seems to be the network player handle (&handle) and the second var is pretty much always "" and the third seems to be a number between 0 and ~10 and the 4th is is something like 0 to 5 and I guess the 5th is a bool cuz it is always 0 or 1  
---does this send an invite to a player?  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x31D1D2B858D25E6B)
---@param networkHandle number 
---@param p1 string 
---@param p2 number 
---@param p3 number 
---@param p4 boolean 
---@return boolean retval 
function NetworkSendTransitionGamerInstruction(networkHandle, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2FBF47B1B36D36F9)
function NetworkSessionCancelInvite() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB4AB419E0D86ACAE)
---@param p0 number 
---@param p1 boolean 
function NetworkSessionChangeSlots(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB4AB419E0D86ACAE)
---@param p0 number 
---@param p1 boolean 
function N_0xB4AB419E0D86ACAE(p0, p1) end

---```
---p0 is always false and p1 varies.  
---NETWORK_SESSION_END(0, 1)  
---NETWORK_SESSION_END(0, 0)  
---Results in: "Connection to session lost due to an unknown network error. Please return to Grand Theft Auto V and try again later."  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA02E59562D711006)
---@param p0 boolean 
---@param p1 boolean 
---@return boolean retval 
function NetworkSessionEnd(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x94BC51E9449D917F)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param maxPlayers number 
---@param p4 boolean 
---@return boolean retval 
function NetworkSessionCrewMatchmaking(p0, p1, p2, maxPlayers, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x94BC51E9449D917F)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param maxPlayers number 
---@param p4 boolean 
---@return boolean retval 
function N_0x94BC51E9449D917F(p0, p1, p2, maxPlayers, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA29177F7703B5644)
function NetworkSessionForceCancelInvite() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA29177F7703B5644)
function N_0xA29177F7703B5644() end

---```
---unknown params  
---p0 = 0, 2, or 999 (The global is 999 by default.)  
---p1 = 0 (Always in every script it's found in atleast.)  
---p2 = 0, 3, or 4 (Based on a var that is determined by a function.)  
---p3 = maxPlayers (It's obvious in x360 scripts it's always 18)  
---p4 = 0 (Always in every script it's found in atleast.)  
---p5 = 0 or 1. (1 if network_can_enter_multiplayer, but set to 0 if other checks after that are passed.)  
---p5 is reset to 0 if,  
---Global_1315318 = 0 or Global_1315323 = 9 or 12 or (Global_1312629 = 0 && Global_1312631 = true/1) those are passed.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x330ED4D05491934F)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param maxPlayers number 
---@param p4 any 
---@param p5 any 
---@return any retval 
function NetworkSessionEnter(p0, p1, p2, maxPlayers, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE57397B4A3429DD0)
---@param networkHandle number 
function NetworkSessionGetInviter(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2CFC76E0D087C994)
---@param p0 number 
---@param p1 number 
---@param maxPlayers number 
---@param p3 boolean 
---@return boolean retval 
function NetworkSessionFriendMatchmaking(p0, p1, maxPlayers, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2CFC76E0D087C994)
---@param p0 number 
---@param p1 number 
---@param maxPlayers number 
---@param p3 boolean 
---@return boolean retval 
function N_0x2CFC76E0D087C994(p0, p1, maxPlayers, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD6D09A6F32F49EF1)
---@param player number 
---@return boolean retval 
function NetworkSessionGetKickVote(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD6D09A6F32F49EF1)
---@param player number 
---@return boolean retval 
function NetworkSessionArePlayersVotingToKick(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD6D09A6F32F49EF1)
---@param player number 
---@return boolean retval 
function NetworkSessionIsPlayerVotedToKick(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x53AFD64C6758F2F9)
---@return number retval 
function NetworkSessionGetPrivateSlots() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x53AFD64C6758F2F9)
---@return number retval 
function N_0x53AFD64C6758F2F9() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x56CE820830EF040B)
---@param p0 number 
---@return number retval 
function NetworkSessionGetMatchmakingGroupFree(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x56CE820830EF040B)
---@param p0 number 
---@return number retval 
function N_0x56CE820830EF040B(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x56CE820830EF040B)
---@param p0 number 
---@return number retval 
function NetworkSessionGetUnk(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xED34C0C02C098BB7)
---@param p0 number 
---@param maxPlayers number 
---@return boolean retval 
function NetworkSessionHostClosed(p0, maxPlayers) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xED34C0C02C098BB7)
---@param p0 number 
---@param maxPlayers number 
---@return boolean retval 
function N_0xED34C0C02C098BB7(p0, maxPlayers) end

---```
---Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F3D4ED9BEE4E61D)
---@param p0 number 
---@param maxPlayers number 
---@param p2 boolean 
---@return boolean retval 
function NetworkSessionHost(p0, maxPlayers, p2) end

---```
---Loads up the map that is loaded when beeing in mission creator  
---Player gets placed in a mix between online/offline mode  
---p0 is always 2 in R* scripts.  
---Appears to be patched in gtav b757 (game gets terminated) alonside with most other network natives to prevent online modding ~ghost30812  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC74C33FCA52856D5)
---@param p0 number 
function NetworkSessionHostSinglePlayer(p0) end

---```
---Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9CFD27A5D578D83)
---@param p0 number 
---@param maxPlayers number 
---@return boolean retval 
function NetworkSessionHostFriendsOnly(p0, maxPlayers) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFBCFA2EA2E206890)
---@return boolean retval 
function NetworkSessionIsClosedFriends() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFBCFA2EA2E206890)
---@return boolean retval 
function N_0xFBCFA2EA2E206890() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x74732C6CA90DA2B4)
---@return boolean retval 
function NetworkSessionIsClosedCrew() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x74732C6CA90DA2B4)
---@return boolean retval 
function N_0x74732C6CA90DA2B4() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF3929C2379B60CCE)
---@return boolean retval 
function NetworkSessionIsSolo() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF3929C2379B60CCE)
---@return boolean retval 
function N_0xF3929C2379B60CCE() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA416D68C631496A)
---@return boolean retval 
function NetworkSessionIsVisible() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA416D68C631496A)
---@return boolean retval 
function N_0xBA416D68C631496A() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x855BC38818F6F684)
---@return boolean retval 
function NetworkSessionIsInVoiceSession() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x855BC38818F6F684)
---@return boolean retval 
function N_0x855BC38818F6F684() end

---```
---Only works as host.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFA8904DC5F304220)
---@param player number 
function NetworkSessionKickPlayer(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCEF70AA5B3F89BA1)
---@return boolean retval 
function NetworkSessionIsPrivate() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCEF70AA5B3F89BA1)
---@return boolean retval 
function N_0xCEF70AA5B3F89BA1() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x271CC6AB59EBF9A5)
---@param toggle boolean 
function NetworkSessionMarkVisible(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x271CC6AB59EBF9A5)
---@param toggle boolean 
function N_0x271CC6AB59EBF9A5(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF0912DDF7C4CB4B)
---@return boolean retval 
function NetworkSessionIsVoiceSessionBusy() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF0912DDF7C4CB4B)
---@return boolean retval 
function N_0xEF0912DDF7C4CB4B() end

---```
---playerTypes:
---0 = regular joiner
---4 = spectator
---8 = unknown
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8B6A4DD0AF9CE215)
---@param playerType number 
---@param playerCount number 
function NetworkSessionSetMatchmakingGroupMax(playerType, playerCount) end

---```
---playerTypes:
---0 = regular joiner
---4 = spectator
---8 = unknown
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8B6A4DD0AF9CE215)
---@param playerType number 
---@param playerCount number 
function N_0x8B6A4DD0AF9CE215(playerType, playerCount) end

---```
---playerTypes:
---0 = regular joiner
---4 = spectator
---8 = unknown
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8B6A4DD0AF9CE215)
---@param playerType number 
---@param playerCount number 
function NetworkSessionSetMaxPlayers(playerType, playerCount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6F8AB8A4189CF3A)
function NetworkSessionJoinInvite() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6F8AB8A4189CF3A)
function NetworkIsPlayerAnimationDrawingSynchronized() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3442775428FD2DAA)
function NetworkSessionLeaveSinglePlayer() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1EEA2DDA9FFA69D)
---@param p0 any 
function NetworkSessionSetMatchmakingMentalState(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1EEA2DDA9FFA69D)
---@param p0 any 
function N_0xF1EEA2DDA9FFA69D(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x49EC8030F5015F8B)
---@param matchmakingGroup number 
function NetworkSessionSetMatchmakingGroup(matchmakingGroup) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x49EC8030F5015F8B)
---@param matchmakingGroup number 
function N_0x49EC8030F5015F8B(matchmakingGroup) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x49EC8030F5015F8B)
---@param matchmakingGroup number 
function NetworkSctvSlots(matchmakingGroup) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3F52E880AAF6C8CA)
---@param p0 boolean 
function NetworkSessionSetMatchmakingPropertyId(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3F52E880AAF6C8CA)
---@param p0 boolean 
function N_0x3F52E880AAF6C8CA(p0) end

---```
---Only one occurence in the scripts:
---auto sub_cb43(auto a_0, auto a_1) {
---    if (g_2594CB._f1) {
---        if (NETWORK::_855BC38818F6F684()) {
---            NETWORK::_ABD5E88B8A2D3DB2(&a_0._fB93);
---            g_2594CB._f14/*{13}*/ = a_0._fB93;
---            g_2594CB._f4/*"64"*/ = a_1;
---            return 1;
---        }
---    }
---    return 0;
---}
---other:
---looks like it passes a player in the paramater
---Contains string "NETWORK_VOICE_CONNECT_TO_PLAYER" in ida
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xABD5E88B8A2D3DB2)
---@param globalPtr any 
function NetworkSessionVoiceConnectToPlayer(globalPtr) end

---```
---Only one occurence in the scripts:
---auto sub_cb43(auto a_0, auto a_1) {
---    if (g_2594CB._f1) {
---        if (NETWORK::_855BC38818F6F684()) {
---            NETWORK::_ABD5E88B8A2D3DB2(&a_0._fB93);
---            g_2594CB._f14/*{13}*/ = a_0._fB93;
---            g_2594CB._f4/*"64"*/ = a_1;
---            return 1;
---        }
---    }
---    return 0;
---}
---other:
---looks like it passes a player in the paramater
---Contains string "NETWORK_VOICE_CONNECT_TO_PLAYER" in ida
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xABD5E88B8A2D3DB2)
---@param globalPtr any 
function N_0xABD5E88B8A2D3DB2(globalPtr) end

---```
---Only one occurence in the scripts:
---auto sub_cb43(auto a_0, auto a_1) {
---    if (g_2594CB._f1) {
---        if (NETWORK::_855BC38818F6F684()) {
---            NETWORK::_ABD5E88B8A2D3DB2(&a_0._fB93);
---            g_2594CB._f14/*{13}*/ = a_0._fB93;
---            g_2594CB._f4/*"64"*/ = a_1;
---            return 1;
---        }
---    }
---    return 0;
---}
---other:
---looks like it passes a player in the paramater
---Contains string "NETWORK_VOICE_CONNECT_TO_PLAYER" in ida
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xABD5E88B8A2D3DB2)
---@param globalPtr any 
function NetworkVoiceConnectToPlayer(globalPtr) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC19F6C8E7865A6FF)
---@param p0 boolean 
function NetworkSessionValidateJoin(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC19F6C8E7865A6FF)
---@param p0 boolean 
function N_0xC19F6C8E7865A6FF(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC19F6C8E7865A6FF)
---@param p0 boolean 
function NetworkSessionHosted(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6793E42BE02B575D)
function NetworkSessionVoiceLeave() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9C1556705F864230)
function NetworkSessionVoiceHost() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B8ED3DB018927B1)
---@param timeout number 
function NetworkSessionVoiceSetTimeout(timeout) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B8ED3DB018927B1)
---@param timeout number 
function N_0x5B8ED3DB018927B1(timeout) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7F8413B7FC2AA6B9)
---@param p0 boolean 
---@param p1 number 
function NetworkSessionVoiceRespondToRequest(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7F8413B7FC2AA6B9)
---@param p0 boolean 
---@param p1 number 
function NetworkSetKeepFocuspoint(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x23DFB504655D0CE4)
---@return boolean retval 
function NetworkSessionWasInvited() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x23DFB504655D0CE4)
---@return boolean retval 
function N_0x23DFB504655D0CE4() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D277B76D1D12222)
---@param maxSpectators number 
function NetworkSetActivitySpectatorMax(maxSpectators) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0E4F77F7B9D74D84)
---@param playerCount number 
function NetworkSetActivityPlayerMax(playerCount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0E4F77F7B9D74D84)
---@param playerCount number 
function N_0x0E4F77F7B9D74D84(playerCount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x796A87B3B68D1F3D)
---@param p0 any 
---@return boolean retval 
function NetworkSetCurrentDataManagerHandle(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x796A87B3B68D1F3D)
---@param p0 any 
---@return boolean retval 
function N_0x796A87B3B68D1F3D(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x796A87B3B68D1F3D)
---@param p0 any 
---@return boolean retval 
function NetworkCheckDataManagerForHandle(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x75138790B4359A74)
---@param toggle boolean 
function NetworkSetActivitySpectator(toggle) end

---```
---mpSettingSpawn:
---
---enum eMpSettingSpawn
---{
---	MP_SETTING_SPAWN_NULL,
---	MP_SETTING_SPAWN_PROPERTY,
---	MP_SETTING_SPAWN_LAST_POSITION,
---	MP_SETTING_SPAWN_GARAGE,
---	MP_SETTING_SPAWN_RANDOM,
---	MP_SETTING_SPAWN_PRIVATE_YACHT,
---	MP_SETTING_SPAWN_OFFICE,
---	MP_SETTING_SPAWN_CLUBHOUSE,
---	MP_SETTING_SPAWN_IE_WAREHOUSE,
---	MP_SETTING_SPAWN_BUNKER,
---	MP_SETTING_SPAWN_HANGAR,
---	MP_SETTING_SPAWN_DEFUNCT_BASE,
---	MP_SETTING_SPAWN_NIGHTCLUB,
---	MP_SETTING_SPAWN_ARENA_GARAGE,
---	MP_SETTING_SPAWN_CASINO_APARTMENT,
---	MP_SETTING_SPAWN_ARCADE,
---	MP_SETTING_SPAWN_SUBMARINE,
---	MP_SETTING_SPAWN_CAR_MEET,
---	MP_SETTING_SPAWN_AUTO_SHOP,
---	MP_SETTING_SPAWN_FIXER_HQ,
---	MP_SETTING_SPAWN_MAX,
---};
---```
---
---```
---NativeDB Introduced: v2699
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA6D5451DC3448B6)
---@param mpSettingSpawn number | string 
function NetworkSetCurrentSpawnSetting(mpSettingSpawn) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5C707A667DF8B9FA)
---@param toggle boolean 
---@param player number 
function NetworkSetChoiceMigrateOptions(toggle, player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5C707A667DF8B9FA)
---@param toggle boolean 
---@param player number 
function N_0x5C707A667DF8B9FA(toggle, player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD830567D88A1E873)
---@param entity number 
---@param toggle boolean 
function NetworkSetEntityCanBlend(entity, toggle) end

---```
---NativeDB Introduced: v2699
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C863ACDCD12B3DB)
---@param missionId string 
function NetworkSetCurrentMissionId(missionId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4BA166079D658ED4)
---@param entity number 
---@param p1 boolean 
function NetworkSetEntityGhostedWithOwner(entity, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4BA166079D658ED4)
---@param entity number 
---@param p1 boolean 
function N_0x4BA166079D658ED4(entity, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7206F674F2A3B1BB)
---@param p0 any 
---@return boolean retval 
function NetworkSetCurrentlySelectedGamerHandleFromInviteMenu(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF808475FA571D823)
---@param toggle boolean 
function NetworkSetFriendlyFireOption(toggle) end

---```
---if set to true other network players can't see it  
---if set to false other network player can see it  
---=========================================  
---^^ I attempted this by grabbing an object with GET_ENTITY_PLAYER_IS_FREE_AIMING_AT and setting this naive no matter the toggle he could still see it.  
---pc or last gen?  
---^^ last-gen  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1CA12B18AEF5298)
---@param entity number 
---@param toggle boolean 
function NetworkSetEntityInvisibleToNetwork(entity, toggle) end

---```
---if set to true other network players can't see it  
---if set to false other network player can see it  
---=========================================  
---^^ I attempted this by grabbing an object with GET_ENTITY_PLAYER_IS_FREE_AIMING_AT and setting this naive no matter the toggle he could still see it.  
---pc or last gen?  
---^^ last-gen  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1CA12B18AEF5298)
---@param entity number 
---@param toggle boolean 
function N_0xF1CA12B18AEF5298(entity, toggle) end

---```
---if set to true other network players can't see it  
---if set to false other network player can see it  
---=========================================  
---^^ I attempted this by grabbing an object with GET_ENTITY_PLAYER_IS_FREE_AIMING_AT and setting this naive no matter the toggle he could still see it.  
---pc or last gen?  
---^^ last-gen  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1CA12B18AEF5298)
---@param entity number 
---@param toggle boolean 
function NetworkSetEntityVisibleToNetwork(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9CA5DE655269FEC4)
---@param p0 boolean 
---@param p1 boolean 
function NetworkSetInMpCutscene(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x419594E137637120)
---@param toggle boolean 
---@param playerPed number 
---@param p2 boolean 
function NetworkSetInSpectatorModeExtended(toggle, playerPed, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x419594E137637120)
---@param toggle boolean 
---@param playerPed number 
---@param p2 boolean 
function N_0x419594E137637120(toggle, playerPed, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA2C8073411ECDB6)
---@param networkHandle number 
function NetworkSetGamerInvitedToTransition(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2D95C7E2D7E07307)
---@param time number 
function NetworkSetLocalPlayerInvincibleTime(time) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x524FF0AEFF9C3973)
---@param toggle boolean 
function NetworkSetLocalPlayerSyncLookAt(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x524FF0AEFF9C3973)
---@param toggle boolean 
function N_0x524FF0AEFF9C3973(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC18DB55AE19E046)
---@param toggle boolean 
function NetworkSetInFreeCamMode(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC18DB55AE19E046)
---@param toggle boolean 
function N_0xFC18DB55AE19E046(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x423DE3854BB50894)
---@param toggle boolean 
---@param playerPed number 
function NetworkSetInSpectatorMode(toggle, playerPed) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x66F010A4B031A331)
---@param networkHandle number 
function NetworkSetInviteOnCallForInviteMenu(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x66F010A4B031A331)
---@param networkHandle number 
function N_0x66F010A4B031A331(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3B3D11CD9FFCDFC9)
function NetworkSetMissionFinished() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF46A1E03E8755980)
---@param toggle boolean 
function NetworkSetNoSpectatorChat(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF46A1E03E8755980)
---@param toggle boolean 
function N_0xF46A1E03E8755980(toggle) end

---Sets whether or not an object (created using `CREATE_OBJECT`, or similar) should have its position/rotation synchronized,
---even if it is a 'static' object (for example, having flag 32 - Static - set in its archetype definition).
---
---This has to be called during the same frame the object is created/registered for network, as otherwise it may already
---have a remote clone created.
---
---Once a remote clone is created, changing this value will not have any effect on said clone.
---[Native Documentation](https://docs.fivem.net/natives/?_0x0379DAF89BA09AA5)
---@param object number The object to set forced blending state for.
---@param enabled boolean `true` to enable forced blending.
function NetworkSetObjectForceStaticBlend(object, enabled) end

---Sets whether or not an object (created using `CREATE_OBJECT`, or similar) should have its position/rotation synchronized,
---even if it is a 'static' object (for example, having flag 32 - Static - set in its archetype definition).
---
---This has to be called during the same frame the object is created/registered for network, as otherwise it may already
---have a remote clone created.
---
---Once a remote clone is created, changing this value will not have any effect on said clone.
---[Native Documentation](https://docs.fivem.net/natives/?_0x0379DAF89BA09AA5)
---@param object number The object to set forced blending state for.
---@param enabled boolean `true` to enable forced blending.
function N_0x0379DAF89BA09AA5(object, enabled) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x70DA3BF8DACD3210)
---@param toggle boolean 
function NetworkSetOverrideSpectatorMode(toggle) end

---```
---value must be < 255
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1775961C2FBBCB5C)
---@param id number 
function NetworkSetPropertyId(id) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1B857666604B1A74)
---@param toggle boolean 
function NetworkSetPlayerIsPassive(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1B857666604B1A74)
---@param toggle boolean 
function N_0x1B857666604B1A74(toggle) end

---This native does absolutely nothing, just a nullsub
---[Native Documentation](https://docs.fivem.net/natives/?_0x3E200C2BCF4164EB)
---@param p0 number 
---@param textLabel string 
function NetworkSetRichPresenceString(p0, textLabel) end

---This native does absolutely nothing, just a nullsub
---[Native Documentation](https://docs.fivem.net/natives/?_0x3E200C2BCF4164EB)
---@param p0 number 
---@param textLabel string 
function N_0x3E200C2BCF4164EB(p0, textLabel) end

---This native does absolutely nothing, just a nullsub
---[Native Documentation](https://docs.fivem.net/natives/?_0x3E200C2BCF4164EB)
---@param p0 number 
---@param textLabel string 
function NetworkSetRichPresence2(p0, textLabel) end

---```
---On PC it's a nullsub which means it does absolutely nothing.  
---Now that Discord supports Rich Presence, R* might finally implement this for PC. Or maybe in future games like RDR2, GTA VI...  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DCCACDCFC569362)
---@param p0 number 
---@param p1 any 
---@param p2 any 
---@param p3 any 
function NetworkSetRichPresence(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCBF12D65F95AD686)
---@param value number 
function NetworkSetTalkerProximity(value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7AC752103856FB20)
---@param toggle boolean 
function NetworkSetScriptReadyForEvents(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7AC752103856FB20)
---@param toggle boolean 
function N_0x7AC752103856FB20(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1CA59E306ECB80A5)
---@param maxNumMissionParticipants number 
---@param p1 boolean 
---@param instanceId number 
function NetworkSetThisScriptIsNetworkScript(maxNumMissionParticipants, p1, instanceId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD5B4883AC32F24C3)
---@param toggle boolean 
function NetworkSetTeamOnlyChat(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C978FDA19692C2C)
---@param p0 boolean 
---@param p1 boolean 
function NetworkSetTransitionVisibilityLock(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C978FDA19692C2C)
---@param p0 boolean 
---@param p1 boolean 
function N_0x0C978FDA19692C2C(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBABEC9E69A91C57B)
---@param toggle boolean 
function NetworkSetVoiceActive(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x30DE938B516F0AD2)
---@param p0 any 
function NetworkSetTransitionActivityId(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x30DE938B516F0AD2)
---@param p0 any 
function N_0x30DE938B516F0AD2(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF6212C2EFEF1A23)
---@param channel number 
function NetworkSetVoiceChannel(channel) end

---```
---Returns true if the NAT type is Strict (3) and a certain number of connections have failed.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x82A2B386716608F1)
---@return boolean retval 
function NetworkShouldShowConnectivityTroubleshooting() end

---```
---Returns true if the NAT type is Strict (3) and a certain number of connections have failed.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x82A2B386716608F1)
---@return boolean retval 
function N_0x82A2B386716608F1() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF26739BCD9907D5)
---@param p0 any 
function NetworkSetTransitionCreatorHandle(p0) end

---```
---One of the first things it does is get the players ped.  
---Then it calls a function that is used in some tasks and ped based functions.  
---```
---
---p5, p6, p7 is another coordinate (or zero), often related to `GET_BLIP_COORDS`, in the decompiled scripts.
---[Native Documentation](https://docs.fivem.net/natives/?_0x5A6FFA2433E2F14C)
---@param player number 
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param p5 number 
---@param p6 number 
---@param p7 number 
---@param flags number 
---@return boolean retval 
function NetworkStartRespawnSearchForPlayer(player, x, y, z, radius, p5, p6, p7, flags) end

---```
---One of the first things it does is get the players ped.  
---Then it calls a function that is used in some tasks and ped based functions.  
---```
---
---p5, p6, p7 is another coordinate (or zero), often related to `GET_BLIP_COORDS`, in the decompiled scripts.
---[Native Documentation](https://docs.fivem.net/natives/?_0x5A6FFA2433E2F14C)
---@param player number 
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param p5 number 
---@param p6 number 
---@param p7 number 
---@param flags number 
---@return boolean retval 
function N_0x5A6FFA2433E2F14C(player, x, y, z, radius, p5, p6, p7, flags) end

---```
---Used by Metric VEHICLE_DIST_DRIVEN
---```
---
---```
---NativeDB Introduced: v2699
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8C70252FC40F320B)
---@param toggle boolean 
function NetworkSetVehicleTestDrive(toggle) end

---```
---Allow vehicle wheels to be destructible even when the Vehicle entity is invincible.
---```
---
---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x890E2C5ABED7236D)
---@param vehicle number 
---@param toggle boolean 
function NetworkSetVehicleWheelsDestructible(vehicle, toggle) end

---```
---Allow vehicle wheels to be destructible even when the Vehicle entity is invincible.
---```
---
---```
---NativeDB Introduced: v1365
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x890E2C5ABED7236D)
---@param vehicle number 
---@param toggle boolean 
function N_0x890E2C5ABED7236D(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x17E0198B3882C2CB)
function NetworkStartSoloTutorialSession() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x17E0198B3882C2CB)
function N_0x17E0198B3882C2CB() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A1B3FCDB36C8697)
---@param netScene number 
function NetworkStartSynchronisedScene(netScene) end

---```
---Example:  
---int playerHandle;	  
---NETWORK_HANDLE_FROM_PLAYER(selectedPlayer, &playerHandle, 13);  
---NETWORK_SHOW_PROFILE_UI(&playerHandle);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x859ED1CEA343FCA8)
---@param networkHandle number 
function NetworkShowProfileUi(networkHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC254481A4574CB2F)
---@param netScene number 
function NetworkStopSynchronisedScene(netScene) end

---p8, p9, p10 is another coordinate, or zero, often related to `GET_BLIP_COORDS` in the decompiled scripts.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4BA92A18502BCA61)
---@param player number 
---@param x1 number X dimension of the angled area 'origin'
---@param y1 number Y dimension of the angled area 'origin'
---@param z1 number Z dimension of the angled area 'origin'
---@param x2 number X dimension of the angled area 'extent'
---@param y2 number Y dimension of the angled area 'extent'
---@param z2 number Z dimension of the angled area 'extent'
---@param width number Width of the angled area
---@param p8 number 
---@param p9 number 
---@param p10 number 
---@param flags number 
---@return boolean retval 
function NetworkStartRespawnSearchInAngledAreaForPlayer(player, x1, y1, z1, x2, y2, z2, width, p8, p9, p10, flags) end

---p8, p9, p10 is another coordinate, or zero, often related to `GET_BLIP_COORDS` in the decompiled scripts.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4BA92A18502BCA61)
---@param player number 
---@param x1 number X dimension of the angled area 'origin'
---@param y1 number Y dimension of the angled area 'origin'
---@param z1 number Z dimension of the angled area 'origin'
---@param x2 number X dimension of the angled area 'extent'
---@param y2 number Y dimension of the angled area 'extent'
---@param z2 number Z dimension of the angled area 'extent'
---@param width number Width of the angled area
---@param p8 number 
---@param p9 number 
---@param p10 number 
---@param flags number 
---@return boolean retval 
function N_0x4BA92A18502BCA61(player, x1, y1, z1, x2, y2, z2, width, p8, p9, p10, flags) end

---```
---Always returns -1. Seems to be XB1 specific.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDEB2B99A1AF1A2A6)
---@param netHandle any 
---@return number retval 
function NetworkStartUserContentPermissionsCheck(netHandle) end

---```
---Always returns -1. Seems to be XB1 specific.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDEB2B99A1AF1A2A6)
---@param netHandle any 
---@return number retval 
function N_0xDEB2B99A1AF1A2A6(netHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0682D67EF1FBA3D)
---@param toggle boolean 
function NetworkSuppressInvite(toggle) end

---```
---Returns defaultValue if the tunable doesn't exist.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7420099936CE286)
---@param tunableContext number | string 
---@param tunableName number | string 
---@param defaultValue boolean 
---@return boolean retval 
function NetworkTryAccessTunableBoolHash(tunableContext, tunableName, defaultValue) end

---```
---Returns defaultValue if the tunable doesn't exist.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7420099936CE286)
---@param tunableContext number | string 
---@param tunableName number | string 
---@param defaultValue boolean 
---@return boolean retval 
function N_0xC7420099936CE286(tunableContext, tunableName, defaultValue) end

---```
---Returns defaultValue if the tunable doesn't exist.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7420099936CE286)
---@param tunableContext number | string 
---@param tunableName number | string 
---@param defaultValue boolean 
---@return boolean retval 
function NetworkAccessTunableBoolHashFailVal(tunableContext, tunableName, defaultValue) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3BFED92026A2AAD)
---@param hash number | string 
---@param p1 number 
---@param p2 number 
---@param state number 
---@param p4 number 
function NetworkTransitionTrack(hash, p1, p2, state, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3BFED92026A2AAD)
---@param hash number | string 
---@param p1 number 
---@param p2 number 
---@param state number 
---@param p4 number 
function N_0xC3BFED92026A2AAD(hash, p1, p2, state, p4) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC1447451DDB512F0)
---@param p0 any 
---@param p1 any 
function NetworkUgcNav(p0, p1) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC1447451DDB512F0)
---@param p0 any 
---@param p1 any 
function N_0xC1447451DDB512F0(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7368E683BB9038D6)
---@param entity number 
function NetworkUnregisterNetworkedEntity(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7368E683BB9038D6)
---@param entity number 
function N_0x7368E683BB9038D6(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7C7F6AD6424304B)
function NetworkUpdatePlayerScars() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7C7F6AD6424304B)
function N_0xB7C7F6AD6424304B() end

---```
---Old name: _NETWORK_SET_NETWORK_ID_DYNAMIC
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B1813ABA29016C5)
---@param netID number 
---@param toggle boolean 
function NetworkUseHighPrecisionBlending(netID, toggle) end

---```
---Old name: _NETWORK_SET_NETWORK_ID_DYNAMIC
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B1813ABA29016C5)
---@param netID number 
---@param toggle boolean 
function N_0x2B1813ABA29016C5(netID, toggle) end

---```
---Old name: _NETWORK_SET_NETWORK_ID_DYNAMIC
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B1813ABA29016C5)
---@param netID number 
---@param toggle boolean 
function NetworkSetNetworkIdDynamic(netID, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCD71A4ECAB22709E)
---@param entity number 
function NetworkUseLogarithmicBlendingThisFrame(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCD71A4ECAB22709E)
---@param entity number 
function N_0xCD71A4ECAB22709E(entity) end

---```
---Return the local Participant ID  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x90986E8876CE0A83)
---@return number retval 
function ParticipantId() end

---```
---Lets objects spawn online simply do it like this:  
---int createdObject = OBJ_TO_NET(CREATE_OBJECT_NO_OFFSET(oball, pCoords.x, pCoords.y, pCoords.z, 1, 0, 0));  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x99BFDC94A603E541)
---@param object number 
---@return number retval 
function ObjToNet(object) end

---```
---gets the network id of a ped  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0EDEC3C276198689)
---@param ped number 
---@return number retval 
function PedToNet(ped) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE26CCFF8094D8C74)
---@param p0 number 
---@return boolean retval 
function RefreshPlayerListStats(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE26CCFF8094D8C74)
---@param p0 number 
---@return boolean retval 
function UsingNetworkWeapontype(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE26CCFF8094D8C74)
---@param p0 number 
---@return boolean retval 
function N_0xE26CCFF8094D8C74(p0) end

---```
---Has a 3rd param (int) since patch [???].  
---```
---
---```
---NativeDB Added Parameter 3: int p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x58C21165F6545892)
---@param p0 string 
---@param p1 string 
function OpenCommerceStore(p0, p1) end

---```
---Has a 3rd param (int) since patch [???].  
---```
---
---```
---NativeDB Added Parameter 3: int p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x58C21165F6545892)
---@param p0 string 
---@param p1 string 
function N_0x58C21165F6545892(p0, p1) end

---```
---Return the local Participant ID.  
---This native is exactly the same as 'PARTICIPANT_ID' native.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x57A3BDDAD8E5AA0A)
---@return number retval 
function ParticipantIdToInt() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x72D0706CD6CCDB58)
function ReleaseAllCommerceItemImages() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x72D0706CD6CCDB58)
function N_0x72D0706CD6CCDB58() end

---```
---Used in am_mp_property_ext and am_mp_property_int  
---```
---
---```
---NativeDB Added Parameter 2: Ped ped
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x715135F4B82AC90D)
---@param entity number 
function RemoveAllStickyBombsFromEntity(entity) end

---```
---Used in am_mp_property_ext and am_mp_property_int  
---```
---
---```
---NativeDB Added Parameter 2: Ped ped
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x715135F4B82AC90D)
---@param entity number 
function N_0x715135F4B82AC90D(entity) end

---```
---NativeDB Added Parameter 1: Player player
---NativeDB Added Parameter 2: int a
---NativeDB Added Parameter 3: int b
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x472841A026D26D8B)
---@return boolean retval 
function RemoteCheatDetected() end

---```
---NativeDB Added Parameter 1: Player player
---NativeDB Added Parameter 2: int a
---NativeDB Added Parameter 3: int b
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x472841A026D26D8B)
---@return boolean retval 
function N_0x472841A026D26D8B() end

---```
---Internal logging string: SCRIPT_RESERVING_LOCAL_OBJECTS
---```
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x797F9C5E661D920E)
---@param amount number 
function ReserveNetworkLocalObjects(amount) end

---```
---Internal logging string: SCRIPT_RESERVING_LOCAL_OBJECTS
---```
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x797F9C5E661D920E)
---@param amount number 
function N_0x797F9C5E661D920E(amount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2F952104FC6DD4B)
---@param index number 
---@return boolean retval 
function RequestCommerceItemImage(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2F952104FC6DD4B)
---@param index number 
---@return boolean retval 
function N_0xA2F952104FC6DD4B(index) end

---```
---Internal logging string: SCRIPT_RESERVING_LOCAL_PEDS
---```
---
---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C8DF5D129595281)
---@param amount number 
function ReserveNetworkLocalPeds(amount) end

---```
---Internal logging string: SCRIPT_RESERVING_LOCAL_PEDS
---```
---
---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C8DF5D129595281)
---@param amount number 
function N_0x2C8DF5D129595281(amount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB60FEBA45333D36F)
---@param amount number 
function ReserveNetworkMissionPeds(amount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x42613035157E4208)
---@param amount number 
function ReserveNetworkLocalVehicles(amount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x42613035157E4208)
---@param amount number 
function N_0x42613035157E4208(amount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x76B02E21ED27A469)
---@param amount number 
function ReserveNetworkMissionVehicles(amount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4E5C93BD0C32FBF8)
---@param amount number 
function ReserveNetworkMissionObjects(amount) end

---Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
---[Native Documentation](https://docs.fivem.net/natives/?_0x17330EBF2F2124A8)
function ResetGhostedEntityAlpha() end

---Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
---[Native Documentation](https://docs.fivem.net/natives/?_0x17330EBF2F2124A8)
function N_0x17330EBF2F2124A8() end

---Sets the provided entity not visible for yourself for the current frame.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE135A9FF3F5D05D8)
---Example: 
---```CreateThread(function()
---  -- Any random entity should work
---  local entity = PlayerPedId()
---  -- Make the entity visible for all players
---  SetEntityVisible(entity, true)
---  while true do
---    Wait(0)
---    -- Make the entity invisible for the current player only.
---    SetEntityLocallyInvisible(entity)
---  end
---end)```
---@param entity number 
function SetEntityLocallyInvisible(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x815E5E3073DA1D67)
---@param contentId string 
---@param contentTypeName string 
---@return boolean retval 
function SetBalanceAddMachine(contentId, contentTypeName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8322EEB38BE7C26)
---@param data any 
---@param dataCount number 
---@param contentTypeName string 
---@return boolean retval 
function SetBalanceAddMachines(data, dataCount, contentTypeName) end

---Sets the provided entity visible for yourself for the current frame.
---[Native Documentation](https://docs.fivem.net/natives/?_0x241E289B5C059EDC)
---Example: 
---```CreateThread(function()
---  -- Any random entity should work
---  local entity = GetVehiclePedIsIn(PlayerPedId(), false)
---  -- Sets the entity not visible to other players
---  SetEntityVisible(entity, false)
---  while true do
---    Wait(0)
---    -- Sets the entity as visible for yourself
---    SetEntityLocallyVisible(entity)
---  end
---end)```
---@param entity number The entity to set locally visible.
function SetEntityLocallyVisible(entity) end

---Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
---
---'Solidness' cannot be achieved using 255 - this will have the opposite effect of it defaulting to 128 it seems (or just having no effect at all).
---[Native Documentation](https://docs.fivem.net/natives/?_0x658500AE6D723A7E)
---@param alpha number A value between 1 and 254. Default: 128
function SetGhostedEntityAlpha(alpha) end

---Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
---
---'Solidness' cannot be achieved using 255 - this will have the opposite effect of it defaulting to 128 it seems (or just having no effect at all).
---[Native Documentation](https://docs.fivem.net/natives/?_0x658500AE6D723A7E)
---@param alpha number A value between 1 and 254. Default: 128
function N_0x658500AE6D723A7E(alpha) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE0031D3C8F36AB82)
---@param p0 any 
---@param p1 boolean 
---@param p2 boolean 
function SetEntityVisibleInCutscene(p0, p1, p2) end

---Formerly incorrectly named `USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR` due to incorrect treatment of console vs. PC native registration.
---
---Native name guessed through ordering.
---
---```
---NativeDB Added Parameter 2: BOOL p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5FFE9B4144F9712F)
---@param toggle boolean 
function SetLocalPlayerAsGhost(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE5F773C1A1D9D168)
---@param p0 boolean 
function SetLocalPlayerInvisibleLocally(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD1065D68947E7B6E)
---@param p0 boolean 
---@param p1 boolean 
function SetLocalPlayerVisibleInCutscene(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAAA553E7DD28A457)
---@param toggle boolean 
function SetNetworkCutsceneEntities(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAAA553E7DD28A457)
---@param toggle boolean 
function N_0xAAA553E7DD28A457(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA8A024587329F36A)
---@param netId number 
---@param player number 
---@param toggle boolean 
function SetNetworkIdAlwaysExistsForPlayer(netId, player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA8A024587329F36A)
---@param netId number 
---@param player number 
---@param toggle boolean 
function N_0xA8A024587329F36A(netId, player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA8A024587329F36A)
---@param netId number 
---@param player number 
---@param toggle boolean 
function SetNetworkIdSyncToPlayer(netId, player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7619364C82D3BF14)
---@param p0 boolean 
function SetLocalPlayerVisibleLocally(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE05E81A888FA63C8)
---@param netId number 
---@param toggle boolean 
function SetNetworkIdExistsOnAllMachines(netId, toggle) end

---```
---Enables a periodic ShapeTest within the NetBlender and invokes rage::netBlenderLinInterp::GoStraightToTarget (or some functional wrapper).
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x838DA0936A24ED4D)
---@param vehicle number 
---@param toggle boolean 
function SetNetworkEnableVehiclePositionCorrection(vehicle, toggle) end

---```
---Enables a periodic ShapeTest within the NetBlender and invokes rage::netBlenderLinInterp::GoStraightToTarget (or some functional wrapper).
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x838DA0936A24ED4D)
---@param vehicle number 
---@param toggle boolean 
function N_0x838DA0936A24ED4D(vehicle, toggle) end

---```
---Whether or not another player is allowed to take control of the entity  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x299EEB23175895FC)
---@param netId number 
---@param toggle boolean 
function SetNetworkIdCanMigrate(netId, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6274C4712850841E)
---@param vehicle number 
---@param toggle boolean 
function SetNetworkVehicleAsGhost(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6274C4712850841E)
---@param vehicle number 
---@param toggle boolean 
function N_0x6274C4712850841E(vehicle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6274C4712850841E)
---@param vehicle number 
---@param toggle boolean 
function SetNetworkObjectNonContact(vehicle, toggle) end

---```
---NativeDB Added Parameter 3: Any p2
---NativeDB Added Parameter 4: Any p3
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC51713AB6EC36E8)
---@param netId number 
---@param time number 
function SetNetworkVehicleRespotTimer(netId, time) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6928482543022B4)
---@param netId number 
---@param p1 boolean 
---@param p2 boolean 
function SetNetworkIdVisibleInCutscene(netId, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x12B37D54667DB0B8)
---@param player number 
---@param toggle boolean 
function SetPlayerInvisibleLocally(player, toggle) end

---```
---rage::netBlenderLinInterp::GetPositionMaxForUpdateLevel
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2A707979FE754DC)
---@param vehicle number 
---@param multiplier number 
function SetNetworkVehiclePositionUpdateMultiplier(vehicle, multiplier) end

---```
---rage::netBlenderLinInterp::GetPositionMaxForUpdateLevel
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2A707979FE754DC)
---@param vehicle number 
---@param multiplier number 
function N_0xA2A707979FE754DC(vehicle, multiplier) end

---```
---rage::netBlenderLinInterp::GetPositionMaxForUpdateLevel
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2A707979FE754DC)
---@param vehicle number 
---@param multiplier number 
function SetNetworkVehicleBlenderDistanceMultiplier(vehicle, multiplier) end

---Enables ghosting between specific players. Name is between `_SET_RELATIONSHIP_GROUP_DONT_AFFECT_WANTED_LEVEL` and `SET_ROADS_BACK_TO_ORIGINAL`.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7C511FA1C5BDA38)
---@param player number 
---@param p1 boolean 
function SetRelationshipToPlayer(player, p1) end

---Enables ghosting between specific players. Name is between `_SET_RELATIONSHIP_GROUP_DONT_AFFECT_WANTED_LEVEL` and `SET_ROADS_BACK_TO_ORIGINAL`.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7C511FA1C5BDA38)
---@param player number 
---@param p1 boolean 
function N_0xA7C511FA1C5BDA38(player, p1) end

---```
---Access to the store for shark cards etc...  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9641A9FF718E9C5E)
---@param toggle boolean 
function SetStoreEnabled(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3448505B6E35262D)
---@param p0 number 
---@return string retval 
function TextureDownloadGetName(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFAA10F1FAFB11AF2)
---@param player number 
---@param toggle boolean 
function SetPlayerVisibleLocally(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x487EB90B98E9FB19)
---@param p0 number 
function TextureDownloadRelease(p0) end

---```
---Starts a new singleplayer game (at the prologue).  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x593850C16A36B692)
function ShutdownAndLaunchSinglePlayerGame() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x16160DA74A8E74A2)
---@param PlayerHandle number 
---@param FilePath string 
---@param Name string 
---@param p3 boolean 
---@return number retval 
function TextureDownloadRequest(PlayerHandle, FilePath, Name, p3) end

---Disconnects you from the session, and starts loading single player, however you still remain connected to the server (only if you're the host, if you're not then you also (most likely) get disconnected from the server) and other players will not be able to join until you exit the game.
---
---If you're already in SP then it'll re-load singleplayer.
---
---You might need to DoScreenFadeIn and ShutdownLoadingScreen otherwise you probably won't end up loading into SP at all.
---
---Somewhat related note: opening the pause menu after loading into this 'singleplayer' mode crashes the game.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9ECA15ADFE141431)
---@return boolean retval always seems to be 1
function ShutdownAndLoadMostRecentSave() end

---Disconnects you from the session, and starts loading single player, however you still remain connected to the server (only if you're the host, if you're not then you also (most likely) get disconnected from the server) and other players will not be able to join until you exit the game.
---
---If you're already in SP then it'll re-load singleplayer.
---
---You might need to DoScreenFadeIn and ShutdownLoadingScreen otherwise you probably won't end up loading into SP at all.
---
---Somewhat related note: opening the pause menu after loading into this 'singleplayer' mode crashes the game.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9ECA15ADFE141431)
---@return boolean retval always seems to be 1
function N_0x9ECA15ADFE141431() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE9B99B6853181409)
function UgcCancelQuery() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE9B99B6853181409)
function N_0xE9B99B6853181409() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5776ED562C134687)
---@param p0 number 
---@return boolean retval 
function TextureDownloadHasFailed(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5776ED562C134687)
---@param p0 number 
---@return boolean retval 
function N_0x5776ED562C134687(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0B203B4AFDE53A4F)
---@param FilePath string 
---@param Name string 
---@param p2 boolean 
---@return number retval 
function TitleTextureDownloadRequest(FilePath, Name, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0B203B4AFDE53A4F)
---@param FilePath string 
---@param Name string 
---@param p2 boolean 
---@return number retval 
function N_0x0B203B4AFDE53A4F(FilePath, Name, p2) end

---```
---p1 = 6
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x46FB3ED415C7641C)
---@param player number 
---@param p1 number 
---@param scriptHash number | string 
---@return boolean retval 
function TriggerScriptCrcCheckOnPlayer(player, p1, scriptHash) end

---```
---p1 = 6
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x46FB3ED415C7641C)
---@param player number 
---@param p1 number 
---@param scriptHash number | string 
---@return boolean retval 
function N_0x46FB3ED415C7641C(player, p1, scriptHash) end

---```
---p1 = 6
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x46FB3ED415C7641C)
---@param player number 
---@param p1 number 
---@param scriptHash number | string 
---@return boolean retval 
function NetworkIsPlayerInScript(player, p1, scriptHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1E5E0204A6FCC70)
function UgcClearModifyResult() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1E5E0204A6FCC70)
function N_0xA1E5E0204A6FCC70() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x61A885D3F7CFEE9A)
function UgcClearOfflineQuery() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x61A885D3F7CFEE9A)
function N_0x61A885D3F7CFEE9A() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x17440AA15D1D3739)
function UgcClearCreateResult() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x17440AA15D1D3739)
function N_0x17440AA15D1D3739() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x941E5306BCD7C2C7)
---@return any retval 
function UgcDidGetSucceed() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x941E5306BCD7C2C7)
---@return any retval 
function N_0x941E5306BCD7C2C7() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA96394A0EECFA65)
function UgcClearQueryResults() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA96394A0EECFA65)
function N_0xBA96394A0EECFA65() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x40F7E66472DF3E5C)
---@param p0 any 
---@param p1 any 
---@return any retval 
function UgcGetCachedDescription(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x40F7E66472DF3E5C)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0x40F7E66472DF3E5C(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x152D90E4C1B4738A)
---@param p0 any 
---@param p1 any 
---@return boolean retval 
function UgcCopyContent(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x152D90E4C1B4738A)
---@param p0 any 
---@param p1 any 
---@return boolean retval 
function N_0x152D90E4C1B4738A(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD5A4B59980401588)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function UgcGetBookmarkedContent(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD5A4B59980401588)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function N_0xD5A4B59980401588(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x993CBE59D350D225)
---@param p0 any 
---@return boolean retval 
function UgcGetContentHasPlayerBookmarked(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x993CBE59D350D225)
---@param p0 any 
---@return boolean retval 
function N_0x993CBE59D350D225(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A17A27D75C74887)
---@return number | string retval 
function UgcGetContentHash() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A17A27D75C74887)
---@return number | string retval 
function N_0x3A17A27D75C74887() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7BAB11E7C9C6C5A)
---@param p0 number 
---@return number retval 
function UgcGetContentCategory(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7BAB11E7C9C6C5A)
---@param p0 number 
---@return number retval 
function N_0xA7BAB11E7C9C6C5A(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7BAB11E7C9C6C5A)
---@param p0 number 
---@return number retval 
function GetContentCategory(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3054F114121C21EA)
---@param p0 any 
---@return boolean retval 
function UgcGetContentIsPublished(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3054F114121C21EA)
---@param p0 any 
---@return boolean retval 
function N_0x3054F114121C21EA(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7CF0448787B23758)
---@param p0 any 
---@return number retval 
function UgcGetContentDescriptionHash(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7CF0448787B23758)
---@param p0 any 
---@return number retval 
function N_0x7CF0448787B23758(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7CF0448787B23758)
---@param p0 any 
---@return number retval 
function GetContentDescriptionHash(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x32DD916F3F7C9672)
---@param p0 any 
---@return any retval 
function UgcGetContentLanguage(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x32DD916F3F7C9672)
---@param p0 any 
---@return any retval 
function N_0x32DD916F3F7C9672(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x37025B27D9B658B1)
---@param p0 any 
---@param p1 any 
---@return any retval 
function UgcGetContentFileVersion(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x37025B27D9B658B1)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0x37025B27D9B658B1(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x37025B27D9B658B1)
---@param p0 any 
---@param p1 any 
---@return any retval 
function GetContentFileVersion(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBF09786A7FCAB582)
---@param p0 any 
---@return any retval 
function UgcGetContentName(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBF09786A7FCAB582)
---@param p0 any 
---@return any retval 
function N_0xBF09786A7FCAB582(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x70EA8DA57840F9BE)
---@param p0 any 
---@return boolean retval 
function UgcGetContentHasPlayerRecord(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x70EA8DA57840F9BE)
---@param p0 any 
---@return boolean retval 
function N_0x70EA8DA57840F9BE(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE0A6138401BCB837)
---@return any retval 
function UgcGetContentNum() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE0A6138401BCB837)
---@return any retval 
function N_0xE0A6138401BCB837() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x759299C5BB31D2A9)
---@param p0 any 
---@param p1 any 
---@return any retval 
function UgcGetContentRatingCount(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x759299C5BB31D2A9)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0x759299C5BB31D2A9(p0, p1) end

---```
---Return the mission id of a job.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x55AA95F481D694D2)
---@param p0 number 
---@return string retval 
function UgcGetContentId(p0) end

---```
---Return the mission id of a job.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x55AA95F481D694D2)
---@param p0 number 
---@return string retval 
function N_0x55AA95F481D694D2(p0) end

---```
---Return the mission id of a job.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x55AA95F481D694D2)
---@param p0 number 
---@return string retval 
function GetContentId(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x87E5C46C187FE0AE)
---@param p0 any 
---@param p1 any 
---@return any retval 
function UgcGetContentRatingPositiveCount(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x87E5C46C187FE0AE)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0x87E5C46C187FE0AE(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA9240A96C74CCA13)
---@param p0 any 
---@return boolean retval 
function UgcGetContentIsVerified(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA9240A96C74CCA13)
---@param p0 any 
---@return boolean retval 
function N_0xA9240A96C74CCA13(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCFD115B373C0DF63)
---@param p0 any 
---@param p1 any 
function UgcGetContentUpdatedDate(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCFD115B373C0DF63)
---@param p0 any 
---@param p1 any 
function N_0xCFD115B373C0DF63(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBAF6BABF9E7CCC13)
---@param p0 number 
---@param p1 number 
---@return string retval 
function UgcGetContentPath(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBAF6BABF9E7CCC13)
---@param p0 number 
---@param p1 number 
---@return string retval 
function N_0xBAF6BABF9E7CCC13(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBAF6BABF9E7CCC13)
---@param p0 number 
---@param p1 number 
---@return string retval 
function UgcGetCloudPath(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCD67AD041A394C9C)
---@param p0 number 
---@return string retval 
function UgcGetContentUserId(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCD67AD041A394C9C)
---@param p0 number 
---@return string retval 
function N_0xCD67AD041A394C9C(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCD67AD041A394C9C)
---@param p0 number 
---@return string retval 
function GetContentUserId(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCD67AD041A394C9C)
---@param p0 number 
---@return string retval 
function GetPlayerAdvancedModifierPrivileges(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1ACCFBA3D8DAB2EE)
---@param p0 any 
---@param p1 any 
---@return any retval 
function UgcGetContentRating(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1ACCFBA3D8DAB2EE)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0x1ACCFBA3D8DAB2EE(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4E548C0D7AE39FF9)
---@param p0 any 
---@param p1 any 
---@return any retval 
function UgcGetContentRatingNegativeCount(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4E548C0D7AE39FF9)
---@param p0 any 
---@param p1 any 
---@return any retval 
function N_0x4E548C0D7AE39FF9(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x769951E2455E2EB5)
---@return any retval 
function UgcGetContentTotal() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x769951E2455E2EB5)
---@return any retval 
function N_0x769951E2455E2EB5() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFBC5E768C7A77A6A)
---@return any retval 
function UgcGetCreateResult() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFBC5E768C7A77A6A)
---@return any retval 
function N_0xFBC5E768C7A77A6A() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x703F12425ECA8BF5)
---@param p0 any 
---@return any retval 
function UgcGetContentUserName(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x703F12425ECA8BF5)
---@param p0 any 
---@return any retval 
function N_0x703F12425ECA8BF5(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F6E2821885CAEE2)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@return boolean retval 
function UgcGetCrewContent(p0, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F6E2821885CAEE2)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@return boolean retval 
function N_0x9F6E2821885CAEE2(p0, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC55A0B40FFB1ED23)
---@return any retval 
function UgcGetCreateContentId() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC55A0B40FFB1ED23)
---@return any retval 
function N_0xC55A0B40FFB1ED23() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x597F8DBA9B206FC7)
---@return any retval 
function UgcGetCreatorNum() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x597F8DBA9B206FC7)
---@return any retval 
function N_0x597F8DBA9B206FC7() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x678BB03C1A3BD51E)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@return boolean retval 
function UgcGetGetByCategory(p0, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x678BB03C1A3BD51E)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@return boolean retval 
function N_0x678BB03C1A3BD51E(p0, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF9E1CCAE8BA4C281)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function UgcGetFriendContent(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF9E1CCAE8BA4C281)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function N_0xF9E1CCAE8BA4C281(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3195F8DD0D531052)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function UgcGetMyContent(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3195F8DD0D531052)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return boolean retval 
function N_0x3195F8DD0D531052(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E24341A7F92A74B)
---@return boolean retval 
function UgcHasCreateFinished() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E24341A7F92A74B)
---@return boolean retval 
function N_0x5E24341A7F92A74B() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5A0A3D1A186A5508)
---@return any retval 
function UgcGetModifyResult() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5A0A3D1A186A5508)
---@return any retval 
function N_0x5A0A3D1A186A5508() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x299EF3C576773506)
---@return boolean retval 
function UgcHasModifyFinished() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x299EF3C576773506)
---@return boolean retval 
function N_0x299EF3C576773506() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEDF7F927136C224B)
---@return any retval 
function UgcGetQueryResult() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEDF7F927136C224B)
---@return any retval 
function N_0xEDF7F927136C224B() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF53E48461B71EECB)
---@param p0 any 
---@return boolean retval 
function UgcIsLanguageSupported(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF53E48461B71EECB)
---@param p0 any 
---@return boolean retval 
function N_0xF53E48461B71EECB(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DE0F5F50D723CAA)
---@param contentId string 
---@param baseContentId string 
---@param contentTypeName string 
---@return boolean retval 
function UgcPublish(contentId, baseContentId, contentTypeName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DE0F5F50D723CAA)
---@param contentId string 
---@param baseContentId string 
---@param contentTypeName string 
---@return boolean retval 
function N_0x1DE0F5F50D723CAA(contentId, baseContentId, contentTypeName) end

---```
---Return the root content id of a job.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0173D6BFF4E0348)
---@param p0 number 
---@return string retval 
function UgcGetRootContentId(p0) end

---```
---Return the root content id of a job.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0173D6BFF4E0348)
---@param p0 number 
---@return string retval 
function N_0xC0173D6BFF4E0348(p0) end

---```
---Return the root content id of a job.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0173D6BFF4E0348)
---@param p0 number 
---@return string retval 
function GetRootContentId(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x158EC424F35EC469)
---@param contentId string 
---@param latestVersion boolean 
---@param contentTypeName string 
---@return boolean retval 
function UgcQueryByContentId(contentId, latestVersion, contentTypeName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x158EC424F35EC469)
---@param contentId string 
---@param latestVersion boolean 
---@param contentTypeName string 
---@return boolean retval 
function N_0x158EC424F35EC469(contentId, latestVersion, contentTypeName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x02ADA21EA2F6918F)
---@return boolean retval 
function UgcHasGetFinished() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x02ADA21EA2F6918F)
---@return boolean retval 
function N_0x02ADA21EA2F6918F() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD53ACDBEF24A46E8)
---@return boolean retval 
function UgcIsGetting() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD53ACDBEF24A46E8)
---@return boolean retval 
function N_0xD53ACDBEF24A46E8() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7397A83F7A2A462)
---@param data any 
---@param count number 
---@param latestVersion boolean 
---@param contentTypeName string 
---@return boolean retval 
function UgcQueryByContentIds(data, count, latestVersion, contentTypeName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7397A83F7A2A462)
---@param data any 
---@param count number 
---@param latestVersion boolean 
---@param contentTypeName string 
---@return boolean retval 
function N_0xC7397A83F7A2A462(data, count, latestVersion, contentTypeName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BF438815F5D96EA)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@return boolean retval 
function UgcQueryMyContent(p0, p1, p2, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BF438815F5D96EA)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@return boolean retval 
function N_0x9BF438815F5D96EA(p0, p1, p2, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5CAE833B0EE0C500)
---@param p0 any 
---@return boolean retval 
function UgcPoliciesMakePrivate(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5CAE833B0EE0C500)
---@param p0 any 
---@return boolean retval 
function N_0x5CAE833B0EE0C500(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E0165278F6339EE)
---@param p0 number 
---@return number retval 
function UgcRequestCachedDescription(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E0165278F6339EE)
---@param p0 number 
---@return number retval 
function N_0x5E0165278F6339EE(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x274A1519DFC1094F)
---@param contentId string 
---@param bookmarked boolean 
---@param contentTypeName string 
---@return boolean retval 
function UgcSetBookmarked(contentId, bookmarked, contentTypeName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x274A1519DFC1094F)
---@param contentId string 
---@param bookmarked boolean 
---@param contentTypeName string 
---@return boolean retval 
function N_0x274A1519DFC1094F(contentId, bookmarked, contentTypeName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF98DDE0A8ED09323)
---@param p0 boolean 
function UgcSetQueryDataFromOffline(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF98DDE0A8ED09323)
---@param p0 boolean 
function N_0xF98DDE0A8ED09323(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D4CB481FAC835E8)
---@param offset number 
---@param count number 
---@param contentTypeName string 
---@param p3 number 
---@return boolean retval 
function UgcQueryRecentlyCreatedContent(offset, count, contentTypeName, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D4CB481FAC835E8)
---@param offset number 
---@param count number 
---@param contentTypeName string 
---@param p3 number 
---@return boolean retval 
function N_0x6D4CB481FAC835E8(offset, count, contentTypeName, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x171DF6A0C07FB3DC)
---@param p0 number 
---@param p1 number 
---@return number retval 
function UgcRequestContentDataFromIndex(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x171DF6A0C07FB3DC)
---@param p0 number 
---@param p1 number 
---@return number retval 
function N_0x171DF6A0C07FB3DC(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7FD2990AF016795E)
---@param contentTypeName string 
---@param contentId string 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@return number retval 
function UgcRequestContentDataFromParams(contentTypeName, contentId, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7FD2990AF016795E)
---@param contentTypeName string 
---@param contentId string 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@return number retval 
function N_0x7FD2990AF016795E(contentTypeName, contentId, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x308F96458B7087CC)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 boolean 
---@return any retval 
function UgcTextureDownloadRequest(p0, p1, p2, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x308F96458B7087CC)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 boolean 
---@return any retval 
function N_0x308F96458B7087CC(p0, p1, p2, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD05D1A6C74DA3498)
---@param p0 any 
---@param p1 boolean 
---@param p2 any 
---@return boolean retval 
function UgcSetDeleted(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD05D1A6C74DA3498)
---@param p0 any 
---@param p1 boolean 
---@param p2 any 
---@return boolean retval 
function N_0xD05D1A6C74DA3498(p0, p1, p2) end

---```
---calls from vehicle to net.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB4C94523F023419C)
---@param vehicle number 
---@return number retval 
function VehToNet(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x77758139EC9B66C7)
---@param toggle boolean 
function UsePlayerColourInsteadOfTeamColour(toggle) end

