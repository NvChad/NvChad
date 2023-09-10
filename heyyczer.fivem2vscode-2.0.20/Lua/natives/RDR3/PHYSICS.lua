---@meta

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param x number 
---@param y number 
---@param z number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param length number 
---@param ropeType number 
---@param maxLength number 
---@param minLength number 
---@param p10 number 
---@param p11 boolean 
---@param p12 boolean 
---@param rigid boolean 
---@param p14 number 
---@param breakWhenShot boolean 
---@param unkPtr any 
---@param p17 boolean 
function AddRope(x, y, z, rotX, rotY, rotZ, length, ropeType, maxLength, minLength, p10, p11, p12, rigid, p14, breakWhenShot, unkPtr, p17) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param x number 
---@param y number 
---@param z number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param length number 
---@param ropeType number 
---@param isNetworked boolean 
---@param p9 number 
---@param p10 number 
function AddRope2(x, y, z, rotX, rotY, rotZ, length, ropeType, isNetworked, p9, p10) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function DeleteRope(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function ReleaseRope(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function DeleteChildRope(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param ropeTop number 
---@param ropeBottom number 
---@param offsetX number 
---@param offsetY number 
---@param offsetZ number 
---@param p6 number 
function BreakRope(ropeId, ropeTop, ropeBottom, offsetX, offsetY, offsetZ, p6) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function DoesRopeExist(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function IsRopeBroken(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param visible boolean 
function RopeChangeVisibility(ropeId, visible) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param toggle boolean 
function RopeDrawShadowEnabled(ropeId, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function GetRopeVertexCount(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
function N_undefined(p0, p1, p2, p3, p4) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@param p6 any 
function N_undefined(p0, p1, p2, p3, p4, p5, p6) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 boolean 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@param p7 number 
---@param p8 number 
---@param p9 number 
---@param p10 number 
function N_undefined(ropeId, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param entity1 number 
---@param entity2 number 
---@param ent1X number 
---@param ent1Y number 
---@param ent1Z number 
---@param ent2X number 
---@param ent2Y number 
---@param ent2Z number 
---@param length number 
---@param alwaysZero1 number 
---@param alwaysZero2 number 
---@param boneName1 const char 
---@param boneName2 const char 
---@param p14 boolean 
---@param boneId1 number 
---@param boneId2 number 
---@param alwaysZero3 number 
---@param alwaysZero4 number 
---@param p19 boolean 
---@param p20 boolean 
function AttachEntitiesToRope(ropeId, entity1, entity2, ent1X, ent1Y, ent1Z, ent2X, ent2Y, ent2Z, length, alwaysZero1, alwaysZero2, boneName1, boneName2, p14, boneId1, boneId2, alwaysZero3, alwaysZero4, p19, p20) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param entity1 number 
---@param entity2 number 
---@param ent1X number 
---@param ent1Y number 
---@param ent1Z number 
---@param ent2X number 
---@param ent2Y number 
---@param ent2Z number 
---@param boneName1 const char 
---@param boneName2 const char 
function AttachEntitiesToRope2(ropeId, entity1, entity2, ent1X, ent1Y, ent1Z, ent2X, ent2Y, ent2Z, boneName1, boneName2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param entity1 number 
---@param entity2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@param p7 number 
---@param p8 number 
---@param p9 any 
---@param p10 any 
function AttachEntitesToRope3(ropeId, entity1, entity2, p3, p4, p5, p6, p7, p8, p9, p10) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@param p6 any 
function N_undefined(p0, p1, p2, p3, p4, p5, p6) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@param p6 any 
---@param p7 any 
function N_undefined(p0, p1, p2, p3, p4, p5, p6, p7) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@param p6 any 
---@param p7 any 
function N_undefined(p0, p1, p2, p3, p4, p5, p6, p7) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param entity number 
function IsRopeAttachedToEntity(ropeId, entity) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param entity number 
function DetachRopeFromEntity(ropeId, entity) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param horse number 
---@param x number 
---@param y number 
---@param z number 
function HitchHorse(horse, x, y, z) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param horse number 
function UnhitchHorse(horse) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 any 
function RopeSetUpdateOrder(ropeId, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 boolean 
function N_undefined(ropeId, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 boolean 
function N_undefined(ropeId, p1, p2, p3, p4) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 boolean 
---@param p2 boolean 
---@param p3 boolean 
---@param p4 boolean 
function N_undefined(ropeId, p1, p2, p3, p4) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 any 
---@param p2 any 
function N_undefined(ropeId, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 number 
function N_undefined(ropeId, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 number 
function N_undefined(ropeId, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 const char 
---@param ropeModelType const char 
---@param length number 
---@param p4 boolean 
function CreateRopeWindingAbility(ropeId, p1, ropeModelType, length, p4) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function GetRopeLastVertexCoord(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param vertex number 
function GetRopeVertexCoord(ropeId, vertex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function StartRopeWinding(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function StopRopeWinding(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function StartRopeUnwindingFront(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function StopRopeUnwindingFront(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function StartRopeUnwindingBack(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function StopRopeUnwindingBack(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 boolean 
function N_undefined(ropeId, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 number 
function N_undefined(ropeId, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 number 
function N_undefined(ropeId, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param length number 
function RopeForceLength(ropeId, length) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 number 
function N_undefined(ropeId, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
---@param p2 any 
function N_undefined(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 boolean 
function N_undefined(ropeId, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
---@param p1 boolean 
function N_undefined(ropeId, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ropeId number 
function RopeGetBreakerOfRope(ropeId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param entity number 
---@param vertex number 
---@param value number 
function SetDamping(entity, vertex, value) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param entity number 
function ActivatePhysics(entity) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param entity number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@param p7 number 
---@param p8 number 
---@param p9 any 
---@param p10 boolean 
function BreakEntityGlass(entity, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
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
function N_undefined(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param object number 
---@param toggle boolean 
function SetDisableBreaking(object, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param object number 
---@param toggle boolean 
function SetDisableFragDamage(object, toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param p1 any 
function N_undefined(p0, p1) end

