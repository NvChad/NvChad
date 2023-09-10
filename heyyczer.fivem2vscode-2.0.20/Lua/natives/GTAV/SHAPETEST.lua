---@meta

---Returns the result of a shape test, also returning the material of any touched surface.
---
---When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.
---
---Unless the return value is 2, the other return values are undefined.
---[Native Documentation](https://docs.fivem.net/natives/?_0x65287525D951F6BE)
---@param shapeTestHandle number A shape test handle.
---@param hit boolean Whether or not the shape test hit any collisions.
---@param endCoords vector3 The resulting coordinates where the shape test hit a collision.
---@param surfaceNormal vector3 The surface normal of the hit position.
---@param materialHash number | string hash of the hit material or surface type, see materialFX.dat
---@param entityHit number Any dynamic entity hit by the shape test.
---@return number retval `0` if the handle is invalid, `1` if the shape test is still pending, or `2` if the shape test has completed, and the handle should be invalidated.
function GetShapeTestResultIncludingMaterial(shapeTestHandle, hit, endCoords, surfaceNormal, materialHash, entityHit) end

---Returns the result of a shape test, also returning the material of any touched surface.
---
---When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.
---
---Unless the return value is 2, the other return values are undefined.
---[Native Documentation](https://docs.fivem.net/natives/?_0x65287525D951F6BE)
---@param shapeTestHandle number A shape test handle.
---@param hit boolean Whether or not the shape test hit any collisions.
---@param endCoords vector3 The resulting coordinates where the shape test hit a collision.
---@param surfaceNormal vector3 The surface normal of the hit position.
---@param materialHash number | string hash of the hit material or surface type, see materialFX.dat
---@param entityHit number Any dynamic entity hit by the shape test.
---@return number retval `0` if the handle is invalid, `1` if the shape test is still pending, or `2` if the shape test has completed, and the handle should be invalidated.
function N_0x65287525D951F6BE(shapeTestHandle, hit, endCoords, surfaceNormal, materialHash, entityHit) end

---Returns the result of a shape test, also returning the material of any touched surface.
---
---When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.
---
---Unless the return value is 2, the other return values are undefined.
---[Native Documentation](https://docs.fivem.net/natives/?_0x65287525D951F6BE)
---@param shapeTestHandle number A shape test handle.
---@param hit boolean Whether or not the shape test hit any collisions.
---@param endCoords vector3 The resulting coordinates where the shape test hit a collision.
---@param surfaceNormal vector3 The surface normal of the hit position.
---@param materialHash number | string hash of the hit material or surface type, see materialFX.dat
---@param entityHit number Any dynamic entity hit by the shape test.
---@return number retval `0` if the handle is invalid, `1` if the shape test is still pending, or `2` if the shape test has completed, and the handle should be invalidated.
function GetShapeTestResultEx(shapeTestHandle, hit, endCoords, surfaceNormal, materialHash, entityHit) end

---Does the same as [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E), except blocking until the shape test completes.
---
---Use [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E) instead. Literally. Rockstar named this correctly: it's expensive, and it's synchronous.
---[Native Documentation](https://docs.fivem.net/natives/?_0x377906D8A31E5586)
---@param x1 number Starting X coordinate.
---@param y1 number Starting Y coordinate.
---@param z1 number Starting Z coordinate.
---@param x2 number Ending X coordinate.
---@param y2 number Ending Y coordinate.
---@param z2 number Ending Z coordinate.
---@param flags number See [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E).
---@param entity number An entity to ignore, or 0.
---@param p8 number A bit mask with bits 1, 2 and/or 4, relating to collider types. 4 should usually be used.
---@return number retval A shape test handle.
function StartExpensiveSynchronousShapeTestLosProbe(x1, y1, z1, x2, y2, z2, flags, entity, p8) end

---Does the same as [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E), except blocking until the shape test completes.
---
---Use [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E) instead. Literally. Rockstar named this correctly: it's expensive, and it's synchronous.
---[Native Documentation](https://docs.fivem.net/natives/?_0x377906D8A31E5586)
---@param x1 number Starting X coordinate.
---@param y1 number Starting Y coordinate.
---@param z1 number Starting Z coordinate.
---@param x2 number Ending X coordinate.
---@param y2 number Ending Y coordinate.
---@param z2 number Ending Z coordinate.
---@param flags number See [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E).
---@param entity number An entity to ignore, or 0.
---@param p8 number A bit mask with bits 1, 2 and/or 4, relating to collider types. 4 should usually be used.
---@return number retval A shape test handle.
function CastRayPointToPoint(x1, y1, z1, x2, y2, z2, flags, entity, p8) end

---Does the same as [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E), except blocking until the shape test completes.
---
---Use [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E) instead. Literally. Rockstar named this correctly: it's expensive, and it's synchronous.
---[Native Documentation](https://docs.fivem.net/natives/?_0x377906D8A31E5586)
---@param x1 number Starting X coordinate.
---@param y1 number Starting Y coordinate.
---@param z1 number Starting Z coordinate.
---@param x2 number Ending X coordinate.
---@param y2 number Ending Y coordinate.
---@param z2 number Ending Z coordinate.
---@param flags number See [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E).
---@param entity number An entity to ignore, or 0.
---@param p8 number A bit mask with bits 1, 2 and/or 4, relating to collider types. 4 should usually be used.
---@return number retval A shape test handle.
function StartShapeTestRay(x1, y1, z1, x2, y2, z2, flags, entity, p8) end

---Returns the result of a shape test.
---
---When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.
---
---Unless the return value is 2, the other return values are undefined.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3D87450E15D98694)
---@param shapeTestHandle number A shape test handle.
---@param hit boolean Whether or not the shape test hit any collisions.
---@param endCoords vector3 The resulting coordinates where the shape test hit a collision.
---@param surfaceNormal vector3 The surface normal of the hit position.
---@param entityHit number Any dynamic entity hit by the shape test.
---@return number retval `0` if the handle is invalid, `1` if the shape test is still pending, or `2` if the shape test has completed, and the handle should be invalidated.
function GetShapeTestResult(shapeTestHandle, hit, endCoords, surfaceNormal, entityHit) end

---Returns the result of a shape test.
---
---When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.
---
---Unless the return value is 2, the other return values are undefined.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3D87450E15D98694)
---@param shapeTestHandle number A shape test handle.
---@param hit boolean Whether or not the shape test hit any collisions.
---@param endCoords vector3 The resulting coordinates where the shape test hit a collision.
---@param surfaceNormal vector3 The surface normal of the hit position.
---@param entityHit number Any dynamic entity hit by the shape test.
---@return number retval `0` if the handle is invalid, `1` if the shape test is still pending, or `2` if the shape test has completed, and the handle should be invalidated.
function GetRaycastResult(shapeTestHandle, hit, endCoords, surfaceNormal, entityHit) end

---See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
---[Native Documentation](https://docs.fivem.net/natives/?_0x052837721A854EC7)
---@param entity number 
---@param flags1 number 
---@param flags2 number 
---@return number retval 
function StartShapeTestBoundingBox(entity, flags1, flags2) end

---See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
---[Native Documentation](https://docs.fivem.net/natives/?_0x052837721A854EC7)
---@param entity number 
---@param flags1 number 
---@param flags2 number 
---@return number retval 
function N_0x052837721A854EC7(entity, flags1, flags2) end

---Invalidates the entity handle passed by removing the fwScriptGuid from the entity. This should be used when receiving an
---ambient entity from shape testing natives, but can also be used for other natives returning an 'irrelevant' entity handle.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B3334BCA57CD799)
---@param entity number The entity handle to invalidate.
function ReleaseScriptGuidFromEntity(entity) end

---Invalidates the entity handle passed by removing the fwScriptGuid from the entity. This should be used when receiving an
---ambient entity from shape testing natives, but can also be used for other natives returning an 'irrelevant' entity handle.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B3334BCA57CD799)
---@param entity number The entity handle to invalidate.
function N_0x2B3334BCA57CD799(entity) end

---Invalidates the entity handle passed by removing the fwScriptGuid from the entity. This should be used when receiving an
---ambient entity from shape testing natives, but can also be used for other natives returning an 'irrelevant' entity handle.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B3334BCA57CD799)
---@param entity number The entity handle to invalidate.
function ShapeTestResultEntity(entity) end

---For more information, see [`START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE`](#\_0x377906D8A31E5586) and [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E).
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE466162C4401D18)
---@param x number Starting X coordinate.
---@param y number Starting Y coordinate.
---@param z number Starting Z coordinate.
---@param x1 number Ending X coordinate.
---@param y1 number Ending Y coordinate.
---@param z1 number Ending Z coordinate.
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param p9 number Unknown, always 2 or 0
---@param flags number See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param entity number 
---@param p12 number A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@return number retval 
function StartShapeTestBox(x, y, z, x1, y1, z1, rotX, rotY, rotZ, p9, flags, entity, p12) end

---For more information, see [`START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE`](#\_0x377906D8A31E5586) and [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E).
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE466162C4401D18)
---@param x number Starting X coordinate.
---@param y number Starting Y coordinate.
---@param z number Starting Z coordinate.
---@param x1 number Ending X coordinate.
---@param y1 number Ending Y coordinate.
---@param z1 number Ending Z coordinate.
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param p9 number Unknown, always 2 or 0
---@param flags number See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param entity number 
---@param p12 number A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@return number retval 
function N_0xFE466162C4401D18(x, y, z, x1, y1, z1, rotX, rotY, rotZ, p9, flags, entity, p12) end

---See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
---[Native Documentation](https://docs.fivem.net/natives/?_0x37181417CE7C8900)
---@param entity number 
---@param flags1 number 
---@param flags2 number 
---@return number retval 
function StartShapeTestBound(entity, flags1, flags2) end

---See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
---[Native Documentation](https://docs.fivem.net/natives/?_0x37181417CE7C8900)
---@param entity number 
---@param flags1 number 
---@param flags2 number 
---@return number retval 
function N_0x37181417CE7C8900(entity, flags1, flags2) end

---Raycast from point to point, where the ray has a radius.
---[Native Documentation](https://docs.fivem.net/natives/?_0x28579D1B8F8AAC80)
---@param x1 number Starting X coordinate.
---@param y1 number Starting Y coordinate.
---@param z1 number Starting Z coordinate.
---@param x2 number Ending X coordinate.
---@param y2 number Ending Y coordinate.
---@param z2 number Ending Z coordinate.
---@param radius number 
---@param flags number See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param entity number Entity to ignore, or 0.
---@param p9 number A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@return number retval 
function StartShapeTestCapsule(x1, y1, z1, x2, y2, z2, radius, flags, entity, p9) end

---Raycast from point to point, where the ray has a radius.
---[Native Documentation](https://docs.fivem.net/natives/?_0x28579D1B8F8AAC80)
---@param x1 number Starting X coordinate.
---@param y1 number Starting Y coordinate.
---@param z1 number Starting Z coordinate.
---@param x2 number Ending X coordinate.
---@param y2 number Ending Y coordinate.
---@param z2 number Ending Z coordinate.
---@param radius number 
---@param flags number See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param entity number Entity to ignore, or 0.
---@param p9 number A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@return number retval 
function Cast3dRayPointToPoint(x1, y1, z1, x2, y2, z2, radius, flags, entity, p9) end

---Since it is only used in the PC version, likely some mouse-friendly shape test. Uses **in** vector arguments.
---
---Asynchronous.
---
---```
---it returns a ShapeTest handle that can be used with GET_SHAPE_TEST_RESULT.  
---In its only usage in game scripts its called with flag set to 511, entity to player_ped_id and flag2 set to 7  
---```
---
---See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF6BE494C7987F34)
---@param pVec1 vector3 
---@param pVec2 vector3 
---@param flag number 
---@param entity number 
---@param flag2 number 
---@return number retval 
function StartShapeTestSurroundingCoords(pVec1, pVec2, flag, entity, flag2) end

---Since it is only used in the PC version, likely some mouse-friendly shape test. Uses **in** vector arguments.
---
---Asynchronous.
---
---```
---it returns a ShapeTest handle that can be used with GET_SHAPE_TEST_RESULT.  
---In its only usage in game scripts its called with flag set to 511, entity to player_ped_id and flag2 set to 7  
---```
---
---See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF6BE494C7987F34)
---@param pVec1 vector3 
---@param pVec2 vector3 
---@param flag number 
---@param entity number 
---@param flag2 number 
---@return number retval 
function N_0xFF6BE494C7987F34(pVec1, pVec2, flag, entity, flag2) end

---Asynchronously starts a line-of-sight (raycast) world probe shape test.
---
---```cpp
---enum TraceFlags
---{
---  None = 0,
---  IntersectWorld = 1,
---  IntersectVehicles = 2,
---  IntersectPedsSimpleCollision = 4,
---  IntersectPeds = 8,
---  IntersectObjects = 16,
---  IntersectWater = 32,
---  Unknown = 128,
---  IntersectFoliage = 256,
---  IntersectEverything = 4294967295
---}
---```
---
---NOTE: Raycasts that intersect with mission_entites (flag = 2) has limited range and will not register for far away entites. The range seems to be about 30 metres.
---
---Use the handle with [GET_SHAPE_TEST_RESULT](#\_0x3D87450E15D98694) or [GET_SHAPE_TEST_RESULT_INCLUDING_MATERIAL](#\_0x65287525D951F6BE) until it returns 0 or 2.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7EE9F5D83DD4F90E)
---@param x1 number Starting X coordinate.
---@param y1 number Starting Y coordinate.
---@param z1 number Starting Z coordinate.
---@param x2 number Ending X coordinate.
---@param y2 number Ending Y coordinate.
---@param z2 number Ending Z coordinate.
---@param flags number Flags.
---@param entity number An entity to ignore, or 0.
---@param p8 number A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@return number retval A shape test handle.
function StartShapeTestLosProbe(x1, y1, z1, x2, y2, z2, flags, entity, p8) end

---Asynchronously starts a line-of-sight (raycast) world probe shape test.
---
---```cpp
---enum TraceFlags
---{
---  None = 0,
---  IntersectWorld = 1,
---  IntersectVehicles = 2,
---  IntersectPedsSimpleCollision = 4,
---  IntersectPeds = 8,
---  IntersectObjects = 16,
---  IntersectWater = 32,
---  Unknown = 128,
---  IntersectFoliage = 256,
---  IntersectEverything = 4294967295
---}
---```
---
---NOTE: Raycasts that intersect with mission_entites (flag = 2) has limited range and will not register for far away entites. The range seems to be about 30 metres.
---
---Use the handle with [GET_SHAPE_TEST_RESULT](#\_0x3D87450E15D98694) or [GET_SHAPE_TEST_RESULT_INCLUDING_MATERIAL](#\_0x65287525D951F6BE) until it returns 0 or 2.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7EE9F5D83DD4F90E)
---@param x1 number Starting X coordinate.
---@param y1 number Starting Y coordinate.
---@param z1 number Starting Z coordinate.
---@param x2 number Ending X coordinate.
---@param y2 number Ending Y coordinate.
---@param z2 number Ending Z coordinate.
---@param flags number Flags.
---@param entity number An entity to ignore, or 0.
---@param p8 number A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@return number retval A shape test handle.
function N_0x7EE9F5D83DD4F90E(x1, y1, z1, x2, y2, z2, flags, entity, p8) end

---Performs the same type of trace as START_SHAPE_TEST_CAPSULE, but with some different hardcoded parameters.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6AC6C45FBE83004)
---@param x1 number Starting X coordinate.
---@param y1 number Starting Y coordinate.
---@param z1 number Starting Z coordinate.
---@param x2 number Ending X coordinate.
---@param y2 number Ending Y coordinate.
---@param z2 number Ending Z coordinate.
---@param radius number 
---@param flags number See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param entity number An entity to ignore, or 0.
---@param p9 number A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@return number retval 
function StartShapeTestSweptSphere(x1, y1, z1, x2, y2, z2, radius, flags, entity, p9) end

---Performs the same type of trace as START_SHAPE_TEST_CAPSULE, but with some different hardcoded parameters.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6AC6C45FBE83004)
---@param x1 number Starting X coordinate.
---@param y1 number Starting Y coordinate.
---@param z1 number Starting Z coordinate.
---@param x2 number Ending X coordinate.
---@param y2 number Ending Y coordinate.
---@param z2 number Ending Z coordinate.
---@param radius number 
---@param flags number See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param entity number An entity to ignore, or 0.
---@param p9 number A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@return number retval 
function N_0xE6AC6C45FBE83004(x1, y1, z1, x2, y2, z2, radius, flags, entity, p9) end

---Performs the same type of trace as START_SHAPE_TEST_CAPSULE, but with some different hardcoded parameters.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6AC6C45FBE83004)
---@param x1 number Starting X coordinate.
---@param y1 number Starting Y coordinate.
---@param z1 number Starting Z coordinate.
---@param x2 number Ending X coordinate.
---@param y2 number Ending Y coordinate.
---@param z2 number Ending Z coordinate.
---@param radius number 
---@param flags number See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param entity number An entity to ignore, or 0.
---@param p9 number A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@return number retval 
function StartShapeTestCapsule2(x1, y1, z1, x2, y2, z2, radius, flags, entity, p9) end

