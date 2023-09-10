---@meta

---```
---Applies a force to the specified entity.
---**List of force types (p1)**:
---public enum ForceType
---{
---    MinForce = 0,
---    MaxForceRot = 1,
---    MinForce2 = 2,
---    MaxForceRot2 = 3,
---    ForceNoRot = 4,
---    ForceRotPlusForce = 5
---}
---Research/documentation on the gtaforums can be found here https://gtaforums.com/topic/885669-precisely-define-object-physics/) and here https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/.
---p6/relative - makes the xyz force not relative to world coords, but to something else
---p7/highForce - setting false will make the force really low
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x18FF00FC7EFF559E)
---@param entity number 
---@param forceType number 
---@param x number 
---@param y number 
---@param z number 
---@param p5 boolean 
---@param isDirectionRel boolean 
---@param isForceRel boolean 
---@param p8 boolean 
function ApplyForceToEntityCenterOfMass(entity, forceType, x, y, z, p5, isDirectionRel, isForceRel, p8) end

---Applies a force to the specified entity.
---
---**List of force types (p1)**:
---
---```
---public enum ForceType
---{
---    MinForce = 0,
---    MaxForceRot = 1,
---    MinForce2 = 2,
---    MaxForceRot2 = 3,
---    ForceNoRot = 4,
---    ForceRotPlusForce = 5
---}
---```
---
---Research/documentation on the gtaforums can be found [here](https://gtaforums.com/topic/885669-precisely-define-object-physics/) and [here](https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/).
---[Native Documentation](https://docs.fivem.net/natives/?_0xC5F68BE9613E2D18)
---Example: 
---```local forceTypes = {
---    MinForce = 0,
---    MaxForceRot = 1,
---    MinForce2 = 2,
---    MaxForceRot2 = 3,
---    ForceNoRot = 4,
---    ForceRotPlusForce = 5
---}
---
---local entity = PlayerPedId()
---local forceType = forceTypes.MaxForceRot2
--- -- sends the entity straight up into the sky:
---local direction = vector3(0.0, 0.0, 15.0)
---local rotation = vector3(0.0, 0.0, 0.0)
---local boneIndex = 0
---local isDirectionRel = false
---local ignoreUpVec = true
---local isForceRel = true
---local p12 = false
---local p13 = true
---
---ApplyForceToEntity(
---    entity,
---    forceType,
---    direction,
---    rotation,
---    boneIndex,
---    isDirectionRel,
---    ignoreUpVec,
---    isForceRel,
---    p12,
---    p13
---)```
---@param entity number The entity you want to apply a force on
---@param forceType number See native description above for a list of commonly used values
---@param x number Force amount (X)
---@param y number Force amount (Y)
---@param z number Force amount (Z)
---@param offX number Rotation/offset force (X)
---@param offY number Rotation/offset force (Y)
---@param offZ number Rotation/offset force (Z)
---@param boneIndex number (Often 0) Entity bone index
---@param isDirectionRel boolean (Usually false) Vector defined in local (body-fixed) coordinate frame
---@param ignoreUpVec boolean (Usually true)
---@param isForceRel boolean (Usually true) When true, force gets multiplied with the objects mass and different objects will have the same acceleration
---@param p12 boolean (Usually false)
---@param p13 boolean (Usually true)
function ApplyForceToEntity(entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5C48B75732C8456C)
---@param entity1 number 
---@param entity2 number 
---@param entityBone number 
---@param entityBone2 number 
---@param p4 boolean 
---@param p5 boolean 
function AttachEntityBoneToEntityBone(entity1, entity2, entityBone, entityBone2, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5C48B75732C8456C)
---@param entity1 number 
---@param entity2 number 
---@param entityBone number 
---@param entityBone2 number 
---@param p4 boolean 
---@param p5 boolean 
function N_0x5C48B75732C8456C(entity1, entity2, entityBone, entityBone2, p4, p5) end

---Attach an entity to the specified entity.
---[Native Documentation](https://docs.fivem.net/natives/?_0x6B9BBD38AB0796DF)
---@param entity1 number Entity to attach.
---@param entity2 number Entity to attach `entity1` with.
---@param boneIndex number This is different to boneID, use ['GET_PED_BONE_INDEX'](#\_0x3F428D08BE5AAE31) to get the index from the ID. use the index for attaching to specific bones. `entity1` will be attached to the center of `entity2` if bone index given doesn't correspond to bone indexes for that entity type.
---@param xPos number X-axis offset from the center of `entity2`.
---@param yPos number Y-axis offset from the center of `entity2`.
---@param zPos number Z-axis offset from the center of `entity2`.
---@param xRot number X-axis rotation.
---@param yRot number Y-axis rotation.
---@param zRot number Z-axis rotation.
---@param p9 boolean Unknown. Does not seem to have any effect.
---@param useSoftPinning boolean If set to false attached entity will not detach when fixed.
---@param collision boolean Controls collision between the two entities (FALSE disables collision).
---@param isPed boolean Pitch doesnt work when false and roll will only work on negative numbers (only peds)
---@param rotationOrder number The order in which the rotation is applied. See [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
---@param fixedRot boolean If false it ignores entity vector.
function AttachEntityToEntity(entity1, entity2, boneIndex, xPos, yPos, zPos, xRot, yRot, zRot, p9, useSoftPinning, collision, isPed, rotationOrder, fixedRot) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFD1695C5D3B05439)
---@param entity1 number 
---@param entity2 number 
---@param entityBone number 
---@param entityBone2 number 
---@param p4 boolean 
---@param p5 boolean 
function AttachEntityBoneToEntityBonePhysically(entity1, entity2, entityBone, entityBone2, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFD1695C5D3B05439)
---@param entity1 number 
---@param entity2 number 
---@param entityBone number 
---@param entityBone2 number 
---@param p4 boolean 
---@param p5 boolean 
function N_0xFD1695C5D3B05439(entity1, entity2, entityBone, entityBone2, p4, p5) end

---```
---breakForce is the amount of force required to break the bond.
---p14 - is always 1 in scripts
---p15 - is 1 or 0 in scripts - unknown what it does
---p16 - controls collision between the two entities (FALSE disables collision).
---p17 - do not teleport entity to be attached to the position of the bone Index of the target entity (if 1, entity will not be teleported to target bone)
---p18 - is always 2 in scripts.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3675780C92F90F9)
---@param entity1 number 
---@param entity2 number 
---@param boneIndex1 number 
---@param boneIndex2 number 
---@param xPos1 number 
---@param yPos1 number 
---@param zPos1 number 
---@param xPos2 number 
---@param yPos2 number 
---@param zPos2 number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param breakForce number 
---@param fixedRot boolean 
---@param p15 boolean 
---@param collision boolean 
---@param teleport boolean 
---@param p18 number 
function AttachEntityToEntityPhysically(entity1, entity2, boneIndex1, boneIndex2, xPos1, yPos1, zPos1, xPos2, yPos2, zPos2, xRot, yRot, zRot, breakForce, fixedRot, p15, collision, teleport, p18) end

---This native **could affect** the arguments of the `CEventNetworkEntityDamage` game event, by clearing the damaging entity before the event is fired.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA72CD9CA74A5ECBA)
---@param entity number The entity to clear the last damaging entity from.
function ClearEntityLastDamageEntity(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x150E808B375A385A)
---@param x number 
---@param y number 
---@param z number 
---@param p3 any 
---@param modelHash number | string 
---@param p5 boolean 
function CreateForcedObject(x, y, z, p3, modelHash, p5) end

---```
---p5 = sets as true in scripts  
---Same as the comment for CREATE_MODEL_SWAP unless for some reason p5 affects it this only works with objects as well.  
---Network players do not see changes done with this.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8A97BCA30A0CE478)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param model number | string 
---@param p5 boolean 
function CreateModelHide(x, y, z, radius, model, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A52AE588830BF7F)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param model number | string 
---@param p5 boolean 
function CreateModelHideExcludingScriptObjects(x, y, z, radius, model, p5) end

---```
---Only works with objects!  
---Network players do not see changes done with this.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x92C47782FDA8B2A3)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param originalModel number | string 
---@param newModel number | string 
---@param p6 boolean 
function CreateModelSwap(x, y, z, radius, originalModel, newModel, p6) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x961AC54BF0613F5D)
---@param entity number 
---@param dynamic boolean Set to `true` to keep velocity after detaching
---@param collision boolean 
function DetachEntity(entity, dynamic, collision) end

---Deletes the specified entity, and invalidates the passed handle (i.e. in/out argument).
---[Native Documentation](https://docs.fivem.net/natives/?_0xAE3CBE5BF394C9C9)
---@param entity number The entity to delete.
function DeleteEntity(entity) end

---Checks whether an entity exists in the game world.
---[Native Documentation](https://docs.fivem.net/natives/?_0x7239B21A38F536BA)
---Example: 
---```local currentVehicle = GetVehiclePedIsIn(PlayerPedId(), false)
---
---if DoesEntityExist(currentVehicle) then
---    DeleteEntity(currentVehicle)
---end```
---@param entity number The entity to check if it exists.
---@return boolean retval Whether the entity exists or not.
function DoesEntityExist(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDDE6DF5AE89981D2)
---@param entity number 
---@param p2 boolean 
---@return boolean retval 
function DoesEntityBelongToThisScript(entity, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA95EA3317CC5064)
---@param entity number 
---@return boolean retval 
function DoesEntityHavePhysics(entity) end

---```
---NativeDB Introduced: v2699
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2158E81A6AF65EA9)
---@param entity number 
---@return boolean retval 
function DoesEntityHaveAnimDirector(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x060D6E96F8B8E48D)
---@param entity number 
---@return boolean retval 
function DoesEntityHaveDrawable(entity) end

---```
---NativeDB Introduced: v2699
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x764EB96874EFFDC1)
---@param entity number 
---@return boolean retval 
function DoesEntityHaveSkeletonData(entity) end

---```
---Based on carmod_shop script decompile this takes a vehicle parameter. It is called when repair is done on initial enter.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x40FDEDB72F8293B2)
---@param entity number 
function ForceEntityAiAndAnimationUpdate(entity) end

---```
---In the script "player_scene_t_bbfight.c4":  
---"if (ENTITY::FIND_ANIM_EVENT_PHASE(&l_16E, &l_19F[v_4/*16*/], v_9, &v_A, &v_B))"  
----- &l_16E (p0) is requested as an anim dictionary earlier in the script.  
----- &l_19F[v_4/*16*/] (p1) is used in other natives in the script as the "animation" param.  
----- v_9 (p2) is instantiated as "victim_fall"; I'm guessing that's another anim  
-----v_A and v_B (p3 & p4) are both set as -1.0, but v_A is used immediately after this native for:   
---"if (v_A < ENTITY::GET_ENTITY_ANIM_CURRENT_TIME(...))"  
---Both v_A and v_B are seemingly used to contain both Vector3's and floats, so I can't say what either really is other than that they are both output parameters. p4 looks more like a *Vector3 though  
----alphazolam  
---```
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---[Native Documentation](https://docs.fivem.net/natives/?_0x07F1BE2BCCAA27A7)
---@param animDictionary string 
---@param animName string 
---@param p2 string 
---@param p3 any 
---@param p4 any 
---@return boolean retval 
function FindAnimEventPhase(animDictionary, animName, p2, p3, p4) end

---Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using SET_ENTITY_COORDS.
---[Native Documentation](https://docs.fivem.net/natives/?_0x428CA6DBD1094446)
---Example: 
---```FreezeEntityPosition(PlayerPedId(), true)```
---@param entity number The entity to freeze/unfreeze.
---@param toggle boolean Freeze or unfreeze entity.
function FreezeEntityPosition(entity, toggle) end

---[Animations list](https://alexguirre.github.io/animations-list/)
---[Native Documentation](https://docs.fivem.net/natives/?_0xFEDDF04D62B8D790)
---@param animDict string 
---@param animName string 
---@return number retval 
function GetAnimDuration(animDict, animName) end

---[Animations list](https://alexguirre.github.io/animations-list/)
---[Native Documentation](https://docs.fivem.net/natives/?_0xFEDDF04D62B8D790)
---@param animDict string 
---@param animName string 
---@return number retval 
function GetAnimDuration(animDict, animName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE465D4AB7CA6AE72)
---@param entity number 
---@return vector3 retval 
function GetCollisionNormalOfLastHitForEntity(entity) end

---```
---ENABLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6CE177D014502E8A)
---@param entity number 
function EnableEntityUnk(entity) end

---```
---ENABLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6CE177D014502E8A)
---@param entity number 
function N_0x6CE177D014502E8A(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5A47B3B5E63E94C6)
---@param entity number 
---@return number retval 
function GetEntityAlpha(entity) end

---```
---Returns a float value representing animation's total playtime in milliseconds.  
---Example:  
---GET_ENTITY_ANIM_TOTAL_TIME(PLAYER_ID(),"amb@world_human_yoga@female@base","base_b")   
---return 20800.000000  
---```
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---[Native Documentation](https://docs.fivem.net/natives/?_0x50BD2730B191E360)
---@param entity number 
---@param animDict string 
---@param animName string 
---@return number retval 
function GetEntityAnimTotalTime(entity, animDict, animName) end

---```
---Returns a float value representing animation's current playtime with respect to its total playtime. This value increasing in a range from [0 to 1] and wrap back to 0 when it reach 1.  
---Example:  
---0.000000 - mark the starting of animation.  
---0.500000 - mark the midpoint of the animation.  
---1.000000 - mark the end of animation.  
---```
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---[Native Documentation](https://docs.fivem.net/natives/?_0x346D81500D088F42)
---@param entity number 
---@param animDict string 
---@param animName string 
---@return number retval 
function GetEntityAnimCurrentTime(entity, animDict, animName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x48C2BED9180FE123)
---@param entity number 
---@return number retval 
function GetEntityAttachedTo(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB328DCC3A3AA401B)
---@param entity number 
---@return number retval 
function GetEntityBoneCount(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB328DCC3A3AA401B)
---@param entity number 
---@return number retval 
function N_0xB328DCC3A3AA401B(entity) end

---```
---Returns the index of the bone. If the bone was not found, -1 will be returned.   
---list:  
---pastebin.com/D7JMnX1g  
---BoneNames:  
---	chassis,  
---	windscreen,  
---	seat_pside_r,  
---	seat_dside_r,  
---	bodyshell,  
---	suspension_lm,  
---	suspension_lr,  
---	platelight,  
---	attach_female,  
---	attach_male,  
---	bonnet,  
---	boot,  
---	chassis_dummy,	//Center of the dummy  
---	chassis_Control,	//Not found yet  
---	door_dside_f,	//Door left, front  
---	door_dside_r,	//Door left, back  
---	door_pside_f,	//Door right, front  
---	door_pside_r,	//Door right, back  
---	Gun_GripR,  
---	windscreen_f,  
---	platelight,	//Position where the light above the numberplate is located  
---	VFX_Emitter,  
---	window_lf,	//Window left, front  
---	window_lr,	//Window left, back  
---	window_rf,	//Window right, front  
---	window_rr,	//Window right, back  
---	engine,	//Position of the engine  
---	gun_ammo,  
---	ROPE_ATTATCH,	//Not misspelled. In script "finale_heist2b.c4".  
---	wheel_lf,	//Wheel left, front  
---	wheel_lr,	//Wheel left, back  
---	wheel_rf,	//Wheel right, front  
---	wheel_rr,	//Wheel right, back  
---	exhaust,	//Exhaust. shows only the position of the stock-exhaust  
---	overheat,	//A position on the engine(not exactly sure, how to name it)  
---	misc_e,	//Not a car-bone.  
---	seat_dside_f,	//Driver-seat  
---	seat_pside_f,	//Seat next to driver  
---	Gun_Nuzzle,  
---	seat_r  
---I doubt that the function is case-sensitive, since I found a "Chassis" and a "chassis". - Just tested: Definitely not case-sensitive.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB71170B7E76ACBA)
---@param entity number 
---@param boneName string 
---@return number retval 
function GetEntityBoneIndexByName(entity, boneName) end

---```
---Gets the world rotation of the specified bone of the specified entity.
---This native is used in casinoroulette.c but I don't know yet what is the difference with _GET_ENTITY_BONE_ROTATION
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x46F8696933A63C9B)
---@param entity number 
---@param boneIndex number 
---@return vector3 retval 
function GetEntityBonePosition2(entity, boneIndex) end

---```
---Gets the world rotation of the specified bone of the specified entity.
---This native is used in casinoroulette.c but I don't know yet what is the difference with _GET_ENTITY_BONE_ROTATION
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x46F8696933A63C9B)
---@param entity number 
---@param boneIndex number 
---@return vector3 retval 
function N_0x46F8696933A63C9B(entity, boneIndex) end

---```
---Gets the world rotation of the specified bone of the specified entity.
---This native is used in casinoroulette.c but I don't know yet what is the difference with _GET_ENTITY_BONE_ROTATION
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x46F8696933A63C9B)
---@param entity number 
---@param boneIndex number 
---@return vector3 retval 
function GetWorldPositionOfEntityBone2(entity, boneIndex) end

---```
---Gets the world rotation of the specified bone of the specified entity.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCE6294A232D03786)
---@param entity number 
---@param boneIndex number 
---@return vector3 retval 
function GetEntityBoneRotation(entity, boneIndex) end

---```
---Gets the world rotation of the specified bone of the specified entity.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCE6294A232D03786)
---@param entity number 
---@param boneIndex number 
---@return vector3 retval 
function N_0xCE6294A232D03786(entity, boneIndex) end

---```
---Gets the world rotation of the specified bone of the specified entity.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCE6294A232D03786)
---@param entity number 
---@param boneIndex number 
---@return vector3 retval 
function GetWorldRotationOfEntityBone(entity, boneIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD95CC5D2AB15A09F)
---@param entity number 
---@return boolean retval 
function GetEntityCanBeDamaged(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD95CC5D2AB15A09F)
---@param entity number 
---@return boolean retval 
function N_0xD95CC5D2AB15A09F(entity) end

---Gets the local rotation of the specified bone of the specified entity.
---
---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBD8D32550E5CEBFE)
---@param entity number 
---@param boneIndex number 
---@return vector3 retval 
function GetEntityBoneRotationLocal(entity, boneIndex) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCCF1E97BEFDAE480)
---@param entity number 
---@return boolean retval 
function GetEntityCollisionDisabled(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCCF1E97BEFDAE480)
---@param entity number 
---@return boolean retval 
function N_0xCCF1E97BEFDAE480(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCCF1E97BEFDAE480)
---@param entity number 
---@return boolean retval 
function GetEntityCollisonDisabled(entity) end

---Gets the current coordinates (world position) for a specified entity.
---[Native Documentation](https://docs.fivem.net/natives/?_0x3FEF770D40960D5A)
---Example: 
---```local playerCoords = GetEntityCoords(PlayerPedId())
---print(playerCoords) -- vector3(...)```
---@param entity number The entity to get the coordinates from.
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@return vector3 retval The current entity coordinates.
function GetEntityCoords(entity, alive) end

---```
---Gets the entity's forward vector.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A794A5A57F8DF91)
---@param entity number The entity to get the forward vector for.
---@return vector3 retval The forward vector.
function GetEntityForwardVector(entity) end

---```
---Gets the X-component of the entity's forward vector.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BB4EF4214E0E6D5)
---@param entity number 
---@return number retval 
function GetEntityForwardX(entity) end

---```
---Returns the heading of the entity in degrees. Also know as the "Yaw" of an entity.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE83D4F9BA2A38914)
---Example: 
---```local heading = GetEntityHeading(PlayerPedId())
---print(heading)```
---@param entity number The entity to get the heading from.
---@return number retval The current entity heading.
function GetEntityHeading(entity) end

---```
---Gets the Y-component of the entity's forward vector.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x866A4A5FAE349510)
---@param entity number 
---@return number retval 
function GetEntityForwardY(entity) end

---```
---Returns an integer value of entity's current health.
---Example of range for ped:
---- Player [0 to 200]
---- Ped [100 to 200]
---- Vehicle [0 to 1000]
---- Object [0 to 1000]
---Health is actually a float value but this native casts it to int.
---In order to get the actual value, do:
---float health = *(float *)(entityAddress + 0x280);
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEEF059FAD016D209)
---Example: 
---```local health = GetEntityHealth(PlayerPedId())
---print(health)```
---@param entity number The entity to get the health from.
---@return number retval The current entity health.
function GetEntityHealth(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5A504562485944DD)
---@param entity number 
---@param X number 
---@param Y number 
---@param Z number 
---@param atTop boolean 
---@param inWorldCoords boolean 
---@return number retval 
function GetEntityHeight(entity, X, Y, Z, atTop, inWorldCoords) end

---```
---Returns the LOD distance of an entity.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4159C2762B5791D6)
---@param entity number 
---@return number retval 
function GetEntityLodDist(entity) end

---```
---Return height (z-dimension) above ground.   
---Example: The pilot in a titan plane is 1.844176 above ground.  
---How can i convert it to meters?  
---Everything seems to be in meters, probably this too.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DD55701034110E5)
---@param entity number 
---@return number retval 
function GetEntityHeightAboveGround(entity) end

---```
---Return an integer value of entity's maximum health.  
---Example:  
---- Player = 200  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x15D757606D170C3C)
---@param entity number 
---@return number retval 
function GetEntityMaxHealth(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xECB2FC7235A7D137)
---@param entity number 
---@param forwardVector vector3 
---@param rightVector vector3 
---@param upVector vector3 
---@param position vector3 
function GetEntityMatrix(entity, forwardVector, rightVector, upVector, position) end

---```
---Gets the heading of the entity physics in degrees, which tends to be more accurate than just "GET_ENTITY_HEADING". This can be clearly seen while, for example, ragdolling a ped/player.  
---NOTE: The name and description of this native are based on independent research. If you find this native to be more suitable under a different name and/or described differently, please feel free to do so.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x846BF6291198A71E)
---@param entity number 
---@return number retval 
function GetEntityPhysicsHeading(entity) end

---```
---Gets the heading of the entity physics in degrees, which tends to be more accurate than just "GET_ENTITY_HEADING". This can be clearly seen while, for example, ragdolling a ped/player.  
---NOTE: The name and description of this native are based on independent research. If you find this native to be more suitable under a different name and/or described differently, please feel free to do so.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x846BF6291198A71E)
---@param entity number 
---@return number retval 
function N_0x846BF6291198A71E(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD45DC2893621E1FE)
---@param entity number 
---@return number retval 
function GetEntityPitch(entity) end

---Returns the model hash from an entity.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F47B058362C84B5)
---Example: 
---```local hash = GetEntityModel(PlayerPedId())
---
---if hash == `mp_m_freemode_01` then
---    print("This player is using the male freemode model.")
---end```
---@param entity number The entity to get the model for.
---@return number | string retval The model hash of the entity.
function GetEntityModel(entity) end

---A population type, from the following enum: https://alloc8or.re/gta5/doc/enums/ePopulationType.txt
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6F5161F4534EDFF)
---@param entity number The entity to obtain the population type from.
---@return number retval A population type, from the enumeration above.
function GetEntityPopulationType(entity) end

---```
---GET_ENTITY_*
---
---Seems to return the handle of the entity's portable pickup.
---
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F922734E259BD26)
---@param entity number 
---@param modelHash number | string 
---@return number retval 
function GetEntityPickup(entity, modelHash) end

---```
---w is the correct parameter name!  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7B3703D2D32DFA18)
---@param entity number 
---@param x number 
---@param y number 
---@param z number 
---@param w number 
function GetEntityQuaternion(entity, x, y, z, w) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE8CD9BE829BBEBF)
---@param entity number 
---@param bulletProof boolean 
---@param fireProof boolean 
---@param explosionProof boolean 
---@param collisionProof boolean 
---@param meleeProof boolean 
---@param steamProof boolean 
---@param p7 boolean 
---@param drownProof boolean 
---@return boolean retval 
function GetEntityProofs(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x213B91045D09B983)
---@param entity number 
---@return vector3 retval 
function GetEntityRotationVelocity(entity) end

---```
---Displays the current ROLL axis of the entity [-180.0000/180.0000+]  
---(Sideways Roll) such as a vehicle tipped on its side  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x831E0242595560DF)
---@param entity number 
---@return number retval 
function GetEntityRoll(entity) end

---Get the speed of a entity.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD5037BA82E12416F)
---@param entity number Entity id you want to test for speed.
---@return number retval Speed of a entity in m/s. You can convert to km/h using the value you get and multiply by 3.6, and miles/h by 2.236936. Also, the float returned is the length of [GET_ENTITY_SPEED_VECTOR](?\_0x9A8D700A51CB7B0D)
function GetEntitySpeed(entity) end

---```
---rotationOrder refers to the order yaw pitch roll is applied; value ranges from 0 to 5 and is usually *2* in scripts.
---
---What you use for rotationOrder when getting must be the same as rotationOrder when setting the rotation.
---
---What it returns is the yaw on the z part of the vector, which makes sense considering R* considers z as vertical. Here's a picture for those of you who don't understand pitch, yaw, and roll:
---www.allstar.fiu.edu/aero/images/pic5-1.gif
---```
---
---### Rotation Orders
---
---*   **0**: ZYX - Rotate around the z-axis, then the y-axis and finally the x-axis.
---*   **1**: YZX - Rotate around the y-axis, then the z-axis and finally the x-axis.
---*   **2**: ZXY - Rotate around the z-axis, then the x-axis and finally the y-axis.
---*   **3**: XZY - Rotate around the x-axis, then the z-axis and finally the y-axis.
---*   **4**: YXZ - Rotate around the y-axis, then the x-axis and finally the z-axis.
---*   **5**: XYZ - Rotate around the x-axis, then the y-axis and finally the z-axis.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAFBD61CC738D9EB9)
---Example: 
---```local playerRotation = GetEntityRotation(PlayerPedId(), 2)
---print(playerRotation)```
---@param entity number The entity to get the rotation for.
---@param rotationOrder number The order yaw, pitch and roll is applied. Usually 2.
---@return vector3 retval A vector where the Z coordinate is the yaw.
function GetEntityRotation(entity, rotationOrder) end

---```
---Relative can be used for getting speed relative to the frame of the vehicle, to determine for example, if you are going in reverse (-y speed) or not (+y speed).  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A8D700A51CB7B0D)
---@param entity number 
---@param relative boolean 
---@return vector3 retval 
function GetEntitySpeedVector(entity, relative) end

---```
---All ambient entities in-world seem to have the same value for the second argument (Any *script), depending on when the scripthook was activated/re-activated. I've seen numbers from ~5 to almost 70 when the value was translated with to_string. The function return value seems to always be 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6E9C38DB51D7748)
---@param entity number 
---@param script scrhandle 
---@return string retval 
function GetEntityScript(entity, script) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x95EED5A694951F9F)
---@param entity number 
---@return number retval 
function GetEntityUprightValue(entity) end

---```
---Get how much of the entity is submerged.  1.0f is whole entity.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE81AFC1BC4CC41CE)
---@param entity number 
---@return number retval 
function GetEntitySubmergedLevel(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4805D2B1D8CF94A9)
---@param entity number 
---@return vector3 retval 
function GetEntityVelocity(entity) end

---```
---Returns:
---0 = no entity
---1 = ped
---2 = vehicle
---3 = object
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8ACD366038D14505)
---@param entity number 
---@return number retval 
function GetEntityType(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5C3D0A935F535C4C)
---@param entity number 
---@return number | string retval 
function GetLastMaterialHitByEntity(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7196842CB375CDB3)
---@param entity number 
---@return number retval 
function GetNearestPlayerToEntity(entity) end

---```
---Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7E3B9735C0F89D6)
---@param entity number 
---@return number retval 
function GetObjectIndexFromEntityIndex(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4DC9A62F844D9337)
---@param entity number 
---@param team number 
---@return number retval 
function GetNearestPlayerToEntityOnTeam(entity, team) end

---```
---Converts world coords (posX - Z) to coords relative to the entity  
---Example:  
---posX = 50  
---posY = 1000  
---posZ = 60  
---Entity's coords are: x=30, y=1000, z=60.  
---All three returned coords will then be in range of [-20,20] depending on rotation of the entity.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2274BC1C4885E333)
---@param entity number 
---@param posX number 
---@param posY number 
---@param posZ number 
---@return vector3 retval 
function GetOffsetFromEntityGivenWorldCoords(entity, posX, posY, posZ) end

---```
---Offset values are relative to the entity.  
---x = left/right  
---y = forward/backward  
---z = up/down  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1899F328B0E12848)
---@param entity number 
---@param offsetX number 
---@param offsetY number 
---@param offsetZ number 
---@return vector3 retval 
function GetOffsetFromEntityInWorldCoords(entity, offsetX, offsetY, offsetZ) end

---```
---Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x04A2A40C73395041)
---@param entity number 
---@return number retval 
function GetPedIndexFromEntityIndex(entity) end

---```
---Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4B53F92932ADFAC0)
---@param entity number 
---@return number retval 
function GetVehicleIndexFromEntityIndex(entity) end

---```
---Returns the coordinates of an entity-bone.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x44A8FCB8ED227738)
---@param entity number 
---@param boneIndex number 
---@return vector3 retval 
function GetWorldPositionOfEntityBone(entity, boneIndex) end

---```
---if (ENTITY::HAS_ANIM_EVENT_FIRED(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("CreateObject")))
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEAF4CD9EA3E7E922)
---@param entity number 
---@param actionHash number | string 
---@return boolean retval 
function HasAnimEventFired(entity, actionHash) end

---```
---P3 is always 3 as far as i cant tell  
---```
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---[Native Documentation](https://docs.fivem.net/natives/?_0x20B711662962B472)
---@param entity number 
---@param animDict string 
---@param animName string 
---@param p3 number 
---@return boolean retval 
function HasEntityAnimFinished(entity, animDict, animName, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE9676F61BC0B3321)
---@param entity number 
---@return boolean retval 
function HasCollisionLoadedAroundEntity(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x605F5A140F202491)
---@param entity number 
---@return boolean retval 
function HasEntityBeenDamagedByAnyPed(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x95EB9964FF5C5C65)
---@param entity number 
---@return boolean retval 
function HasEntityBeenDamagedByAnyObject(entity) end

---```
---Entity 1 = Victim  
---Entity 2 = Attacker  
---p2 seems to always be 1  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC86D67D52A707CF8)
---@param entity1 number 
---@param entity2 number 
---@param p2 boolean 
---@return boolean retval 
function HasEntityBeenDamagedByEntity(entity1, entity2, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFD5033FDBA0A9C8)
---@param entity number 
---@return boolean retval 
function HasEntityBeenDamagedByAnyVehicle(entity) end

---```
---Has the entity1 got a clear line of sight to the other entity2 from the direction entity1 is facing.  
---This is one of the most CPU demanding BOOL natives in the game; avoid calling this in things like nested for-loops  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0267D00AF114F17A)
---@param entity1 number 
---@param entity2 number 
---@return boolean retval 
function HasEntityClearLosToEntityInFront(entity1, entity2) end

---Checks if entity1 has a clear line of sight to entity2. So a simple raycast which if it collides with any of the given colliderTypes returns false.
---
---The direction of the check matters with for example bushes, so checking from inside to outside a bush with traceType 256 returns true, but the other way around returns false.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFCDFF7B72D23A1AC)
---@param entity1 number Entity to start from
---@param entity2 number Entity to check to
---@param flags number A bit mask with bits 1, 2, 4, etc, relating to collider types (see: [START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE](#\_0x377906D8A31E5586)). 17 is most common in GTA scripts.
---@return boolean retval Returns `true` if no collider of specified bitmask is hit.
function HasEntityClearLosToEntity(entity1, entity2, flags) end

---```
---Called on tick.  
---Tested with vehicles, returns true whenever the vehicle is touching any entity.  
---Note: for vehicles, the wheels can touch the ground and it will still return false, but if the body of the vehicle touches the ground, it will return true.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BAD02F0368D9E14)
---@param entity number 
---@return boolean retval 
function HasEntityCollidedWithAnything(entity) end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x394BDE2A7BBA031E)
---@param entity1 number 
---@param entity2 number 
---@param traceType number 
---@return any retval 
function HasEntityClearLosToEntity2(entity1, entity2, traceType) end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x394BDE2A7BBA031E)
---@param entity1 number 
---@param entity2 number 
---@param traceType number 
---@return any retval 
function N_0x394BDE2A7BBA031E(entity1, entity2, traceType) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x731EC8A916BD11A1)
---@param handle number 
---@return boolean retval 
function IsAnEntity(handle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A7B270912999B3C)
---@param entity number 
---@return boolean retval 
function IsEntityAMissionEntity(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6AC7003FA6E5575E)
---@param entity number 
---@return boolean retval 
function IsEntityAVehicle(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x524AC5ECEA15343E)
---@param entity number The entity to check if it's a Ped.
---@return boolean retval Whether the entity is a Ped.
function IsEntityAPed(entity) end

---```
---Checks if entity is within x/y/zSize distance of x/y/z.   
---Last three are unknown ints, almost always p7 = 0, p8 = 1, p9 = 0  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x20B60995556D004F)
---@param entity number 
---@param xPos number 
---@param yPos number 
---@param zPos number 
---@param xSize number 
---@param ySize number 
---@param zSize number 
---@param p7 boolean 
---@param p8 boolean 
---@param p9 number 
---@return boolean retval 
function IsEntityAtCoord(entity, xPos, yPos, zPos, xSize, ySize, zSize, p7, p8, p9) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D68C8FD0FACA94E)
---@param entity number 
---@return boolean retval 
function IsEntityAnObject(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB346476EF1A64897)
---Example: 
---```local ped = PlayerPedId()
---
---if IsEntityAttached(ped) then
---    DetachEntity(ped, true, true)
---end```
---@param entity number The entity to check if it is attached to another entity.
---@return boolean retval Whether the entity is attached to another entity.
function IsEntityAttached(entity) end

---```
---Checks if entity1 is within the box defined by x/y/zSize of entity2.  
---Last three parameters are almost alwasy p5 = 0, p6 = 1, p7 = 0  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x751B70C3D034E187)
---@param entity1 number 
---@param entity2 number 
---@param xSize number 
---@param ySize number 
---@param zSize number 
---@param p5 boolean 
---@param p6 boolean 
---@param p7 number 
---@return boolean retval 
function IsEntityAtEntity(entity1, entity2, xSize, ySize, zSize, p5, p6, p7) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB1632E9A5F988D11)
---@param entity number 
---@return boolean retval 
function IsEntityAttachedToAnyPed(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF511840CEEDE0CC)
---@param entity number 
---@return boolean retval 
function IsEntityAttachedToAnyObject(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x26AA915AD89BFB4B)
---@param entity number 
---@return boolean retval 
function IsEntityAttachedToAnyVehicle(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFBE71898A993728)
---@param from number 
---@param to number 
---@return boolean retval 
function IsEntityAttachedToEntity(from, to) end

---```
---NativeDB Added Parameter 2: BOOL p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F9532F3B5CC2551)
---@param entity number 
---@return boolean retval 
function IsEntityDead(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x886E37EC497200B6)
---@param entity number 
---@return boolean retval 
function IsEntityInAir(entity) end

---p10 is some entity flag check, also used in [`IS_ENTITY_AT_ENTITY`](#\_0x751B70C3D034E187), [`IS_ENTITY_IN_AREA`](#\_0x54736AA40E271165) and [`IS_ENTITY_AT_COORD`](#\_0x20B60995556D004F).
---
---See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
---[Native Documentation](https://docs.fivem.net/natives/?_0x51210CED3DA1C78A)
---@param entity number 
---@param x1 number X dimension of the angled area 'origin'
---@param y1 number Y dimension of the angled area 'origin'
---@param z1 number Z dimension of the angled area 'origin'
---@param x2 number X dimension of the angled area 'extent'
---@param y2 number Y dimension of the angled area 'extent'
---@param z2 number Z dimension of the angled area 'extent'
---@param width number Width of the angled area
---@param debug boolean a debug flag invoking functions in the same path as `DRAW_MARKER`
---@param includez boolean If true, include the Z dimension when doing the height check; otherwise the query becomes two-dimensional
---@param p10 any 
---@return boolean retval 
function IsEntityInAngledArea(entity, x1, y1, z1, x2, y2, z2, width, debug, includez, p10) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x54736AA40E271165)
---@param entity number 
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param p7 boolean 
---@param p8 boolean 
---@param p9 any 
---@return boolean retval 
function IsEntityInArea(entity, x1, y1, z1, x2, y2, z2, p7, p8, p9) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCFB0A0D8EDD145A3)
---@param entity number 
---@return boolean retval 
function IsEntityInWater(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB6463CF6AF527071)
---@param entity number 
---@param zone string 
---@return boolean retval 
function IsEntityInZone(entity, zone) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE31C2C72B8692B64)
---@param entity number 
---@return boolean retval 
function IsEntityOccluded(entity) end

---```
---Returns true if the entity is in between the minimum and maximum values for the 2d screen coords.   
---This means that it will return true even if the entity is behind a wall for example, as long as you're looking at their location.   
---Chipping  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE659E47AF827484B)
---@param entity number 
---@return boolean retval 
function IsEntityOnScreen(entity) end

---```
---A static ped will not react to natives like "APPLY_FORCE_TO_ENTITY" or "SET_ENTITY_VELOCITY" and oftentimes will not react to task-natives like "AI::TASK_COMBAT_PED". The only way I know of to make one of these peds react is to ragdoll them (or sometimes to use CLEAR_PED_TASKS_IMMEDIATELY(). Static peds include almost all far-away peds, beach-combers, peds in certain scenarios, peds crossing a crosswalk, peds walking to get back into their cars, and others. If anyone knows how to make a ped non-static without ragdolling them, please edit this with the solution.  
---^ Attach a phCollider to the ped.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1218E6886D3D8327)
---@param entity number 
---@return boolean retval 
function IsEntityStatic(entity) end

---See also [`IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM`](#\_0x6EC47A344923E1ED)
---
---```
---Taken from ENTITY::IS_ENTITY_PLAYING_ANIM(PLAYER::PLAYER_PED_ID(), "creatures@shark@move", "attack_player", 3)  
---p4 is always 3 in the scripts.  
---taskFlag:  
---2 - Check synchronized scene  
---```
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F0B79228E461EC9)
---@param entity number 
---@param animDict string 
---@param animName string 
---@param taskFlag number 
---@return boolean retval 
function IsEntityPlayingAnim(entity, animDict, animName, taskFlag) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0F42323798A58C8C)
---@param entity number 
---@param modelHash number | string 
---@return boolean retval 
function IsEntityTouchingModel(entity, modelHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DBD58820FA61D71)
---@param entity number 
---@return boolean retval 
function IsEntityUpsidedown(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x17FFC1B2BA35A494)
---@param entity number 
---@param targetEntity number 
---@return boolean retval 
function IsEntityTouchingEntity(entity, targetEntity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD796CB5BA8F20E32)
---@param entity number 
---@return boolean retval 
function IsEntityVisibleToScript(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5333F526F6AB19AA)
---@param entity number 
---@param angle number 
---@return boolean retval 
function IsEntityUpright(entity, angle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x47D6F43D77935C75)
---@param entity number 
---@return boolean retval 
function IsEntityVisible(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD05BFF0C0A12C68F)
---@param entity number 
---@return boolean retval 
function IsEntityWaitingForWorldCollision(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x36F32DE87082343E)
---@param p0 any 
---@param p1 any 
function N_0x36F32DE87082343E(p0, p1) end

---```
---Only called once in the scripts.  
---Related to weapon objects.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5C3B791D580E0BC2)
---@param entity number 
---@param p1 number 
function N_0x5C3B791D580E0BC2(entity, p1) end

---```
---SET_ENTITY_*  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1A092BB0C3808B96)
---@param entity number 
---@param p1 boolean 
function N_0x1A092BB0C3808B96(entity, p1) end

---```
---SET_ENTITY_R*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x694E00132F2823ED)
---@param entity number 
---@param toggle boolean 
function N_0x694E00132F2823ED(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x352E2B5CF420BF3B)
---@param p0 any 
---@param p1 any 
function N_0x352E2B5CF420BF3B(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB17BC6453F6CF5AC)
---@param p0 any 
---@param p1 any 
function N_0xB17BC6453F6CF5AC(p0, p1) end

---```
---Does nothing (essentially a nullsub).
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x490861B88F4FD846)
---@param p0 any 
function N_0x490861B88F4FD846(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCEA7C8E1B48FF68C)
---@param p0 any 
---@param p1 any 
function N_0xCEA7C8E1B48FF68C(p0, p1) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x68B562E124CC0AEF)
---@param p0 any 
---@param p1 any 
function N_0x68B562E124CC0AEF(p0, p1) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7B80E7C3BEFC396)
---@param p0 any 
---@param p1 any 
function N_0xD7B80E7C3BEFC396(p0, p1) end

---```
---Related to cutscene entities. Unsure about the use.
---SET_ENTITY_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x78E8E3A640178255)
---@param entity number 
function N_0x78E8E3A640178255(entity) end

---```
---SET_ENTITY_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC34BC448DA29F5E9)
---@param entity number 
---@param toggle boolean 
function N_0xC34BC448DA29F5E9(entity, toggle) end

---SET_ENTITY_M\*
---
---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE66377CDDADA4810)
---@param entity number 
---@param p1 boolean 
function N_0xE66377CDDADA4810(entity, p1) end

---```
---SET_*
---Only called within 1 script for x360. 'fm_mission_controller' and it used on an object.
---Ran after these 2 natives,
---set_object_targettable(uParam0, 0);
---set_entity_invincible(uParam0, 1);
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC6F8601FAF2E893)
---@param entity number 
---@param toggle boolean 
function N_0xDC6F8601FAF2E893(entity, toggle) end

---```
---p4 and p7 are usually 1000.0f.  
---```
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---[Native Documentation](https://docs.fivem.net/natives/?_0xC77720A12FE14A86)
---@param entity number 
---@param syncedScene number 
---@param animation string 
---@param propName string 
---@param p4 number 
---@param p5 number 
---@param p6 any 
---@param p7 number 
---@return boolean retval 
function PlaySynchronizedEntityAnim(entity, syncedScene, animation, propName, p4, p5, p6, p7) end

---[Animations list](https://alexguirre.github.io/animations-list/)
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9C54555ED30FBC4)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 any 
---@param p5 any 
---@param p6 any 
---@param p7 any 
---@param p8 number 
---@param p9 number 
---@param p10 any 
---@param p11 number 
---@return boolean retval 
function PlaySynchronizedMapEntityAnim(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

---```
---Called to update entity attachments.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF4080490ADC51C6F)
---@param entity number 
function ProcessEntityAttachments(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x61B6775E83C0DB6F)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
function RemoveForcedObject(p0, p1, p2, p3, p4) end

---```
---delta and bitset are guessed fields. They are based on the fact that most of the calls have 0 or nil field types passed in.  
---The only time bitset has a value is 0x4000 and the only time delta has a value is during stealth with usually <1.0f values.  
---```
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---[Native Documentation](https://docs.fivem.net/natives/?_0x7FB218262B810701)
---@param entity number 
---@param animName string 
---@param animDict string 
---@param p3 number 
---@param loop boolean 
---@param stayInAnim boolean 
---@param p6 boolean 
---@param delta number 
---@param bitset any 
---@return boolean retval 
function PlayEntityAnim(entity, animName, animDict, p3, loop, stayInAnim, p6, delta, bitset) end

---p5 requires more research. See also [`CREATE_MODEL_HIDE`](#\_0x8A97BCA30A0CE478) and [`CREATE_MODEL_SWAP`](#\_0x92C47782FDA8B2A3).
---
---Network players do not see changes done with this.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD9E3006FB3CBD765)
---Example: 
---```-- This could be any coordinates, in this example I am using the players ped coordinates
---local playerPedCoords = GetEntityCoords(PlayerPedId())
---
----- Hides all entities with the hash "1437508529" within 1.0 gta units.
---CreateModelHide(playerPedCoords, 1.0, 1437508529, true)
---
---Citizen.Wait(2500)
---
----- This will make all hidden entities with the hash "1437508529" within 1.0 gta units visible.
---RemoveModelHide(playerPedCoords, 1.0, 1437508529, false)```
---@param x number 
---@param y number 
---@param z number 
---@param radius number The radius specified in gta units
---@param model number | string The model that you want to make visible
---@param p5 boolean 
function RemoveModelHide(x, y, z, radius, model, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x033C0F9A64E229AE)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param originalModel number | string 
---@param newModel number | string 
---@param p6 boolean 
function RemoveModelSwap(x, y, z, radius, originalModel, newModel, p6) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B1E824FFBB7027A)
---@param entity number 
function ResetEntityAlpha(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE12ABE5E3A389A6C)
---@param entity number 
---@param toggle boolean 
function SetCanAutoVaultOnEntity(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE12ABE5E3A389A6C)
---@param entity number 
---@param toggle boolean 
function N_0xE12ABE5E3A389A6C(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA80AE305E0A3044F)
---@param entity number 
---@param toggle boolean 
function SetCanClimbOnEntity(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA80AE305E0A3044F)
---@param entity number 
---@param toggle boolean 
function N_0xA80AE305E0A3044F(entity, toggle) end

---This native sets the entity's alpha level.
---[Native Documentation](https://docs.fivem.net/natives/?_0x44A0870B7E92D7C0)
---Example: 
---```SetEntityAlpha(PlayerPedId(), 51, false)```
---@param entity number The entity to change the alpha for.
---@param alphaLevel number The alpha level ranges from 0 to 255, but changes occur every 20% (every 51).
---@param skin boolean Whether or not to change the alpha of the entity's skin.
function SetEntityAlpha(entity, alphaLevel, skin) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xACAD101E1FB66689)
---@param entity number 
---@param toggle boolean 
function SetEntityAlwaysPrerender(entity, toggle) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8339643499D1222E)
---@param entity number 
---@param x number 
---@param y number 
---@param z number 
function SetEntityAngularVelocity(entity, x, y, z) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8339643499D1222E)
---@param entity number 
---@param x number 
---@param y number 
---@param z number 
function N_0x8339643499D1222E(entity, x, y, z) end

---[Animations list](https://alexguirre.github.io/animations-list/)
---[Native Documentation](https://docs.fivem.net/natives/?_0x4487C259F0F70977)
---@param entity number 
---@param animDictionary string 
---@param animName string 
---@param time number 
function SetEntityAnimCurrentTime(entity, animDictionary, animName, time) end

---Assigns an existing entity to be owned by the current script. If the entity was not owned by a script yet, this also means the entity will remain persistent until released.
---
---Note that this is not needed right after creating an entity as a script-created entity will automatically be assigned.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAD738C3085FE7E11)
---@param entity number An entity handle.
---@param p1 boolean 
---@param p2 boolean 
function SetEntityAsMissionEntity(entity, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x28D1A16553C51776)
---@param entity number 
---@param animDictionary string 
---@param animName string 
---@param speedMultiplier number 
function SetEntityAnimSpeed(entity, animDictionary, animName, speedMultiplier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE22D8FDE858B8119)
---@param entity number 
---@param bCanBeDamaged boolean 
---@param relGroup number 
function SetEntityCanBeDamagedByRelationshipGroup(entity, bCanBeDamaged, relGroup) end

---```
---Marks the specified entity (ped, vehicle or object) as no longer needed.  
---Entities marked as no longer needed, will be deleted as the engine sees fit.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB736A491E64A32CF)
---@param entity number 
function SetEntityAsNoLongerNeeded(entity) end

---```
---True means it can be deleted by the engine when switching lobbies/missions/etc, false means the script is expected to clean it up.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3910051CCECDB00C)
---@param entity number 
---@param toggle boolean 
function SetEntityCleanupByEngine(entity, toggle) end

---```
---True means it can be deleted by the engine when switching lobbies/missions/etc, false means the script is expected to clean it up.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3910051CCECDB00C)
---@param entity number 
---@param toggle boolean 
function N_0x3910051CCECDB00C(entity, toggle) end

---```
---True means it can be deleted by the engine when switching lobbies/missions/etc, false means the script is expected to clean it up.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3910051CCECDB00C)
---@param entity number 
---@param toggle boolean 
function SetEntityRegister(entity, toggle) end

---```
---True means it can be deleted by the engine when switching lobbies/missions/etc, false means the script is expected to clean it up.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3910051CCECDB00C)
---@param entity number 
---@param toggle boolean 
function SetEntitySomething(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9EBC85ED0FFFE51C)
---@param entity number 
---@param toggle boolean 
---@param keepPhysics boolean 
function SetEntityCompletelyDisableCollision(entity, toggle, keepPhysics) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9EBC85ED0FFFE51C)
---@param entity number 
---@param toggle boolean 
---@param keepPhysics boolean 
function N_0x9EBC85ED0FFFE51C(entity, toggle, keepPhysics) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9EBC85ED0FFFE51C)
---@param entity number 
---@param toggle boolean 
---@param keepPhysics boolean 
function SetEntityCollision2(entity, toggle, keepPhysics) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1760FFA8AB074D66)
---@param entity number 
---@param toggle boolean 
function SetEntityCanBeDamaged(entity, toggle) end

---```
---Sets whether the entity can be targeted without being in line-of-sight.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3997889736FD899)
---@param entity number 
---@param toggle boolean 
function SetEntityCanBeTargetedWithoutLos(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1A9205C1B9EE827F)
---@param entity number 
---@param toggle boolean 
---@param keepPhysics boolean 
function SetEntityCollision(entity, toggle, keepPhysics) end

---Sets the coordinates (world position) for a specified entity.
---[Native Documentation](https://docs.fivem.net/natives/?_0x239A3351AC1DA385)
---@param entity number The entity to change coordinates for.
---@param xPos number The X coordinate.
---@param yPos number The Y coordinate.
---@param zPos number The Z coordinate, origin level.
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@param deadFlag boolean Whether to disable physics for dead peds, too, and not just living peds.
---@param ragdollFlag boolean A special flag used for ragdolling peds.
function SetEntityCoordsNoOffset(entity, xPos, yPos, zPos, alive, deadFlag, ragdollFlag) end

---Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
---[Native Documentation](https://docs.fivem.net/natives/?_0x06843DA7060A026B)
---Example: 
---```local ped = PlayerPedId()
---local currentPos = GetEntityCoords(ped)
---print(currentPos)
---
---SetEntityCoords(ped, 674.883, 548.269, 133.94, false, false, false, true)
---
---currentPos = GetEntityCoords(ped)
---print(currentPos) -- changed!```
---@param entity number The entity to change coordinates for.
---@param xPos number The X coordinate.
---@param yPos number The Y coordinate.
---@param zPos number The Z coordinate, ground level.
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@param deadFlag boolean Whether to disable physics for dead peds, too, and not just living peds.
---@param ragdollFlag boolean A special flag used for ragdolling peds.
---@param clearArea boolean Whether to clear any entities in the target area.
function SetEntityCoords(entity, xPos, yPos, zPos, alive, deadFlag, ragdollFlag, clearArea) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x621873ECE1178967)
---@param entity number 
---@param xPos number 
---@param yPos number 
---@param zPos number 
---@param alive boolean 
---@param deadFlag boolean 
---@param ragdollFlag boolean 
---@param clearArea boolean 
function SetEntityCoordsWithoutPlantsReset(entity, xPos, yPos, zPos, alive, deadFlag, ragdollFlag, clearArea) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x621873ECE1178967)
---@param entity number 
---@param xPos number 
---@param yPos number 
---@param zPos number 
---@param alive boolean 
---@param deadFlag boolean 
---@param ragdollFlag boolean 
---@param clearArea boolean 
function SetEntityCoords2(entity, xPos, yPos, zPos, alive, deadFlag, ragdollFlag, clearArea) end

---```
---SET_ENTITY_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C2E3DC128F44309)
---@param entity number 
---@param p1 boolean 
function SetEntityDecalsDisabled(entity, p1) end

---```
---SET_ENTITY_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C2E3DC128F44309)
---@param entity number 
---@param p1 boolean 
function N_0x2C2E3DC128F44309(entity, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1718DE8E3F2823CA)
---@param entity number 
---@param toggle boolean 
function SetEntityDynamic(entity, toggle) end

---Set the heading of an entity in degrees also known as "Yaw".
---[Native Documentation](https://docs.fivem.net/natives/?_0x8E2530AA8ADA980E)
---Example: 
---```SetEntityHeading(PlayerPedId(), 40.0)```
---@param entity number The entity to set the heading for.
---@param heading number The heading in degrees.
function SetEntityHeading(entity, heading) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4A4722448F18EEF5)
---@param entity number 
---@param toggle boolean 
function SetEntityHasGravity(entity, toggle) end

---```
---Sets a ped or an object totally invincible. It doesn't take any kind of damage. Peds will not ragdoll on explosions and the tazer animation won't apply either.  
---If you use this for a ped and you want Ragdoll to stay enabled, then do:  
---*(DWORD *)(pedAddress + 0x188) |= (1 << 9);  
---Use this if you want to get the invincibility status:  
---	bool IsPedInvincible(Ped ped)  
---	{  
---auto addr = getScriptHandleBaseAddress(ped);	  
---if (addr)  
---{  
---	DWORD flag = *(DWORD *)(addr + 0x188);  
---	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);  
---}  
---return false;  
---	}  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3882114BDE571AD4)
---@param entity number 
---@param toggle boolean 
function SetEntityInvincible(entity, toggle) end

---health >= 0
---
---male ped ~= 100 - 200
---
---female ped ~= 0 - 100
---
---```
---NativeDB Added Parameter 3: int p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6B76DC1F3AE6E6A3)
---@param entity number 
---@param health number 
function SetEntityHealth(entity, health) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7CFBA6A80BDF3874)
---@param entity number 
---@param toggle boolean 
function SetEntityLights(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA02E132F5C68722)
---@param entity number 
---@param p1 boolean 
---@param p2 number 
function SetEntityIsTargetPriority(entity, p1, p2) end

---Loads collision grid for an entity spawned outside of a player's loaded area. This allows peds to execute tasks rather than sit dormant because of a lack of a physics grid.
---
---Certainly not the main usage of this native but when set to true for a Vehicle, it will prevent the vehicle to explode if it is spawned far away from the player.
---
---```
---NativeDB Added Parameter 3: Any p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0DC7CABAB1E9B67E)
---@param entity number 
---@param toggle boolean 
function SetEntityLoadCollisionFlag(entity, toggle) end

---```
---LOD distance can be 0 to 0xFFFF (higher values will result in 0xFFFF) as it is actually stored as a 16-bit value (aka uint16_t).  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5927F96A78577363)
---@param entity number 
---@param value number 
function SetEntityLodDist(entity, value) end

---```
---For instance: ENTITY::SET_ENTITY_MAX_HEALTH(PLAYER::PLAYER_PED_ID(), 200); // director_mode.c4: 67849  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x166E7CF68597D8B5)
---@param entity number 
---@param value number 
function SetEntityMaxHealth(entity, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0E46A3FCBDE2A1B1)
---@param entity number Entity to apply a maximum speed on
---@param speed number Speed in meters per second
function SetEntityMaxSpeed(entity, speed) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x295D82A8559F9150)
---@param entity number 
---@param toggle boolean 
function SetEntityMotionBlur(entity, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x79F020FF9EDC0748)
---@param entity number 
---@param toggle boolean 
function SetEntityOnlyDamagedByPlayer(entity, toggle) end

---```
---Calling this function disables collision between two entities.
---The importance of the order for entity1 and entity2 is unclear.
---The third parameter, `thisFrame`, decides whether the collision is to be disabled until it is turned back on, or if it's just this frame.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA53ED5520C07654A)
---@param entity1 number 
---@param entity2 number 
---@param thisFrameOnly boolean 
function SetEntityNoCollisionEntity(entity1, entity2, thisFrameOnly) end

---```
---Enable / disable each type of damage.  
-----------------  
---p7 is to to '1' in am_mp_property_ext/int: entity::set_entity_proofs(uParam0->f_19, true, true, true, true, true, true, 1, true);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFAEE099C6F890BB8)
---@param entity number 
---@param bulletProof boolean 
---@param fireProof boolean 
---@param explosionProof boolean 
---@param collisionProof boolean 
---@param meleeProof boolean 
---@param steamProof boolean 
---@param p7 boolean 
---@param drownProof boolean 
function SetEntityProofs(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7022BD828FA0B082)
---@param entity number 
---@param p1 boolean 
---@param relationshipHash number | string 
function SetEntityOnlyDamagedByRelationshipGroup(entity, p1, relationshipHash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A50A1EEDAD01E65)
---@param entity number 
---@param toggle boolean 
function SetEntityRecordsCollisions(entity, toggle) end

---```
---w is the correct parameter name!  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x77B21BE7AC540F07)
---@param entity number 
---@param x number 
---@param y number 
---@param z number 
---@param w number 
function SetEntityQuaternion(entity, x, y, z, w) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8524A8B0171D5E07)
---@param entity number 
---@param pitch number 
---@param roll number 
---@param yaw number 
---@param rotationOrder number The order yaw pitch roll are applied, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9).
---@param p5 boolean 
function SetEntityRotation(entity, pitch, roll, yaw, rotationOrder, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x730F5F8D3F0F2050)
---@param entity number 
---@param toggle boolean 
function SetEntityRenderScorched(entity, toggle) end

---```
---Example here: www.gtaforums.com/topic/830463-help-with-turning-lights-green-and-causing-peds-to-crash-into-each-other/#entry1068211340
---0 = green
---1 = red
---2 = yellow
---3 = reset changes
---changing lights may not change the behavior of vehicles
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x57C5DB656185EAC4)
---@param entity number 
---@param state number 
function SetEntityTrafficlightOverride(entity, state) end

---```
---Note that the third parameter(denoted as z) is "up and down" with positive numbers encouraging upwards movement.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C99BB7B6E96D16F)
---@param entity number 
---@param x number 
---@param y number 
---@param z number 
function SetEntityVelocity(entity, x, y, z) end

---Toggle the visibility of a given entity.
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA1C610A04DB6BBB)
---Example: 
---```SetEntityVisible(PlayerPedId(), false, 0)```
---@param entity number The entity to change the visibility of
---@param toggle boolean Whether or not the entity will be visible
---@param unk boolean Always 0 in scripts
function SetEntityVisible(entity, toggle, unk) end

---```
---This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3AE22DEB5BA5A3E6)
---@param object table 
function SetObjectAsNoLongerNeeded(object) end

---```
---This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2595DD4236549CE3)
---@param ped number 
function SetPedAsNoLongerNeeded(ped) end

---```
---This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x629BFA74418D6239)
---@param vehicle number 
function SetVehicleAsNoLongerNeeded(vehicle) end

---```
---RAGEPluginHook list: docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x28004F88151E03E0)
---@param entity number 
---@param animation string 
---@param animGroup string 
---@param p3 number 
---@return any retval 
function StopEntityAnim(entity, animation, animGroup, p3) end

---```
---p1 sync task id?  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x43D3807C077261E3)
---@param entity number 
---@param p1 number 
---@param p2 boolean 
---@return boolean retval 
function StopSynchronizedEntityAnim(entity, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEE5D2A122E09EC42)
---@param entityModelHash number | string 
---@param x number 
---@param y number 
---@param z number 
---@param p4 boolean 
---@return boolean retval 
function WouldEntityBeOccluded(entityModelHash, x, y, z, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x11E79CAB7183B6F5)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 any 
---@param p5 number 
---@return boolean retval 
function StopSynchronizedMapEntityAnim(p0, p1, p2, p3, p4, p5) end

