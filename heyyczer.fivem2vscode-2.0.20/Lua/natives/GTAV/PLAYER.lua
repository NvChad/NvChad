---@meta

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A6EB355EE14A2DB)
---@param player number 
---@return boolean retval 
function ArePlayerStarsGreyedOut(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAFAF86043E5874E9)
---@param player number 
---@return boolean retval 
function ArePlayerFlashingStarsAboutToDrop(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAEBF081FFC0A0E5E)
function AssistedMovementCloseRoute() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x048189FAC643DEEE)
---@param player number 
---@param ped number 
---@param b2 boolean 
---@param resetDamage boolean 
function ChangePlayerPed(player, ped, b2, resetDamage) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0B67A4DE6AB5F98)
---@param player number 
function ClearPlayerHasDamagedAtLeastOnePed(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8753997EB5F6EE3F)
---@param player number 
function ClearPlayerParachuteModelOverride(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8621390F0CDCFE1F)
function AssistedMovementFlushRoute() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x10C54E4389C12B42)
---@param player number 
function ClearPlayerParachutePackModelOverride(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF297383AA91DCA29)
---@param player number 
---@param ped number 
---@return boolean retval 
function CanPedHearPlayer(player, ped) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x290D248E25815AE8)
---@param player number 
function ClearPlayerReserveParachuteModelOverride(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDE7465A27D403C06)
---@param player number 
---@return boolean retval 
function CanPlayerStartMission(player) end

---```
---Inhibits the player from using any method of combat including melee and firearms.  
---NOTE: Only disables the firing for one frame  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E6CC07646BBEAB8)
---@param player number 
---@param toggle boolean 
function DisablePlayerFiring(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4AACB96203D11A31)
---@param player number 
function ClearPlayerHasDamagedAtLeastOneNonAnimalPed(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0F4CC924CF8C7B21)
---@param player number 
function ClearPlayerParachuteVariationOverride(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC142BE3BB9CE125F)
---@param player number 
function DisablePlayerVehicleRewards(player) end

---```
---NativeDB Added Parameter 3: Any p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x181EC197DAEFE121)
---@param player number 
---@param toggle boolean 
function EnableSpecialAbility(player, toggle) end

---```
---This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);  
---PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB302540597885499)
---@param player number 
function ClearPlayerWantedLevel(player) end

---```
---Purpose of the BOOL currently unknown.  
---Both, true and false, work  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x94DD7888C10A979E)
---@param unk boolean 
function DisplaySystemSigninUi(unk) end

---```
---PLAYER::FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME("pb_prostitute", 1); // Found in decompilation  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C68DDDDF0097317)
---@param name string 
---@param cleanupFlags number 
function ForceCleanupForAllThreadsWithThisName(name, cleanupFlags) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF745B37630DF176B)
---@param id number 
---@param cleanupFlags number 
function ForceCleanupForThreadWithThisId(id, cleanupFlags) end

---```
---Appears only 3 times in the scripts, more specifically in michael1.ysc
----
---This can be used to prevent dying if you are "out of the world"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5006D96C995A5827)
---@param x number 
---@param y number 
---@param z number 
function ExtendWorldBoundaryForPlayer(x, y, z) end

---```
---Appears only 3 times in the scripts, more specifically in michael1.ysc
----
---This can be used to prevent dying if you are "out of the world"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5006D96C995A5827)
---@param x number 
---@param y number 
---@param z number 
function N_0x5006D96C995A5827(x, y, z) end

---```
---Appears only 3 times in the scripts, more specifically in michael1.ysc
----
---This can be used to prevent dying if you are "out of the world"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5006D96C995A5827)
---@param x number 
---@param y number 
---@param z number 
function ExpandWorldLimits(x, y, z) end

---```
---used with 1,2,8,64,128 in the scripts  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC8983F38F78ED51)
---@param cleanupFlags number 
function ForceCleanup(cleanupFlags) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A41CF4674A12272)
---@return number retval 
function GetCauseOfMostRecentForceCleanup() end

---```
---For Steam.
---Always returns 0 in retail version of the game.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C186837D0619335)
---@param achievement number 
---@return number retval Returns the progression of an achievement; 0 if the achievement cannot be progressed.
function GetAchievementProgress(achievement) end

---```
---For Steam.
---Always returns 0 in retail version of the game.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C186837D0619335)
---@param achievement number 
---@return number retval Returns the progression of an achievement; 0 if the achievement cannot be progressed.
function N_0x1C186837D0619335(achievement) end

---```
---For Steam.
---Always returns 0 in retail version of the game.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C186837D0619335)
---@param achievement number 
---@return number retval Returns the progression of an achievement; 0 if the achievement cannot be progressed.
function GetAchievementProgression(achievement) end

---```
---Returns TRUE if it found an entity in your crosshair within range of your weapon. Assigns the handle of the target to the *entity that you pass it.  
---Returns false if no entity found.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2975C866E6713290)
---@param player number 
---@param entity number 
---@return boolean retval 
function GetEntityPlayerIsFreeAimingAt(player, entity) end

---```
---Gets the maximum wanted level the player can get.  
---Ranges from 0 to 5.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x462E0DB9B137DC5F)
---@return number retval 
function GetMaxWantedLevel() end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1FC200409F10E6F1)
---@param team number 
---@return number retval 
function GetNumberOfPlayersInTeam(team) end

---```
---Gets the number of players in the current session.
---If not multiplayer, always returns 1.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x407C7F91DDB46C16)
---@return number retval 
function GetNumberOfPlayers() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2F395D61F3A1F877)
---@param player number 
---@return number retval 
function GetPlayerCurrentStealthNoise(player) end

---```
---Returns the group ID the player is member of.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0D127585F77030AF)
---@param player number 
---@return number retval 
function GetPlayerGroup(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BC515BAE4AAF8FF)
---@param player number 
---@return number retval 
function GetPlayerHealthRechargeLimit(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BC515BAE4AAF8FF)
---@param player number 
---@return number retval 
function N_0x8BC515BAE4AAF8FF(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x56105E599CAB0EFA)
---@param player number 
---@return number retval 
function GetPlayerFakeWantedLevel(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x56105E599CAB0EFA)
---@param player number 
---@return number retval 
function N_0x56105E599CAB0EFA(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5DDFE2FF727F3CA3)
---@param player number 
---@return boolean retval 
function GetPlayerHasReserveParachute(player) end

---```
---Returns the same as PLAYER_ID and NETWORK_PLAYER_ID_TO_INT  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA5EDC40EF369B48D)
---@return number retval 
function GetPlayerIndex() end

---```
---Returns the Player's Invincible status.  
---This function will always return false if 0x733A643B5B0C53C1 is used to set the invincibility status. To always get the correct result, use this:  
---	bool IsPlayerInvincible(Player player)  
---	{  
---auto addr = getScriptHandleBaseAddress(GET_PLAYER_PED(player));	  
---if (addr)  
---{  
---	DWORD flag = *(DWORD *)(addr + 0x188);  
---	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);  
---}  
---return false;  
---	}  
---============================================================  
---This has bothered me for too long, whoever may come across this, where did anyone ever come up with this made up hash? 0x733A643B5B0C53C1 I've looked all over old hash list, and this nativedb I can not find that PC hash anywhere. What native name is it now or was it?  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB721981B2B939E07)
---@param player number 
---@return boolean retval 
function GetPlayerInvincible(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x92659B4CE1863CB3)
---@param player number 
---@return number retval 
function GetPlayerMaxArmour(player) end

---Returns the players name from a specified player index
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D0DE6A7B5DA71F8)
---@param player number The player index, or -1 to get the local player ped.
---@return string retval The name of the queried player. "**Invalid**" if the player does not exist.
function GetPlayerName(player) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC219887CA3E65C41)
---@param player number 
---@return number | string retval 
function GetPlayerParachuteModelOverride(player) end

---```
---Tints:  
---None = -1,  
---Rainbow = 0,  
---Red = 1,  
---SeasideStripes = 2,  
---WidowMaker = 3,  
---Patriot = 4,  
---Blue = 5,  
---Black = 6,  
---Hornet = 7,  
---AirFocce = 8,  
---Desert = 9,  
---Shadow = 10,  
---HighAltitude = 11,  
---Airbone = 12,  
---Sunrise = 13,  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x75D3F7A1B0D9B145)
---@param player number 
---@param tintIndex number 
function GetPlayerParachuteTintIndex(player, tintIndex) end

---Gets the ped for a specified player index.
---[Native Documentation](https://docs.fivem.net/natives/?_0x43A66C31C68491C0)
---Example: 
---```local playerIdx = GetPlayerFromServerId(source)
---local ped = GetPlayerPed(playerIdx)
---
----- act on the ped```
---@param playerId number The player index, or -1 to get the local player ped.
---@return number retval The specified player's ped, or 0 if invalid.
function GetPlayerPed(playerId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E9C742F340CE5A2)
---@param player number 
---@param tintIndex number 
function GetPlayerParachutePackTintIndex(player, tintIndex) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x37FAAA68DCA9D08D)
---@param player number 
---@return number | string retval 
function GetPlayerReserveParachuteModelOverride(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF56DBABD3CD4887)
---@param player number 
---@param r number 
---@param g number 
---@param b number 
function GetPlayerParachuteSmokeTrailColor(player, r, g, b) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1885BC9B108B4C99)
---@param player number 
---@return number retval 
function GetPlayerSprintTimeRemaining(player) end

---```
---Does the same like PLAYER::GET_PLAYER_PED
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x50FAC3A3E030A6E1)
---@param player number 
---@return number retval 
function GetPlayerPedScriptIndex(player) end

---```
---Tints:  
---None = -1,  
---Rainbow = 0,  
---Red = 1,  
---SeasideStripes = 2,  
---WidowMaker = 3,  
---Patriot = 4,  
---Blue = 5,  
---Black = 6,  
---Hornet = 7,  
---AirFocce = 8,  
---Desert = 9,  
---Shadow = 10,  
---HighAltitude = 11,  
---Airbone = 12,  
---Sunrise = 13,  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD5A016BC3C09CF40)
---@param player number 
---@param index number 
function GetPlayerReserveParachuteTintIndex(player, index) end

---```
---Assigns the handle of locked-on melee target to *entity that you pass it.  
---Returns false if no entity found.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x13EDE1A5DBF797C9)
---@param player number 
---@param entity number 
---@return boolean retval 
function GetPlayerTargetEntity(player, entity) end

---```
---Gets the player's team.  
---Does nothing in singleplayer.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x37039302F4E0A008)
---@param player number 
---@return number retval 
function GetPlayerTeam(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE902EF951DCE178F)
---@param player number 
---@param r number 
---@param g number 
---@param b number 
function GetPlayerRgbColour(player, r, g, b) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1FCF8E6AF40B731)
---@param player number 
---@return number retval 
function GetPlayerUnderwaterTimeRemaining(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3F9F16F8E65A7ED7)
---@param player number 
---@return number retval 
function GetPlayerSprintStaminaRemaining(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C92BA89F1AF26F8)
---@param player number 
---@return vector3 retval 
function GetPlayerWantedCentrePosition(player) end

---```
---Alternative: GET_VEHICLE_PED_IS_IN(PLAYER_PED_ID(), 1);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB6997A7EB3F5C8C0)
---@return number retval 
function GetPlayersLastVehicle() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDB89591E290D9182)
---@param player number 
---@return number retval 
function GetTimeSincePlayerDroveAgainstTraffic(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE28E54788CE8F12D)
---@param player number 
---@return number retval 
function GetPlayerWantedLevel(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD559D2BE9E37853B)
---@param player number 
---@return number retval 
function GetTimeSincePlayerDroveOnPavement(player) end

---```
---Returns the time since the character was arrested in (ms) milliseconds.  
---example  
---var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_ARREST();  
---UI.DrawSubtitle(time.ToString());  
---if player has not been arrested, the int returned will be -1.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5063F92F07C2A316)
---@return number retval 
function GetTimeSinceLastArrest() end

---```
---Returns the time since the character died in (ms) milliseconds.  
---example  
---var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_DEATH();  
---UI.DrawSubtitle(time.ToString());  
---if player has not died, the int returned will be -1.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7034807558DDFCA)
---@return number retval 
function GetTimeSinceLastDeath() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE36A25322DC35F42)
---@param player number 
---@return number retval 
function GetTimeSincePlayerHitPed(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5D35ECF3A81A0EE0)
---@param player number 
---@return number retval 
function GetTimeSincePlayerHitVehicle(player) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA72200F51875FEA4)
---@return number retval 
function GetWantedLevelParoleDuration() end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA72200F51875FEA4)
---@return number retval 
function N_0xA72200F51875FEA4() end

---```
---Remnant from GTA IV. Does nothing in GTA V.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x085DEB493BE80812)
---@param player number 
---@return number retval 
function GetWantedLevelRadius(player) end

---```
---Drft  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFDD179EAF45B556C)
---@param wantedLevel number 
---@return number retval 
function GetWantedLevelThreshold(wantedLevel) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3C49C870E66F0A28)
---@param player number 
---@param toggle boolean 
function GivePlayerRagdollControl(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x867365E111A3B6EB)
---@param achievement number 
---@return boolean retval 
function HasAchievementBeenPassed(achievement) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD705740BB0A1CF4C)
---@param player number 
---@return boolean retval 
function HasPlayerBeenSpottedInStolenVehicle(player) end

---```
---Achievements from 0-57
---more achievements came with update 1.29 (freemode events update), I'd say that they now go to 60, but I'll need to check.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBEC7076D64130195)
---@param achievement number 
---@return boolean retval 
function GiveAchievementToPlayer(achievement) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x20CE80B0C2BF4ACC)
---@param player number 
---@return boolean retval 
function HasPlayerDamagedAtLeastOnePed(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC968670BFACE42D9)
---@param cleanupFlags number 
---@return boolean retval 
function HasForceCleanupOccurred(cleanupFlags) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC0753C9CA14B506)
---@param player number 
---@param ms number Time since last bullet fired
---@param p2 boolean Always false
---@return boolean retval 
function HasPlayerBeenShotByCop(player, ms, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC0753C9CA14B506)
---@param player number 
---@param ms number Time since last bullet fired
---@param p2 boolean Always false
---@return boolean retval 
function N_0xBC0753C9CA14B506(player, ms, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD55DDFB47991A294)
---@param player number 
---@return boolean retval 
function HasPlayerLeftTheWorld(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE4B90F367BD81752)
---@param player number 
---@return boolean retval 
function HasPlayerDamagedAtLeastOneNonAnimalPed(player) end

---```
---Returns true if an unk value is greater than 0.0f  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x38D28DA81E4E9BF9)
---@param player number 
---@return boolean retval 
function IsPlayerBattleAware(player) end

---```
---Returns true if an unk value is greater than 0.0f  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x38D28DA81E4E9BF9)
---@param player number 
---@return boolean retval 
function N_0x38D28DA81E4E9BF9(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x65FAEE425DE637B0)
---@param player number 
---@return boolean retval 
function IsPlayerBluetoothEnable(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x65FAEE425DE637B0)
---@param player number 
---@return boolean retval 
function N_0x65FAEE425DE637B0(player) end

---```
---Returns true when the player is not able to control the cam i.e. when running a benchmark test, switching the player or viewing a cutscene.  
---Note: I am not 100% sure if the native actually checks if the cam control is disabled but it seems promising.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7C814D2FB49F40C0)
---@return boolean retval 
function IsPlayerCamControlDisabled() end

---```
---Returns true when the player is not able to control the cam i.e. when running a benchmark test, switching the player or viewing a cutscene.  
---Note: I am not 100% sure if the native actually checks if the cam control is disabled but it seems promising.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7C814D2FB49F40C0)
---@return boolean retval 
function N_0x7C814D2FB49F40C0() end

---```
---Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
-----------------------------------------------------------  
---if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::INT_TO_PARTICIPANTINDEX(i)))  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9EC6603812C24710)
---@param value number 
---@return number retval 
function IntToParticipantindex(value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x424D4687FA1E5652)
---@param player number 
---@return boolean retval 
function IsPlayerDead(player) end

---```
---Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x41BD2A6B006AF756)
---@param value number 
---@return number retval 
function IntToPlayerindex(value) end

---```
---Gets a value indicating whether the specified player is currently aiming freely at the specified entity.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3C06B5C839B38F7B)
---@param player number 
---@param entity number 
---@return boolean retval 
function IsPlayerFreeAimingAtEntity(player, entity) end

---```
---Return true while player is being arrested / busted.  
---If atArresting is set to 1, this function will return 1 when player is being arrested (while player is putting his hand up, but still have control)  
---If atArresting is set to 0, this function will return 1 only when the busted screen is shown.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x388A47C51ABDAC8E)
---@param player number 
---@param atArresting boolean 
---@return boolean retval 
function IsPlayerBeingArrested(player, atArresting) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDCCFD3F106C36AB4)
---@param player number 
---@return boolean retval 
function IsPlayerFreeForAmbientTask(player) end

---```
---Returns TRUE if the player ('s ped) is climbing at the moment.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x95E8F73DC65EFB9C)
---@param player number 
---@return boolean retval 
function IsPlayerClimbing(player) end

---```
---this function is hard-coded to always return 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x74556E1420867ECA)
---@return boolean retval 
function IsPlayerLoggingInNp() end

---```
---Can the player control himself, used to disable controls for player for things like a cutscene.  
------  
---You can't disable controls with this, use SET_PLAYER_CONTROL(...) for this.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x49C32D60007AFA47)
---@param player number 
---@return boolean retval 
function IsPlayerControlOn(player) end

---```
---Gets a value indicating whether the specified player is currently aiming freely.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2E397FD2ECD37C87)
---@param player number 
---@return boolean retval 
function IsPlayerFreeAiming(player) end

---```
---Returns TRUE if the game is in online mode and FALSE if in offline mode.  
---This is an alias for NETWORK_IS_SIGNED_ONLINE.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF25D331DC2627BBC)
---@return boolean retval 
function IsPlayerOnline() end

---```
---Checks whether the specified player has a Ped, the Ped is not dead, is not injured and is not arrested.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E9564D8246B909A)
---@param player number 
---@return boolean retval 
function IsPlayerPlaying(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFA1E2BF8B10598F9)
---@param player number 
---@return boolean retval 
function IsPlayerPressingHorn(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8A876A65283DD7D7)
---@param player number 
---@return boolean retval 
function IsPlayerScriptControlOn(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x908CBECC2CAA3690)
---@param player number 
---@return boolean retval 
function IsPlayerReadyForCutscene(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7912F7FC4F6264B6)
---@param player number 
---@param entity number 
---@return boolean retval 
function IsPlayerTargettingEntity(player, entity) end

---```
---Returns true if the player is riding a train.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4EC12697209F2196)
---@param player number 
---@return boolean retval 
function IsPlayerRidingTrain(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x78CFE51896B6B8A4)
---@param player number 
---@return boolean retval 
function IsPlayerTargettingAnything(player) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3E5F7FC85D854E15)
---@param player number 
---@return boolean retval 
function IsSpecialAbilityActive(player) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x05A1FE504B7F2587)
---@param player number 
---@return boolean retval 
function IsSpecialAbilityMeterFull(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5D511E3867C87139)
---@return boolean retval 
function IsSystemUiBeingDisplayed() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x02B15662D7F8886F)
---@return boolean retval 
function IsPlayerTeleportActive() end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x237440E46D918649)
---@param p0 any 
function N_0x237440E46D918649(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2F41A3BAE005E5FA)
---@param p0 any 
---@param p1 any 
function N_0x2F41A3BAE005E5FA(p0, p1) end

---```
---Used with radios:
---void sub_cf383(auto _a0) {
---    if ((a_0)==1) {
---        if (MISC::IS_BIT_SET((g_240005._f1), 3)) {
---            PLAYER::_2F7CEB6520288061(0);
---            AUDIO::SET_AUDIO_FLAG("AllowRadioDuringSwitch", 0);
---            AUDIO::SET_MOBILE_PHONE_RADIO_STATE(0);
---            AUDIO::SET_AUDIO_FLAG("MobileRadioInGame", 0);
---        }
---        sub_cf3f6(1);
---    } else {
---        if (MISC::IS_BIT_SET((g_240005._f1), 3)) {
---            PLAYER::_2F7CEB6520288061(1);
---            AUDIO::SET_AUDIO_FLAG("AllowRadioDuringSwitch", 1);
---            AUDIO::SET_MOBILE_PHONE_RADIO_STATE(1);
---            AUDIO::SET_AUDIO_FLAG("MobileRadioInGame", 1);
---        }
---        sub_cf3f6(0);
---    }
---}
---SET_PLAYER_S*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2F7CEB6520288061)
---@param p0 boolean 
function N_0x2F7CEB6520288061(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x238DB2A2C23EE9EF)
---@param player number 
---@param wantedLevel number 
---@return boolean retval 
function IsPlayerWantedLevelGreater(player, wantedLevel) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB1D200FE26AEF3CB)
---@param player number 
---@return boolean retval 
function IsSpecialAbilityEnabled(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6017F6A6CDFA694)
---@param playerModel number | string 
---@return boolean retval 
function IsSpecialAbilityUnlocked(playerModel) end

---```
---2 matches in 1 script - am_hold_up
---Used in multiplayer scripts?
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0032A6DBA562C518)
function N_0x0032A6DBA562C518() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2382AB11450AE7BA)
---@param p0 any 
---@param p1 any 
function N_0x2382AB11450AE7BA(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x36F1B38855F2A8DF)
---@param player number 
function N_0x36F1B38855F2A8DF(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x31E90B8873A4CD3B)
---@param player number 
---@param p1 number 
function N_0x31E90B8873A4CD3B(player, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x55FCC0C390620314)
---@param player1 number 
---@param player2 number 
---@param toggle boolean 
function N_0x55FCC0C390620314(player1, player2, toggle) end

---```
---This has been found in use in the decompiled files.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4669B3ED80F24B4E)
---@param player number 
function N_0x4669B3ED80F24B4E(player) end

---```
---IS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x690A61A6D13583F6)
---@param player number 
---@return boolean retval 
function N_0x690A61A6D13583F6(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E4361FF3E8CD7CA)
---@param p0 any 
---@return any retval 
function N_0x6E4361FF3E8CD7CA(p0) end

---```
---Name between DISABLE_ALL_CONTROL_ACTIONS and DISABLE_CONTROL_ACTION
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5501B7A5CDB79D37)
---@param player number 
function N_0x5501B7A5CDB79D37(player) end

---```
---Appears once in "re_dealgonewrong"  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5FC472C501CCADB3)
---@param player number 
---@return boolean retval 
function N_0x5FC472C501CCADB3(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7E07C78925D5FD96)
---@param p0 any 
---@return any retval 
function N_0x7E07C78925D5FD96(p0) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x70A382ADEC069DD3)
---@param coordX number 
---@param coordY number 
---@param coordZ number 
function N_0x70A382ADEC069DD3(coordX, coordY, coordZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9EDD76E87D5D51BA)
---@param player number 
function N_0x9EDD76E87D5D51BA(player) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7148E0F43D11F0D9)
function N_0x7148E0F43D11F0D9() end

---REMOVE_\*
---
---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F260BFB59ADBCA3)
---@param player number 
---@param entity number 
function N_0x9F260BFB59ADBCA3(player, entity) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7BAE68775557AE0B)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
function N_0x7BAE68775557AE0B(p0, p1, p2, p3, p4, p5) end

---```
---This has been found in use in the decompiled files.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAD73CE5A09E42D12)
---@param player number 
function N_0xAD73CE5A09E42D12(player) end

---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x823EC8E82BA45986)
---@param p0 any 
function N_0x823EC8E82BA45986(p0) end

---```
---PLAYER::0xBF6993C7(rPtr((&l_122) + 71)); // Found in decompilation
---***
---In "am_hold_up.ysc" used once:
---l_8d._f47 = MISC::GET_RANDOM_FLOAT_IN_RANGE(18.0, 28.0);
---PLAYER::_B45EFF719D8427A6((l_8d._f47));
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB45EFF719D8427A6)
---@param p0 number 
function N_0xB45EFF719D8427A6(p0) end

---```
---Disables something. Used only once in R* scripts (freemode.ysc).
---DISABLE_PLAYER_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB885852C39CC265D)
function N_0xB885852C39CC265D() end

---```
---SET_PLAYER_MAX_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D768602ADEF2245)
---@param player number 
---@param p1 number 
function N_0x8D768602ADEF2245(player, p1) end

---```
---Seems to only appear in scripts used in Singleplayer.  
---Always used like this in scripts  
---PLAYER::_BC9490CA15AEA8FB(PLAYER::PLAYER_ID());  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBC9490CA15AEA8FB)
---@param player number 
function N_0xBC9490CA15AEA8FB(player) end

---ADD_\*
---
---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9097EB6D4BB9A12A)
---@param player number 
---@param entity number 
function N_0x9097EB6D4BB9A12A(player, entity) end

---```
---Found in "director_mode", "fm_bj_race_controler", "fm_deathmatch_controler", "fm_impromptu_dm_controler", "fm_race_controler", "gb_deathmatch".  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCAC57395B151135F)
---@param player number 
---@param p1 boolean 
function N_0xCAC57395B151135F(player, p1) end

---Always returns false.
---
---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDCC07526B8EC45AF)
---@param player number 
---@return boolean retval 
function N_0xDCC07526B8EC45AF(player) end

---```
---2 occurrences in agency_heist3a. p1 was 0.7f then 0.4f.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDD2620B7B9D16FF1)
---@param player number 
---@param p1 number 
---@return boolean retval 
function N_0xDD2620B7B9D16FF1(player, p1) end

---```
---Returns profile setting 237.
---GET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9CF1F793A9F1BF1)
---@return boolean retval 
function N_0xB9CF1F793A9F1BF1() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDE45D1A1EF45EE61)
---@param player number 
---@param toggle boolean 
function N_0xDE45D1A1EF45EE61(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDE45D1A1EF45EE61)
---@param player number 
---@param toggle boolean 
function SetHudAnimStopLevel(player, toggle) end

---```
---- This is called after SET_ALL_RANDOM_PEDS_FLEE_THIS_FRAME
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3376F42B1FACCC6)
---@param player number 
function N_0xC3376F42B1FACCC6(player) end

---```
---- This is called after SET_ALL_RANDOM_PEDS_FLEE_THIS_FRAME
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3376F42B1FACCC6)
---@param player number 
function SetAreasGeneratorOrientation(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFAC75988A7D078D3)
---@param player number 
function N_0xFAC75988A7D078D3(player) end

---```
---Returns profile setting 243.
---GET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCB645E85E97EA48B)
---@return boolean retval 
function N_0xCB645E85E97EA48B() end

---```
---Does exactly the same thing as PLAYER_ID()  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEE68096F9F37341E)
---@return number retval 
function NetworkPlayerIdToInt() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD821056B9ACF8052)
---@param player number 
---@param p1 any 
function N_0xD821056B9ACF8052(player, p1) end

---```
---1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DD5897E2FA6E7C9)
function PlayerDetachVirtualBound() end

---Returns the entity handle for the local player ped. Note that this entity handle will change after using commands such as SET_PLAYER_MODEL.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD80958FC74E988A6)
---@return number retval The local player ped's entity handle.
function PlayerPedId() end

---```
---Only 1 occurrence. p1 was 2.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF10B44FD479D69F3)
---@param player number 
---@param p1 number 
---@return boolean retval 
function N_0xF10B44FD479D69F3(player, p1) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFFEE8FA29AB9A18E)
---@param player number 
function N_0xFFEE8FA29AB9A18E(player) end

---```
---Only 1 match. ob_sofa_michael.  
---PLAYER::PLAYER_ATTACH_VIRTUAL_BOUND(-804.5928f, 173.1801f, 71.68436f, 0f, 0f, 0.590625f, 1f, 0.7f);1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xED51733DC73AED51)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@param p7 number 
function PlayerAttachVirtualBound(p0, p1, p2, p3, p4, p5, p6, p7) end

---Returns the player index for the local player.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4F8644AF03D0E0D6)
---@return number retval The local player's player index.
function PlayerId() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF3AC26D3CC576528)
---@param player number 
---@param p2 boolean 
function RemovePlayerHelmet(player, p2) end

---```
---PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(), 37, PLAYER::GET_WANTED_LEVEL_THRESHOLD(1));  
---From am_armybase.ysc.c4:  
---PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(4), 36, PLAYER::GET_WANTED_LEVEL_THRESHOLD(4));  
--------  
---This was taken from the GTAV.exe v1.334. The function is called sub_140592CE8. For a full decompilation of the function, see here: pastebin.com/09qSMsN7   
--------  
---crimeType:  
---1: Firearms possession  
---2: Person running a red light ("5-0-5")  
---3: Reckless driver  
---4: Speeding vehicle (a "5-10")  
---5: Traffic violation (a "5-0-5")  
---6: Motorcycle rider without a helmet  
---7: Vehicle theft (a "5-0-3")  
---8: Grand Theft Auto  
---9: ???  
---10: ???  
---11: Assault on a civilian (a "2-40")  
---12: Assault on an officer  
---13: Assault with a deadly weapon (a "2-45")  
---14: Officer shot (a "2-45")  
---15: Pedestrian struck by a vehicle  
---16: Officer struck by a vehicle  
---17: Helicopter down (an "AC"?)  
---18: Civilian on fire (a "2-40")  
---19: Officer set on fire (a "10-99")  
---20: Car on fire  
---21: Air unit down (an "AC"?)  
---22: An explosion (a "9-96")  
---23: A stabbing (a "2-45") (also something else I couldn't understand)  
---24: Officer stabbed (also something else I couldn't understand)  
---25: Attack on a vehicle ("MDV"?)  
---26: Damage to property  
---27: Suspect threatening officer with a firearm  
---28: Shots fired  
---29: ???  
---30: ???  
---31: ???  
---32: ???  
---33: ???  
---34: A "2-45"  
---35: ???  
---36: A "9-25"  
---37: ???  
---38: ???  
---39: ???  
---40: ???  
---41: ???  
---42: ???  
---43: Possible disturbance  
---44: Civilian in need of assistance  
---45: ???  
---46: ???  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE9B09589827545E7)
---@param player number 
---@param crimeType number 
---@param wantedLvlThresh number 
function ReportCrime(player, crimeType, wantedLvlThresh) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC64D2C53493ED12)
---@param player number 
function ReportPoliceSpottedPlayer(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC64D2C53493ED12)
---@param player number 
function N_0xDC64D2C53493ED12(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x19531C47A2ABD691)
---@param player number 
function ResetPlayerInputGait(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2D03E13C460760D6)
---@param player number 
function ResetPlayerArrestState(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6F312FCCE9C1DFE)
---@param player number 
function ResetPlayerStamina(player) end

---```
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA1DF03D5A315F4E)
function ResetWorldBoundaryForPlayer() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9D0DD990DC141DD)
---@param player number 
function ResetWantedLevelDifficulty(player) end

---For Steam.
---Does nothing and always returns false in the retail version of the game.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC2AFFFDABBDC2C5C)
---@param achievement number 
---@param progress number 
---@return boolean retval 
function SetAchievementProgress(achievement, progress) end

---For Steam.
---Does nothing and always returns false in the retail version of the game.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC2AFFFDABBDC2C5C)
---@param achievement number 
---@param progress number 
---@return boolean retval 
function N_0xC2AFFFDABBDC2C5C(achievement, progress) end

---For Steam.
---Does nothing and always returns false in the retail version of the game.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC2AFFFDABBDC2C5C)
---@param achievement number 
---@param progress number 
---@return boolean retval 
function SetAchievementProgression(achievement, progress) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x056E0FE8534C2949)
---@param player number 
---@param toggle boolean 
function SetAllRandomPedsFlee(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F343285A00B4BB6)
---@param player number 
---@param toggle boolean 
function SetAutoGiveParachuteWhenEnterPlane(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA352C1B864CAFD33)
---@param player number 
---@param p1 number 
function RestorePlayerStamina(player, p1) end

---```
---This can be between 1.0f - 14.9f   
---You can change the max in IDA from 15.0. I say 15.0 as the function blrs if what you input is greater than or equal to 15.0 hence why it's 14.9 max default.  
---On PC the multiplier can be between 0.0f and 50.0f (inclusive).  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA7DC8329F0A1E9E)
---@param player number 
---@param multiplier number 
function SetAirDragMultiplierForPlayersVehicle(player, multiplier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDB172424876553F4)
---@param player number 
---@param toggle boolean 
function SetDispatchCopsForPlayer(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x471D2FF42A94B4F2)
---@param player number 
function SetAllRandomPedsFleeThisFrame(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8EEDA153AD141BA4)
---@param player number 
---@param toggle boolean 
function SetEveryoneIgnorePlayer(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD2B315B6689D537D)
---@param player number 
---@param toggle boolean 
function SetAutoGiveScubaGearWhenExitVehicle(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD2B315B6689D537D)
---@param player number 
---@param toggle boolean 
function N_0xD2B315B6689D537D(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x596976B02B6B5700)
---@param player number 
---@param toggle boolean 
function SetIgnoreLowPriorityShockingEvents(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2E8AABFA40A84F8C)
---@param player number 
---@param toggle boolean 
function SetDisableAmbientMeleeMove(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA5F02DB48D704B9)
---@param maxWantedLevel number 
function SetMaxWantedLevel(maxWantedLevel) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5DC40A8869C22141)
---@param player number 
---@param state boolean 
function SetPlayerBluetoothState(player, state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5DC40A8869C22141)
---@param player number 
---@param state boolean 
function N_0x5DC40A8869C22141(player, state) end

---```
---Sets whether this player can be hassled by gangs.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD5E460AD7020A246)
---@param player number 
---@param toggle boolean 
function SetPlayerCanBeHassledByGangs(player, toggle) end

---Sets whether the player is able to do drive-bys in vehicle (shooting & aiming in vehicles), this also includes middle finger taunts.
---
---This is a toggle, it does not have to be ran every frame.
---
---Example:
---
---```lua
---SetPlayerCanDoDriveBy(PlayerId(), false)
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E8834B52EC20C77)
---@param player number The player to target.
---@param toggle boolean If set to false, disables the players ability to do drive bys.
function SetPlayerCanDoDriveBy(player, toggle) end

---```
---Sets whether this player can take cover.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD465A8599DFF6814)
---@param player number 
---@param toggle boolean 
function SetPlayerCanUseCover(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF401B182DBA8AF53)
---@param player number 
---@param enabled boolean 
function SetPlayerCanLeaveParachuteSmokeTrail(player, enabled) end

---```
---6 matches across 4 scripts. 5 occurrences were 240. The other was 255.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x14D913B777DFF5DA)
---@param value number 
function SetPlayerClothLockCounter(value) end

---```
---Every occurrence was either 0 or 2.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F7BBA2EA6372500)
---@param index number 
function SetPlayerClothPackageIndex(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x749FADDF97DFE930)
---@param player number 
---@param p1 number 
function SetPlayerClothPinFrames(player, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0FEE4F80AC44A726)
---@param player number 
---@param toggle boolean 
function SetPlayerForcedAim(player, toggle) end

---```
---Flags:
---SPC_AMBIENT_SCRIPT = (1 << 1),
---SPC_CLEAR_TASKS = (1 << 2),
---SPC_REMOVE_FIRES = (1 << 3),
---SPC_REMOVE_EXPLOSIONS = (1 << 4),
---SPC_REMOVE_PROJECTILES = (1 << 5),
---SPC_DEACTIVATE_GADGETS = (1 << 6),
---SPC_REENABLE_CONTROL_ON_DEATH = (1 << 7),
---SPC_LEAVE_CAMERA_CONTROL_ON = (1 << 8),
---SPC_ALLOW_PLAYER_DAMAGE = (1 << 9),
---SPC_DONT_STOP_OTHER_CARS_AROUND_PLAYER = (1 << 10),
---SPC_PREVENT_EVERYBODY_BACKOFF = (1 << 11),
---SPC_ALLOW_PAD_SHAKE = (1 << 12)
---See: https://alloc8or.re/gta5/doc/enums/eSetPlayerControlFlag.txt
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D32347D6D4C40A2)
---@param player number 
---@param bHasControl boolean 
---@param flags number 
function SetPlayerControl(player, bHasControl, flags) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x75E7D505F2B15902)
---@param player number 
---@param toggle boolean 
function SetPlayerForcedZoom(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFD79FA81DFBA9CB)
---@param player number 
---@param distance number 
function SetPlayerFallDistance(player, distance) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFD79FA81DFBA9CB)
---@param player number 
---@param distance number 
function N_0xEFD79FA81DFBA9CB(player, distance) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC388A0F065F5BC34)
---@param player number The local player ID.
---@param limit number A value between 0.0 and 1.0, 0.5 is default.
function SetPlayerHealthRechargeLimit(player, limit) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC388A0F065F5BC34)
---@param player number The local player ID.
---@param limit number A value between 0.0 and 1.0, 0.5 is default.
function N_0xC388A0F065F5BC34(player, limit) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7651BC64AE59E128)
---@param player number 
---@param toggle boolean 
function SetPlayerForceSkipAimIntro(player, toggle) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEE4EBDD2593BA844)
---@param player number 
---@param p1 boolean 
function SetPlayerHomingRocketDisabled(player, p1) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEE4EBDD2593BA844)
---@param player number 
---@param p1 boolean 
function N_0xEE4EBDD2593BA844(player, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7DDAB28D31FAC363)
---@param player number 
function SetPlayerHasReserveParachute(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6BC97F4F4BB3C04B)
---@param player number 
---@param toggle boolean 
function SetPlayerInvincibleKeepRagdollEnabled(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6BC97F4F4BB3C04B)
---@param player number 
---@param toggle boolean 
function N_0x6BC97F4F4BB3C04B(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5DB660B38DD98A31)
---Example: 
---```-- To disable the health recharge completely:
---SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
---
----- To reset it back to the normal recharge speed:
---SetPlayerHealthRechargeMultiplier(PlayerId(), 1.0)```
---@param player number The local player ID.
---@param regenRate number The recharge multiplier, a value between 0.0 and 1.0.
function SetPlayerHealthRechargeMultiplier(player, regenRate) end

---```
---Simply sets you as invincible (Health will not deplete).  
---Use 0x733A643B5B0C53C1 instead if you want Ragdoll enabled, which is equal to:  
---*(DWORD *)(playerPedAddress + 0x188) |= (1 << 9);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x239528EACDC3E7DE)
---@param player number 
---@param toggle boolean 
function SetPlayerInvincible(player, toggle) end

---```
---Used to toggle the square up aim.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5C8B2F450EE4328E)
---Example: 
---```local plyId = PlayerId()
---SetPlayerLockon(plyId, false)```
---@param player number The player ID to toggle the lock on for.
---@param toggle boolean Set to false to prevent lock on, set to true to allow for lock on.
function SetPlayerLockon(player, toggle) end

---```
---Default is 100. Use player id and not ped id. For instance: PLAYER::SET_PLAYER_MAX_ARMOUR(PLAYER::PLAYER_ID(), 100); // main_persistent.ct4  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x77DFCCF5948B8C71)
---@param player number 
---@param value number 
function SetPlayerMaxArmour(player, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF300C7649724A0B)
---@param player number 
---@param toggle boolean 
function SetPlayerLeavePedBehind(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF300C7649724A0B)
---@param player number 
---@param toggle boolean 
function N_0xFF300C7649724A0B(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8026FF78F208978A)
---@param player number 
---@param vehicle number 
function SetPlayerMayOnlyEnterThisVehicle(player, vehicle) end

---```
---Affects the range of auto aim target.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x29961D490E5814FD)
---@param player number 
---@param range number 
function SetPlayerLockonRangeOverride(player, range) end

---```
---NativeDB Added Parameter 3: BOOL p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4A3DC7ECCC321032)
---@param player number 
---@param modifier number 
function SetPlayerMeleeWeaponDamageModifier(player, modifier) end

---Set the model for a specific Player. Note that this will destroy the current Ped for the Player and create a new one, any reference to the old ped will be invalid after calling this.
---
---As per usual, make sure to request the model first and wait until it has loaded.
---[Native Documentation](https://docs.fivem.net/natives/?_0x00A1CADD00108836)
---Example: 
---```local model = `a_f_m_beach_01`
---if IsModelInCdimage(model) and IsModelValid(model) then
---  RequestModel(model)
---  while not HasModelLoaded(model) do
---    Wait(0)
---  end
---  SetPlayerModel(PlayerId(), model)
---  SetModelAsNoLongerNeeded(model)
---end```
---@param player number The player to set the model for
---@param model number | string The model to use
function SetPlayerModel(player, model) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DE37BBF9E9CC14A)
---@param player number 
function SetPlayerMayNotEnterAnyVehicle(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDB89EF50FF25FCE9)
---@param player number 
---@param multiplier number 
function SetPlayerNoiseMultiplier(player, multiplier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC80A4C2F18A2B64)
---@param player number 
---@param model number | string 
function SetPlayerParachutePackModelOverride(player, model) end

---```
---modifier's min value is 0.1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAE540335B4ABC4E2)
---@param player number 
---@param modifier number 
function SetPlayerMeleeWeaponDefenseModifier(player, modifier) end

---```
---example:  
---PLAYER::SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(PLAYER::PLAYER_ID(), 0x73268708);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x977DB4641F6FC3DB)
---@param player number 
---@param model number | string 
function SetPlayerParachuteModelOverride(player, model) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8217FD371A4625CF)
---@param player number 
---@param r number 
---@param g number 
---@param b number 
function SetPlayerParachuteSmokeTrailColor(player, r, g, b) end

---```
---tints 0- 13
---0 - unkown
---1 - unkown
---2 - unkown
---3 - unkown
---4 - unkown
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x93B0FB27C9A04060)
---@param player number 
---@param tintIndex number 
function SetPlayerParachutePackTintIndex(player, tintIndex) end

---```
---Tints:  
---None = -1,  
---Rainbow = 0,  
---Red = 1,  
---SeasideStripes = 2,  
---WidowMaker = 3,  
---Patriot = 4,  
---Blue = 5,  
---Black = 6,  
---Hornet = 7,  
---AirFocce = 8,  
---Desert = 9,  
---Shadow = 10,  
---HighAltitude = 11,  
---Airbone = 12,  
---Sunrise = 13,  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA3D0E54541D9A5E5)
---@param player number 
---@param tintIndex number 
function SetPlayerParachuteTintIndex(player, tintIndex) end

---```
---p1 was always 5.  
---p4 was always false.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD9284A8C0D48352C)
---@param player number 
---@param p1 number 
---@param p2 any 
---@param p3 any 
---@param p4 boolean 
function SetPlayerParachuteVariationOverride(player, p1, p2, p3, p4) end

---```
---Tints:  
---None = -1,  
---Rainbow = 0,  
---Red = 1,  
---SeasideStripes = 2,  
---WidowMaker = 3,  
---Patriot = 4,  
---Blue = 5,  
---Black = 6,  
---Hornet = 7,  
---AirFocce = 8,  
---Desert = 9,  
---Shadow = 10,  
---HighAltitude = 11,  
---Airbone = 12,  
---Sunrise = 13,  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAF04C87F5DC1DF38)
---@param player number 
---@param index number 
function SetPlayerReserveParachuteTintIndex(player, index) end

---```
---NativeDB Introduced: v2372
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0764486AEDE748DB)
---@param player number 
---@param model number | string 
function SetPlayerReserveParachuteModelOverride(player, model) end

---```
---Values around 1.0f to 2.0f used in game scripts.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB2C1A29588A9F47C)
---@param player number 
---@param multiplier number 
function SetPlayerSneakingNoiseMultiplier(player, multiplier) end

---```
---example:  
---flags: 0-6  
---PLAYER::SET_PLAYER_RESET_FLAG_PREFER_REAR_SEATS(PLAYER::PLAYER_ID(), 6);  
---wouldnt the flag be the seatIndex?  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x11D5F725F0E780E0)
---@param player number 
---@param flags number 
function SetPlayerResetFlagPreferRearSeats(player, flags) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC54C95DA968EC5B5)
---@param player number 
---@param toggle boolean 
function SetPlayerSimulateAiming(player, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4E9021C1FCDD507A)
---@param player number 
---@param value number 
function SetPlayerStealthPerceptionModifier(player, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA01B8075D8B92DF4)
---@param player number 
---@param toggle boolean 
function SetPlayerSprint(player, toggle) end

---```
---Sets your targeting mode.
---0 = Assisted Aim - Full
---1 = Assisted Aim - Partial
---2 = Free Aim - Assisted
---3 = Free Aim
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB1906895227793F3)
---@param targetMode number 
function SetPlayerTargetingMode(targetMode) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5702B917B99DB1CD)
---@param targetLevel number 
function SetPlayerTargetLevel(targetLevel) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5702B917B99DB1CD)
---@param targetLevel number 
function N_0x5702B917B99DB1CD(targetLevel) end

---```
---modifier's min value is 0.1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA50E117CDDF82F0C)
---@param player number 
---@param modifier number 
function SetPlayerVehicleDamageModifier(player, modifier) end

---```
---Call SET_PLAYER_WANTED_LEVEL_NOW for immediate effect  
---wantedLevel is an integer value representing 0 to 5 stars even though the game supports the 6th wanted level but no police will appear since no definitions are present for it in the game files  
---disableNoMission-  Disables When Off Mission- appears to always be false  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x39FF19C64EF7DA5B)
---@param player number 
---@param wantedLevel number 
---@param disableNoMission boolean 
function SetPlayerWantedLevel(player, wantedLevel, disableNoMission) end

---```
---Set player team on deathmatch and last team standing..  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0299FA38396A4940)
---@param player number 
---@param team number 
function SetPlayerTeam(player, team) end

---```
---p2 is always false in R* scripts  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x340E61DE7F471565)
---@param player number 
---@param wantedLevel number 
---@param p2 boolean 
function SetPlayerWantedLevelNoDrop(player, wantedLevel, p2) end

---Seems to lock the underwater timer of the specified player. Set `percentage` to `50.0` will reduce the value of [GET_PLAYER_UNDERWATER_TIME_REMAINING](#\_0xA1FCF8E6AF40B731) to 5.0.
---
---If you want to increase the underwater time for ped, use [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) instead.
---
---Using this native after [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) **WILL NOT** get what you want. For example, if you set the max time underwater to `100.0` seconds using [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) and then call this native and set the `percentage` to 50.0, you will not get `50.0`, instead `2.0`.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0D3E4F7AAFB7E78)
---@param player number Player id.
---@param percentage number Maximum is `100.0`. Any value above `100.0` and less than `0.0` will have no effect on [GET_PLAYER_UNDERWATER_TIME_REMAINING](#\_0xA1FCF8E6AF40B731).
---@return any retval 
function SetPlayerUnderwaterTimeRemaining(player, percentage) end

---Seems to lock the underwater timer of the specified player. Set `percentage` to `50.0` will reduce the value of [GET_PLAYER_UNDERWATER_TIME_REMAINING](#\_0xA1FCF8E6AF40B731) to 5.0.
---
---If you want to increase the underwater time for ped, use [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) instead.
---
---Using this native after [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) **WILL NOT** get what you want. For example, if you set the max time underwater to `100.0` seconds using [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) and then call this native and set the `percentage` to 50.0, you will not get `50.0`, instead `2.0`.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0D3E4F7AAFB7E78)
---@param player number Player id.
---@param percentage number Maximum is `100.0`. Any value above `100.0` and less than `0.0` will have no effect on [GET_PLAYER_UNDERWATER_TIME_REMAINING](#\_0xA1FCF8E6AF40B731).
---@return any retval 
function N_0xA0D3E4F7AAFB7E78(player, percentage) end

---The native ensures the 'modifier' parameter is 0.1 or greater.
---[Native Documentation](https://docs.fivem.net/natives/?_0xCE07B9F7817AADA3)
---@param player number 
---@param modifier number 
function SetPlayerWeaponDamageModifier(player, modifier) end

---```
---modifier's min value is 0.1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C60E6EFDAFF2462)
---@param player number 
---@param modifier number 
function SetPlayerVehicleDefenseModifier(player, modifier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2D83BC011CA14A3C)
---@param player number 
---@param modifier number 
function SetPlayerWeaponDefenseModifier(player, modifier) end

---```
---# Predominant call signatures  
---PLAYER::SET_PLAYER_WANTED_CENTRE_POSITION(PLAYER::PLAYER_ID(), ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1));  
---# Parameter value ranges  
---P0: PLAYER::PLAYER_ID()  
---P1: ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1)  
---P2: Not set by any call  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x520E541A97A13354)
---@param player number 
---@param position vector3 
---@param p2 boolean 
---@param p3 boolean 
function SetPlayerWantedCentrePosition(player, position, p2, p3) end

---```
---If toggle is set to false:
--- The police won't be shown on the (mini)map
---If toggle is set to true:
--- The police will be shown on the (mini)map
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x43286D561B72B8BF)
---@param toggle boolean 
function SetPoliceRadarBlips(toggle) end

---```
---NativeDB Added Parameter 3: Any p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB214D570EAD7F81A)
---@param player number 
---@param p1 number 
function SetSpecialAbility(player, p1) end

---```
---NativeDB Added Parameter 3: Any p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB214D570EAD7F81A)
---@param player number 
---@param p1 number 
function N_0xB214D570EAD7F81A(player, p1) end

---```
---Forces any pending wanted level to be applied to the specified player immediately.  
---Call SET_PLAYER_WANTED_LEVEL with the desired wanted level, followed by SET_PLAYER_WANTED_LEVEL_NOW.  
---Second parameter is unknown (always false).  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE0A7D1E497FFCD6F)
---@param player number 
---@param p1 boolean 
function SetPlayerWantedLevelNow(player, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA49C426ED0CA4AB7)
---@param multiplier number 
function SetSpecialAbilityMultiplier(multiplier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBCFDE9EDE4CF27DC)
---@param player number 
---@param modifier number 
function SetPlayerWeaponDefenseModifier2(player, modifier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBCFDE9EDE4CF27DC)
---@param player number 
---@param modifier number 
function N_0xBCFDE9EDE4CF27DC(player, modifier) end

---```
---Swim speed multiplier.  
---Multiplier goes up to 1.49  
---Just call it one time, it is not required to be called once every tick. - Note copied from below native.  
---Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and RUN_SPRINT below. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA91C6F0FF7D16A13)
---@param player number 
---@param multiplier number 
function SetSwimMultiplierForPlayer(player, multiplier) end

---```
---The player will be ignored by the police if toggle is set to true  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x32C62AA929C2DA6A)
---@param player number 
---@param toggle boolean 
function SetPoliceIgnorePlayer(player, toggle) end

---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x49B856B1360C47C7)
---@param player number 
---@param wantedLevel number 
---@param lossTime number 
function SetWantedLevelHiddenEvasionTime(player, wantedLevel, lossTime) end

---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x49B856B1360C47C7)
---@param player number 
---@param wantedLevel number 
---@param lossTime number 
function N_0x49B856B1360C47C7(player, wantedLevel, lossTime) end

---```
---Multiplier goes up to 1.49 any value above will be completely overruled by the game and the multiplier will not take effect, this can be edited in memory however.  
---Just call it one time, it is not required to be called once every tick.  
---Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and SWIM above. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.  
---It is not possible to "decrease" speed. Anything below 1 will be ignored.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6DB47AA77FD94E09)
---@param player number 
---@param multiplier number 
function SetRunSprintMultiplierForPlayer(player, multiplier) end

---This is to make the player walk without accepting input.
---
---Call this native every frame so you can control the direction of your ped.
---[Native Documentation](https://docs.fivem.net/natives/?_0x477D5D63E63ECA5D)
---@param player number The player to target (always your local player id).
---@param amount number For game pads, using anything less than 1.0 will make it partially press analog controls (like sticks/triggers).
---@param gaitType number Value in increments of 100's. 2000, 500, 300, 200, etc. Set to -1 if you want your ped to walk forever.
---@param rotationSpeed number Determines the counterclockwise rotation angle when walking.
---@param p4 boolean Always true
---@param p5 boolean Always false
function SimulatePlayerInputGait(player, amount, gaitType, rotationSpeed, p4, p5) end

---```
---Max value is 1.0  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B0BB33B04405E7A)
---@param player number 
---@param difficulty number 
function SetWantedLevelDifficulty(player, difficulty) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x020E5F00CDA207BA)
---@param multiplier number 
function SetWantedLevelMultiplier(multiplier) end

---```
---p1 appears as 5, 10, 15, 25, or 30. p2 is always true.
---```
---
---```
---NativeDB Added Parameter 4: Any p3
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7B0870EB531D08D)
---@param player number 
---@param p1 number 
---@param p2 boolean 
function SpecialAbilityChargeAbsolute(player, p1, p2) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x821FDC827D6F4090)
---@param player any 
function SpecialAbilityActivate(player) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x821FDC827D6F4090)
---@param player any 
function N_0x821FDC827D6F4090(player) end

---```
---p1 appears to always be 1 (only comes up twice)
---```
---
---```
---NativeDB Added Parameter 3: Any p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xED481732DFF7E997)
---@param player number 
---@param p2 number 
function SpecialAbilityChargeContinuous(player, p2) end

---```
---2 matches. p1 was always true.
---```
---
---```
---NativeDB Added Parameter 4: Any p3
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF733F45FA4497D93)
---@param player number 
---@param p1 boolean 
---@param p2 boolean 
function SpecialAbilityChargeLarge(player, p1, p2) end

---```
---Only 1 match. Both p1 & p2 were true.
---```
---
---```
---NativeDB Added Parameter 4: Any p3
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF113E3AA9BC54613)
---@param player number 
---@param p1 boolean 
---@param p2 boolean 
function SpecialAbilityChargeMedium(player, p1, p2) end

---```
---normalizedValue is from 0.0 - 1.0
---p2 is always 1
---```
---
---```
---NativeDB Added Parameter 4: Any p3
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0696A65F009EE18)
---@param player number 
---@param normalizedValue number 
---@param p2 boolean 
function SpecialAbilityChargeNormalized(player, normalizedValue, p2) end

---```
---normalizedValue is from 0.0 - 1.0
---p2 is always 1
---```
---
---```
---NativeDB Added Parameter 4: Any p3
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0696A65F009EE18)
---@param player number 
---@param normalizedValue number 
---@param p2 boolean 
function ResetSpecialAbilityControlsCinematic(player, normalizedValue, p2) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC9A763D8FE87436A)
---@param player number 
function SpecialAbilityChargeOnMissionFailed(player) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC9A763D8FE87436A)
---@param player number 
function N_0xC9A763D8FE87436A(player) end

---```
---Every occurrence of p1 & p2 were both true.
---```
---
---```
---NativeDB Added Parameter 4: Any p3
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2E7B9B683481687D)
---@param player number 
---@param p1 boolean 
---@param p2 boolean 
function SpecialAbilityChargeSmall(player, p1, p2) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x17F7471EACA78290)
---@param p0 any 
function SpecialAbilityDeplete(p0) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x17F7471EACA78290)
---@param p0 any 
function N_0x17F7471EACA78290(p0) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD6A953C6D1492057)
---@param player number 
function SpecialAbilityDeactivate(player) end

---```
---Also known as _RECHARGE_SPECIAL_ABILITY
---```
---
---```
---NativeDB Added Parameter 3: Any p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3DACA8DDC6FD4980)
---@param player number 
---@param p1 boolean 
function SpecialAbilityFillMeter(player, p1) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9CB5CE07A3968D5A)
---@param player number 
function SpecialAbilityDeactivateFast(player) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x375F0E738F861A94)
---@param player number 
function SpecialAbilityReset(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBF9BD71691857E48)
---@param duration number 
function StartFiringAmnesty(duration) end

---```
---p1 was always true.
---```
---
---```
---NativeDB Added Parameter 3: Any p2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1D506DBBBC51E64B)
---@param player number 
---@param p1 boolean 
function SpecialAbilityDepleteMeter(player, p1) end

---```
---Disables the player's teleportation  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC449EDED9D73009C)
function StopPlayerTeleport() end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6A09D0D590A47D13)
---@param playerModel number | string 
function SpecialAbilityLock(playerModel) end

---```
---NativeDB Added Parameter 2: Any p1
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF145F3BE2EFA9A3B)
---@param playerModel number | string 
function SpecialAbilityUnlock(playerModel) end

---```
---This was previously named as "RESERVE_ENTITY_EXPLODES_ON_HIGH_EXPLOSION_COMBO"  
---which is obviously incorrect.  
---Seems to only appear in scripts used in Singleplayer. p1 ranges from 2 - 46.  
---I assume this switches the crime type  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A987297ED8BD838)
---@param player number 
---@param p1 number 
function SwitchCrimeType(player, p1) end

---```
---This was previously named as "RESERVE_ENTITY_EXPLODES_ON_HIGH_EXPLOSION_COMBO"  
---which is obviously incorrect.  
---Seems to only appear in scripts used in Singleplayer. p1 ranges from 2 - 46.  
---I assume this switches the crime type  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A987297ED8BD838)
---@param player number 
---@param p1 number 
function N_0x9A987297ED8BD838(player, p1) end

---Teleports the player to the given coordinates.
---
---If findCollisionLand is true it will try to find the Z value for you, this however has a timeout of 100 frames.
---
---When trying to find the Z value the native will take longer the higher the difference from the given Z to the ground, this combined with the timeout can cause the teleport to just teleport to the given Z value, so try to estimate the z value, so don't just pass in 1000.0.
---
---Also if you're in a vehicle and teleportWithVehicle is true it will not find the Z value for you.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAD15F075A4DA0FDE)
---Example: 
---```local coords = vector3(100.0, 100.0, 50.0)
---StartPlayerTeleport(PlayerId(), coords.x, coords.y, coords.z, 0.0, false, true, true)
---
---while IsPlayerTeleportActive() do
---  Citizen.Wait(0)
---end
---
------ If you would want to make 100% sure the ped is on the ground here you would have to do some additional checks here
------ Easiest would be a simple: GetEntityHeightAboveGround(PlayerPedId())```
---@param player number 
---@param x number 
---@param y number 
---@param z number 
---@param heading number 
---@param teleportWithVehicle boolean Teleports the player along with the vehicle they are in.
---@param findCollisionLand boolean Attempt to find a ground coordinate at the given XY location; overriding the Z value.
---@param p7 boolean 
function StartPlayerTeleport(player, x, y, z, heading, teleportWithVehicle, findCollisionLand, p7) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE23D5873C2394C61)
---@param player number 
---@return boolean retval 
function UpdatePlayerTeleport(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE23D5873C2394C61)
---@param player number 
---@return boolean retval 
function N_0xE23D5873C2394C61(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE23D5873C2394C61)
---@param player number 
---@return boolean retval 
function HasPlayerTeleportFinished(player) end

