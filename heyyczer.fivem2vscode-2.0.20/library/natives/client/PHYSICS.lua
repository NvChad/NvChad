---@meta
---**`PHYSICS` `client` [`0x36CCB9BE67B970FD`](https://docs.fivem.net/natives/?_0x36CCB9BE67B970FD)**
---
---```
---ROPE_*
---```
---
---@param ropeId number
---@param p1 boolean
function N_0x36ccb9be67b970fd(ropeId, p1) end

---**`PHYSICS` `client` [`0x84DE3B5FB3E666F0`](https://docs.fivem.net/natives/?_0x84DE3B5FB3E666F0)**
---
---@param ropeId number
---@return boolean, number
function N_0x84de3b5fb3e666f0(ropeId) end

---**`PHYSICS` `client` [`0x9EBD751E5787BAF2`](https://docs.fivem.net/natives/?_0x9EBD751E5787BAF2)**
---
---```
---SET_*
---```
---
---@param p0 boolean
function N_0x9ebd751e5787baf2(p0) end

---**`PHYSICS` `client` [`0xA1AE736541B0FCA3`](https://docs.fivem.net/natives/?_0xA1AE736541B0FCA3)**
---
---ROPE_\*
---
---```
---NativeDB Introduced: v1868
---```
---
---@param ropeId number
---@param p1 boolean
function N_0xa1ae736541b0fca3(ropeId, p1) end

---**`PHYSICS` `client` [`0xB1B6216CA2E7B55E`](https://docs.fivem.net/natives/?_0xB1B6216CA2E7B55E)**
---
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function N_0xb1b6216ca2e7b55e(p0, p1, p2) end

---**`PHYSICS` `client` [`0xB743F735C03D7810`](https://docs.fivem.net/natives/?_0xB743F735C03D7810)**
---
---```
---ROPE_*
---```
---
---@param ropeId number
---@param p1 number
function N_0xb743f735c03d7810(ropeId, p1) end

---**`PHYSICS` `client` [`0xBC0CE682D4D05650`](https://docs.fivem.net/natives/?_0xBC0CE682D4D05650)**
---
---```
---Most likely ROPE_ATTACH_*
---```
---
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
function N_0xbc0ce682d4d05650(ropeId, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13) end

---**`PHYSICS` `client` [`0xCC6E963682533882`](https://docs.fivem.net/natives/?_0xCC6E963682533882)**
---
---```
---RESET_*
---```
---
---@param object Object
function N_0xcc6e963682533882(object) end

---**`PHYSICS` `client` [`0x710311ADF0E20730`](https://docs.fivem.net/natives/?_0x710311ADF0E20730)**
---
---@param entity Entity
function ActivatePhysics(entity) end

---**`PHYSICS` `client` [`0xE832D760399EB220`](https://docs.fivem.net/natives/?_0xE832D760399EB220)**
---
---```
---Creates a rope at the specific position, that extends in the specified direction when not attached to any entities.
---__
---Rope does NOT interact with anything you attach it to, in some cases it make interact with the world AFTER it breaks (seems to occur if you set the type to -1).
---Rope will sometimes contract and fall to the ground like you'd expect it to, but since it doesn't interact with the world the effect is just jaring.
---```
---
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
---@return number, any # A script handle for the rope
function AddRope(
	x,
	y,
	z,
	rotX,
	rotY,
	rotZ,
	maxLength,
	ropeType,
	initLength,
	minLength,
	lengthChangeRate,
	onlyPPU,
	collisionOn,
	lockFromFront,
	timeMultiplier,
	breakable,
	unkPtr
)
end

---**`PHYSICS` `client` [`0xE37F721824571784`](https://docs.fivem.net/natives/?_0xE37F721824571784)**
---
---@param posX number
---@param posY number
---@param posZ number
---@param vecX number
---@param vecY number
---@param vecZ number
---@param impulse number
function ApplyImpulseToCloth(posX, posY, posZ, vecX, vecY, vecZ, impulse) end

---**`PHYSICS` `client` [`0x3D95EC8B6D940AC3`](https://docs.fivem.net/natives/?_0x3D95EC8B6D940AC3)**
---
---```
---Attaches entity 1 to entity 2.
---```
---
---@param ropeId number
---@param ent1 Entity
---@param ent2 Entity
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
function AttachEntitiesToRope(
	ropeId,
	ent1,
	ent2,
	ent1_x,
	ent1_y,
	ent1_z,
	ent2_x,
	ent2_y,
	ent2_z,
	length,
	p10,
	p11,
	boneName1,
	boneName2
)
end

---**`PHYSICS` `client` [`0x4B490A6832559A65`](https://docs.fivem.net/natives/?_0x4B490A6832559A65)**
---
---```
---The position supplied can be anywhere, and the entity should anchor relative to that point from it's origin.
---```
---
---@param ropeId number
---@param entity Entity
---@param x number
---@param y number
---@param z number
---@param p5 boolean
function AttachRopeToEntity(ropeId, entity, x, y, z, p5) end

---**`PHYSICS` `client` [`0x2E648D16F6E308F3`](https://docs.fivem.net/natives/?_0x2E648D16F6E308F3)**
---
---@param entity Entity
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

---**`PHYSICS` `client` [`0xAA5D6B1888E4DB20`](https://docs.fivem.net/natives/?_0xAA5D6B1888E4DB20)**
---
---@param ropeId number
function DeleteChildRope(ropeId) end

---**`PHYSICS` `client` [`0x52B4829281364649`](https://docs.fivem.net/natives/?_0x52B4829281364649)**
---
---@param ropeId number
function DeleteRope(ropeId) end

---**`PHYSICS` `client` [`0xBCF3026912A8647D`](https://docs.fivem.net/natives/?_0xBCF3026912A8647D)**
---
---@param ropeId number
---@param entity Entity
function DetachRopeFromEntity(ropeId, entity) end

---**`PHYSICS` `client` [`0xFD5448BE3111ED96`](https://docs.fivem.net/natives/?_0xFD5448BE3111ED96)**
---
---@param ropeId number
---@return boolean, number
function DoesRopeExist(ropeId) end

---**`PHYSICS` `client` [`0x8214A4B5A7A33612`](https://docs.fivem.net/natives/?_0x8214A4B5A7A33612)**
---
---@param entity Entity
---@return vector3
function GetCgoffset(entity) end

---**`PHYSICS` `client` [`0x21BB0FBD3E217C2D`](https://docs.fivem.net/natives/?_0x21BB0FBD3E217C2D)**
---
---@param ropeId number
---@return vector3
function GetRopeLastVertexCoord(ropeId) end

---**`PHYSICS` `client` [`0xEA61CA8E80F09E4D`](https://docs.fivem.net/natives/?_0xEA61CA8E80F09E4D)**
---
---@param ropeId number
---@param vertex number
---@return vector3
function GetRopeVertexCoord(ropeId, vertex) end

---**`PHYSICS` `client` [`0x3655F544CD30F0B5`](https://docs.fivem.net/natives/?_0x3655F544CD30F0B5)**
---
---@param ropeId number
---@return number
function GetRopeVertexCount(ropeId) end

---**`PHYSICS` `client` [`0xCBB203C04D1ABD27`](https://docs.fivem.net/natives/?_0xCBB203C04D1ABD27)**
---
---```
---Rope presets can be found in the gamefiles. One example is "ropeFamily3", it is NOT a hash but rather a string.
---```
---
---@param ropeId number
---@param rope_preset string
function LoadRopeData(ropeId, rope_preset) end

---**`PHYSICS` `client` [`0x2B320CF14146B69A`](https://docs.fivem.net/natives/?_0x2B320CF14146B69A)**
---
---@param ropeId number
---@param vertex number
---@param x number
---@param y number
---@param z number
function PinRopeVertex(ropeId, vertex, x, y, z) end

---**`PHYSICS` `client` [`0xF2D0E6A75CC05597`](https://docs.fivem.net/natives/?_0xF2D0E6A75CC05597)**
---
---@return boolean
function RopeAreTexturesLoaded() end

---**`PHYSICS` `client` [`0x5389D48EFA2F079A`](https://docs.fivem.net/natives/?_0x5389D48EFA2F079A)**
---
---@param ropeId number
function RopeConvertToSimple(ropeId) end

---**`PHYSICS` `client` [`0xF159A63806BB5BA8`](https://docs.fivem.net/natives/?_0xF159A63806BB5BA8)**
---
---@param ropeId number
---@param toggle boolean
function RopeDrawShadowEnabled(ropeId, toggle) end

---**`PHYSICS` `client` [`0xD009F759A723DB1B`](https://docs.fivem.net/natives/?_0xD009F759A723DB1B)**
---
---```
---Forces a rope to a certain length.
---```
---
---@param ropeId number
---@param length number
function RopeForceLength(ropeId, length) end

---**`PHYSICS` `client` [`0x73040398DFF9A4A6`](https://docs.fivem.net/natives/?_0x73040398DFF9A4A6)**
---
---@param ropeId number
---@return number
function RopeGetDistanceBetweenEnds(ropeId) end

---**`PHYSICS` `client` [`0x9B9039DBF2D258C1`](https://docs.fivem.net/natives/?_0x9B9039DBF2D258C1)**
---
---```
---Loads rope textures for all ropes in the current scene.
---```
---
function RopeLoadTextures() end

---**`PHYSICS` `client` [`0xC16DE94D9BEA14A0`](https://docs.fivem.net/natives/?_0xC16DE94D9BEA14A0)**
---
---```
---Reset a rope to a certain length.
---```
---
---@param ropeId number
---@param length number
function RopeResetLength(ropeId, length) end

---**`PHYSICS` `client` [`0xDC57A637A20006ED`](https://docs.fivem.net/natives/?_0xDC57A637A20006ED)**
---
---@param ropeId number
---@param p1 any
function RopeSetUpdateOrder(ropeId, p1) end

---**`PHYSICS` `client` [`0xC8D667EE52114ABA`](https://docs.fivem.net/natives/?_0xC8D667EE52114ABA)**
---
---@param ropeId number
function RopeSetUpdatePinverts(ropeId) end

---**`PHYSICS` `client` [`0x6CE36C35C1AC8163`](https://docs.fivem.net/natives/?_0x6CE36C35C1AC8163)**
---
---```
---Unloads rope textures for all ropes in the current scene.
---```
---
function RopeUnloadTextures() end

---**`PHYSICS` `client` [`0xD8FA3908D7B86904`](https://docs.fivem.net/natives/?_0xD8FA3908D7B86904)**
---
---@param entity Entity
---@param x number
---@param y number
---@param z number
function SetCgoffset(entity, x, y, z) end

---**`PHYSICS` `client` [`0xBE520D9761FF811F`](https://docs.fivem.net/natives/?_0xBE520D9761FF811F)**
---
---@param entity Entity
function SetCgAtBoundcenter(entity) end

---**`PHYSICS` `client` [`0xEEA3B200A6FEB65B`](https://docs.fivem.net/natives/?_0xEEA3B200A6FEB65B)**
---
---@param entity Entity
---@param vertex number
---@param value number
function SetDamping(entity, vertex, value) end

---**`PHYSICS` `client` [`0x5CEC1A84620E7D5B`](https://docs.fivem.net/natives/?_0x5CEC1A84620E7D5B)**
---
---@param object Object
---@param toggle boolean
function SetDisableBreaking(object, toggle) end

---**`PHYSICS` `client` [`0x01BA3AED21C16CFB`](https://docs.fivem.net/natives/?_0x01BA3AED21C16CFB)**
---
---@param object Object
---@param toggle boolean
function SetDisableFragDamage(object, toggle) end

---**`PHYSICS` `client` [`0x538D1179EC1AA9A9`](https://docs.fivem.net/natives/?_0x538D1179EC1AA9A9)**
---
---@param ropeId number
function StartRopeUnwindingFront(ropeId) end

---**`PHYSICS` `client` [`0x1461C72C889E343E`](https://docs.fivem.net/natives/?_0x1461C72C889E343E)**
---
---@param ropeId number
function StartRopeWinding(ropeId) end

---**`PHYSICS` `client` [`0xFFF3A50779EFBBB3`](https://docs.fivem.net/natives/?_0xFFF3A50779EFBBB3)**
---
---@param ropeId number
function StopRopeUnwindingFront(ropeId) end

---**`PHYSICS` `client` [`0xCB2D4AB84A19AA7C`](https://docs.fivem.net/natives/?_0xCB2D4AB84A19AA7C)**
---
---@param ropeId number
function StopRopeWinding(ropeId) end

---**`PHYSICS` `client` [`0x4B5AE2EEE4A8F180`](https://docs.fivem.net/natives/?_0x4B5AE2EEE4A8F180)**
---
---@param ropeId number
---@param vertex number
function UnpinRopeVertex(ropeId, vertex) end

---**`PHYSICS` `client` [`0x271C9D3ACA5D6409`](https://docs.fivem.net/natives/?_0x271C9D3ACA5D6409)**
---
---Return if the rope was generated or not by the script where the native is called.
---
---@param ropeId number
---@return boolean
function DoesRopeBelongToThisScript(ropeId) end

---**`PHYSICS` `client` [`0x0C112765300C7E1E`](https://docs.fivem.net/natives/?_0x0C112765300C7E1E)**
---
---```
---GET_*
---```
---
---@param object Object
---@return boolean
function GetHasObjectFragInst(object) end

---**`PHYSICS` `client` [`0x15F944730C832252`](https://docs.fivem.net/natives/?_0x15F944730C832252)**
---
---@param entity Entity
---@param toggle boolean
function SetEntityProofUnk(entity, toggle) end

---**`PHYSICS` `client` [`0xAA6A6098851C396F`](https://docs.fivem.net/natives/?_0xAA6A6098851C396F)**
---
---Related to the lower-end of a vehicles fTractionCurve, e.g., from standing starts and acceleration from low/zero speeds.
---
---```
---NativeDB Introduced: v1604
---```
---
---@param toggle boolean
function SetLaunchControlEnabled(toggle) end
