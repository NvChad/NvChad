---@meta

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x710311ADF0E20730)
---@param entity number 
function ActivatePhysics(entity) end

---```
---Creates a rope at the specific position, that extends in the specified direction when not attached to any entities.  
---__  
---Rope does NOT interact with anything you attach it to, in some cases it make interact with the world AFTER it breaks (seems to occur if you set the type to -1).  
---Rope will sometimes contract and fall to the ground like you'd expect it to, but since it doesn't interact with the world the effect is just jaring.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE832D760399EB220)
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component.
---@param rotX number Rotation X component.
---@param rotY number Rotation Y component.
---@param rotZ number Rotation Z component.
---@param maxLength number The maximum length the rope can droop.
---@param ropeType number 1 to 4 are thick ropes. 5 and up are thin ropes. Ropes types defined in ropedata.xml. An invalid rope type such as 0 will crash the game.
---@param initLength number The initial length of the rope.
---@param minLength number The minimum length the rope can be.
---@param lengthChangeRate number The speed in which the rope will wind if winding is started.
---@param onlyPPU boolean 
---@param collisionOn boolean Whether the rope should have collision. In original scripts this is followed by a LoadRopeData call when set.
---@param lockFromFront boolean If max length is zero, and this is set to false the rope will become rigid (it will force a specific distance, what ever length is, between the objects).
---@param timeMultiplier number The speed as which physics should run at. 1.0f is normal, 2.0f is twice as fast, -1.0f is time going backwards. This can affect gravity, etc.
---@param breakable boolean Whether shooting the rope will break it.
---@param unkPtr any Unknown pointer, always 0 in original scrips.
---@return number retval A script handle for the rope
function AddRope(x, y, z, rotX, rotY, rotZ, maxLength, ropeType, initLength, minLength, lengthChangeRate, onlyPPU, collisionOn, lockFromFront, timeMultiplier, breakable, unkPtr) end

---```
---The position supplied can be anywhere, and the entity should anchor relative to that point from it's origin.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4B490A6832559A65)
---@param ropeId number 
---@param entity number 
---@param x number 
---@param y number 
---@param z number 
---@param p5 boolean 
function AttachRopeToEntity(ropeId, entity, x, y, z, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA5D6B1888E4DB20)
---@param ropeId number 
function DeleteChildRope(ropeId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x52B4829281364649)
---@param ropeId number 
function DeleteRope(ropeId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE37F721824571784)
---@param posX number 
---@param posY number 
---@param posZ number 
---@param vecX number 
---@param vecY number 
---@param vecZ number 
---@param impulse number 
function ApplyImpulseToCloth(posX, posY, posZ, vecX, vecY, vecZ, impulse) end

---```
---Attaches entity 1 to entity 2.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3D95EC8B6D940AC3)
---@param ropeId number 
---@param ent1 number 
---@param ent2 number 
---@param ent1_x number 
---@param ent1_y number 
---@param ent1_z number 
---@param ent2_x number 
---@param ent2_y number 
---@param ent2_z number 
---@param length number 
---@param p10 boolean 
---@param p11 boolean 
---@param boneName1 string 
---@param boneName2 string 
function AttachEntitiesToRope(ropeId, ent1, ent2, ent1_x, ent1_y, ent1_z, ent2_x, ent2_y, ent2_z, length, p10, p11, boneName1, boneName2) end

---Return if the rope was generated or not by the script where the native is called.
---[Native Documentation](https://docs.fivem.net/natives/?_0x271C9D3ACA5D6409)
---@param ropeId number 
---@return boolean retval 
function DoesRopeBelongToThisScript(ropeId) end

---Return if the rope was generated or not by the script where the native is called.
---[Native Documentation](https://docs.fivem.net/natives/?_0x271C9D3ACA5D6409)
---@param ropeId number 
---@return boolean retval 
function N_0x271C9D3ACA5D6409(ropeId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFD5448BE3111ED96)
---@param ropeId number 
---@return boolean retval 
function DoesRopeExist(ropeId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2E648D16F6E308F3)
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

---```
---GET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C112765300C7E1E)
---@param object number 
---@return boolean retval 
function GetHasObjectFragInst(object) end

---```
---GET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C112765300C7E1E)
---@param object number 
---@return boolean retval 
function N_0x0C112765300C7E1E(object) end

---```
---GET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C112765300C7E1E)
---@param object number 
---@return boolean retval 
function DoesEntityHaveFragInst(object) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBCF3026912A8647D)
---@param ropeId number 
---@param entity number 
function DetachRopeFromEntity(ropeId, entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA61CA8E80F09E4D)
---@param ropeId number 
---@param vertex number 
---@return vector3 retval 
function GetRopeVertexCoord(ropeId, vertex) end

---```
---Rope presets can be found in the gamefiles. One example is "ropeFamily3", it is NOT a hash but rather a string.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCBB203C04D1ABD27)
---@param ropeId number 
---@param rope_preset string 
function LoadRopeData(ropeId, rope_preset) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8214A4B5A7A33612)
---@param entity number 
---@return vector3 retval 
function GetCgoffset(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x84DE3B5FB3E666F0)
---@param ropeId number 
---@return boolean retval 
function N_0x84DE3B5FB3E666F0(ropeId) end

---```
---SET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9EBD751E5787BAF2)
---@param p0 boolean 
function N_0x9EBD751E5787BAF2(p0) end

---```
---ROPE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB743F735C03D7810)
---@param ropeId number 
---@param p1 number 
function N_0xB743F735C03D7810(ropeId, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x21BB0FBD3E217C2D)
---@param ropeId number 
---@return vector3 retval 
function GetRopeLastVertexCoord(ropeId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3655F544CD30F0B5)
---@param ropeId number 
---@return number retval 
function GetRopeVertexCount(ropeId) end

---```
---ROPE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x36CCB9BE67B970FD)
---@param ropeId number 
---@param p1 boolean 
function N_0x36CCB9BE67B970FD(ropeId, p1) end

---ROPE_\*
---
---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1AE736541B0FCA3)
---@param ropeId number 
---@param p1 boolean 
function N_0xA1AE736541B0FCA3(ropeId, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB1B6216CA2E7B55E)
---@param p0 any 
---@param p1 boolean 
---@param p2 boolean 
function N_0xB1B6216CA2E7B55E(p0, p1, p2) end

---```
---Most likely ROPE_ATTACH_*  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC0CE682D4D05650)
---@param ropeId number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@param p7 number 
---@param p8 number 
---@param p9 number 
---@param p10 number 
---@param p11 number 
---@param p12 number 
---@param p13 number 
function N_0xBC0CE682D4D05650(ropeId, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13) end

---```
---RESET_*  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCC6E963682533882)
---@param object number 
function N_0xCC6E963682533882(object) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B320CF14146B69A)
---@param ropeId number 
---@param vertex number 
---@param x number 
---@param y number 
---@param z number 
function PinRopeVertex(ropeId, vertex, x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2D0E6A75CC05597)
---@return boolean retval 
function RopeAreTexturesLoaded() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5389D48EFA2F079A)
---@param ropeId number 
function RopeConvertToSimple(ropeId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF159A63806BB5BA8)
---@param ropeId number 
---@param toggle boolean 
function RopeDrawShadowEnabled(ropeId, toggle) end

---```
---Forces a rope to a certain length.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD009F759A723DB1B)
---@param ropeId number 
---@param length number 
function RopeForceLength(ropeId, length) end

---```
---Loads rope textures for all ropes in the current scene.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B9039DBF2D258C1)
function RopeLoadTextures() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC8D667EE52114ABA)
---@param ropeId number 
function RopeSetUpdatePinverts(ropeId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEEA3B200A6FEB65B)
---@param entity number 
---@param vertex number 
---@param value number 
function SetDamping(entity, vertex, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5CEC1A84620E7D5B)
---@param object number 
---@param toggle boolean 
function SetDisableBreaking(object, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x73040398DFF9A4A6)
---@param ropeId number 
---@return number retval 
function RopeGetDistanceBetweenEnds(ropeId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x73040398DFF9A4A6)
---@param ropeId number 
---@return number retval 
function GetRopeLength(ropeId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x01BA3AED21C16CFB)
---@param object number 
---@param toggle boolean 
function SetDisableFragDamage(object, toggle) end

---```
---Reset a rope to a certain length.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC16DE94D9BEA14A0)
---@param ropeId number 
---@param length number 
function RopeResetLength(ropeId, length) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC57A637A20006ED)
---@param ropeId number 
---@param p1 any 
function RopeSetUpdateOrder(ropeId, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC57A637A20006ED)
---@param ropeId number 
---@param p1 any 
function N_0xDC57A637A20006ED(ropeId, p1) end

---```
---Unloads rope textures for all ropes in the current scene.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6CE36C35C1AC8163)
function RopeUnloadTextures() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x15F944730C832252)
---@param entity number 
---@param toggle boolean 
function SetEntityProofUnk(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x15F944730C832252)
---@param entity number 
---@param toggle boolean 
function N_0x15F944730C832252(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE520D9761FF811F)
---@param entity number 
function SetCgAtBoundcenter(entity) end

---Related to the lower-end of a vehicles fTractionCurve, e.g., from standing starts and acceleration from low/zero speeds.
---
---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA6A6098851C396F)
---@param toggle boolean 
function SetLaunchControlEnabled(toggle) end

---Related to the lower-end of a vehicles fTractionCurve, e.g., from standing starts and acceleration from low/zero speeds.
---
---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA6A6098851C396F)
---@param toggle boolean 
function N_0xAA6A6098851C396F(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD8FA3908D7B86904)
---@param entity number 
---@param x number 
---@param y number 
---@param z number 
function SetCgoffset(entity, x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x538D1179EC1AA9A9)
---@param ropeId number 
function StartRopeUnwindingFront(ropeId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFFF3A50779EFBBB3)
---@param ropeId number 
function StopRopeUnwindingFront(ropeId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1461C72C889E343E)
---@param ropeId number 
function StartRopeWinding(ropeId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCB2D4AB84A19AA7C)
---@param ropeId number 
function StopRopeWinding(ropeId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4B5AE2EEE4A8F180)
---@param ropeId number 
---@param vertex number 
function UnpinRopeVertex(ropeId, vertex) end

