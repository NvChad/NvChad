---@meta

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param hash number | string 
function RequestPropSet(hash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param hash number | string 
function RequestPropSet2(hash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param hash number | string 
function HasPropSetLoaded(hash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param hash number | string 
function HasPropSetLoaded2(hash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param propSet propset 
function SetPropSetAsNoLongerNeeded(propSet) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param propSet propset 
---@param p1 boolean 
---@param p2 boolean 
function DeletePropSet(propSet, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param hash number | string 
function ReleasePropSet(hash) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param propsetType number | string 
---@param x number 
---@param y number 
---@param z number 
---@param placementType number 
---@param heading number 
---@param zProbe number 
---@param p7 boolean 
---@param useVegMod boolean 
function CreatePropSet(propsetType, x, y, z, placementType, heading, zProbe, p7, useVegMod) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param propsetType number | string 
---@param x number 
---@param y number 
---@param z number 
---@param placementType number 
---@param heading number 
---@param zProbe number 
---@param p7 boolean 
---@param useVegMod boolean 
function CreatePropSet2(propsetType, x, y, z, placementType, heading, zProbe, p7, useVegMod) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param hash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param entity number 
---@param p5 number 
---@param p6 boolean 
---@param p7 number 
---@param p8 boolean 
function CreatePropSetInstanceAttachedToEntity(hash, x, y, z, entity, p5, p6, p7, p8) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param hash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param entity number 
---@param p5 number 
---@param p6 boolean 
---@param p7 number 
---@param p8 boolean 
function CreatePropSetInstanceAttachedToEntity2(hash, x, y, z, entity, p5, p6, p7, p8) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param propSet propset 
function DoesPropSetExist(propSet) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param propsetHash number | string 
---@param x number 
---@param y number 
---@param z number 
function DoesPropSetOfTypeExistNearCoords(propsetHash, x, y, z) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param propSet propset 
function IsPropSetFullyLoaded(propSet) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param propSet propset 
---@param toggle boolean 
function SetPropSetVisible(propSet, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param propSet propset 
function IsPropSetVisible(propSet) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param propSet propset 
function GetPropSetModel(propSet) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetVehiclePropSetHash(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param propSet propset 
---@param itemSet itemset 
---@param model number | string 
---@param p3 boolean 
---@param p4 boolean 
function GetEntitiesFromPropSet(propSet, itemSet, model, p3, p4) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
function N_undefined(p0, p1, p2, p3, p4, p5) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param propSet propset 
---@param flag number 
function SetPropSetFlag(propSet, flag) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetVehiclePropSet(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function DoesVehicleHaveAnyPropSet(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param propset number | string 
function AddPropSetForVehicle(vehicle, propset) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function RemoveVehiclePropSets(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsVehiclePropSetLoaded(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param propset number | string 
function AddAdditionalPropSetForVehicle(vehicle, propset) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsVehiclePropSetLoadedAdditional(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function GetVehicleLightPropSet(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function DoesVehicleHaveAnyLightPropSet(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param lightPropset number | string 
function AddLightPropSetToVehicle(vehicle, lightPropset) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function RemoveVehicleLightPropSets(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
function IsVehicleLightPropSetLoaded(vehicle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param trainCarriage number 
function GetTrainCarriagePropSet(trainCarriage) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param vehicle number 
---@param wagonIndex number 
function HasVehicleTrailerPropSetLoaded(vehicle, wagonIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param propsetHash number | string 
---@param x number 
---@param y number 
---@param z number 
function GetPropSetAtCoords(propsetHash, x, y, z) end

