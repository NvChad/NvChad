---@meta

---```
---NativeDB Introduced: v2699
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x126D7F89FE859A5E)
---@param x number 
---@param y number 
---@param z number 
---@param groundLvl number 
---@param width number 
---@param transparency number 
---@return number retval 
function AddOilDecal(x, y, z, groundLvl, width, transparency) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4F5212C7AD880DF8)
---@param x number 
---@param y number 
---@param z number 
---@param groundLvl number 
---@param width number 
---@param transparency number 
---@return number retval 
function AddPetrolDecal(x, y, z, groundLvl, width, transparency) end

---```
---decal types:  
---public enum DecalTypes  
---{  
---    splatters_blood = 1010,  
---    splatters_blood_dir = 1015,  
---    splatters_blood_mist = 1017,  
---    splatters_mud = 1020,  
---    splatters_paint = 1030,  
---    splatters_water = 1040,  
---    splatters_water_hydrant = 1050,  
---    splatters_blood2 = 1110,  
---    weapImpact_metal = 4010,  
---    weapImpact_concrete = 4020,  
---    weapImpact_mattress = 4030,  
---    weapImpact_mud = 4032,  
---    weapImpact_wood = 4050,  
---    weapImpact_sand = 4053,  
---    weapImpact_cardboard = 4040,  
---    weapImpact_melee_glass = 4100,  
---    weapImpact_glass_blood = 4102,  
---    weapImpact_glass_blood2 = 4104,  
---    weapImpact_shotgun_paper = 4200,  
---    weapImpact_shotgun_mattress,  
---    weapImpact_shotgun_metal,  
---    weapImpact_shotgun_wood,  
---    weapImpact_shotgun_dirt,  
---    weapImpact_shotgun_tvscreen,  
---    weapImpact_shotgun_tvscreen2,  
---    weapImpact_shotgun_tvscreen3,  
---    weapImpact_melee_concrete = 4310,  
---    weapImpact_melee_wood = 4312,  
---    weapImpact_melee_metal = 4314,  
---    burn1 = 4421,  
---    burn2,  
---    burn3,  
---    burn4,  
---    burn5,  
---    bang_concrete_bang = 5000,  
---    bang_concrete_bang2,  
---    bang_bullet_bang,  
---    bang_bullet_bang2 = 5004,  
---    bang_glass = 5031,  
---    bang_glass2,  
---    solidPool_water = 9000,  
---    solidPool_blood,  
---    solidPool_oil,  
---    solidPool_petrol,  
---    solidPool_mud,  
---    porousPool_water,  
---    porousPool_blood,  
---    porousPool_oil,  
---    porousPool_petrol,  
---    porousPool_mud,  
---    porousPool_water_ped_drip,  
---    liquidTrail_water = 9050  
---}  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB302244A1839BDAD)
---@param decalType number 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@param p7 number 
---@param p8 number 
---@param p9 number 
---@param width number 
---@param height number 
---@param rCoef number 
---@param gCoef number 
---@param bCoef number 
---@param opacity number 
---@param timeout number 
---@param p17 boolean 
---@param p18 boolean 
---@param p19 boolean 
---@return number retval 
function AddDecal(decalType, posX, posY, posZ, p4, p5, p6, p7, p8, p9, width, height, rCoef, gCoef, bCoef, opacity, timeout, p17, p18, p19) end

---```
---Example:  
---GRAPHICS::ADD_ENTITY_ICON(a_0, "MP_Arrow");  
---I tried this and nothing happened...  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9CD43EEE12BF4DD0)
---@param entity number 
---@param icon string 
---@return any retval 
function AddEntityIcon(entity, icon) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1A8E2C8B9CF4549C)
---@param modifierName1 string 
---@param modifierName2 string 
function AddTcmodifierOverride(modifierName1, modifierName2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1A8E2C8B9CF4549C)
---@param modifierName1 string 
---@param modifierName2 string 
function N_0x1A8E2C8B9CF4549C(modifierName1, modifierName2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x967278682CB6967A)
---@param x number 
---@param y number 
---@param z number 
---@param p3 number 
function AddPetrolTrailDecalInfo(x, y, z, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x967278682CB6967A)
---@param x number 
---@param y number 
---@param z number 
---@param p3 number 
function N_0x967278682CB6967A(x, y, z, p3) end

---See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724)
---[Native Documentation](https://docs.fivem.net/natives/?_0xE35B38A27E8E7179)
---@param effectName string 
---@return number retval 
function AnimpostfxGetUnk(effectName) end

---See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724)
---[Native Documentation](https://docs.fivem.net/natives/?_0xE35B38A27E8E7179)
---@param effectName string 
---@return number retval 
function N_0xE35B38A27E8E7179(effectName) end

---```
---boneIndex is always chassis_dummy in the scripts. The x/y/z params are location relative to the chassis bone.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x428BDCB9DA58DA53)
---@param vehicle number 
---@param ped number 
---@param boneIndex number 
---@param x1 number 
---@param x2 number 
---@param x3 number 
---@param y1 number 
---@param y2 number 
---@param y3 number 
---@param z1 number 
---@param z2 number 
---@param z3 number 
---@param scale number 
---@param p13 any 
---@param alpha number 
---@return boolean retval 
function AddVehicleCrewEmblem(vehicle, ped, boneIndex, x1, x2, x3, y1, y2, y3, z1, z2, z3, scale, p13, alpha) end

---```
---boneIndex is always chassis_dummy in the scripts. The x/y/z params are location relative to the chassis bone.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x428BDCB9DA58DA53)
---@param vehicle number 
---@param ped number 
---@param boneIndex number 
---@param x1 number 
---@param x2 number 
---@param x3 number 
---@param y1 number 
---@param y2 number 
---@param y3 number 
---@param z1 number 
---@param z2 number 
---@param z3 number 
---@param scale number 
---@param p13 any 
---@param alpha number 
---@return boolean retval 
function AddClanDecalToVehicle(vehicle, ped, boneIndex, x1, x2, x3, y1, y2, y3, z1, z2, z3, scale, p13, alpha) end

---See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
---[Native Documentation](https://docs.fivem.net/natives/?_0x36AD3E690DA5ACEB)
---@param effectName string 
---@return boolean retval Whether the specified effect is active
function AnimpostfxIsRunning(effectName) end

---See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
---[Native Documentation](https://docs.fivem.net/natives/?_0x36AD3E690DA5ACEB)
---@param effectName string 
---@return boolean retval Whether the specified effect is active
function GetScreenEffectIsActive(effectName) end

---```
---duration - is how long to play the effect for in milliseconds. If 0, it plays the default length
---if loop is true, the effect won't stop until you call ANIMPOSTFX_STOP on it. (only loopable effects)
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2206BF9A37B7F724)
---@param effectName string 
---@param duration number 
---@param looped boolean 
function AnimpostfxPlay(effectName, duration, looped) end

---```
---duration - is how long to play the effect for in milliseconds. If 0, it plays the default length
---if loop is true, the effect won't stop until you call ANIMPOSTFX_STOP on it. (only loopable effects)
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2206BF9A37B7F724)
---@param effectName string 
---@param duration number 
---@param looped boolean 
function StartScreenEffect(effectName, duration, looped) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB4EDDC19532BFB85)
function AnimpostfxStopAll() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB4EDDC19532BFB85)
function StopAllScreenEffects() end

---See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
---[Native Documentation](https://docs.fivem.net/natives/?_0x068E835A1D0DC0E3)
---@param effectName string 
function AnimpostfxStop(effectName) end

---See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
---[Native Documentation](https://docs.fivem.net/natives/?_0x068E835A1D0DC0E3)
---@param effectName string 
function StopScreenEffect(effectName) end

---Stops the effect and sets a value (bool) in its data (+0x199) to false; See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
---[Native Documentation](https://docs.fivem.net/natives/?_0xD2209BE128B5418C)
---@param effectName string 
function AnimpostfxStopAndDoUnk(effectName) end

---Stops the effect and sets a value (bool) in its data (+0x199) to false; See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
---[Native Documentation](https://docs.fivem.net/natives/?_0xD2209BE128B5418C)
---@param effectName string 
function N_0xD2209BE128B5418C(effectName) end

---```
---Might be more appropriate in AUDIO?  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x845BAD77CC770633)
---@param entity number 
function AttachTvAudioToEntity(entity) end

---Starts frontend (pause menu) scaleform movie methods.
---This can be used when you want to make custom frontend menus, and customize things like images or text in the menus etc.
---
---Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER`](#\_0xB9449845F73F5E9C) for header scaleform functions.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAB58C27C2E6123C6)
---@param functionName string The function name of the scaleform to call.
---@return boolean retval 
function BeginScaleformMovieMethodOnFrontend(functionName) end

---Starts frontend (pause menu) scaleform movie methods.
---This can be used when you want to make custom frontend menus, and customize things like images or text in the menus etc.
---
---Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER`](#\_0xB9449845F73F5E9C) for header scaleform functions.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAB58C27C2E6123C6)
---@param functionName string The function name of the scaleform to call.
---@return boolean retval 
function N_0xAB58C27C2E6123C6(functionName) end

---Starts frontend (pause menu) scaleform movie methods.
---This can be used when you want to make custom frontend menus, and customize things like images or text in the menus etc.
---
---Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER`](#\_0xB9449845F73F5E9C) for header scaleform functions.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAB58C27C2E6123C6)
---@param functionName string The function name of the scaleform to call.
---@return boolean retval 
function PushScaleformMovieFunctionN(functionName) end

---Starts frontend (pause menu) scaleform movie methods.
---This can be used when you want to make custom frontend menus, and customize things like images or text in the menus etc.
---
---Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER`](#\_0xB9449845F73F5E9C) for header scaleform functions.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAB58C27C2E6123C6)
---@param functionName string The function name of the scaleform to call.
---@return boolean retval 
function BeginScaleformMovieMethodN(functionName) end

---```
---Push a function from the Scaleform onto the stack  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6E48914C7A8694E)
---@param scaleform number 
---@param methodName string 
---@return boolean retval 
function BeginScaleformMovieMethod(scaleform, methodName) end

---```
---Push a function from the Scaleform onto the stack  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6E48914C7A8694E)
---@param scaleform number 
---@param methodName string 
---@return boolean retval 
function PushScaleformMovieFunction(scaleform, methodName) end

---Starts frontend (pause menu) scaleform movie methods for header options.
---
---Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND`](#\_0xAB58C27C2E6123C6) to customize the content inside the frontend menus.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9449845F73F5E9C)
---@param functionName string Scaleform function name.
---@return boolean retval 
function BeginScaleformMovieMethodOnFrontendHeader(functionName) end

---Starts frontend (pause menu) scaleform movie methods for header options.
---
---Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND`](#\_0xAB58C27C2E6123C6) to customize the content inside the frontend menus.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9449845F73F5E9C)
---@param functionName string Scaleform function name.
---@return boolean retval 
function N_0xB9449845F73F5E9C(functionName) end

---Starts frontend (pause menu) scaleform movie methods for header options.
---
---Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND`](#\_0xAB58C27C2E6123C6) to customize the content inside the frontend menus.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9449845F73F5E9C)
---@param functionName string Scaleform function name.
---@return boolean retval 
function BeginScaleformMovieMethodV(functionName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA67C35C56EB1BD9D)
---@return boolean retval 
function BeginTakeHighQualityPhoto() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA67C35C56EB1BD9D)
---@return boolean retval 
function N_0xA67C35C56EB1BD9D() end

---```
---Pushes a function from the Hud component Scaleform onto the stack. Same behavior as GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD, just a hud component id instead of a Scaleform.
---Known components:
---19 - MP_RANK_BAR
---20 - HUD_DIRECTOR_MODE
---This native requires more research - all information can be found inside of 'hud.gfx'. Using a decompiler, the different components are located under "scripts\__Packages\com\rockstargames\gtav\hud\hudComponents" and "scripts\__Packages\com\rockstargames\gtav\Multiplayer".
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x98C494FD5BDFBFD5)
---@param hudComponent number 
---@param methodName string 
---@return boolean retval 
function BeginScaleformScriptHudMovieMethod(hudComponent, methodName) end

---```
---Pushes a function from the Hud component Scaleform onto the stack. Same behavior as GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD, just a hud component id instead of a Scaleform.
---Known components:
---19 - MP_RANK_BAR
---20 - HUD_DIRECTOR_MODE
---This native requires more research - all information can be found inside of 'hud.gfx'. Using a decompiler, the different components are located under "scripts\__Packages\com\rockstargames\gtav\hud\hudComponents" and "scripts\__Packages\com\rockstargames\gtav\Multiplayer".
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x98C494FD5BDFBFD5)
---@param hudComponent number 
---@param methodName string 
---@return boolean retval 
function PushScaleformMovieFunctionFromHudComponent(hudComponent, methodName) end

---```
---Pushes a function from the Hud component Scaleform onto the stack. Same behavior as GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD, just a hud component id instead of a Scaleform.
---Known components:
---19 - MP_RANK_BAR
---20 - HUD_DIRECTOR_MODE
---This native requires more research - all information can be found inside of 'hud.gfx'. Using a decompiler, the different components are located under "scripts\__Packages\com\rockstargames\gtav\hud\hudComponents" and "scripts\__Packages\com\rockstargames\gtav\Multiplayer".
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x98C494FD5BDFBFD5)
---@param hudComponent number 
---@param methodName string 
---@return boolean retval 
function BeginScaleformMovieMethodHudComponent(hudComponent, methodName) end

---```
---Called prior to adding a text component to the UI. After doing so, GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING is called.
---Examples:
---GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("NUMBER");
---HUD::ADD_TEXT_COMPONENT_INTEGER(MISC::ABSI(a_1));
---GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
---GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRING");
---HUD::_ADD_TEXT_COMPONENT_STRING(a_2);
---GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
---GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM2");
---HUD::_0x17299B63C7683A2B(v_3);
---HUD::_0x17299B63C7683A2B(v_4);
---GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
---GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM1");
---HUD::_0x17299B63C7683A2B(v_3);
---GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x80338406F3475E55)
---@param textLabel string a GXT text label
function BeginTextCommandScaleformString(textLabel) end

---```
---Called prior to adding a text component to the UI. After doing so, GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING is called.
---Examples:
---GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("NUMBER");
---HUD::ADD_TEXT_COMPONENT_INTEGER(MISC::ABSI(a_1));
---GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
---GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRING");
---HUD::_ADD_TEXT_COMPONENT_STRING(a_2);
---GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
---GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM2");
---HUD::_0x17299B63C7683A2B(v_3);
---HUD::_0x17299B63C7683A2B(v_4);
---GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
---GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM1");
---HUD::_0x17299B63C7683A2B(v_3);
---GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x80338406F3475E55)
---@param textLabel string a GXT text label
function BeginTextComponent(textLabel) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DD2139A9A20DCE8)
---@return boolean retval 
function BeginTakeMissionCreatorPhoto() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1DD2139A9A20DCE8)
---@return boolean retval 
function N_0x1DD2139A9A20DCE8() end

---```
---Calls the Scaleform function.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFBD96D87AC96D533)
---@param scaleform number 
---@param method string 
function CallScaleformMovieMethod(scaleform, method) end

---```
---Calls the Scaleform function.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFBD96D87AC96D533)
---@param scaleform number 
---@param method string 
function CallScaleformMovieFunctionVoid(scaleform, method) end

---```
---Calls the Scaleform function and passes the parameters as floats.  
---The number of parameters passed to the function varies, so the end of the parameter list is represented by -1.0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD0837058AE2E4BEE)
---@param scaleform number 
---@param methodName string 
---@param param1 number 
---@param param2 number 
---@param param3 number 
---@param param4 number 
---@param param5 number 
function CallScaleformMovieMethodWithNumber(scaleform, methodName, param1, param2, param3, param4, param5) end

---```
---Calls the Scaleform function and passes the parameters as floats.  
---The number of parameters passed to the function varies, so the end of the parameter list is represented by -1.0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD0837058AE2E4BEE)
---@param scaleform number 
---@param methodName string 
---@param param1 number 
---@param param2 number 
---@param param3 number 
---@param param4 number 
---@param param5 number 
function CallScaleformMovieFunctionFloatParams(scaleform, methodName, param1, param2, param3, param4, param5) end

---```
---Calls the Scaleform function and passes the parameters as strings.  
---The number of parameters passed to the function varies, so the end of the parameter list is represented by 0 (NULL).  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x51BC1ED3CC44E8F7)
---@param scaleform number 
---@param methodName string 
---@param param1 string 
---@param param2 string 
---@param param3 string 
---@param param4 string 
---@param param5 string 
function CallScaleformMovieMethodWithString(scaleform, methodName, param1, param2, param3, param4, param5) end

---```
---Calls the Scaleform function and passes the parameters as strings.  
---The number of parameters passed to the function varies, so the end of the parameter list is represented by 0 (NULL).  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x51BC1ED3CC44E8F7)
---@param scaleform number 
---@param methodName string 
---@param param1 string 
---@param param2 string 
---@param param3 string 
---@param param4 string 
---@param param5 string 
function CallScaleformMovieFunctionStringParams(scaleform, methodName, param1, param2, param3, param4, param5) end

---```
---Calls the Scaleform function and passes both float and string parameters (in their respective order).  
---The number of parameters passed to the function varies, so the end of the float parameters is represented by -1.0, and the end of the string parameters is represented by 0 (NULL).  
---NOTE: The order of parameters in the function prototype is important! All float parameters must come first, followed by the string parameters.  
---Examples:  
---// function MY_FUNCTION(floatParam1, floatParam2, stringParam)  
---GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION", 10.0, 20.0, -1.0, -1.0, -1.0, "String param", 0, 0, 0, 0);  
---// function MY_FUNCTION_2(floatParam, stringParam1, stringParam2)  
---GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION_2", 10.0, -1.0, -1.0, -1.0, -1.0, "String param #1", "String param #2", 0, 0, 0);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF662D8D57E290B1)
---@param scaleform number 
---@param methodName string 
---@param floatParam1 number 
---@param floatParam2 number 
---@param floatParam3 number 
---@param floatParam4 number 
---@param floatParam5 number 
---@param stringParam1 string 
---@param stringParam2 string 
---@param stringParam3 string 
---@param stringParam4 string 
---@param stringParam5 string 
function CallScaleformMovieMethodWithNumberAndString(scaleform, methodName, floatParam1, floatParam2, floatParam3, floatParam4, floatParam5, stringParam1, stringParam2, stringParam3, stringParam4, stringParam5) end

---```
---Calls the Scaleform function and passes both float and string parameters (in their respective order).  
---The number of parameters passed to the function varies, so the end of the float parameters is represented by -1.0, and the end of the string parameters is represented by 0 (NULL).  
---NOTE: The order of parameters in the function prototype is important! All float parameters must come first, followed by the string parameters.  
---Examples:  
---// function MY_FUNCTION(floatParam1, floatParam2, stringParam)  
---GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION", 10.0, 20.0, -1.0, -1.0, -1.0, "String param", 0, 0, 0, 0);  
---// function MY_FUNCTION_2(floatParam, stringParam1, stringParam2)  
---GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION_2", 10.0, -1.0, -1.0, -1.0, -1.0, "String param #1", "String param #2", 0, 0, 0);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF662D8D57E290B1)
---@param scaleform number 
---@param methodName string 
---@param floatParam1 number 
---@param floatParam2 number 
---@param floatParam3 number 
---@param floatParam4 number 
---@param floatParam5 number 
---@param stringParam1 string 
---@param stringParam2 string 
---@param stringParam3 string 
---@param stringParam4 string 
---@param stringParam5 string 
function CallScaleformMovieFunctionMixedParams(scaleform, methodName, floatParam1, floatParam2, floatParam3, floatParam4, floatParam5, stringParam1, stringParam2, stringParam3, stringParam4, stringParam5) end

---```
---When this is set to ON, shadows only draw as you get nearer.
---When OFF, they draw from a further distance.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x80ECBC0C856D3B0B)
---@param toggle boolean 
function CascadeShadowsEnableEntityTracker(toggle) end

---```
---When this is set to ON, shadows only draw as you get nearer.
---When OFF, they draw from a further distance.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x80ECBC0C856D3B0B)
---@param toggle boolean 
function SetFarShadowsSuppressed(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x27CB772218215325)
function CascadeShadowsClearShadowSampleType() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x27CB772218215325)
function N_0x27CB772218215325() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x27CB772218215325)
function CascadeshadowsResetType() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x03FC694AE06C5A20)
function CascadeShadowsInitSession() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x03FC694AE06C5A20)
function N_0x03FC694AE06C5A20() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6DDBF9DFFC4AC080)
---@param p0 boolean 
function CascadeShadowsSetAircraftMode(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6DDBF9DFFC4AC080)
---@param p0 boolean 
function N_0x6DDBF9DFFC4AC080(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD2936CAB8B58FCBD)
---@param p0 any 
---@param p1 boolean 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 boolean 
---@param p7 number 
function CascadeShadowsSetCascadeBounds(p0, p1, p2, p3, p4, p5, p6, p7) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD2936CAB8B58FCBD)
---@param p0 any 
---@param p1 boolean 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 boolean 
---@param p7 number 
function N_0xD2936CAB8B58FCBD(p0, p1, p2, p3, p4, p5, p6, p7) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F0F3F56635809EF)
---@param p0 number 
function CascadeShadowsSetCascadeBoundsScale(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F0F3F56635809EF)
---@param p0 number 
function N_0x5F0F3F56635809EF(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD39D13C9FEBF0511)
---@param p0 boolean 
function CascadeShadowsSetDynamicDepthMode(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD39D13C9FEBF0511)
---@param p0 boolean 
function N_0xD39D13C9FEBF0511(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x02AC28F3A01FA04A)
---@param p0 number 
function CascadeShadowsSetDynamicDepthValue(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x02AC28F3A01FA04A)
---@param p0 number 
function N_0x02AC28F3A01FA04A(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E9DAF5A20F15908)
---@param p0 number 
function CascadeShadowsSetEntityTrackerScale(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E9DAF5A20F15908)
---@param p0 number 
function N_0x5E9DAF5A20F15908(p0) end

---Resets the screen's draw-origin which was changed by the function [`SET_DRAW_ORIGIN`](#\_0xAA0008F3BBB8F416) back to `x=0, y=0`. See [`SET_DRAW_ORIGIN`](#\_0xAA0008F3BBB8F416) for further information.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF0B610F6BE0D7AF)
function ClearDrawOrigin() end

---```
---Possible values:
---"CSM_ST_POINT"
---"CSM_ST_LINEAR"
---"CSM_ST_TWOTAP"
---"CSM_ST_BOX3x3"
---"CSM_ST_BOX4x4"
---"CSM_ST_DITHER2_LINEAR"
---"CSM_ST_CUBIC"
---"CSM_ST_DITHER4"
---"CSM_ST_DITHER16"
---"CSM_ST_SOFT16"
---"CSM_ST_DITHER16_RPDB"
---"CSM_ST_POISSON16_RPDB_GNORM"
---"CSM_ST_HIGHRES_BOX4x4"
---"CSM_ST_CLOUDS_SIMPLE"
---"CSM_ST_CLOUDS_LINEAR"
---"CSM_ST_CLOUDS_TWOTAP"
---"CSM_ST_CLOUDS_BOX3x3"
---"CSM_ST_CLOUDS_BOX4x4"
---"CSM_ST_CLOUDS_DITHER2_LINEAR"
---"CSM_ST_CLOUDS_SOFT16"
---"CSM_ST_CLOUDS_DITHER16_RPDB"
---"CSM_ST_CLOUDS_POISSON16_RPDB_GNORM"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB11D94BC55F41932)
---@param type string 
function CascadeShadowsSetShadowSampleType(type) end

---```
---Possible values:
---"CSM_ST_POINT"
---"CSM_ST_LINEAR"
---"CSM_ST_TWOTAP"
---"CSM_ST_BOX3x3"
---"CSM_ST_BOX4x4"
---"CSM_ST_DITHER2_LINEAR"
---"CSM_ST_CUBIC"
---"CSM_ST_DITHER4"
---"CSM_ST_DITHER16"
---"CSM_ST_SOFT16"
---"CSM_ST_DITHER16_RPDB"
---"CSM_ST_POISSON16_RPDB_GNORM"
---"CSM_ST_HIGHRES_BOX4x4"
---"CSM_ST_CLOUDS_SIMPLE"
---"CSM_ST_CLOUDS_LINEAR"
---"CSM_ST_CLOUDS_TWOTAP"
---"CSM_ST_CLOUDS_BOX3x3"
---"CSM_ST_CLOUDS_BOX4x4"
---"CSM_ST_CLOUDS_DITHER2_LINEAR"
---"CSM_ST_CLOUDS_SOFT16"
---"CSM_ST_CLOUDS_DITHER16_RPDB"
---"CSM_ST_CLOUDS_POISSON16_RPDB_GNORM"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB11D94BC55F41932)
---@param type string 
function N_0xB11D94BC55F41932(type) end

---```
---Possible values:
---"CSM_ST_POINT"
---"CSM_ST_LINEAR"
---"CSM_ST_TWOTAP"
---"CSM_ST_BOX3x3"
---"CSM_ST_BOX4x4"
---"CSM_ST_DITHER2_LINEAR"
---"CSM_ST_CUBIC"
---"CSM_ST_DITHER4"
---"CSM_ST_DITHER16"
---"CSM_ST_SOFT16"
---"CSM_ST_DITHER16_RPDB"
---"CSM_ST_POISSON16_RPDB_GNORM"
---"CSM_ST_HIGHRES_BOX4x4"
---"CSM_ST_CLOUDS_SIMPLE"
---"CSM_ST_CLOUDS_LINEAR"
---"CSM_ST_CLOUDS_TWOTAP"
---"CSM_ST_CLOUDS_BOX3x3"
---"CSM_ST_CLOUDS_BOX4x4"
---"CSM_ST_CLOUDS_DITHER2_LINEAR"
---"CSM_ST_CLOUDS_SOFT16"
---"CSM_ST_CLOUDS_DITHER16_RPDB"
---"CSM_ST_CLOUDS_POISSON16_RPDB_GNORM"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB11D94BC55F41932)
---@param type string 
function CascadeshadowsSetType(type) end

---Clears the secondary timecycle modifier usually set with [`SetExtraTimecycleModifier`](#\_0x5096FD9CCB49056D)
---[Native Documentation](https://docs.fivem.net/natives/?_0x92CCC17A7A2285DA)
function ClearExtraTimecycleModifier() end

---Clears the secondary timecycle modifier usually set with [`SetExtraTimecycleModifier`](#\_0x5096FD9CCB49056D)
---[Native Documentation](https://docs.fivem.net/natives/?_0x92CCC17A7A2285DA)
function N_0x92CCC17A7A2285DA() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBEB3D46BB7F043C0)
---@param tvChannel number 
function ClearTvChannelPlaylist(tvChannel) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBEB3D46BB7F043C0)
---@param tvChannel number 
function N_0xBEB3D46BB7F043C0(tvChannel) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0F07E7745A236711)
function ClearTimecycleModifier() end

---Creates a tracked point: useful for checking the visibility of a 3D point on screen.
---
---Tracked points must be manually managed and will not be destroyed on resource stop (they are not an instance of CScriptResource). See [`DESTROY_TRACKED_POINT`](#\_0xB25DC90BAD56CA42) and [onResourceStop](https://docs.fivem.net/docs/scripting-reference/events/list/onResourceStop/).
---
---Only 64 points may be tracked at a given time.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE2C9439ED45DEA60)
---@return number retval 
function CreateTrackedPoint() end

---```
---Creates a checkpoint. Returns the handle of the checkpoint.  
---20/03/17 : Attention, checkpoints are already handled by the game itself, so you must not loop it like markers.
---Parameters:  
---* type - The type of checkpoint to create. See below for a list of checkpoint types.  
---* pos1 - The position of the checkpoint.  
---* pos2 - The position of the next checkpoint to point to.  
---* diameter - The diameter of the checkpoint.
---* color - The color of the checkpoint.  
---* reserved - Special parameter, see below for details. Usually set to 0 in the scripts.  
---Checkpoint types (prior to game build 2189):  
---0-4---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
---5-9---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
---10-14-------Ring: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
---15-19-------1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker        
---20-24-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker   
---25-29-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker      
---30-34-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker   
---35-38-------Ring: Airplane Up, Left, Right, UpsideDown  
---39----------?  
---40----------Ring: just a ring  
---41----------?  
---42-44-------Cylinder w/ number (uses 'reserved' parameter)  
---45-47-------Cylinder no arrow or number  
---If using type 42-44, reserved sets number / number and shape to display  
---0-99------------Just numbers (0-99)  
---100-109-----------------Arrow (0-9)  
---110-119------------Two arrows (0-9)  
---120-129----------Three arrows (0-9)  
---130-139----------------Circle (0-9)  
---140-149------------CycleArrow (0-9)  
---150-159----------------Circle (0-9)  
---160-169----Circle  w/ pointer (0-9)  
---170-179-------Perforated ring (0-9)  
---180-189----------------Sphere (0-9)  
---```
---
---[Checkpoint Types](https://docs.fivem.net/docs/game-references/checkpoints/) as of game build 2189
---[Native Documentation](https://docs.fivem.net/natives/?_0x0134F0835AB6BFCB)
---@param type number 
---@param posX1 number 
---@param posY1 number 
---@param posZ1 number 
---@param posX2 number 
---@param posY2 number 
---@param posZ2 number 
---@param diameter number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
---@param reserved number 
---@return number retval 
function CreateCheckpoint(type, posX1, posY1, posZ1, posX2, posY2, posZ2, diameter, red, green, blue, alpha, reserved) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB25DC90BAD56CA42)
---@param point number 
function DestroyTrackedPoint(point) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF5ED37F54CD4D52E)
---@param checkpoint number 
function DeleteCheckpoint(checkpoint) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3669F1B198DCAA4F)
function DisableOcclusionThisFrame() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3669F1B198DCAA4F)
function N_0x3669F1B198DCAA4F() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC9F98AC1884E73A2)
---@param toggle boolean 
function DisableVehicleDistantlights(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDE81239437E8C5A8)
function DisableScreenblurFade() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDE81239437E8C5A8)
function N_0xDE81239437E8C5A8() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDE81239437E8C5A8)
function PausedScreenblurLoaded() end

---Used in pi_menu.c. Checks if there is a brief entry for specified value.
---Values:
---0 - Dialogue brief
---1 - Help text brief
---2 - Mission Objective brief
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E657EF1099EDD65)
---@param briefValue number A value indicating brief text.
---@return boolean retval 
function DoesLatestBriefStringExist(briefValue) end

---Used in pi_menu.c. Checks if there is a brief entry for specified value.
---Values:
---0 - Dialogue brief
---1 - Help text brief
---2 - Mission Objective brief
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E657EF1099EDD65)
---@param briefValue number A value indicating brief text.
---@return boolean retval 
function N_0x5E657EF1099EDD65(briefValue) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFD97FF47B745B8D)
---@param p0 any 
function DisableScriptAmbientEffects(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFD97FF47B745B8D)
---@param p0 any 
function N_0xEFD97FF47B745B8D(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x74AFEF0D2E1E409B)
---@param ptfxHandle number 
---@return boolean retval 
function DoesParticleFxLoopedExist(ptfxHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x060D935D3981A275)
---@param vehicle number 
---@param p1 number 
---@return boolean retval 
function DoesVehicleHaveCrewEmblem(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x060D935D3981A275)
---@param vehicle number 
---@param p1 number 
---@return boolean retval 
function HasVehicleGotDecal(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x060D935D3981A275)
---@param vehicle number 
---@param p1 number 
---@return boolean retval 
function DoesVehicleHaveDecal(vehicle, p1) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7118E83EEB9F7238)
---@param binkMovie number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param r number 
---@param g number 
---@param b number 
---@param a number 
function DrawBinkMovie(binkMovie, p1, p2, p3, p4, p5, r, g, b, a) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x22A249A53034450A)
---@param p0 boolean 
function DontRenderInGameUi(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x22A249A53034450A)
---@param p0 boolean 
function N_0x22A249A53034450A(p0) end

---```
---NOTE: Debugging functions are not present in the retail version of the game.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x083A2CA4F2E573BD)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param r number 
---@param g number 
---@param b number 
---@param a number 
function DrawDebugBox(x1, y1, z1, x2, y2, z2, r, g, b, a) end

---```
---x,y,z = start pos  
---x2,y2,z2 = end pos  
---Draw's a 3D Box between the two x,y,z coords.  
-----------------  
---Keep in mind that the edges of the box do only align to the worlds base-vectors. Therefore something like rotation cannot be applied. That means this function is pretty much useless, unless you want a static unicolor box somewhere.  
---I recommend using a predefined function to call this.  
---[VB.NET]  
---Public Sub DrawBox(a As Vector3, b As Vector3, col As Color)  
---    [Function].Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A)  
---End Sub  
---[C#]  
---public void DrawBox(Vector3 a, Vector3 b, Color col)  
---{  
---    Function.Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A);  
---}  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3A9971CADAC7252)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function DrawBox(x1, y1, z1, x2, y2, z2, red, green, blue, alpha) end

---```
---NOTE: Debugging functions are not present in the retail version of the game.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7FDFADE676AA3CB0)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param r number 
---@param g number 
---@param b number 
---@param a number 
function DrawDebugLine(x1, y1, z1, x2, y2, z2, r, g, b, a) end

---```
---NOTE: Debugging functions are not present in the retail version of the game.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x73B1189623049839)
---@param x number 
---@param y number 
---@param z number 
---@param size number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function DrawDebugCross(x, y, z, size, red, green, blue, alpha) end

---```
---NOTE: Debugging functions are not present in the retail version of the game.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD8B9A8AC5608FF94)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param r1 number 
---@param g1 number 
---@param b1 number 
---@param r2 number 
---@param g2 number 
---@param b2 number 
---@param alpha1 number 
---@param alpha2 number 
function DrawDebugLineWithTwoColours(x1, y1, z1, x2, y2, z2, r1, g1, b1, r2, g2, b2, alpha1, alpha2) end

---```
---NOTE: Debugging functions are not present in the retail version of the game.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA3BB2E9555C05A8F)
---@param text string 
---@param x number 
---@param y number 
---@param z number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function DrawDebugText2d(text, x, y, z, red, green, blue, alpha) end

---```
---NOTE: Debugging functions are not present in the retail version of the game.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAAD68E1AB39DA632)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function DrawDebugSphere(x, y, z, radius, red, green, blue, alpha) end

---Similar to [\_DRAW_SPRITE](#\_0xE7FFAE5EBF23D890), but seems to be some kind of "interactive" sprite, at least used by render targets.
---These seem to be the only dicts ever requested by this native:
---
---```
---prop_screen_biker_laptop
---Prop_Screen_GR_Disruption
---Prop_Screen_TaleOfUs
---prop_screen_nightclub
---Prop_Screen_IE_Adhawk
---prop_screen_sm_free_trade_shipping
---prop_screen_hacker_truck
---MPDesktop
---Prop_Screen_Nightclub
---And a few others
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2BC54A8188768488)
---@param textureDict string Name of texture dictionary to load texture from
---@param textureName string Name of texture to load from texture dictionary
---@param screenX number Screen X
---@param screenY number Screen Y
---@param width number Scale X
---@param height number Scale Y
---@param heading number Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees
---@param red number Color
---@param green number Color
---@param blue number Color
---@param alpha number Opacity level
function DrawInteractiveSprite(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha) end

---Similar to [\_DRAW_SPRITE](#\_0xE7FFAE5EBF23D890), but seems to be some kind of "interactive" sprite, at least used by render targets.
---These seem to be the only dicts ever requested by this native:
---
---```
---prop_screen_biker_laptop
---Prop_Screen_GR_Disruption
---Prop_Screen_TaleOfUs
---prop_screen_nightclub
---Prop_Screen_IE_Adhawk
---prop_screen_sm_free_trade_shipping
---prop_screen_hacker_truck
---MPDesktop
---Prop_Screen_Nightclub
---And a few others
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2BC54A8188768488)
---@param textureDict string Name of texture dictionary to load texture from
---@param textureName string Name of texture to load from texture dictionary
---@param screenX number Screen X
---@param screenY number Screen Y
---@param width number Scale X
---@param height number Scale Y
---@param heading number Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees
---@param red number Color
---@param green number Color
---@param blue number Color
---@param alpha number Opacity level
function N_0x2BC54A8188768488(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF49E9A9716A04595)
---@param x number 
---@param y number 
---@param z number 
---@param r number 
---@param g number 
---@param b number 
---@param range number 
---@param intensity number 
---@param shadow number 
function DrawLightWithRangeAndShadow(x, y, z, r, g, b, range, intensity, shadow) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF49E9A9716A04595)
---@param x number 
---@param y number 
---@param z number 
---@param r number 
---@param g number 
---@param b number 
---@param range number 
---@param intensity number 
---@param shadow number 
function DrawLightWithRangeWithShadow(x, y, z, r, g, b, range, intensity, shadow) end

---```
---NOTE: Debugging functions are not present in the retail version of the game.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3903E216620488E8)
---@param text string 
---@param x number 
---@param y number 
---@param z number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function DrawDebugText(text, x, y, z, red, green, blue, alpha) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2A1B2771A01DBD4)
---@param posX number 
---@param posY number 
---@param posZ number 
---@param colorR number 
---@param colorG number 
---@param colorB number 
---@param range number 
---@param intensity number 
function DrawLightWithRange(posX, posY, posZ, colorR, colorG, colorB, range, intensity) end

---Draws a marker with the specified appearance at the target location. This has to be called every frame, e.g. in a `Wait(0)` loop.
---
---There's a [list of markers](https://docs.fivem.net/game-references/markers/) on the FiveM documentation site.
---[Native Documentation](https://docs.fivem.net/natives/?_0x28477EC23D892089)
---Example: 
---```CreateThread(function()
---	while true do
---		-- draw every frame
---		Wait(0)
---
---		local pedCoords = GetEntityCoords(PlayerPedId())
---		DrawMarker(2, pedCoords.x, pedCoords.y, pedCoords.z + 2, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 128, 0, 50, false, true, 2, nil, nil, false)
---	end
---end)```
---@param type number The marker type to draw.
---@param posX number The X coordinate to draw the marker at.
---@param posY number The Y coordinate to draw the marker at.
---@param posZ number The Z coordinate to draw the marker at.
---@param dirX number The X component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.
---@param dirY number The Y component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.
---@param dirZ number The Z component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.
---@param rotX number The X rotation for the marker. Only used if the direction vector is 0.0.
---@param rotY number The Y rotation for the marker. Only used if the direction vector is 0.0.
---@param rotZ number The Z rotation for the marker. Only used if the direction vector is 0.0.
---@param scaleX number The scale for the marker on the X axis.
---@param scaleY number The scale for the marker on the Y axis.
---@param scaleZ number The scale for the marker on the Z axis.
---@param red number The red component of the marker color, on a scale from 0-255.
---@param green number The green component of the marker color, on a scale from 0-255.
---@param blue number The blue component of the marker color, on a scale from 0-255.
---@param alpha number The alpha component of the marker color, on a scale from 0-255.
---@param bobUpAndDown boolean Whether or not the marker should slowly animate up/down.
---@param faceCamera boolean Whether the marker should be a 'billboard', as in, should constantly face the camera.
---@param p19 number Typically set to `2`. Does not seem to matter directly.
---@param rotate boolean Rotations only apply to the heading.
---@param textureDict string A texture dictionary to draw the marker with, or NULL. Example: 'GolfPutting'
---@param textureName string A texture name in `textureDict` to draw the marker with, or NULL. Example: 'PuttingMarker'
---@param drawOnEnts boolean Whether or not the marker should draw on intersecting entities.
function DrawMarker(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts) end

---```
---x/y/z - Location of a vertex (in world coords), presumably.  
-------------------  
---x1, y1, z1     : Coordinates for the first point  
---x2, y2, z2     : Coordinates for the second point  
---x3, y3, z3     : Coordinates for the third point  
---r, g, b, alpha : Color with RGBA-Values  
---Keep in mind that only one side of the drawn triangle is visible: It's the side, in which the vector-product of the vectors heads to: (b-a)x(c-a) Or (b-a)x(c-b).  
---But be aware: The function seems to work somehow differently. I have trouble having them drawn in rotated orientation. Try it yourself and if you somehow succeed, please edit this and post your solution.  
---I recommend using a predefined function to call this.  
---[VB.NET]  
---Public Sub DrawPoly(a As Vector3, b As Vector3, c As Vector3, col As Color)  
---    [Function].Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A)  
---End Sub  
---[C#]  
---public void DrawPoly(Vector3 a, Vector3 b, Vector3 c, Color col)  
---{  
---    Function.Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A);  
---}  
---BTW: Intersecting triangles are not supported: They overlap in the order they were called.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAC26716048436851)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param x3 number 
---@param y3 number 
---@param z3 number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function DrawPoly(x1, y1, z1, x2, y2, z2, x3, y3, z3, red, green, blue, alpha) end

---```
---Draws a rectangle on the screen.  
----x: The relative X point of the center of the rectangle. (0.0-1.0, 0.0 is the left edge of the screen, 1.0 is the right edge of the screen)  
----y: The relative Y point of the center of the rectangle. (0.0-1.0, 0.0 is the top edge of the screen, 1.0 is the bottom edge of the screen)  
----width: The relative width of the rectangle. (0.0-1.0, 1.0 means the whole screen width)  
----height: The relative height of the rectangle. (0.0-1.0, 1.0 means the whole screen height)  
----R: Red part of the color. (0-255)  
----G: Green part of the color. (0-255)  
----B: Blue part of the color. (0-255)  
----A: Alpha part of the color. (0-255, 0 means totally transparent, 255 means totally opaque)  
---The total number of rectangles to be drawn in one frame is apparently limited to 399.  
---```
---
---```
---NativeDB Added Parameter 9: BOOL p8
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3A618A217E5154F0)
---@param x number 
---@param y number 
---@param width number 
---@param height number 
---@param r number 
---@param g number 
---@param b number 
---@param a number 
function DrawRect(x, y, width, height, r, g, b, a) end

---```
---Draws a depth-tested line from one point to another.
-------------------
---x1, y1, z1 : Coordinates for the first point
---x2, y2, z2 : Coordinates for the second point
---r, g, b, alpha : Color with RGBA-Values
---I recommend using a predefined function to call this.
---[VB.NET]
---Public Sub DrawLine(from As Vector3, [to] As Vector3, col As Color)
---    [Function].Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, [to].X, [to].Y, [to].Z, col.R, col.G, col.B, col.A)
---End Sub
---[C#]
---public void DrawLine(Vector3 from, Vector3 to, Color col)
---{
---    Function.Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, to.X, to.Y, to.Z, col.R, col.G, col.B, col.A);
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6B7256074AE34680)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function DrawLine(x1, y1, z1, x2, y2, z2, red, green, blue, alpha) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x54972ADAF0294A93)
---@param scaleformHandle number 
---@param x number 
---@param y number 
---@param width number 
---@param height number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
---@param unk number 
function DrawScaleformMovie(scaleformHandle, x, y, width, height, red, green, blue, alpha, unk) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1072F115DAB0717E)
---@param p0 boolean 
---@param p1 boolean 
function DrawLowQualityPhotoToPhone(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1072F115DAB0717E)
---@param p0 boolean 
---@param p1 boolean 
function N_0x1072F115DAB0717E(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF537FDE4FBD4CE5)
---@param scaleform1 number 
---@param scaleform2 number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function DrawScaleformMovieFullscreenMasked(scaleform1, scaleform2, red, green, blue, alpha) end

---```
---NativeDB Added Parameter 26: BOOL p25
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE82728F0DE75D13A)
---@param type number 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param dirX number 
---@param dirY number 
---@param dirZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param scaleX number 
---@param scaleY number 
---@param scaleZ number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
---@param bobUpAndDown boolean 
---@param faceCamera boolean 
---@param p19 number 
---@param rotate boolean 
---@param textureDict string 
---@param textureName string 
---@param drawOnEnts boolean 
---@param p24 boolean 
function DrawMarker2(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts, p24) end

---```
---NativeDB Added Parameter 26: BOOL p25
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE82728F0DE75D13A)
---@param type number 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param dirX number 
---@param dirY number 
---@param dirZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param scaleX number 
---@param scaleY number 
---@param scaleZ number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
---@param bobUpAndDown boolean 
---@param faceCamera boolean 
---@param p19 number 
---@param rotate boolean 
---@param textureDict string 
---@param textureName string 
---@param drawOnEnts boolean 
---@param p24 boolean 
function N_0xE82728F0DE75D13A(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts, p24) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1CE592FDC749D6F5)
---@param scaleform number 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param p7 number 
---@param p8 number 
---@param p9 number 
---@param scaleX number 
---@param scaleY number 
---@param scaleZ number 
---@param p13 any 
function DrawScaleformMovie3dSolid(scaleform, posX, posY, posZ, rotX, rotY, rotZ, p7, p8, p9, scaleX, scaleY, scaleZ, p13) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1CE592FDC749D6F5)
---@param scaleform number 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param p7 number 
---@param p8 number 
---@param p9 number 
---@param scaleX number 
---@param scaleY number 
---@param scaleZ number 
---@param p13 any 
function N_0x1CE592FDC749D6F5(scaleform, posX, posY, posZ, rotX, rotY, rotZ, p7, p8, p9, scaleX, scaleY, scaleZ, p13) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1CE592FDC749D6F5)
---@param scaleform number 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param p7 number 
---@param p8 number 
---@param p9 number 
---@param scaleX number 
---@param scaleY number 
---@param scaleZ number 
---@param p13 any 
function DrawScaleformMovie3dNonAdditive(scaleform, posX, posY, posZ, rotX, rotY, rotZ, p7, p8, p9, scaleX, scaleY, scaleZ, p13) end

---Draws a 3D sphere, typically seen in the GTA:O freemode event "Penned In".
---
---Example [image](https://imgur.com/nCbtS4H):
---
---```lua
---DrawSphere(35.45, 172.66, 126.22, 1.0, 0, 0, 255, 0.2)
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x799017F9E3B10112)
---@param x number X coordinate of the sphere
---@param y number Y coordinate of the sphere
---@param z number Z coordinate of the sphere
---@param radius number Size of the sphere, `1.0` = 1 meter
---@param r number Color red `0`-`255`
---@param g number Color green `0`-`255`
---@param b number Color blue `0`-`255`
---@param opacity number Opacity from `0.0`-`1.0`
function DrawSphere(x, y, z, radius, r, g, b, opacity) end

---Draws a 3D sphere, typically seen in the GTA:O freemode event "Penned In".
---
---Example [image](https://imgur.com/nCbtS4H):
---
---```lua
---DrawSphere(35.45, 172.66, 126.22, 1.0, 0, 0, 255, 0.2)
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x799017F9E3B10112)
---@param x number X coordinate of the sphere
---@param y number Y coordinate of the sphere
---@param z number Z coordinate of the sphere
---@param radius number Size of the sphere, `1.0` = 1 meter
---@param r number Color red `0`-`255`
---@param g number Color green `0`-`255`
---@param b number Color blue `0`-`255`
---@param opacity number Opacity from `0.0`-`1.0`
function N_0x799017F9E3B10112(x, y, z, radius, r, g, b, opacity) end

---```
---unk is not used so no need  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0DF606929C105BE1)
---@param scaleform number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
---@param unk number 
function DrawScaleformMovieFullscreen(scaleform, red, green, blue, alpha, unk) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x87D51D72255D4E78)
---@param scaleform number 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param p7 number 
---@param sharpness number 
---@param p9 number 
---@param scaleX number 
---@param scaleY number 
---@param scaleZ number 
---@param p13 any 
function DrawScaleformMovie3d(scaleform, posX, posY, posZ, rotX, rotY, rotZ, p7, sharpness, p9, scaleX, scaleY, scaleZ, p13) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x87D51D72255D4E78)
---@param scaleform number 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param p7 number 
---@param sharpness number 
---@param p9 number 
---@param scaleX number 
---@param scaleY number 
---@param scaleZ number 
---@param p13 any 
function N_0x87D51D72255D4E78(scaleform, posX, posY, posZ, rotX, rotY, rotZ, p7, sharpness, p9, scaleX, scaleY, scaleZ, p13) end

---```
---It's called after 0xD3A10FC7FD8D98CD and 0xF1CEA8A4198D8E9A  
---p0 was always "CELEBRATION_WINNER"  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x98C4FE6EC34154CA)
---@param p0 string 
---@param ped number 
---@param p2 number 
---@param posX number 
---@param posY number 
---@param posZ number 
---@return boolean retval 
function DrawShowroom(p0, ped, p2, posX, posY, posZ) end

---```
---It's called after 0xD3A10FC7FD8D98CD and 0xF1CEA8A4198D8E9A  
---p0 was always "CELEBRATION_WINNER"  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x98C4FE6EC34154CA)
---@param p0 string 
---@param ped number 
---@param p2 number 
---@param posX number 
---@param posY number 
---@param posZ number 
---@return boolean retval 
function N_0x98C4FE6EC34154CA(p0, ped, p2, posX, posY, posZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5BCA583A583194DB)
---@param posX number 
---@param posY number 
---@param posZ number 
---@param dirX number 
---@param dirY number 
---@param dirZ number 
---@param colorR number 
---@param colorG number 
---@param colorB number 
---@param distance number 
---@param brightness number 
---@param roundness number 
---@param radius number 
---@param falloff number 
---@param shadowId number 
function DrawSpotLightWithShadow(posX, posY, posZ, dirX, dirY, dirZ, colorR, colorG, colorB, distance, brightness, roundness, radius, falloff, shadowId) end

---```
---Parameters:  
---* pos - coordinate where the spotlight is located  
---* dir - the direction vector the spotlight should aim at from its current position  
---* r,g,b - color of the spotlight  
---* distance - the maximum distance the light can reach  
---* brightness - the brightness of the light  
---* roundness - "smoothness" of the circle edge  
---* radius - the radius size of the spotlight  
---* falloff - the falloff size of the light's edge (example: www.i.imgur.com/DemAWeO.jpg)  
---Example in C# (spotlight aims at the closest vehicle):  
---Vector3 myPos = Game.Player.Character.Position;  
---Vehicle nearest = World.GetClosestVehicle(myPos , 1000f);  
---Vector3 destinationCoords = nearest.Position;  
---Vector3 dirVector = destinationCoords - myPos;  
---dirVector.Normalize();  
---Function.Call(Hash.DRAW_SPOT_LIGHT, pos.X, pos.Y, pos.Z, dirVector.X, dirVector.Y, dirVector.Z, 255, 255, 255, 100.0f, 1f, 0.0f, 13.0f, 1f);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD0F64B265C8C8B33)
---@param posX number 
---@param posY number 
---@param posZ number 
---@param dirX number 
---@param dirY number 
---@param dirZ number 
---@param colorR number 
---@param colorG number 
---@param colorB number 
---@param distance number 
---@param brightness number 
---@param hardness number 
---@param radius number 
---@param falloff number 
function DrawSpotLight(posX, posY, posZ, dirX, dirY, dirZ, colorR, colorG, colorB, distance, brightness, hardness, radius, falloff) end

---Used for drawling Deadline trailing lights, see deadline.ytd
---
---For UVW mapping (u,v,w parameters), reference your favourite internet resource for more details.
---[Native Documentation](https://docs.fivem.net/natives/?_0x29280002282F1928)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param x3 number 
---@param y3 number 
---@param z3 number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
---@param textureDict string 
---@param textureName string 
---@param u1 number 
---@param v1 number 
---@param w1 number 
---@param u2 number 
---@param v2 number 
---@param w2 number 
---@param u3 number 
---@param v3 number 
---@param w3 number 
function DrawSpritePoly(x1, y1, z1, x2, y2, z2, x3, y3, z3, red, green, blue, alpha, textureDict, textureName, u1, v1, w1, u2, v2, w2, u3, v3, w3) end

---Used for drawling Deadline trailing lights, see deadline.ytd
---
---For UVW mapping (u,v,w parameters), reference your favourite internet resource for more details.
---[Native Documentation](https://docs.fivem.net/natives/?_0x29280002282F1928)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param x3 number 
---@param y3 number 
---@param z3 number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
---@param textureDict string 
---@param textureName string 
---@param u1 number 
---@param v1 number 
---@param w1 number 
---@param u2 number 
---@param v2 number 
---@param w2 number 
---@param u3 number 
---@param v3 number 
---@param w3 number 
function N_0x29280002282F1928(x1, y1, z1, x2, y2, z2, x3, y3, z3, red, green, blue, alpha, textureDict, textureName, u1, v1, w1, u2, v2, w2, u3, v3, w3) end

---```
---Draws a 2D sprite on the screen.  
---Parameters:  
---textureDict - Name of texture dictionary to load texture from (e.g. "CommonMenu", "MPWeaponsCommon", etc.)  
---textureName - Name of texture to load from texture dictionary (e.g. "last_team_standing_icon", "tennis_icon", etc.)  
---screenX/Y - Screen offset (0.5 = center)  
---scaleX/Y - Texture scaling. Negative values can be used to flip the texture on that axis. (0.5 = half)  
---heading - Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees  
---red,green,blue - Sprite color (default = 255/255/255)  
---alpha - opacity level  
---```
---
---```
---NativeDB Added Parameter 12: BOOL p11
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE7FFAE5EBF23D890)
---@param textureDict string 
---@param textureName string 
---@param screenX number 
---@param screenY number 
---@param width number 
---@param height number 
---@param heading number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function DrawSprite(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha) end

---Similar to DRAW_SPRITE, but allows to specify the texture coordinates used to draw the sprite.
---u1, v1 - texture coordinates for the top-left corner
---u2, v2 - texture coordinates for the bottom-right corner
---
---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x95812F9B26074726)
---@param textureDict string 
---@param textureName string 
---@param x number 
---@param y number 
---@param width number 
---@param height number 
---@param u1 number 
---@param v1 number 
---@param u2 number 
---@param v2 number 
---@param heading number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function DrawSpriteUv(textureDict, textureName, x, y, width, height, u1, v1, u2, v2, heading, red, green, blue, alpha) end

---Used for drawling Deadline trailing lights, see deadline.ytd
---
---Each vertex has its own colour that is blended/illuminated on the texture. Additionally, the R, G, and B components are floats that are int-casted internally.
---
---For UVW mapping (u,v,w parameters), reference your favourite internet resource for more details.
---[Native Documentation](https://docs.fivem.net/natives/?_0x736D7AA1B750856B)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param x3 number 
---@param y3 number 
---@param z3 number 
---@param red1 number 
---@param green1 number 
---@param blue1 number 
---@param alpha1 number 
---@param red2 number 
---@param green2 number 
---@param blue2 number 
---@param alpha2 number 
---@param red3 number 
---@param green3 number 
---@param blue3 number 
---@param alpha3 number 
---@param textureDict string 
---@param textureName string 
---@param u1 number 
---@param v1 number 
---@param w1 number 
---@param u2 number 
---@param v2 number 
---@param w2 number 
---@param u3 number 
---@param v3 number 
---@param w3 number 
function DrawSpritePoly2(x1, y1, z1, x2, y2, z2, x3, y3, z3, red1, green1, blue1, alpha1, red2, green2, blue2, alpha2, red3, green3, blue3, alpha3, textureDict, textureName, u1, v1, w1, u2, v2, w2, u3, v3, w3) end

---Used for drawling Deadline trailing lights, see deadline.ytd
---
---Each vertex has its own colour that is blended/illuminated on the texture. Additionally, the R, G, and B components are floats that are int-casted internally.
---
---For UVW mapping (u,v,w parameters), reference your favourite internet resource for more details.
---[Native Documentation](https://docs.fivem.net/natives/?_0x736D7AA1B750856B)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param x3 number 
---@param y3 number 
---@param z3 number 
---@param red1 number 
---@param green1 number 
---@param blue1 number 
---@param alpha1 number 
---@param red2 number 
---@param green2 number 
---@param blue2 number 
---@param alpha2 number 
---@param red3 number 
---@param green3 number 
---@param blue3 number 
---@param alpha3 number 
---@param textureDict string 
---@param textureName string 
---@param u1 number 
---@param v1 number 
---@param w1 number 
---@param u2 number 
---@param v2 number 
---@param w2 number 
---@param u3 number 
---@param v3 number 
---@param w3 number 
function N_0x736D7AA1B750856B(x1, y1, z1, x2, y2, z2, x3, y3, z3, red1, green1, blue1, alpha1, red2, green2, blue2, alpha2, red3, green3, blue3, alpha3, textureDict, textureName, u1, v1, w1, u2, v2, w2, u3, v3, w3) end

---```
---All calls to this native are preceded by calls to GRAPHICS::_0x61BB1D9B3A95D802 and GRAPHICS::_0xC6372ECD45D73BCD, respectively.
---"act_cinema.ysc", line 1483:
---HUD::SET_HUD_COMPONENT_POSITION(15, 0.0, -0.0375);
---HUD::SET_TEXT_RENDER_ID(l_AE);
---GRAPHICS::_0x61BB1D9B3A95D802(4);
---GRAPHICS::_0xC6372ECD45D73BCD(1);
---if (GRAPHICS::_0x0AD973CA1E077B60(${movie_arthouse})) {
---    GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 0.7375, 1.0, 0.0, 255, 255, 255, 255);
---} else {
---    GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);
---}
---"am_mp_property_int.ysc", line 102545:
---if (ENTITY::DOES_ENTITY_EXIST(a_2._f3)) {
---    if (HUD::IS_NAMED_RENDERTARGET_LINKED(ENTITY::GET_ENTITY_MODEL(a_2._f3))) {
---        HUD::SET_TEXT_RENDER_ID(a_2._f1);
---        GRAPHICS::_0x61BB1D9B3A95D802(4);
---        GRAPHICS::_0xC6372ECD45D73BCD(1);
---        GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);
---        if (GRAPHICS::GET_TV_CHANNEL() == -1) {
---            sub_a8fa5(a_2, 1);
---        } else {
---            sub_a8fa5(a_2, 1);
---            GRAPHICS::ATTACH_TV_AUDIO_TO_ENTITY(a_2._f3);
---        }
---        HUD::SET_TEXT_RENDER_ID(HUD::GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID());
---    }
---}
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFDDC2B4ED3C69DF0)
---@param xPos number 
---@param yPos number 
---@param xScale number 
---@param yScale number 
---@param rotation number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function DrawTvChannel(xPos, yPos, xScale, yScale, rotation, red, green, blue, alpha) end

---Creates a motion-blur sort of effect, this native does not seem to work, however by using the [`START_SCREEN_EFFECT`](#\_0x2206BF9A37B7F724) native with `"DrugsMichaelAliensFight"` as the effect parameter, you should be able to get the effect.
---
---This native does not seem to work, however by using the [START_SCREEN_EFFECT](https://runtime.fivem.net/doc/natives/#\_0x2206BF9A37B7F724) native with "DrugsMichaelAliensFight" as the effect parameter, you should be able to get the effect.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9DCE1F0F78260875)
---@param toggle boolean 
function EnableAlienBloodVfx(toggle) end

---Creates a motion-blur sort of effect, this native does not seem to work, however by using the [`START_SCREEN_EFFECT`](#\_0x2206BF9A37B7F724) native with `"DrugsMichaelAliensFight"` as the effect parameter, you should be able to get the effect.
---
---This native does not seem to work, however by using the [START_SCREEN_EFFECT](https://runtime.fivem.net/doc/natives/#\_0x2206BF9A37B7F724) native with "DrugsMichaelAliensFight" as the effect parameter, you should be able to get the effect.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9DCE1F0F78260875)
---@param toggle boolean 
function N_0x9DCE1F0F78260875(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x873FA65C778AD970)
---@param toggle boolean 
function EnableMovieSubtitles(toggle) end

---```
---Creates cartoon effect when Michel smokes the weed  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD821490579791273)
---@param toggle boolean 
function EnableClownBloodVfx(toggle) end

---```
---Creates cartoon effect when Michel smokes the weed  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD821490579791273)
---@param toggle boolean 
function SetCameraEndtime(toggle) end

---```
---Pops and calls the Scaleform function on the stack  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6796A8FFA375E53)
function EndScaleformMovieMethod() end

---```
---Pops and calls the Scaleform function on the stack  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6796A8FFA375E53)
function PopScaleformMovieFunctionVoid() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x74C180030FDE4B69)
---@param toggle boolean 
function EnableMovieKeyframeWait(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x74C180030FDE4B69)
---@param toggle boolean 
function N_0x74C180030FDE4B69(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A123435A26C36CD)
function EndPetrolTrailDecals() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A123435A26C36CD)
function N_0x0A123435A26C36CD() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x362E2D3FE93A9959)
function EndTextCommandScaleformString() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x362E2D3FE93A9959)
function EndTextComponent() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC50AA39A577AF886)
---@return number retval 
function EndScaleformMovieMethodReturnValue() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC50AA39A577AF886)
---@return number retval 
function PopScaleformMovieFunction() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC50AA39A577AF886)
---@return number retval 
function EndScaleformMovieMethodReturn() end

---```
---Same as END_TEXT_COMMAND_SCALEFORM_STRING but does not perform HTML conversion for text tokens.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAE4E8157D9ECF087)
function EndTextCommandScaleformString2() end

---```
---Same as END_TEXT_COMMAND_SCALEFORM_STRING but does not perform HTML conversion for text tokens.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAE4E8157D9ECF087)
function N_0xAE4E8157D9ECF087() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD77EDADB0420E6E0)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param duration number A duration in seconds.
function FadeDecalsInRange(x, y, z, radius, duration) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC9B18B4619F48F7B)
---@param p0 number 
function FadeUpPedLight(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC9B18B4619F48F7B)
---@param p0 number 
function N_0xC9B18B4619F48F7B(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC459CFA0CCE245B)
---@param toggle boolean 
function ForceRenderInGameUi(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC459CFA0CCE245B)
---@param toggle boolean 
function N_0xDC459CFA0CCE245B(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD801CC02177FA3F1)
function FreeMemoryForHighQualityPhoto() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD801CC02177FA3F1)
function N_0xD801CC02177FA3F1() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A46AF8A78DC5E0A)
function FreeMemoryForMissionCreatorPhoto() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A46AF8A78DC5E0A)
function N_0x0A46AF8A78DC5E0A() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6A12D88881435DCA)
function FreeMemoryForLowQualityPhoto() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6A12D88881435DCA)
function N_0x6A12D88881435DCA() end

---```
---Returns current screen resolution.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x873C9F3104101DD3)
---@param x number 
---@param y number 
function GetActiveScreenResolution(x, y) end

---```
---Returns current screen resolution.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x873C9F3104101DD3)
---@param x number 
---@param y number 
function GetScreenActiveResolution(x, y) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x473151EBC762C6DA)
---@return number retval 
function GetCurrentNumberOfCloudPhotos() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x473151EBC762C6DA)
---@return number retval 
function N_0x473151EBC762C6DA() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x473151EBC762C6DA)
---@return number retval 
function GetNumberOfPhotos() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x473151EBC762C6DA)
---@return number retval 
function GetCurrentNumberOfPhotos() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1307EF624A80D87)
---@param b boolean 
---@return number retval 
function GetAspectRatio(b) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1307EF624A80D87)
---@param b boolean 
---@return number retval 
function GetScreenAspectRatio(b) end

---See [`GET_TIMECYCLE_MODIFIER_INDEX`](#\_0xFDF3D97C674AFB66) for use, works the same just for the secondary timecycle modifier.
---[Native Documentation](https://docs.fivem.net/natives/?_0xBB0527EC6341496D)
---@return number retval An integer representing the Timecycle modifier
function GetExtraTimecycleModifierIndex() end

---See [`GET_TIMECYCLE_MODIFIER_INDEX`](#\_0xFDF3D97C674AFB66) for use, works the same just for the secondary timecycle modifier.
---[Native Documentation](https://docs.fivem.net/natives/?_0xBB0527EC6341496D)
---@return number retval An integer representing the Timecycle modifier
function N_0xBB0527EC6341496D() end

---In percentage: 0.0 - 100.0
---
---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8E17DDD6B9D5BF29)
---@param binkMovie number 
---@return number retval 
function GetBinkMovieTime(binkMovie) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2F09F7976C512404)
---@param xCoord number 
---@param yCoord number 
---@param zCoord number 
---@param radius number 
---@return boolean retval 
function GetIsPetrolDecalInRange(xCoord, yCoord, zCoord, radius) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2F09F7976C512404)
---@param xCoord number 
---@param yCoord number 
---@param zCoord number 
---@param radius number 
---@return boolean retval 
function N_0x2F09F7976C512404(xCoord, yCoord, zCoord, radius) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x323F647679A09103)
---@param decal number 
---@return number retval 
function GetDecalWashLevel(decal) end

---```
---This function is hard-coded to always return 96.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC54A7AF8B3A14EF)
---@return number retval 
function GetMaximumNumberOfCloudPhotos() end

---```
---This function is hard-coded to always return 96.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC54A7AF8B3A14EF)
---@return number retval 
function N_0xDC54A7AF8B3A14EF() end

---```
---This function is hard-coded to always return 96.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC54A7AF8B3A14EF)
---@return number retval 
function GetMaximumNumberOfPhotos2() end

---```
---false = Any resolution < 1280x720  
---true = Any resolution >= 1280x720  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x84ED31191CC5D2C9)
---@return boolean retval 
function GetIsHidef() end

---```
---This function is hard-coded to always return 0.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x34D23450F028B0BF)
---@return number retval 
function GetMaximumNumberOfPhotos() end

---```
---Gets the scale of safe zone. if the safe zone size scale is max, it will return 1.0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBAF107B6BB2C97F0)
---@return number retval 
function GetSafeZoneSize() end

---```
---Setting Aspect Ratio Manually in game will return:  
---false - for Narrow format Aspect Ratios (3:2, 4:3, 5:4, etc. )  
---true - for Wide format Aspect Ratios (5:3, 16:9, 16:10, etc. )  
---Setting Aspect Ratio to "Auto" in game will return "false" or "true" based on the actual set Resolution Ratio.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x30CF4BDA4FCB1905)
---@return boolean retval 
function GetIsWidescreen() end

---```
---methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD80A80346A45D761)
---@param methodReturn number 
---@return boolean retval 
function GetScaleformMovieMethodReturnValueBool(methodReturn) end

---```
---methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD80A80346A45D761)
---@param methodReturn number 
---@return boolean retval 
function N_0xD80A80346A45D761(methodReturn) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x35FB78DC42B7BD21)
---@return boolean retval 
function GetRequestingnightvision() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x35FB78DC42B7BD21)
---@return boolean retval 
function N_0x35FB78DC42B7BD21() end

---Used to get a return value from a scaleform function. Returns an int in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING returns a string.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2DE7EFA66B906036)
---@param method_return number The return value of this native: `EndScaleformMovieMethodReturn`
---@return number retval Returns an int in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING` returns a string.
function GetScaleformMovieMethodReturnValueInt(method_return) end

---Used to get a return value from a scaleform function. Returns an int in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING returns a string.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2DE7EFA66B906036)
---@param method_return number The return value of this native: `EndScaleformMovieMethodReturn`
---@return number retval Returns an int in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING` returns a string.
function N_0x2DE7EFA66B906036(method_return) end

---Used to get a return value from a scaleform function. Returns an int in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING returns a string.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2DE7EFA66B906036)
---@param method_return number The return value of this native: `EndScaleformMovieMethodReturn`
---@return number retval Returns an int in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING` returns a string.
function GetScaleformMovieFunctionReturnInt(method_return) end

---Used to get a return value from a scaleform function. Returns a string in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT returns an int.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE1E258829A885245)
---Example: 
---```local a = RequestScaleformMovie("translate") --scaleform gfx
---while not HasScaleformMovieLoaded(a) do
---    Citizen.Wait(0)
---end
---BeginScaleformMovieMethod(a,"EnglishToChinese") --call function
---ScaleformMovieMethodAddParamPlayerNameString("Good") --input
---local b = EndScaleformMovieMethodReturnValue()
---while true do
---    if IsScaleformMovieMethodReturnValueReady(b) then
---       local c = GetScaleformMovieMethodReturnValueString(b) --output
---       print(c)
---       break
---    end
---    Citizen.Wait(0)
---end```
---@param method_return number The return value of this native: `EndScaleformMovieMethodReturn`
---@return string retval Returns a string in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT` returns an int.
function GetScaleformMovieMethodReturnValueString(method_return) end

---Used to get a return value from a scaleform function. Returns a string in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT returns an int.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE1E258829A885245)
---Example: 
---```local a = RequestScaleformMovie("translate") --scaleform gfx
---while not HasScaleformMovieLoaded(a) do
---    Citizen.Wait(0)
---end
---BeginScaleformMovieMethod(a,"EnglishToChinese") --call function
---ScaleformMovieMethodAddParamPlayerNameString("Good") --input
---local b = EndScaleformMovieMethodReturnValue()
---while true do
---    if IsScaleformMovieMethodReturnValueReady(b) then
---       local c = GetScaleformMovieMethodReturnValueString(b) --output
---       print(c)
---       break
---    end
---    Citizen.Wait(0)
---end```
---@param method_return number The return value of this native: `EndScaleformMovieMethodReturn`
---@return string retval Returns a string in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT` returns an int.
function SittingTv(method_return) end

---Used to get a return value from a scaleform function. Returns a string in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT returns an int.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE1E258829A885245)
---Example: 
---```local a = RequestScaleformMovie("translate") --scaleform gfx
---while not HasScaleformMovieLoaded(a) do
---    Citizen.Wait(0)
---end
---BeginScaleformMovieMethod(a,"EnglishToChinese") --call function
---ScaleformMovieMethodAddParamPlayerNameString("Good") --input
---local b = EndScaleformMovieMethodReturnValue()
---while true do
---    if IsScaleformMovieMethodReturnValueReady(b) then
---       local c = GetScaleformMovieMethodReturnValueString(b) --output
---       print(c)
---       break
---    end
---    Citizen.Wait(0)
---end```
---@param method_return number The return value of this native: `EndScaleformMovieMethodReturn`
---@return string retval Returns a string in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT` returns an int.
function GetScaleformMovieFunctionReturnString(method_return) end

---Calculates the effective X/Y fractions when applying the values set by `SET_SCRIPT_GFX_ALIGN` and
---`SET_SCRIPT_GFX_ALIGN_PARAMS`.
---[Native Documentation](https://docs.fivem.net/natives/?_0x6DD8F5AA635EB4B2)
---Example: 
---```local calcX, calcX = GetScriptGfxPosition(0.2, 0.2)```
---@param x number The input X coordinate.
---@param y number The input Y coordinate.
---@param calculatedX number A pointer to the calculated X value.
---@param calculatedY number A pointer to the calculated Y value.
function GetScriptGfxPosition(x, y, calculatedX, calculatedY) end

---Calculates the effective X/Y fractions when applying the values set by `SET_SCRIPT_GFX_ALIGN` and
---`SET_SCRIPT_GFX_ALIGN_PARAMS`.
---[Native Documentation](https://docs.fivem.net/natives/?_0x6DD8F5AA635EB4B2)
---Example: 
---```local calcX, calcX = GetScriptGfxPosition(0.2, 0.2)```
---@param x number The input X coordinate.
---@param y number The input Y coordinate.
---@param calculatedX number A pointer to the calculated X value.
---@param calculatedY number A pointer to the calculated Y value.
function N_0x6DD8F5AA635EB4B2(x, y, calculatedX, calculatedY) end

---```
---Convert a world coordinate into its relative screen coordinate.  (WorldToScreen)
---Returns a boolean; whether or not the operation was successful. It will return false if the coordinates given are not visible to the rendering camera.
---For .NET users...
---VB:
---Public Shared Function World3DToScreen2d(pos as vector3) As Vector2
---        Dim x2dp, y2dp As New Native.OutputArgument
---        Native.Function.Call(Of Boolean)(Native.Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.x, pos.y, pos.z, x2dp, y2dp)
---        Return New Vector2(x2dp.GetResult(Of Single), y2dp.GetResult(Of Single))
---
---    End Function
---C#:
---Vector2 World3DToScreen2d(Vector3 pos)
---    {
---        var x2dp = new OutputArgument();
---        var y2dp = new OutputArgument();
---        Function.Call<bool>(Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.X, pos.Y, pos.Z, x2dp, y2dp);
---        return new Vector2(x2dp.GetResult<float>(), y2dp.GetResult<float>());
---    }
---//USE VERY SMALL VALUES FOR THE SCALE OF RECTS/TEXT because it is dramatically larger on screen than in 3D, e.g '0.05' small.
---Used to be called _WORLD3D_TO_SCREEN2D
---I thought we lost you from the scene forever. It does seem however that calling SET_DRAW_ORIGIN then your natives, then ending it. Seems to work better for certain things such as keeping boxes around people for a predator missile e.g.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x34E82F05DF2974F5)
---@param worldX number 
---@param worldY number 
---@param worldZ number 
---@param screenX number 
---@param screenY number 
---@return boolean retval 
function GetScreenCoordFromWorldCoord(worldX, worldY, worldZ, screenX, screenY) end

---```
---Convert a world coordinate into its relative screen coordinate.  (WorldToScreen)
---Returns a boolean; whether or not the operation was successful. It will return false if the coordinates given are not visible to the rendering camera.
---For .NET users...
---VB:
---Public Shared Function World3DToScreen2d(pos as vector3) As Vector2
---        Dim x2dp, y2dp As New Native.OutputArgument
---        Native.Function.Call(Of Boolean)(Native.Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.x, pos.y, pos.z, x2dp, y2dp)
---        Return New Vector2(x2dp.GetResult(Of Single), y2dp.GetResult(Of Single))
---
---    End Function
---C#:
---Vector2 World3DToScreen2d(Vector3 pos)
---    {
---        var x2dp = new OutputArgument();
---        var y2dp = new OutputArgument();
---        Function.Call<bool>(Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.X, pos.Y, pos.Z, x2dp, y2dp);
---        return new Vector2(x2dp.GetResult<float>(), y2dp.GetResult<float>());
---    }
---//USE VERY SMALL VALUES FOR THE SCALE OF RECTS/TEXT because it is dramatically larger on screen than in 3D, e.g '0.05' small.
---Used to be called _WORLD3D_TO_SCREEN2D
---I thought we lost you from the scene forever. It does seem however that calling SET_DRAW_ORIGIN then your natives, then ending it. Seems to work better for certain things such as keeping boxes around people for a predator missile e.g.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x34E82F05DF2974F5)
---@param worldX number 
---@param worldY number 
---@param worldZ number 
---@param screenX number 
---@param screenY number 
---@return boolean retval 
function World3dToScreen2d(worldX, worldY, worldZ, screenX, screenY) end

---Hardcoded to always return 1280x720. Use [`_GET_ACTIVE_SCREEN_RESOLUTION`](?\_0x873C9F3104101DD3) to retrieve the correct screen resolution.
---[Native Documentation](https://docs.fivem.net/natives/?_0x888D57E407E63624)
---@param x number 
---@param y number 
function GetScreenResolution(x, y) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1670F8D05056F257)
---@param p0 string 
---@return number retval 
function GetStatusOfLoadMissionCreatorPhoto(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1670F8D05056F257)
---@param p0 string 
---@return number retval 
function N_0x1670F8D05056F257(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C0C4E81E1AC60A0)
---@return number retval 
function GetStatusOfSaveHighQualityPhoto() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C0C4E81E1AC60A0)
---@return number retval 
function N_0x0C0C4E81E1AC60A0() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5CCABFFCA31DDE33)
---@return number retval 
function GetScreenblurFadeCurrentTime() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5CCABFFCA31DDE33)
---@return number retval 
function IsParticleFxDelayedBlink() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0D6CA79EEEBD8CA3)
---@return number retval 
function GetStatusOfTakeHighQualityPhoto() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0D6CA79EEEBD8CA3)
---@return number retval 
function N_0x0D6CA79EEEBD8CA3() end

---```
---3 matches across 3 scripts. First 2 were 0, 3rd was 1. Possibly a bool.
---appcamera, appmedia, and cellphone_controller.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF5BED327CEA362B1)
---@param p0 boolean 
---@return number retval 
function GetStatusOfSortedListOperation(p0) end

---```
---3 matches across 3 scripts. First 2 were 0, 3rd was 1. Possibly a bool.
---appcamera, appmedia, and cellphone_controller.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF5BED327CEA362B1)
---@param p0 boolean 
---@return number retval 
function N_0xF5BED327CEA362B1(p0) end

---```
---Returns the texture resolution of the passed texture dict+name.  
---Note: Most texture resolutions are doubled compared to the console version of the game.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x35736EE65BD00C11)
---@param textureDict string 
---@param textureName string 
---@return vector3 retval 
function GetTextureResolution(textureDict, textureName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x90A78ECAA4E78453)
---@return number retval 
function GetStatusOfTakeMissionCreatorPhoto() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x90A78ECAA4E78453)
---@return number retval 
function N_0x90A78ECAA4E78453() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x459FD2C8D0AB78BC)
---@return number retval 
function GetTimecycleTransitionModifierIndex() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x459FD2C8D0AB78BC)
---@return number retval 
function N_0x459FD2C8D0AB78BC() end

---```
---Only use for this in the PC scripts is:
---if (GRAPHICS::GET_TIMECYCLE_MODIFIER_INDEX() != -1)
---For a full list, see here: pastebin.com/cnk7FTF2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFDF3D97C674AFB66)
---@return number retval 
function GetTimecycleModifierIndex() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC1E275A90D39995)
---@return number retval 
function GetTvChannel() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2170813D3DD8661B)
---@return number retval 
function GetTvVolume() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x44B80ABAB9D80BD3)
---@return boolean retval 
function GetUsingseethrough() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x44B80ABAB9D80BD3)
---@return boolean retval 
function IsSeethroughActive() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB3DAC2C86001E5E)
---@return boolean retval 
function GetTogglePausedRenderphasesStatus() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB3DAC2C86001E5E)
---@return boolean retval 
function N_0xEB3DAC2C86001E5E() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2202A3F42C8E5F79)
---@return boolean retval 
function GetUsingnightvision() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2202A3F42C8E5F79)
---@return boolean retval 
function IsNightvisionInactive() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2202A3F42C8E5F79)
---@return boolean retval 
function IsNightvisionActive() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA4819F5E23E2FFAD)
---@return number retval 
function GolfTrailGetMaxHeight() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA4819F5E23E2FFAD)
---@return number retval 
function N_0xA4819F5E23E2FFAD() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE26117A5841B2FF)
---@param vehicle number 
---@param p1 number 
---@return number retval 
function GetVehicleCrewEmblemRequestState(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFE26117A5841B2FF)
---@param vehicle number 
---@param p1 number 
---@return number retval 
function N_0xFE26117A5841B2FF(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA4664972A9B8F8BA)
---@param p0 number 
---@return vector3 retval 
function GolfTrailGetVisualControlPoint(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA4664972A9B8F8BA)
---@param p0 number 
---@return vector3 retval 
function N_0xA4664972A9B8F8BA(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x12995F2E53FFA601)
---@param p0 number 
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
function GolfTrailSetColour(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x12995F2E53FFA601)
---@param p0 number 
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
function N_0x12995F2E53FFA601(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA51C4B86B71652AE)
---@param toggle boolean 
function GolfTrailSetEnabled(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA51C4B86B71652AE)
---@param toggle boolean 
function N_0xA51C4B86B71652AE(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x06F761EA47C1D3ED)
---@param p0 boolean 
function GolfTrailSetFacing(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x06F761EA47C1D3ED)
---@param p0 boolean 
function N_0x06F761EA47C1D3ED(p0) end

---```
---12 matches across 4 scripts. All 4 scripts were job creators.
---type ranged from 0 - 2.
---p4 was always 0.2f. Likely scale.
---assuming p5 - p8 is RGBA, the graphic is always yellow (255, 255, 0, 255).
---Tested but noticed nothing.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB1BB03742917A5D6)
---@param type number 
---@param xPos number 
---@param yPos number 
---@param zPos number 
---@param p4 number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function GolfTrailSetFixedControlPoint(type, xPos, yPos, zPos, p4, red, green, blue, alpha) end

---```
---12 matches across 4 scripts. All 4 scripts were job creators.
---type ranged from 0 - 2.
---p4 was always 0.2f. Likely scale.
---assuming p5 - p8 is RGBA, the graphic is always yellow (255, 255, 0, 255).
---Tested but noticed nothing.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB1BB03742917A5D6)
---@param type number 
---@param xPos number 
---@param yPos number 
---@param zPos number 
---@param p4 number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function N_0xB1BB03742917A5D6(type, xPos, yPos, zPos, p4, red, green, blue, alpha) end

---```
---p8 seems to always be false.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x312342E1A4874F3F)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@param p7 number 
---@param p8 boolean 
function GolfTrailSetPath(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

---```
---p8 seems to always be false.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x312342E1A4874F3F)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@param p7 number 
---@param p8 boolean 
function N_0x312342E1A4874F3F(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2485D34E50A22E84)
---@param p0 number 
---@param p1 number 
---@param p2 number 
function GolfTrailSetRadius(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2485D34E50A22E84)
---@param p0 number 
---@param p1 number 
---@param p2 number 
function N_0x2485D34E50A22E84(p0, p1, p2) end

---```
---Only appeared in Golf & Golf_mp. Parameters were all ptrs  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9CFDD90B2B844BF7)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
function GolfTrailSetShaderParams(p0, p1, p2, p3, p4) end

---```
---Only appeared in Golf & Golf_mp. Parameters were all ptrs  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9CFDD90B2B844BF7)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
function N_0x9CFDD90B2B844BF7(p0, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x302C91AB2D477F7E)
function GrassLodResetScriptAreas() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x302C91AB2D477F7E)
function N_0x302C91AB2D477F7E() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8217150E1217EBFD)
---@param scaleformHandle number 
---@return boolean retval 
function HasScaleformContainerMovieLoadedIntoParent(scaleformHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDBAA5EC848BA2D46)
---@param p0 number 
---@param p1 number 
function GolfTrailSetTessellation(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDBAA5EC848BA2D46)
---@param p0 number 
---@param p1 number 
function N_0xDBAA5EC848BA2D46(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x85F01B8D5B90570E)
---@param scaleformHandle number 
---@return boolean retval 
function HasScaleformMovieLoaded(scaleformHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF6E5987D2B4D140)
---@param hudComponent number 
---@return boolean retval 
function HasScaleformScriptHudMovieLoaded(hudComponent) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF6E5987D2B4D140)
---@param hudComponent number 
---@return boolean retval 
function HasHudScaleformLoaded(hudComponent) end

---```
---Wraps 0xAAE9BE70EC7C69AB with FLT_MAX as p7, Jenkins: 0x73E96210?
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D955F6A9E0295B1)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
function GrassLodShrinkScriptAreas(x, y, z, radius, p4, p5, p6) end

---```
---Wraps 0xAAE9BE70EC7C69AB with FLT_MAX as p7, Jenkins: 0x73E96210?
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D955F6A9E0295B1)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
function N_0x6D955F6A9E0295B1(x, y, z, radius, p4, p5, p6) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0145F696AAAAD2E4)
---@param textureDict string 
---@return boolean retval 
function HasStreamedTextureDictLoaded(textureDict) end

---```
---Only values used in the scripts are:
---"heist_mp"
---"heistmap_mp"
---"instructional_buttons"
---"heist_pre"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C1C5D756FB5F337)
---@param scaleformName string 
---@return boolean retval 
function HasScaleformMovieFilenameLoaded(scaleformName) end

---```
---Only values used in the scripts are:
---"heist_mp"
---"heistmap_mp"
---"instructional_buttons"
---"heist_pre"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C1C5D756FB5F337)
---@param scaleformName string 
---@return boolean retval 
function N_0x0C1C5D756FB5F337(scaleformName) end

---```
---Only values used in the scripts are:
---"heist_mp"
---"heistmap_mp"
---"instructional_buttons"
---"heist_pre"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C1C5D756FB5F337)
---@param scaleformName string 
---@return boolean retval 
function HasNamedScaleformMovieLoaded(scaleformName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC694D74949CAFD0C)
---@param decal number 
---@return boolean retval 
function IsDecalAlive(decal) end

---methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
---Returns true if the return value of a scaleform function is ready to be collected (using GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING or GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT).
---[Native Documentation](https://docs.fivem.net/natives/?_0x768FF8961BA904D6)
---@param method_return number The return value of this native: `EndScaleformMovieMethodReturn`
---@return boolean retval Returns true if the return value of a scaleform function is ready to be collected
function IsScaleformMovieMethodReturnValueReady(method_return) end

---methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
---Returns true if the return value of a scaleform function is ready to be collected (using GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING or GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT).
---[Native Documentation](https://docs.fivem.net/natives/?_0x768FF8961BA904D6)
---@param method_return number The return value of this native: `EndScaleformMovieMethodReturn`
---@return boolean retval Returns true if the return value of a scaleform function is ready to be collected
function N_0x768FF8961BA904D6(method_return) end

---methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
---Returns true if the return value of a scaleform function is ready to be collected (using GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING or GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT).
---[Native Documentation](https://docs.fivem.net/natives/?_0x768FF8961BA904D6)
---@param method_return number The return value of this native: `EndScaleformMovieMethodReturn`
---@return boolean retval Returns true if the return value of a scaleform function is ready to be collected
function GetScaleformMovieFunctionReturnBool(method_return) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F710BFF7DAE6261)
---@param tvChannel number 
---@param p1 any 
---@return boolean retval 
function IsPlaylistUnk(tvChannel, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC45CCDAAC9221CA8)
---@param point number 
---@return boolean retval 
function IsTrackedPointVisible(point) end

---```
---Returns whether screen transition to blur/from blur is running.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7B226C785A52A0A9)
---@return boolean retval 
function IsScreenblurFadeRunning() end

---```
---Returns whether screen transition to blur/from blur is running.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7B226C785A52A0A9)
---@return boolean retval 
function N_0x7B226C785A52A0A9() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x84C8D7C2D30D3280)
---@param p0 any 
---@param p1 any 
function MoveVehicleDecals(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0218BA067D249DEA)
function N_0x0218BA067D249DEA() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x03300B57FCAC6DDB)
---@param p0 boolean 
function N_0x03300B57FCAC6DDB(p0) end

---```
---IS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0AD973CA1E077B60)
---@param videoCliphash number | string 
---@return boolean retval 
function IsTvPlaylistItemPlaying(videoCliphash) end

---```
---IS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0AD973CA1E077B60)
---@param videoCliphash number | string 
---@return boolean retval 
function N_0x0AD973CA1E077B60(videoCliphash) end

---```
---IS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0AD973CA1E077B60)
---@param videoCliphash number | string 
---@return boolean retval 
function LoadTvChannel(videoCliphash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4862437A486F91B0)
---@param p0 string 
---@param p1 any 
---@param p2 any 
---@param p3 boolean 
---@return boolean retval 
function LoadMissionCreatorPhoto(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4862437A486F91B0)
---@param p0 string 
---@param p1 any 
---@param p2 any 
---@param p3 boolean 
---@return boolean retval 
function N_0x4862437A486F91B0(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0AE73D8DF3A762B2)
---@param p0 boolean 
function N_0x0AE73D8DF3A762B2(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB66064452270E8F1)
---@param movieMeshSetName string 
---@return number retval 
function LoadMovieMeshSet(movieMeshSetName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0E4299C549F0D1F1)
---@param toggle boolean 
function N_0x0E4299C549F0D1F1(toggle) end

---```
---DISABLE_S*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x02369D5C8A51FDCF)
---@param toggle boolean 
function N_0x02369D5C8A51FDCF(toggle) end

---```
---UI3DSCENE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x108BE26959A9D9BB)
---@param toggle boolean 
function N_0x108BE26959A9D9BB(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x14FC5833464340A8)
function N_0x14FC5833464340A8() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1BBC135A4D25EDDE)
---@param p0 boolean 
function N_0x1BBC135A4D25EDDE(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1612C45F9E3E0D44)
function N_0x1612C45F9E3E0D44() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x259BA6D4E6F808F1)
---@param p0 any 
function N_0x259BA6D4E6F808F1(p0) end

---```
---SET_TRA*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1CBA05AE7BD7EE05)
---@param p0 number 
function N_0x1CBA05AE7BD7EE05(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x25FC3E33A31AD0C9)
---@param p0 boolean 
function N_0x25FC3E33A31AD0C9(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x27CFB1B1E078CB2D)
function N_0x27CFB1B1E078CB2D() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x27FEB5254759CDE3)
---@param textureDict string 
---@param p1 boolean 
---@return boolean retval 
function N_0x27FEB5254759CDE3(textureDict, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A893980E96B659A)
---@param p0 boolean 
---@return boolean retval 
function N_0x2A893980E96B659A(p0) end

---```
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A251AA48B2B46DB)
function N_0x2A251AA48B2B46DB() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B40A97646381508)
---@param p0 any 
function N_0x2B40A97646381508(p0) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2FCB133CA50A49EB)
---@param p0 any 
---@return any retval 
function N_0x2FCB133CA50A49EB(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C42340F916C5930)
---@param p0 any 
---@return any retval 
function N_0x2C42340F916C5930(p0) end

---```
---GET_CURRENT_*
---
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x30432A0118736E00)
---@return number | string retval 
function N_0x30432A0118736E00() end

---```
---Used in arcade games and Beam hack minigame in Doomsday Heist. For example, [Penetrator Arcade Game](https://streamable.com/8igrzw)
---
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2D3B147AFAD49DE0)
---Example: 
---```-- drawing the game area for penetrator arcade game
---Citizen.CreateThread(function()
---    RequestStreamedTextureDict("MPArcadeDegenatron", false)
---    while not HasStreamedTextureDictLoaded("MPArcadeDegenatron") do Citizen.Wait(1) end
---    while true do
---        N_0x2d3b147afad49de0("MPArcadeDegenatron", "penetrator_scene_frame", 0.5, 0.5, 0.4, 0.6, 0.0, 255, 0, 0, 255, 0)
---        Citizen.Wait(1)
---    end
---end)```
---@param textureDict string inside script_txds.rpf, browse it with OpenIV
---@param textureName string textureName
---@param x number x position must be between 0.0 and 1.0 (1.0 being the most right side of the screen)
---@param y number y position must be between 0.0 and 1.0 (1.0 being the most bottom side of the screen)
---@param width number width 0.0 - 1.0 is the reasonable amount generally
---@param height number height 0.0 - 1.0 is the reasonable amount generally
---@param p6 number almost always 0.0
---@param red number red color
---@param green number green color
---@param blue number blue color
---@param alpha number alpha
---@param p11 number 
function N_0x2D3B147AFAD49DE0(textureDict, textureName, x, y, width, height, p6, red, green, blue, alpha, p11) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x346EF3ECAAAB149E)
function N_0x346EF3ECAAAB149E() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x393BD2275CEB7793)
---@return any retval 
function N_0x393BD2275CEB7793() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x32F34FF7F617643B)
---@param p0 any 
---@param p1 any 
function N_0x32F34FF7F617643B(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x36F6626459D91457)
---@param p0 number 
function N_0x36F6626459D91457(p0) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x43FA7CBE20DAB219)
---@param p0 any 
function N_0x43FA7CBE20DAB219(p0) end

---```
---NativeDB Introduced: v1180
---```
---
---Sets the given checkpoint target to the new coords
---[Native Documentation](https://docs.fivem.net/natives/?_0x3C788E7F6438754D)
---@param checkpointHandle number the handle of a created checkpoint
---@param x number 
---@param y number 
---@param z number 
function N_0x3C788E7F6438754D(checkpointHandle, x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x46D1A61A21F566FC)
---@param p0 number 
function N_0x46D1A61A21F566FC(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4AF92ACD3141D96C)
function N_0x4AF92ACD3141D96C() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5DBF05DB5926D089)
---@param p0 any 
function N_0x5DBF05DB5926D089(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x54E22EA2C1956A8D)
---@param p0 number 
function N_0x54E22EA2C1956A8D(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5DEBD9C4DC995692)
function N_0x5DEBD9C4DC995692() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B0316762AFD4A64)
---@return number retval 
function N_0x5B0316762AFD4A64() end

---```
---DISABLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F6DF3D92271E8A1)
---@param toggle boolean 
function N_0x5F6DF3D92271E8A1(toggle) end

---```
---DISABLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F6DF3D92271E8A1)
---@param toggle boolean 
function SetParticleFxBloodScale(toggle) end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x61F95E5BB3E0A8C6)
---@param p0 any 
function N_0x61F95E5BB3E0A8C6(p0) end

---```
---Unknown. Called after creating a checkpoint (type: 51) in the creators.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x615D3925E87A3B26)
---@param checkpoint number 
function N_0x615D3925E87A3B26(checkpoint) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x649C97D52332341A)
---@param p0 any 
function N_0x649C97D52332341A(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x759650634F07B6B4)
---@param p0 number 
---@return boolean retval 
function N_0x759650634F07B6B4(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7AC24EAB6D74118D)
---@param p0 boolean 
---@return boolean retval 
function N_0x7AC24EAB6D74118D(p0) end

---```
---SET_F*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6A51F78772175A51)
---@param toggle boolean 
function N_0x6A51F78772175A51(toggle) end

---```
---UI3DSCENE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7A42B2E236E71415)
function N_0x7A42B2E236E71415() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x82ACC484FFA3B05F)
---@param p0 any 
---@return any retval 
function N_0x82ACC484FFA3B05F(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x851CD923176EBA7C)
function N_0x851CD923176EBA7C() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7FA5D82B8F58EC06)
---@return boolean retval 
function N_0x7FA5D82B8F58EC06() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x814AF7DCAACC597B)
---@param p0 any 
function N_0x814AF7DCAACC597B(p0) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x86255B1FC929E33E)
---@param p0 any 
---@return any retval 
function N_0x86255B1FC929E33E(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x949F397A288B28B3)
---@param p0 number 
function N_0x949F397A288B28B3(p0) end

---```
---Used only once in the scripts (taxi_clowncar)
---
---SET_PARTICLE_FX_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8CDE909A0370BB3A)
---@param toggle boolean 
function N_0x8CDE909A0370BB3A(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9641588DAB93B4B5)
---@param p0 any 
function N_0x9641588DAB93B4B5(p0) end

---```
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x908311265D42A820)
---@param p0 any 
function N_0x908311265D42A820(p0) end

---```
---REQUEST_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x98EDF76A7271E4F2)
function N_0x98EDF76A7271E4F2() end

---```
---NativeDB Introduced: v1493
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x98D18905BF723B99)
---@return any retval 
function N_0x98D18905BF723B99() end

---```
---FORCE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B079E5221D984D3)
---@param p0 boolean 
function N_0x9B079E5221D984D3(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA46B73FAA3460AE1)
---@param p0 boolean 
function N_0xA46B73FAA3460AE1(p0) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAAE9BE70EC7C69AB)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
---@param p5 any 
---@param p6 any 
---@param p7 any 
function N_0xAAE9BE70EC7C69AB(p0, p1, p2, p3, p4, p5, p6, p7) end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xADD6627C4D325458)
---@param p0 any 
function N_0xADD6627C4D325458(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAE51BC858F32BA66)
---@param p0 any 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
function N_0xAE51BC858F32BA66(p0, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB2EBE8CBC58B90E9)
---@return any retval 
function N_0xB2EBE8CBC58B90E9() end

---```
---Setter for 0xE59343E9E96529E7
---
---SET_M*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3C641F3630BF6DA)
---@param p0 number 
function N_0xB3C641F3630BF6DA(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB569F41F3E7E83A4)
---@param p0 any 
function N_0xB569F41F3E7E83A4(p0) end

---```
---SET_PARTICLE_FX_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA3D194057C79A7B)
---@param p0 string 
function N_0xBA3D194057C79A7B(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA0127DA25FD54C9)
---@param p0 any 
---@param p1 any 
function N_0xBA0127DA25FD54C9(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBB90E12CAC1DAB25)
---@param p0 number 
function N_0xBB90E12CAC1DAB25(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBCEDB009461DA156)
---@return any retval 
function N_0xBCEDB009461DA156() end

---```
---GOLF_TRAIL_SET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0416B061F2B7E5E)
---@param p0 boolean 
function N_0xC0416B061F2B7E5E(p0) end

---```
---This function is hard-coded to always return 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE197EAA669238F4)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@return any retval 
function N_0xBE197EAA669238F4(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC35A6D07C93802B2)
function N_0xC35A6D07C93802B2() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA465D9CC0D231BA)
---@param p0 any 
function N_0xCA465D9CC0D231BA(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCB82A0BF0E3E3265)
---@param p0 number 
---@return number retval 
function N_0xCB82A0BF0E3E3265(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC5C8F970D4EDFF71)
---@param p0 any 
function N_0xC5C8F970D4EDFF71(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA4AE345A153D573)
---@param p0 boolean 
function N_0xCA4AE345A153D573(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD9454B5752C857DC)
function N_0xD9454B5752C857DC() end

---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xCFD16F0DB5A3535C)
---@param toggle boolean 
function N_0xCFD16F0DB5A3535C(toggle) end

---```
---SET_TV_???  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD1C55B110E4DF534)
---@param p0 any 
function N_0xD1C55B110E4DF534(p0) end

---```
---NativeDB Introduced: v1180
---```
---
---This native is used for the "larger" circular checkpoints, and sets the circle/ring around the checkpoint to point in the same direction as the inner arrow
---[Native Documentation](https://docs.fivem.net/natives/?_0xDB1EA9411C8911EC)
---@param checkpointHandle number the handle of a created checkpoint
function N_0xDB1EA9411C8911EC(checkpointHandle) end

---```
---Sets an unknown value related to timecycles.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE3E2C1B4C59DBC77)
---@param unk number 
function N_0xE3E2C1B4C59DBC77(unk) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD1C7CB175E012964)
---@param scaleformHandle number 
---@return boolean retval 
function N_0xD1C7CB175E012964(scaleformHandle) end

---```
---Getter for 0xB3C641F3630BF6DA
---
---GET_M*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE59343E9E96529E7)
---@return number retval 
function N_0xE59343E9E96529E7() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE2892E7E55D7073A)
---@param p0 number 
function N_0xE2892E7E55D7073A(p0) end

---```
---This function is hard-coded to always return 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE791DF1F73ED2C8B)
---@param p0 any 
---@return any retval 
function N_0xE791DF1F73ED2C8B(p0) end

---```
---TOGGLE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE63D7C6EECECB66B)
---@param toggle boolean 
function N_0xE63D7C6EECECB66B(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEF398BEEE4EF45F9)
---@param p0 boolean 
function N_0xEF398BEEE4EF45F9(p0) end

---```
---This function is hard-coded to always return 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC72C258667BE5EA)
---@param p0 any 
---@return any retval 
function N_0xEC72C258667BE5EA(p0) end

---```
---NativeDB Introduced: v1604
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF3F776ADA161E47D)
---@param p0 any 
---@param p1 any 
function N_0xF3F776ADA161E47D(p0, p1) end

---```
---AD*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFABC7722293DA7C)
function N_0xEFABC7722293DA7C() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF78B803082D4386F)
---@param p0 number 
function N_0xF78B803082D4386F(p0) end

---SET_CHECKPOINT_\*
---
---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFCF6788FC4860CD4)
---@param checkpoint number 
function N_0xFCF6788FC4860CD4(checkpoint) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF51D36185993515D)
---@param checkpoint number 
---@param posX number 
---@param posY number 
---@param posZ number 
---@param unkX number 
---@param unkY number 
---@param unkZ number 
function N_0xF51D36185993515D(checkpoint, posX, posY, posZ, unkX, unkY, unkZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFB55E7C25D3B3BE)
function OverrideInteriorSmokeEnd() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFB55E7C25D3B3BE)
function N_0xEFB55E7C25D3B3BE() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1600FD8CF72EBC12)
---@param level number 
function OverrideInteriorSmokeLevel(level) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1600FD8CF72EBC12)
---@param level number 
function N_0x1600FD8CF72EBC12(level) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A2A52824DB96700)
---@param name string 
function OverrideInteriorSmokeName(name) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A2A52824DB96700)
---@param name string 
function N_0x2A2A52824DB96700(name) end

---```
---REQUEST_STREAMED_TEXTURE_DICT("MPOnMissMarkers", false);  
---*uParam0.f_809 = add_decal(9120, vParam1, vVar4, vVar7, 2f, 2f, to_float(iVar0) / 255f, to_float(iVar1) / 255f, to_float(iVar2) / 255f, 1f, -1f, 1, 0, 0);  
---PATCH_DECAL_DIFFUSE_MAP(9120, "MPOnMissMarkers", "Capture_The_Flag_Base_Icon");  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8A35C742130C6080)
---@param decalType number 
---@param textureDict string 
---@param textureName string 
function PatchDecalDiffuseMap(decalType, textureDict, textureName) end

---```
---REQUEST_STREAMED_TEXTURE_DICT("MPOnMissMarkers", false);  
---*uParam0.f_809 = add_decal(9120, vParam1, vVar4, vVar7, 2f, 2f, to_float(iVar0) / 255f, to_float(iVar1) / 255f, to_float(iVar2) / 255f, 1f, -1f, 1, 0, 0);  
---PATCH_DECAL_DIFFUSE_MAP(9120, "MPOnMissMarkers", "Capture_The_Flag_Base_Icon");  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8A35C742130C6080)
---@param decalType number 
---@param textureDict string 
---@param textureName string 
function N_0x8A35C742130C6080(decalType, textureDict, textureName) end

---```
---REQUEST_STREAMED_TEXTURE_DICT("MPOnMissMarkers", false);  
---*uParam0.f_809 = add_decal(9120, vParam1, vVar4, vVar7, 2f, 2f, to_float(iVar0) / 255f, to_float(iVar1) / 255f, to_float(iVar2) / 255f, 1f, -1f, 1, 0, 0);  
---PATCH_DECAL_DIFFUSE_MAP(9120, "MPOnMissMarkers", "Capture_The_Flag_Base_Icon");  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8A35C742130C6080)
---@param decalType number 
---@param textureDict string 
---@param textureName string 
function AddDecalToMarker(decalType, textureDict, textureName) end

---```
---REQUEST_STREAMED_TEXTURE_DICT("MPOnMissMarkers", false);  
---*uParam0.f_809 = add_decal(9120, vParam1, vVar4, vVar7, 2f, 2f, to_float(iVar0) / 255f, to_float(iVar1) / 255f, to_float(iVar2) / 255f, 1f, -1f, 1, 0, 0);  
---PATCH_DECAL_DIFFUSE_MAP(9120, "MPOnMissMarkers", "Capture_The_Flag_Base_Icon");  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8A35C742130C6080)
---@param decalType number 
---@param textureDict string 
---@param textureName string 
function OverrideDecalTexture(decalType, textureDict, textureName) end

---```
---Overriding ped badge texture to a passed texture. It's synced between players (even custom textures!), don't forget to request used dict on *all* clients to make it sync properly. Can be removed by passing empty strings.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x95EB5E34F821BABE)
---@param ped number 
---@param txd string 
---@param txn string 
---@return boolean retval 
function OverridePedBadgeTexture(ped, txd, txn) end

---```
---Overriding ped badge texture to a passed texture. It's synced between players (even custom textures!), don't forget to request used dict on *all* clients to make it sync properly. Can be removed by passing empty strings.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x95EB5E34F821BABE)
---@param ped number 
---@param txd string 
---@param txn string 
---@return boolean retval 
function N_0x95EB5E34F821BABE(ped, txd, txn) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x70D2CC8A542A973C)
---@param binkMovie number 
function PlayBinkMovie(binkMovie) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3C8938D7D872211E)
function PopTimecycleModifier() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x58F735290861E6B4)
function PushTimecycleModifier() end

---Used with 'NG_filmnoir_BW{01,02}' timecycles and the "NOIR_FILTER_SOUNDS" audioref.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA44FF770DFBC5DAE)
function RegisterNoirScreenEffectThisFrame() end

---Used with 'NG_filmnoir_BW{01,02}' timecycles and the "NOIR_FILTER_SOUNDS" audioref.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA44FF770DFBC5DAE)
function N_0xA44FF770DFBC5DAE() end

---```
---Only one match in the scripts:
---GRAPHICS::PRESET_INTERIOR_AMBIENT_CACHE("int_carrier_hanger");
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7021272EB0A451E)
---@param timecycleModifierName string 
function PresetInteriorAmbientCache(timecycleModifierName) end

---```
---Only one match in the scripts:
---GRAPHICS::PRESET_INTERIOR_AMBIENT_CACHE("int_carrier_hanger");
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7021272EB0A451E)
---@param timecycleModifierName string 
function N_0xD7021272EB0A451E(timecycleModifierName) end

---```
---Only one match in the scripts:
---GRAPHICS::PRESET_INTERIOR_AMBIENT_CACHE("int_carrier_hanger");
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7021272EB0A451E)
---@param timecycleModifierName string 
function PresetInteriorAmbientCache(timecycleModifierName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B6E70C5CEEF4EEB)
---@param p0 any 
---@return any retval 
function QueryMovieMeshSetState(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B6E70C5CEEF4EEB)
---@param p0 any 
---@return any retval 
function N_0x9B6E70C5CEEF4EEB(p0) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x04D950EEFA4EED8C)
---@param binkMovie number 
function ReleaseBinkMovie(binkMovie) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB119AA014E89183)
---@param movieMeshSet number 
function ReleaseMovieMeshSet(movieMeshSet) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xED3F346429CCD659)
---@param decal number 
function RemoveDecal(decal) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCCF71CBDDF5B6CB9)
---@param obj number 
function RemoveDecalsFromObject(obj) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6F6F70FDC6D144C)
---@param obj number 
---@param x number 
---@param y number 
---@param z number 
function RemoveDecalsFromObjectFacing(obj, x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE91F1B65F2B48D57)
---@param vehicle number 
function RemoveDecalsFromVehicle(vehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8FEAEEBCC127425)
---@param entity number 
function RemoveParticleFxFromEntity(entity) end

---```
---Removes all decals in range from a position, it includes the bullet holes, blood pools, petrol...  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5D6B2D4830A67C62)
---@param x number 
---@param y number 
---@param z number 
---@param range number 
function RemoveDecalsInRange(x, y, z, range) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC401503DFE8D53CF)
---@param ptfxHandle number 
---@param p1 boolean 
function RemoveParticleFx(ptfxHandle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDD19FA1C6D657305)
---@param X number 
---@param Y number 
---@param Z number 
---@param radius number 
function RemoveParticleFxInRange(X, Y, Z, radius) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF44A5456AC3F4F97)
---@param hudComponent number 
function RemoveScaleformScriptHudMovie(hudComponent) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF44A5456AC3F4F97)
---@param hudComponent number 
function N_0xF44A5456AC3F4F97(hudComponent) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x15E33297C3E8DC60)
---@param p0 string 
function RemoveTcmodifierOverride(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x15E33297C3E8DC60)
---@param p0 string 
function N_0x15E33297C3E8DC60(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD2300034310557E4)
---@param vehicle number 
---@param p1 number 
function RemoveVehicleCrewEmblem(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD2300034310557E4)
---@param vehicle number 
---@param p1 number 
function N_0xD2300034310557E4(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x11FE353CF9733E6F)
---@param scaleformName string 
---@return number retval 
function RequestScaleformMovie(scaleformName) end

---Same as [REQUEST_SCALEFORM_MOVIE](#\_0x11FE353CF9733E6F), except it seems to fix stretched scaleforms on ultrawide.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC514489CFB8AF806)
---@param scaleformName string 
---@return number retval 
function RequestScaleformMovieInstance(scaleformName) end

---```
---Similar to REQUEST_SCALEFORM_MOVIE, but seems to be some kind of "interactive" scaleform movie?  
---These seem to be the only scaleforms ever requested by this native:  
---"breaking_news"  
---"desktop_pc"  
---"ECG_MONITOR"  
---"Hacking_PC"  
---"TEETH_PULLING"  
---Note: Unless this hash is out-of-order, this native is next-gen only.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBD06C611BB9048C2)
---@param scaleformName string 
---@return number retval 
function RequestScaleformMovieInteractive(scaleformName) end

---```
---Similar to REQUEST_SCALEFORM_MOVIE, but seems to be some kind of "interactive" scaleform movie?  
---These seem to be the only scaleforms ever requested by this native:  
---"breaking_news"  
---"desktop_pc"  
---"ECG_MONITOR"  
---"Hacking_PC"  
---"TEETH_PULLING"  
---Note: Unless this hash is out-of-order, this native is next-gen only.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBD06C611BB9048C2)
---@param scaleformName string 
---@return number retval 
function RequestScaleformMovie3(scaleformName) end

---Another [REQUEST_SCALEFORM_MOVIE](#\_0x11FE353CF9733E6F) equivalent.
---[Native Documentation](https://docs.fivem.net/natives/?_0x65E7E78842E74CDB)
---@param scaleformName string 
---@return number retval 
function RequestScaleformMovie2(scaleformName) end

---Another [REQUEST_SCALEFORM_MOVIE](#\_0x11FE353CF9733E6F) equivalent.
---[Native Documentation](https://docs.fivem.net/natives/?_0x65E7E78842E74CDB)
---@param scaleformName string 
---@return number retval 
function N_0x65E7E78842E74CDB(scaleformName) end

---```
---This function can requests texture dictonaries from following RPFs:
---scaleform_generic.rpf
---scaleform_minigames.rpf
---scaleform_minimap.rpf
---scaleform_web.rpf
---last param isnt a toggle
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFA2EF8E04127DD5)
---@param textureDict string 
---@param p1 boolean 
function RequestStreamedTextureDict(textureDict, p1) end

---Resets the extra timecycle modifier strength normally set with [`SetExtraTimecycleModifierStrength`](#\_0x2C328AF17210F009)
---[Native Documentation](https://docs.fivem.net/natives/?_0x2BF72AD5B41AA739)
function ResetExtraTimecycleModifierStrength() end

---Resets the extra timecycle modifier strength normally set with [`SetExtraTimecycleModifierStrength`](#\_0x2C328AF17210F009)
---[Native Documentation](https://docs.fivem.net/natives/?_0x2BF72AD5B41AA739)
function N_0x2BF72AD5B41AA739() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9304881D6F6537EA)
---@param hudComponent number 
function RequestScaleformScriptHudMovie(hudComponent) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9304881D6F6537EA)
---@param hudComponent number 
function N_0x9304881D6F6537EA(hudComponent) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9304881D6F6537EA)
---@param hudComponent number 
function RequestHudScaleform(hudComponent) end

---```
---Resets the effect of SET_PARTICLE_FX_OVERRIDE
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x89C8553DD3274AAE)
---@param name string 
function ResetParticleFxOverride(name) end

---```
---Resets the effect of SET_PARTICLE_FX_OVERRIDE
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x89C8553DD3274AAE)
---@param name string 
function N_0x89C8553DD3274AAE(name) end

---```
---Resets the effect of SET_PARTICLE_FX_OVERRIDE
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x89C8553DD3274AAE)
---@param name string 
function ResetParticleFxAssetOldToNew(name) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE1C8709406F2C41C)
function ResetPausedRenderphases() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE1C8709406F2C41C)
function N_0xE1C8709406F2C41C() end

---This function resets the alignment set using `SET_SCRIPT_GFX_ALIGN` and `SET_SCRIPT_GFX_ALIGN_PARAMS` to the default
---values ('I', 'I'; 0, 0, 0, 0). This should be used after having used the aforementioned functions in order to not affect
---any other scripts attempting to draw.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE3A3DB414A373DAB)
function ResetScriptGfxAlign() end

---This function resets the alignment set using `SET_SCRIPT_GFX_ALIGN` and `SET_SCRIPT_GFX_ALIGN_PARAMS` to the default
---values ('I', 'I'; 0, 0, 0, 0). This should be used after having used the aforementioned functions in order to not affect
---any other scripts attempting to draw.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE3A3DB414A373DAB)
function N_0xE3A3DB414A373DAB() end

---This function resets the alignment set using `SET_SCRIPT_GFX_ALIGN` and `SET_SCRIPT_GFX_ALIGN_PARAMS` to the default
---values ('I', 'I'; 0, 0, 0, 0). This should be used after having used the aforementioned functions in order to not affect
---any other scripts attempting to draw.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE3A3DB414A373DAB)
function ScreenDrawPositionEnd() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x40AFB081F8ADD4EE)
---@param p0 number 
---@return number retval 
function ReturnTwo(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x40AFB081F8ADD4EE)
---@param p0 number 
---@return number retval 
function N_0x40AFB081F8ADD4EE(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3DEC726C25A11BAC)
---@param unused number 
---@return boolean retval 
function SaveHighQualityPhoto(unused) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3DEC726C25A11BAC)
---@param unused number 
---@return boolean retval 
function N_0x3DEC726C25A11BAC(unused) end

---```
---Pushes a boolean for the Scaleform function onto the stack.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC58424BA936EB458)
---@param value boolean 
function ScaleformMovieMethodAddParamBool(value) end

---```
---Pushes a boolean for the Scaleform function onto the stack.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC58424BA936EB458)
---@param value boolean 
function PushScaleformMovieFunctionParameterBool(value) end

---```
---Pushes a boolean for the Scaleform function onto the stack.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC58424BA936EB458)
---@param value boolean 
function PushScaleformMovieMethodParameterBool(value) end

---```
---Pushes an integer for the Scaleform function onto the stack.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3D0841A0CC546A6)
---@param value number 
function ScaleformMovieMethodAddParamInt(value) end

---```
---Pushes an integer for the Scaleform function onto the stack.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3D0841A0CC546A6)
---@param value number 
function PushScaleformMovieFunctionParameterInt(value) end

---```
---Pushes an integer for the Scaleform function onto the stack.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3D0841A0CC546A6)
---@param value number 
function PushScaleformMovieMethodParameterInt(value) end

---```
---Pushes a float for the Scaleform function onto the stack.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD69736AAE04DB51A)
---@param value number 
function ScaleformMovieMethodAddParamFloat(value) end

---```
---Pushes a float for the Scaleform function onto the stack.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD69736AAE04DB51A)
---@param value number 
function PushScaleformMovieFunctionParameterFloat(value) end

---```
---Pushes a float for the Scaleform function onto the stack.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD69736AAE04DB51A)
---@param value number 
function PushScaleformMovieMethodParameterFloat(value) end

---Values:
---0 - Dialogue Brief
---1 - Help Text Brief
---2 - Mission Objective Brief
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC52C631A1831C03)
---@param value number 
function ScaleformMovieMethodAddParamLatestBriefString(value) end

---Values:
---0 - Dialogue Brief
---1 - Help Text Brief
---2 - Mission Objective Brief
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC52C631A1831C03)
---@param value number 
function N_0xEC52C631A1831C03(value) end

---Values:
---0 - Dialogue Brief
---1 - Help Text Brief
---2 - Mission Objective Brief
---[Native Documentation](https://docs.fivem.net/natives/?_0xEC52C631A1831C03)
---@param value number 
function ScaleformMovieMethodAddParamIntString(value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA7148484BD90365)
---@param string string 
function ScaleformMovieMethodAddParamTextureNameString(string) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA7148484BD90365)
---@param string string 
function PushScaleformMovieFunctionParameterString(string) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA7148484BD90365)
---@param string string 
function PushScaleformMovieMethodParameterString(string) end

---```
---This method is the equivalent to PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_STRING when using it to add a new button (like "INSTRUCTIONAL_BUTTONS").  
---When switching with a controller, the icons update and become the controller's icons.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE83A3E3557A56640)
---@param string string 
function ScaleformMovieMethodAddParamPlayerNameString(string) end

---```
---This method is the equivalent to PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_STRING when using it to add a new button (like "INSTRUCTIONAL_BUTTONS").  
---When switching with a controller, the icons update and become the controller's icons.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE83A3E3557A56640)
---@param string string 
function N_0xE83A3E3557A56640(string) end

---```
---This method is the equivalent to PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_STRING when using it to add a new button (like "INSTRUCTIONAL_BUTTONS").  
---When switching with a controller, the icons update and become the controller's icons.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE83A3E3557A56640)
---@param string string 
function PushScaleformMovieMethodParameterButtonName(string) end

---GRAPHICS::\_0x77FE3402004CD1B0(HUD::\_GET_LABEL_TEXT("YACHT_GSY"));
---GRAPHICS::\_0x77FE3402004CD1B0(PLAYER::GET_PLAYER_NAME(PLAYER::PLAYER_ID()));
---
---Both \_0xBA7148484BD90365 / \_0x77FE3402004CD1B0 works, but \_0x77FE3402004CD1B0 is usually used for "name" (organisation, players..).
---[Native Documentation](https://docs.fivem.net/natives/?_0x77FE3402004CD1B0)
---@param string string 
function ScaleformMovieMethodAddParamTextureNameString2(string) end

---GRAPHICS::\_0x77FE3402004CD1B0(HUD::\_GET_LABEL_TEXT("YACHT_GSY"));
---GRAPHICS::\_0x77FE3402004CD1B0(PLAYER::GET_PLAYER_NAME(PLAYER::PLAYER_ID()));
---
---Both \_0xBA7148484BD90365 / \_0x77FE3402004CD1B0 works, but \_0x77FE3402004CD1B0 is usually used for "name" (organisation, players..).
---[Native Documentation](https://docs.fivem.net/natives/?_0x77FE3402004CD1B0)
---@param string string 
function N_0x77FE3402004CD1B0(string) end

---GRAPHICS::\_0x77FE3402004CD1B0(HUD::\_GET_LABEL_TEXT("YACHT_GSY"));
---GRAPHICS::\_0x77FE3402004CD1B0(PLAYER::GET_PLAYER_NAME(PLAYER::PLAYER_ID()));
---
---Both \_0xBA7148484BD90365 / \_0x77FE3402004CD1B0 works, but \_0x77FE3402004CD1B0 is usually used for "name" (organisation, players..).
---[Native Documentation](https://docs.fivem.net/natives/?_0x77FE3402004CD1B0)
---@param string string 
function PushScaleformMovieMethodParameterString2(string) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x43DBAE39626CE83F)
---@return number retval 
function SeethroughGetMaxThickness() end

---```
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x70A64C0234EF522C)
function SeethroughReset() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1086127B3A63505E)
---@param red number 
---@param green number 
---@param blue number 
function SeethroughSetColorNear(red, green, blue) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1086127B3A63505E)
---@param red number 
---@param green number 
---@param blue number 
function N_0x1086127B3A63505E(red, green, blue) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA78DE25577300BA1)
---@param distance number 
function SeethroughSetFadeStartDistance(distance) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA78DE25577300BA1)
---@param distance number 
function N_0xA78DE25577300BA1(distance) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D75795B9DC6EBBF)
---@param distance number 
function SeethroughSetFadeEndDistance(distance) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D75795B9DC6EBBF)
---@param distance number 
function N_0x9D75795B9DC6EBBF(distance) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7D0B00177485411)
---@param index number 
---@param heatScale number min: 0.0 max: 0.75
function SeethroughSetHeatscale(index, heatScale) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD7D0B00177485411)
---@param index number 
---@param heatScale number min: 0.0 max: 0.75
function N_0xD7D0B00177485411(index, heatScale) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1636D7FC127B10D2)
---@param noise number 
function SeethroughSetHiLightNoise(noise) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1636D7FC127B10D2)
---@param noise number 
function N_0x1636D7FC127B10D2(noise) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x19E50EB6E33E1D28)
---@param intensity number 
function SeethroughSetHiLightIntensity(intensity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x19E50EB6E33E1D28)
---@param intensity number 
function N_0x19E50EB6E33E1D28(intensity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C8FAC83902A62DF)
---@param thickness number min: 1.0 max: 10000.0
function SeethroughSetMaxThickness(thickness) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C8FAC83902A62DF)
---@param thickness number min: 1.0 max: 10000.0
function N_0x0C8FAC83902A62DF(thickness) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF5992E1C9E65D05)
---@param amount number 
function SeethroughSetNoiseAmountMin(amount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF5992E1C9E65D05)
---@param amount number 
function N_0xFF5992E1C9E65D05(amount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFEBFBFDFB66039DE)
---@param amount number 
function SeethroughSetNoiseAmountMax(amount) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFEBFBFDFB66039DE)
---@param amount number 
function N_0xFEBFBFDFB66039DE(amount) end

---If "blackout" is enabled, this native allows you to ignore "blackout" for vehicles.
---
---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE2B187C0939B3D32)
---@param toggle boolean 
function SetArtificialLightsStateAffectsVehicles(toggle) end

---Does not affect weapons, particles, fire/explosions, flashlights or the sun.
---
---When set to true, all emissive textures (including ped components that have light effects), street lights, building lights, vehicle lights, etc will all be turned off.
---
---Used in Humane Labs Heist for EMP.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1268615ACE24D504)
---Example: 
---```-- Disable all lights in the map.
---SetArtificialLightsState(true)
---
----- Enable all lights in the map.
---SetArtificialLightsState(false)```
---@param state boolean True turns off all artificial light sources in the map: buildings, street lights, car lights, etc. False turns them back on.
function SetArtificialLightsState(state) end

---Does not affect weapons, particles, fire/explosions, flashlights or the sun.
---
---When set to true, all emissive textures (including ped components that have light effects), street lights, building lights, vehicle lights, etc will all be turned off.
---
---Used in Humane Labs Heist for EMP.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1268615ACE24D504)
---Example: 
---```-- Disable all lights in the map.
---SetArtificialLightsState(true)
---
----- Enable all lights in the map.
---SetArtificialLightsState(false)```
---@param state boolean True turns off all artificial light sources in the map: buildings, street lights, car lights, etc. False turns them back on.
function SetBlackout(state) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x23BA6B0C2AD7B0D3)
---@param toggle boolean 
function SetBackfaceculling(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x23BA6B0C2AD7B0D3)
---@param toggle boolean 
function N_0x23BA6B0C2AD7B0D3(toggle) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x338D9F609FD632DB)
---@param name string 
---@return number retval 
function SetBinkMovie(name) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x338D9F609FD632DB)
---@param name string 
---@return number retval 
function SetBinkMovieRequested(name) end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF816F2933752322D)
---@param binkMovie number 
---@param p1 boolean 
function SetBinkMovieUnk2(binkMovie, p1) end

---```
---In percentage: 0.0 - 100.0
---
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0CB6B3446855B57A)
---@param binkMovie number 
---@param progress number 
function SetBinkMovieTime(binkMovie, progress) end

---```
---In percentage: 0.0 - 100.0
---
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0CB6B3446855B57A)
---@param binkMovie number 
---@param progress number 
function SetBinkMovieProgress(binkMovie, progress) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6805D58CAA427B72)
---@param binkMovie number 
---@param shouldSkip boolean 
function SetBinkShouldSkip(binkMovie, shouldSkip) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6805D58CAA427B72)
---@param binkMovie number 
---@param shouldSkip boolean 
function N_0x6805D58CAA427B72(binkMovie, shouldSkip) end

---```
---binkMovie: Is return value from _SET_BINK_MOVIE. Has something to do with bink volume? (audRequestedSettings::SetVolumeCurveScale)
---```
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAFF33B1178172223)
---@param binkMovie number 
---@param value number 
function SetBinkMovieVolume(binkMovie, value) end

---```
---binkMovie: Is return value from _SET_BINK_MOVIE. Has something to do with bink volume? (audRequestedSettings::SetVolumeCurveScale)
---```
---
---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAFF33B1178172223)
---@param binkMovie number 
---@param value number 
function SetBinkMovieUnk(binkMovie, value) end

---This multiplies the height of the icon inside a checkpoint with the default height of about 2 units above the checkpoint's coordinates.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4B5B4DA5D79F1943)
---Example: 
---```local checkpoint = CreateCheckpoint(...)
---SetCheckpointIconHeight(checkpoint, 2.0) -- places the icon two times as high as the default.```
---@param checkpoint number The checkpoint the multiplier should be applied to.
---@param height_multiplier number The multiplier for the icon height above the checkpoint's coordinates. Default is 1.0
function SetCheckpointIconHeight(checkpoint, height_multiplier) end

---This multiplies the height of the icon inside a checkpoint with the default height of about 2 units above the checkpoint's coordinates.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4B5B4DA5D79F1943)
---Example: 
---```local checkpoint = CreateCheckpoint(...)
---SetCheckpointIconHeight(checkpoint, 2.0) -- places the icon two times as high as the default.```
---@param checkpoint number The checkpoint the multiplier should be applied to.
---@param height_multiplier number The multiplier for the icon height above the checkpoint's coordinates. Default is 1.0
function N_0x4B5B4DA5D79F1943(checkpoint, height_multiplier) end

---This multiplies the height of the icon inside a checkpoint with the default height of about 2 units above the checkpoint's coordinates.
---[Native Documentation](https://docs.fivem.net/natives/?_0x4B5B4DA5D79F1943)
---Example: 
---```local checkpoint = CreateCheckpoint(...)
---SetCheckpointIconHeight(checkpoint, 2.0) -- places the icon two times as high as the default.```
---@param checkpoint number The checkpoint the multiplier should be applied to.
---@param height_multiplier number The multiplier for the icon height above the checkpoint's coordinates. Default is 1.0
function SetCheckpointScale(checkpoint, height_multiplier) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBBF327DED94E4DEB)
---@param modifierName string 
function SetCurrentPlayerTcmodifier(modifierName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBBF327DED94E4DEB)
---@param modifierName string 
function N_0xBBF327DED94E4DEB(modifierName) end

---```
---Sets the cylinder height of the checkpoint.  
---Parameters:  
---* nearHeight - The height of the checkpoint when inside of the radius.  
---* farHeight - The height of the checkpoint when outside of the radius.  
---* radius - The radius of the checkpoint.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2707AAE9D9297D89)
---@param checkpoint number 
---@param nearHeight number 
---@param farHeight number 
---@param radius number 
function SetCheckpointCylinderHeight(checkpoint, nearHeight, farHeight, radius) end

---```
---NOTE: Debugging functions are not present in the retail version of the game.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x175B6BFC15CDD0C5)
---@param enabled boolean 
function SetDebugLinesAndSpheresDrawingActive(enabled) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x44621483FF966526)
---@param checkpoint number 
---@param scale number 
function SetCheckpointIconScale(checkpoint, scale) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x44621483FF966526)
---@param checkpoint number 
---@param scale number 
function N_0x44621483FF966526(checkpoint, scale) end

---```
---Sets the checkpoint color.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7167371E8AD747F7)
---@param checkpoint number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function SetCheckpointRgba(checkpoint, red, green, blue, alpha) end

---Sets the on-screen drawing origin for draw-functions in world coordinates.
---
---The effect can be reset by calling [`CLEAR_DRAW_ORIGIN`](#\_0xFF0B610F6BE0D7AF) and is limited to 32 different origins each frame.
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA0008F3BBB8F416)
---@param x number 
---@param y number 
---@param z number 
---@param p3 any 
function SetDrawOrigin(x, y, z, p3) end

---```
---Sets the checkpoint icon color.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9EA40907C680580)
---@param checkpoint number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function SetCheckpointRgba2(checkpoint, red, green, blue, alpha) end

---```
---Sets the checkpoint icon color.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9EA40907C680580)
---@param checkpoint number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function SetCheckpointIconRgba(checkpoint, red, green, blue, alpha) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4B5CFC83122DF602)
function SetDisableDecalRenderingThisFrame() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4B5CFC83122DF602)
function N_0x4B5CFC83122DF602() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1D5F595CCAE2E238)
---@param entity number 
---@param red number 
---@param green number 
---@param blue number 
---@param alpha number 
function SetEntityIconColor(entity, red, green, blue, alpha) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE0E8BEECCA96BA31)
---@param entity number 
---@param toggle boolean 
function SetEntityIconVisibility(entity, toggle) end

---The same as [`SetTimecycleModifierStrength`](#\_0x82E7FFCD5B2326B3) but for the secondary tiemcycle modifier.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C328AF17210F009)
---@param strength number 
function SetExtraTimecycleModifierStrength(strength) end

---The same as [`SetTimecycleModifierStrength`](#\_0x82E7FFCD5B2326B3) but for the secondary tiemcycle modifier.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C328AF17210F009)
---@param strength number 
function N_0x2C328AF17210F009(strength) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5096FD9CCB49056D)
---@param modifierName string 
function SetExtraTimecycleModifier(modifierName) end

---```
---Forces vehicle trails on all surfaces.
---USE_/USING_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4CC7F0FEA5283FE0)
---@param toggle boolean 
function SetForceVehicleTrails(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA3D65906822BED5)
---@param p0 boolean 
---@param p1 boolean 
---@param nearplaneOut number 
---@param nearplaneIn number 
---@param farplaneOut number 
---@param farplaneIn number 
function SetHidofOverride(p0, p1, nearplaneOut, nearplaneIn, farplaneOut, farplaneIn) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA3D65906822BED5)
---@param p0 boolean 
---@param p1 boolean 
---@param nearplaneOut number 
---@param nearplaneIn number 
---@param farplaneOut number 
---@param farplaneIn number 
function N_0xBA3D65906822BED5(p0, p1, nearplaneOut, nearplaneIn, farplaneOut, farplaneIn) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA3D65906822BED5)
---@param p0 boolean 
---@param p1 boolean 
---@param nearplaneOut number 
---@param nearplaneIn number 
---@param farplaneOut number 
---@param farplaneIn number 
function SetHidofEnvBlurParams(p0, p1, nearplaneOut, nearplaneIn, farplaneOut, farplaneIn) end

---```
---Purpose of p0 and p1 unknown.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0AB84296FED9CFC6)
---@param p0 number 
---@param p1 number 
---@param fadeIn number 
---@param duration number 
---@param fadeOut number 
function SetFlash(p0, p1, fadeIn, duration, fadeOut) end

---```
---Enables Night Vision.  
---Example:  
---C#: Function.Call(Hash.SET_NIGHTVISION, true);  
---C++: GRAPHICS::SET_NIGHTVISION(true);  
---BOOL toggle:  
---true = turns night vision on for your player.  
---false = turns night vision off for your player.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x18F621F7A5B1F85D)
---@param toggle boolean 
function SetNightvision(toggle) end

---```
---Forces footstep tracks on all surfaces.
---USE_/USING_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAEEDAD1420C65CC0)
---@param toggle boolean 
function SetForcePedFootstepsTracks(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBF59707B3E5ED531)
---@param modifierName string 
function SetNextPlayerTcmodifier(modifierName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBF59707B3E5ED531)
---@param modifierName string 
function N_0xBF59707B3E5ED531(modifierName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE787BF1C5CF823C9)
---@param toggle boolean 
function SetNoiseoveride(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCB6A7C3BB17A0C67)
---@param value number 
function SetNoisinessoveride(value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xACEE6F360FC1F6B6)
---@param vehicle number 
---@param p1 boolean 
function SetParticleFxCamInsideNonplayerVehicle(vehicle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x726845132380142E)
---@param ptfxHandle number 
---@param alpha number 
function SetParticleFxLoopedAlpha(ptfxHandle, alpha) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x27E32866E9A5C416)
---@param scale number 
function SetParticleFxBulletImpactScale(scale) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x27E32866E9A5C416)
---@param scale number 
function N_0x27E32866E9A5C416(scale) end

---```
---only works on some fx's  
---p4 = 0  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7F8F65877F88783B)
---@param ptfxHandle number 
---@param r number 
---@param g number 
---@param b number 
---@param p4 boolean 
function SetParticleFxLoopedColour(ptfxHandle, r, g, b, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEEC4047028426510)
---@param p0 boolean 
function SetParticleFxCamInsideVehicle(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDCB194B85EF7B541)
---@param ptfxHandle number 
---@param range number 
function SetParticleFxLoopedFarClipDist(ptfxHandle, range) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDCB194B85EF7B541)
---@param ptfxHandle number 
---@param range number 
function SetParticleFxLoopedRange(ptfxHandle, range) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F0C4B5B1C393BE2)
---@param ptfxHandle number 
---@param propertyName string 
---@param amount number 
---@param noNetwork boolean 
function SetParticleFxLoopedEvolution(ptfxHandle, propertyName, amount, noNetwork) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB44250AAA456492D)
---@param ptfxHandle number 
---@param scale number 
function SetParticleFxLoopedScale(ptfxHandle, scale) end

---```
---Usage example for C#:  
---Function.Call(Hash.SET_PARTICLE_FX_NON_LOOPED_ALPHA, new InputArgument[] { 0.1f });  
---		Note: the argument alpha ranges from 0.0f-1.0f !  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x77168D722C58B2FC)
---@param alpha number 
function SetParticleFxNonLoopedAlpha(alpha) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF7DDEBEC43483C43)
---@param ptfxHandle number 
---@param x number 
---@param y number 
---@param z number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
function SetParticleFxLoopedOffsets(ptfxHandle, x, y, z, rotX, rotY, rotZ) end

---Only works on some fx's, while on others it might SEEM to work "properly", but the colors can be "strange" or even completly different from what you've expected. Reason for this is that those fx's might already have colors "baked into them" which then start to act as a "mixing palette", resulting in a different color than expected. A hypothetical example of this would be if the fx itself is already full (bright) red (RGB: 1.0, 0.0, 0.0) and you then set the color to (bright) green (RGB: 0.0, 1.0, 0.0), that it MIGHT result in Yellow (RGB: 1.0, 1.0, 0.0).
---
---This doc previously stated that the set color is **NOT** networked, however it does actually turns out to be networked. Tested with all fireworks effects and several other FX effects resulted in colored fx effects on all clients when used in combination with [START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD](#\_0xF56B8137DF10135D).
---This might however not be the case for all types of particle fx's, so it's recommended to test this thoroughly with multiple clients before releasing your script for example.
---[Native Documentation](https://docs.fivem.net/natives/?_0x26143A59EF48B262)
---@param r number Red (0.0 - 1.0)
---@param g number Green (0.0 - 1.0)
---@param b number Blue (0.0 - 1.0)
function SetParticleFxNonLoopedColour(r, g, b) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA1E2D93F6F75ED9)
---@param oldAsset string 
---@param newAsset string 
function SetParticleFxOverride(oldAsset, newAsset) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA1E2D93F6F75ED9)
---@param oldAsset string 
---@param newAsset string 
function SetPtfxAssetOld2New(oldAsset, newAsset) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA1E2D93F6F75ED9)
---@param oldAsset string 
---@param newAsset string 
function SetParticleFxAssetOldToNew(oldAsset, newAsset) end

---```
---NativeDB Introduced: v2699
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1E2E01C00837D26E)
---@param p0 number 
---@param p1 number 
---@param scale number 
function SetParticleFxNonLoopedEmitterScale(p0, p1, scale) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x96EF97DAEB89BEF5)
---@param p0 any 
function SetParticleFxShootoutBoat(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBDEB86F4D5809204)
---@param value number 
function SetPlayerTcmodifierTransition(value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBDEB86F4D5809204)
---@param value number 
function N_0xBDEB86F4D5809204(value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1D132D614DD86811)
---@param scaleformHandle number 
function SetScaleformMovieAsNoLongerNeeded(scaleformHandle) end

---This native is used in some casino scripts to fit the scaleform in the rendertarget.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6A9F00D4240B519)
---@param scaleformHandle number 
---@param toggle boolean 
function SetScaleformFitRendertarget(scaleformHandle, toggle) end

---This native is used in some casino scripts to fit the scaleform in the rendertarget.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6A9F00D4240B519)
---@param scaleformHandle number 
---@param toggle boolean 
function N_0xE6A9F00D4240B519(scaleformHandle, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D8EB211944DCE08)
---@param scaleform number 
---@param toggle boolean 
function SetScaleformMovieToUseSystemTime(scaleform, toggle) end

---Sets the draw offset/calculated size for `SET_SCRIPT_GFX_ALIGN`. If using any alignment other than left/top, the game
---expects the width/height to be configured using this native in order to get a proper starting position for the draw
---command.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF5A2C681787E579D)
---@param x number The X offset for the item to be drawn.
---@param y number The Y offset for the item to be drawn.
---@param w number The width of the item to be drawn.
---@param h number The height of the item to be drawn.
function SetScriptGfxAlignParams(x, y, w, h) end

---Sets the draw offset/calculated size for `SET_SCRIPT_GFX_ALIGN`. If using any alignment other than left/top, the game
---expects the width/height to be configured using this native in order to get a proper starting position for the draw
---command.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF5A2C681787E579D)
---@param x number The X offset for the item to be drawn.
---@param y number The Y offset for the item to be drawn.
---@param w number The width of the item to be drawn.
---@param h number The height of the item to be drawn.
function N_0xF5A2C681787E579D(x, y, w, h) end

---Sets the draw offset/calculated size for `SET_SCRIPT_GFX_ALIGN`. If using any alignment other than left/top, the game
---expects the width/height to be configured using this native in order to get a proper starting position for the draw
---command.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF5A2C681787E579D)
---@param x number The X offset for the item to be drawn.
---@param y number The Y offset for the item to be drawn.
---@param w number The width of the item to be drawn.
---@param h number The height of the item to be drawn.
function ScreenDrawPositionRatio(x, y, w, h) end

---```
---Toggles Heatvision on/off.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7E08924259E08CE0)
---@param toggle boolean 
function SetSeethrough(toggle) end

---This function anchors script draws to a side of the safe zone. This needs to be called to make the interface
---independent of the player's safe zone configuration.
---
---These values are equivalent to `alignX` and `alignY` in `common:/data/ui/frontend.xml`, which can be used as a baseline
---for default alignment.
---
---Valid values for `horizontalAlign`, from original documentation:
---
---*   **C (67)** - Center: DRAW_TEXT starts in the middle of the screen, while DRAW_RECT starts on the right; both move with
---    the right side of the screen.
---*   **L (76)** - Left: Anchors to the left side, DRAW_RECT starts on the left side of the screen, same as DRAW_TEXT when
---    centered.
---*   **R (82)** - Right: DRAW_TEXT starts on the left side (normal 0,0), while DRAW_RECT starts some short distance away
---    from the right side of the screen, both move with the right side of the screen.
---
---Valid values for `verticalAlign`, from original documentation:
---
---*   **B (66)** - Bottom: DRAW_RECT starts about as far as the middle of the map from the bottom, while DRAW_TEXT is about
---    rather centered.
---*   **C (67)** - Center: It starts at a certain distance from the bottom, but the distance is fixed, the distance is
---    different from 66.
---*   **T (84)** - Top: Anchors to the top, DRAW_RECT starts on the top of the screen, DRAW_TEXT just below it.
---
---Using any other value (including 0) will result in the safe zone not being taken into account for this draw. The
---canonical value for this is 'I' (73).
---
---For example, you can use `SET_SCRIPT_GFX_ALIGN(0, 84)` to only scale on the Y axis (to the top), but not change the X
---axis.
---
---To reset the value, use `RESET_SCRIPT_GFX_ALIGN`.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8A850F20A067EB6)
---Example: 
---```-- align the next draw to the top left
---SetScriptGfxAlign(string.byte('L'), string.byte('T'))
---
----- prints "THIS LABEL NEEDS TO BE HERE !!!"
---BeginTextCommandDisplayText('DUMMY1')
---EndTextCommandDisplayText(0.0, 0.0)
---
----- reset the script draw alignment
---ResetScriptGfxAlign()```
---@param horizontalAlign number The horizontal alignment. This can be 67 ('C'), 76 ('L'), or 82 ('R').
---@param verticalAlign number The vertical alignment. This can be 67 ('C'), 66 ('B'), or 84 ('T').
function SetScriptGfxAlign(horizontalAlign, verticalAlign) end

---This function anchors script draws to a side of the safe zone. This needs to be called to make the interface
---independent of the player's safe zone configuration.
---
---These values are equivalent to `alignX` and `alignY` in `common:/data/ui/frontend.xml`, which can be used as a baseline
---for default alignment.
---
---Valid values for `horizontalAlign`, from original documentation:
---
---*   **C (67)** - Center: DRAW_TEXT starts in the middle of the screen, while DRAW_RECT starts on the right; both move with
---    the right side of the screen.
---*   **L (76)** - Left: Anchors to the left side, DRAW_RECT starts on the left side of the screen, same as DRAW_TEXT when
---    centered.
---*   **R (82)** - Right: DRAW_TEXT starts on the left side (normal 0,0), while DRAW_RECT starts some short distance away
---    from the right side of the screen, both move with the right side of the screen.
---
---Valid values for `verticalAlign`, from original documentation:
---
---*   **B (66)** - Bottom: DRAW_RECT starts about as far as the middle of the map from the bottom, while DRAW_TEXT is about
---    rather centered.
---*   **C (67)** - Center: It starts at a certain distance from the bottom, but the distance is fixed, the distance is
---    different from 66.
---*   **T (84)** - Top: Anchors to the top, DRAW_RECT starts on the top of the screen, DRAW_TEXT just below it.
---
---Using any other value (including 0) will result in the safe zone not being taken into account for this draw. The
---canonical value for this is 'I' (73).
---
---For example, you can use `SET_SCRIPT_GFX_ALIGN(0, 84)` to only scale on the Y axis (to the top), but not change the X
---axis.
---
---To reset the value, use `RESET_SCRIPT_GFX_ALIGN`.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8A850F20A067EB6)
---Example: 
---```-- align the next draw to the top left
---SetScriptGfxAlign(string.byte('L'), string.byte('T'))
---
----- prints "THIS LABEL NEEDS TO BE HERE !!!"
---BeginTextCommandDisplayText('DUMMY1')
---EndTextCommandDisplayText(0.0, 0.0)
---
----- reset the script draw alignment
---ResetScriptGfxAlign()```
---@param horizontalAlign number The horizontal alignment. This can be 67 ('C'), 76 ('L'), or 82 ('R').
---@param verticalAlign number The vertical alignment. This can be 67 ('C'), 66 ('B'), or 84 ('T').
function SetScreenDrawPosition(horizontalAlign, verticalAlign) end

---This function anchors script draws to a side of the safe zone. This needs to be called to make the interface
---independent of the player's safe zone configuration.
---
---These values are equivalent to `alignX` and `alignY` in `common:/data/ui/frontend.xml`, which can be used as a baseline
---for default alignment.
---
---Valid values for `horizontalAlign`, from original documentation:
---
---*   **C (67)** - Center: DRAW_TEXT starts in the middle of the screen, while DRAW_RECT starts on the right; both move with
---    the right side of the screen.
---*   **L (76)** - Left: Anchors to the left side, DRAW_RECT starts on the left side of the screen, same as DRAW_TEXT when
---    centered.
---*   **R (82)** - Right: DRAW_TEXT starts on the left side (normal 0,0), while DRAW_RECT starts some short distance away
---    from the right side of the screen, both move with the right side of the screen.
---
---Valid values for `verticalAlign`, from original documentation:
---
---*   **B (66)** - Bottom: DRAW_RECT starts about as far as the middle of the map from the bottom, while DRAW_TEXT is about
---    rather centered.
---*   **C (67)** - Center: It starts at a certain distance from the bottom, but the distance is fixed, the distance is
---    different from 66.
---*   **T (84)** - Top: Anchors to the top, DRAW_RECT starts on the top of the screen, DRAW_TEXT just below it.
---
---Using any other value (including 0) will result in the safe zone not being taken into account for this draw. The
---canonical value for this is 'I' (73).
---
---For example, you can use `SET_SCRIPT_GFX_ALIGN(0, 84)` to only scale on the Y axis (to the top), but not change the X
---axis.
---
---To reset the value, use `RESET_SCRIPT_GFX_ALIGN`.
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8A850F20A067EB6)
---Example: 
---```-- align the next draw to the top left
---SetScriptGfxAlign(string.byte('L'), string.byte('T'))
---
----- prints "THIS LABEL NEEDS TO BE HERE !!!"
---BeginTextCommandDisplayText('DUMMY1')
---EndTextCommandDisplayText(0.0, 0.0)
---
----- reset the script draw alignment
---ResetScriptGfxAlign()```
---@param horizontalAlign number The horizontal alignment. This can be 67 ('C'), 76 ('L'), or 82 ('R').
---@param verticalAlign number The vertical alignment. This can be 67 ('C'), 66 ('B'), or 84 ('T').
function ScreenDrawPositionBegin(horizontalAlign, verticalAlign) end

---```
---Loads the specified timecycle modifier. Modifiers are defined separately in another file (e.g. "timecycle_mods_1.xml")
---Parameters:
---modifierName - The modifier to load (e.g. "V_FIB_IT3", "scanline_cam", etc.)
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C933ABF17A1DF41)
---@param modifierName string 
function SetTimecycleModifier(modifierName) end

---Sets a flag defining whether or not script draw commands should continue being drawn behind the pause menu. This is usually used for TV channels and other draw commands that are used with a world render target.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6372ECD45D73BCD)
---@param flag boolean A boolean value.
function SetScriptGfxDrawBehindPausemenu(flag) end

---Sets a flag defining whether or not script draw commands should continue being drawn behind the pause menu. This is usually used for TV channels and other draw commands that are used with a world render target.
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6372ECD45D73BCD)
---@param flag boolean A boolean value.
function N_0xC6372ECD45D73BCD(flag) end

---Sets the draw order for script draw commands.
---Examples from decompiled scripts:
---GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(7);
---GRAPHICS::DRAW_RECT(0.5, 0.5, 3.0, 3.0, v\_4, v\_5, v\_6, a\_0.\_f172, 0);
---GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(1);
---GRAPHICS::DRAW_RECT(0.5, 0.5, 1.5, 1.5, 0, 0, 0, 255, 0);
---[Native Documentation](https://docs.fivem.net/natives/?_0x61BB1D9B3A95D802)
---@param order number The intended draw order/layer.
function SetScriptGfxDrawOrder(order) end

---Sets the draw order for script draw commands.
---Examples from decompiled scripts:
---GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(7);
---GRAPHICS::DRAW_RECT(0.5, 0.5, 3.0, 3.0, v\_4, v\_5, v\_6, a\_0.\_f172, 0);
---GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(1);
---GRAPHICS::DRAW_RECT(0.5, 0.5, 1.5, 1.5, 0, 0, 0, 255, 0);
---[Native Documentation](https://docs.fivem.net/natives/?_0x61BB1D9B3A95D802)
---@param order number The intended draw order/layer.
function N_0x61BB1D9B3A95D802(order) end

---Sets the draw order for script draw commands.
---Examples from decompiled scripts:
---GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(7);
---GRAPHICS::DRAW_RECT(0.5, 0.5, 3.0, 3.0, v\_4, v\_5, v\_6, a\_0.\_f172, 0);
---GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(1);
---GRAPHICS::DRAW_RECT(0.5, 0.5, 1.5, 1.5, 0, 0, 0, 255, 0);
---[Native Documentation](https://docs.fivem.net/natives/?_0x61BB1D9B3A95D802)
---@param order number The intended draw order/layer.
function Set2dLayer(order) end

---Sets the draw order for script draw commands.
---Examples from decompiled scripts:
---GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(7);
---GRAPHICS::DRAW_RECT(0.5, 0.5, 3.0, 3.0, v\_4, v\_5, v\_6, a\_0.\_f172, 0);
---GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(1);
---GRAPHICS::DRAW_RECT(0.5, 0.5, 1.5, 1.5, 0, 0, 0, 255, 0);
---[Native Documentation](https://docs.fivem.net/natives/?_0x61BB1D9B3A95D802)
---@param order number The intended draw order/layer.
function SetUiLayer(order) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x164ECBB3CF750CB0)
---@param point number 
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
function SetTrackedPointInfo(point, x, y, z, radius) end

---This native doesn't work like [`SetWeatherTypeTransition`](#\_0x578C752848ECFA0C).
---[Native Documentation](https://docs.fivem.net/natives/?_0x3BCF567485E1971C)
---@param modifierName string The name of a timecycle
---@param transition number The speed to transition to `modifierName`. Appears to be half-seconds (?)
function SetTransitionTimecycleModifier(modifierName, transition) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE2CACCF5A8AA805)
---@param textureDict string 
function SetStreamedTextureDictAsNoLongerNeeded(textureDict) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBAABBB23EB6E484E)
---@param channel number 
function SetTvChannel(channel) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x82E7FFCD5B2326B3)
---@param strength number 
function SetTimecycleModifierStrength(strength) end

---Loads specified video sequence into the TV Channel
---TV_Channel ranges from 0-2
---VideoSequence can be any of the following:
---"PL_STD_CNT" CNT Standard Channel
---"PL_STD_WZL" Weazel Standard Channel
---"PL_LO_CNT"
---"PL_LO_WZL"
---"PL_SP_WORKOUT"
---"PL_SP_INV" - Jay Norris Assassination Mission Fail
---"PL_SP_INV_EXP" - Jay Norris Assassination Mission Success
---"PL_LO_RS" - Righteous Slaughter Ad
---"PL_LO_RS_CUTSCENE" - Righteous Slaughter Cut-scene
---"PL_SP_PLSH1\_INTRO"
---"PL_LES1\_FAME_OR_SHAME"
---"PL_STD_WZL_FOS_EP2"
---"PL_MP_WEAZEL" - Weazel Logo on loop
---"PL_MP_CCTV" - Generic CCTV loop
---Restart:
---0=video sequence continues as normal
---1=sequence restarts from beginning every time that channel is selected
---The above playlists work as intended, and are commonly used, but there are many more playlists, as seen in `tvplaylists.xml`. A pastebin below outlines all playlists, they will be surronded by the name tag I.E. (<Name>PL_STD_CNT</Name> = PL_STD_CNT).
---https://pastebin.com/zUzGB6h7
---[Native Documentation](https://docs.fivem.net/natives/?_0xF7B38B8305F1FE8B)
---@param tvChannel number 
---@param playlistName string 
---@param restart boolean 
function SetTvChannelPlaylist(tvChannel, playlistName, restart) end

---Loads specified video sequence into the TV Channel
---TV_Channel ranges from 0-2
---VideoSequence can be any of the following:
---"PL_STD_CNT" CNT Standard Channel
---"PL_STD_WZL" Weazel Standard Channel
---"PL_LO_CNT"
---"PL_LO_WZL"
---"PL_SP_WORKOUT"
---"PL_SP_INV" - Jay Norris Assassination Mission Fail
---"PL_SP_INV_EXP" - Jay Norris Assassination Mission Success
---"PL_LO_RS" - Righteous Slaughter Ad
---"PL_LO_RS_CUTSCENE" - Righteous Slaughter Cut-scene
---"PL_SP_PLSH1\_INTRO"
---"PL_LES1\_FAME_OR_SHAME"
---"PL_STD_WZL_FOS_EP2"
---"PL_MP_WEAZEL" - Weazel Logo on loop
---"PL_MP_CCTV" - Generic CCTV loop
---Restart:
---0=video sequence continues as normal
---1=sequence restarts from beginning every time that channel is selected
---The above playlists work as intended, and are commonly used, but there are many more playlists, as seen in `tvplaylists.xml`. A pastebin below outlines all playlists, they will be surronded by the name tag I.E. (<Name>PL_STD_CNT</Name> = PL_STD_CNT).
---https://pastebin.com/zUzGB6h7
---[Native Documentation](https://docs.fivem.net/natives/?_0xF7B38B8305F1FE8B)
---@param tvChannel number 
---@param playlistName string 
---@param restart boolean 
function N_0xF7B38B8305F1FE8B(tvChannel, playlistName, restart) end

---Loads specified video sequence into the TV Channel
---TV_Channel ranges from 0-2
---VideoSequence can be any of the following:
---"PL_STD_CNT" CNT Standard Channel
---"PL_STD_WZL" Weazel Standard Channel
---"PL_LO_CNT"
---"PL_LO_WZL"
---"PL_SP_WORKOUT"
---"PL_SP_INV" - Jay Norris Assassination Mission Fail
---"PL_SP_INV_EXP" - Jay Norris Assassination Mission Success
---"PL_LO_RS" - Righteous Slaughter Ad
---"PL_LO_RS_CUTSCENE" - Righteous Slaughter Cut-scene
---"PL_SP_PLSH1\_INTRO"
---"PL_LES1\_FAME_OR_SHAME"
---"PL_STD_WZL_FOS_EP2"
---"PL_MP_WEAZEL" - Weazel Logo on loop
---"PL_MP_CCTV" - Generic CCTV loop
---Restart:
---0=video sequence continues as normal
---1=sequence restarts from beginning every time that channel is selected
---The above playlists work as intended, and are commonly used, but there are many more playlists, as seen in `tvplaylists.xml`. A pastebin below outlines all playlists, they will be surronded by the name tag I.E. (<Name>PL_STD_CNT</Name> = PL_STD_CNT).
---https://pastebin.com/zUzGB6h7
---[Native Documentation](https://docs.fivem.net/natives/?_0xF7B38B8305F1FE8B)
---@param tvChannel number 
---@param playlistName string 
---@param restart boolean 
function LoadTvChannelSequence(tvChannel, playlistName, restart) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2201C576FACAEBE8)
---@param tvChannel number 
---@param playlistName string 
---@param hour number 
function SetTvChannelPlaylistAtHour(tvChannel, playlistName, hour) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2201C576FACAEBE8)
---@param tvChannel number 
---@param playlistName string 
---@param hour number 
function N_0x2201C576FACAEBE8(tvChannel, playlistName, hour) end

---```
---Probably changes tvs from being a 3d audio to being "global" audio
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x113D2C5DC57E1774)
---@param toggle boolean 
function SetTvAudioFrontend(toggle) end

---```
---network fx  
---```
---
---```
---NativeDB Added Parameter 13: Any p12
---NativeDB Added Parameter 14: Any p13
---NativeDB Added Parameter 15: Any p14
---NativeDB Added Parameter 16: Any p15
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F60E89A7B64EE1D)
---@param effectName string 
---@param entity number 
---@param xOffset number 
---@param yOffset number 
---@param zOffset number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param scale number 
---@param xAxis boolean 
---@param yAxis boolean 
---@param zAxis boolean 
---@return number retval 
function StartNetworkedParticleFxLoopedOnEntity(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end

---```
---network fx  
---```
---
---```
---NativeDB Added Parameter 13: Any p12
---NativeDB Added Parameter 14: Any p13
---NativeDB Added Parameter 15: Any p14
---NativeDB Added Parameter 16: Any p15
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F60E89A7B64EE1D)
---@param effectName string 
---@param entity number 
---@param xOffset number 
---@param yOffset number 
---@param zOffset number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param scale number 
---@param xAxis boolean 
---@param yAxis boolean 
---@param zAxis boolean 
---@return number retval 
function N_0x6F60E89A7B64EE1D(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end

---```
---network fx  
---```
---
---```
---NativeDB Added Parameter 13: Any p12
---NativeDB Added Parameter 14: Any p13
---NativeDB Added Parameter 15: Any p14
---NativeDB Added Parameter 16: Any p15
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F60E89A7B64EE1D)
---@param effectName string 
---@param entity number 
---@param xOffset number 
---@param yOffset number 
---@param zOffset number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param scale number 
---@param xAxis boolean 
---@param yAxis boolean 
---@param zAxis boolean 
---@return number retval 
function StartParticleFxLoopedOnEntity2(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC95EB1DB6E92113D)
---@param effectName string 
---@param entity number 
---@param offsetX number 
---@param offsetY number 
---@param offsetZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param scale number 
---@param axisX boolean 
---@param axisY boolean 
---@param axisZ boolean 
---@return boolean retval 
function StartNetworkedParticleFxNonLoopedOnEntity(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC95EB1DB6E92113D)
---@param effectName string 
---@param entity number 
---@param offsetX number 
---@param offsetY number 
---@param offsetZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param scale number 
---@param axisX boolean 
---@param axisY boolean 
---@param axisZ boolean 
---@return boolean retval 
function StartParticleFxNonLoopedOnEntity2(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2982BF73F66E9DDC)
---@param volume number 
function SetTvVolume(volume) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA41B6A43642AC2CF)
---@param effectName string 
---@param ped number 
---@param offsetX number 
---@param offsetY number 
---@param offsetZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param boneIndex number 
---@param scale number 
---@param axisX boolean 
---@param axisY boolean 
---@param axisZ boolean 
---@return boolean retval 
function StartNetworkedParticleFxNonLoopedOnPedBone(effectName, ped, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA41B6A43642AC2CF)
---@param effectName string 
---@param ped number 
---@param offsetX number 
---@param offsetY number 
---@param offsetZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param boneIndex number 
---@param scale number 
---@param axisX boolean 
---@param axisY boolean 
---@param axisZ boolean 
---@return boolean retval 
function StartParticleFxNonLoopedOnPedBone2(effectName, ped, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ) end

---```
---network fx  
---```
---
---```
---NativeDB Added Parameter 14: Any p13
---NativeDB Added Parameter 15: Any p14
---NativeDB Added Parameter 16: Any p15
---NativeDB Added Parameter 17: Any p16
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDDE23F30CC5A0F03)
---@param effectName string 
---@param entity number 
---@param xOffset number 
---@param yOffset number 
---@param zOffset number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param boneIndex number 
---@param scale number 
---@param xAxis boolean 
---@param yAxis boolean 
---@param zAxis boolean 
---@return number retval 
function StartNetworkedParticleFxLoopedOnEntityBone(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis) end

---```
---network fx  
---```
---
---```
---NativeDB Added Parameter 14: Any p13
---NativeDB Added Parameter 15: Any p14
---NativeDB Added Parameter 16: Any p15
---NativeDB Added Parameter 17: Any p16
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDDE23F30CC5A0F03)
---@param effectName string 
---@param entity number 
---@param xOffset number 
---@param yOffset number 
---@param zOffset number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param boneIndex number 
---@param scale number 
---@param xAxis boolean 
---@param yAxis boolean 
---@param zAxis boolean 
---@return number retval 
function N_0xDDE23F30CC5A0F03(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis) end

---```
---network fx  
---```
---
---```
---NativeDB Added Parameter 14: Any p13
---NativeDB Added Parameter 15: Any p14
---NativeDB Added Parameter 16: Any p15
---NativeDB Added Parameter 17: Any p16
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDDE23F30CC5A0F03)
---@param effectName string 
---@param entity number 
---@param xOffset number 
---@param yOffset number 
---@param zOffset number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param boneIndex number 
---@param scale number 
---@param xAxis boolean 
---@param yAxis boolean 
---@param zAxis boolean 
---@return number retval 
function StartParticleFxLoopedOnEntityBone2(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1AE42C1660FD6517)
---@param effectName string 
---@param entity number 
---@param xOffset number 
---@param yOffset number 
---@param zOffset number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param scale number 
---@param xAxis boolean 
---@param yAxis boolean 
---@param zAxis boolean 
---@return number retval 
function StartParticleFxLoopedOnEntity(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end

---NOTE: the [USE_PARTICLE_FX_ASSET](#\_0x6C38AF3693A69A91) needs to be called before EVERY StartNetworkedParticleFxNonLoopedAtCoord(....) call!
---
---List with lots of particle effects: https://vespura.com/fivem/particle-list/
---
---Note: Not all particles on this list are for non looped and vice versa, neither are all of them suited/meant to have SetParticleFxNonLoopedColour(....) called on them.
---
---```
---NativeDB Added Parameter 12: BOOL p11
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF56B8137DF10135D)
---Example: 
---```-- If the PtfxAsset hasn't been loaded yet, you'll need to load it first
---if not HasNamedPtfxAssetLoaded("scr_indep_fireworks") then
---	RequestNamedPtfxAsset("scr_indep_fireworks")
---	while not HasNamedPtfxAssetLoaded("scr_indep_fireworks") do
---		Wait(10)
---	end
---end
---
---local CurrentPlayerCoords = GetEntityCoords(GetPlayerPed(-1))
---
---UseParticleFxAssetNextCall("scr_indep_fireworks") -- Prepare the Particle FX for the next upcomming Particle FX call
---SetParticleFxNonLoopedColour(1.0, 0.0, 0.0) -- Setting the color to Red (R, G, B)
---StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_burst_spawn", CurrentPlayerCoords, 0.0, 0.0, 0.0, 1.0, false, false, false, false) -- Start the animation itself
---
---RemoveNamedPtfxAsset("scr_indep_fireworks") -- Clean up```
---@param effectName string 
---@param xPos number 
---@param yPos number 
---@param zPos number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param scale number 
---@param xAxis boolean 
---@param yAxis boolean 
---@param zAxis boolean 
---@return boolean retval 
function StartNetworkedParticleFxNonLoopedAtCoord(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end

---NOTE: the [USE_PARTICLE_FX_ASSET](#\_0x6C38AF3693A69A91) needs to be called before EVERY StartNetworkedParticleFxNonLoopedAtCoord(....) call!
---
---List with lots of particle effects: https://vespura.com/fivem/particle-list/
---
---Note: Not all particles on this list are for non looped and vice versa, neither are all of them suited/meant to have SetParticleFxNonLoopedColour(....) called on them.
---
---```
---NativeDB Added Parameter 12: BOOL p11
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF56B8137DF10135D)
---Example: 
---```-- If the PtfxAsset hasn't been loaded yet, you'll need to load it first
---if not HasNamedPtfxAssetLoaded("scr_indep_fireworks") then
---	RequestNamedPtfxAsset("scr_indep_fireworks")
---	while not HasNamedPtfxAssetLoaded("scr_indep_fireworks") do
---		Wait(10)
---	end
---end
---
---local CurrentPlayerCoords = GetEntityCoords(GetPlayerPed(-1))
---
---UseParticleFxAssetNextCall("scr_indep_fireworks") -- Prepare the Particle FX for the next upcomming Particle FX call
---SetParticleFxNonLoopedColour(1.0, 0.0, 0.0) -- Setting the color to Red (R, G, B)
---StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_burst_spawn", CurrentPlayerCoords, 0.0, 0.0, 0.0, 1.0, false, false, false, false) -- Start the animation itself
---
---RemoveNamedPtfxAsset("scr_indep_fireworks") -- Clean up```
---@param effectName string 
---@param xPos number 
---@param yPos number 
---@param zPos number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param scale number 
---@param xAxis boolean 
---@param yAxis boolean 
---@param zAxis boolean 
---@return boolean retval 
function StartParticleFxNonLoopedAtCoord2(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end

---```
---GRAPHICS::START_PARTICLE_FX_LOOPED_AT_COORD("scr_fbi_falling_debris", 93.7743f, -749.4572f, 70.86904f, 0f, 0f, 0f, 0x3F800000, 0, 0, 0, 0)  
---p11 seems to be always 0  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE184F4F0DC5910E7)
---@param effectName string 
---@param x number 
---@param y number 
---@param z number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param scale number 
---@param xAxis boolean 
---@param yAxis boolean 
---@param zAxis boolean 
---@param p11 boolean 
---@return number retval 
function StartParticleFxLoopedAtCoord(effectName, x, y, z, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, p11) end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x02B1F2A72E0F5325)
---@param effectName string 
---@param entity number 
---@param offsetX number 
---@param offsetY number 
---@param offsetZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param boneIndex number 
---@param scale number 
---@param axisX boolean 
---@param axisY boolean 
---@param axisZ boolean 
---@return boolean retval 
function StartNetworkedParticleFxNonLoopedOnEntityBone(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ) end

---```
---Starts a particle effect on an entity for example your player.  
---List: pastebin.com/N9unUFWY  
---Example:  
---C#:  
---Function.Call(Hash.REQUEST_NAMED_PTFX_ASSET, "scr_rcbarry2");                     Function.Call(Hash._SET_PTFX_ASSET_NEXT_CALL, "scr_rcbarry2");                             Function.Call(Hash.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY, "scr_clown_appears", Game.Player.Character, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false);  
---Internally this calls the same function as GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE  
---however it uses -1 for the specified bone index, so it should be possible to start a non looped fx on an entity bone using that native  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0D53A3B8DA0809D2)
---@param effectName string 
---@param entity number 
---@param offsetX number 
---@param offsetY number 
---@param offsetZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param scale number 
---@param axisX boolean 
---@param axisY boolean 
---@param axisZ boolean 
---@return boolean retval 
function StartParticleFxNonLoopedOnEntity(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6EB449E33977F0B)
---@param effectName string 
---@param entity number 
---@param xOffset number 
---@param yOffset number 
---@param zOffset number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param boneIndex number 
---@param scale number 
---@param xAxis boolean 
---@param yAxis boolean 
---@param zAxis boolean 
---@return number retval 
function StartParticleFxLoopedOnEntityBone(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis) end

---```
---GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE("scr_sh_bong_smoke", PLAYER::PLAYER_PED_ID(), -0.025f, 0.13f, 0f, 0f, 0f, 0f, 31086, 0x3F800000, 0, 0, 0);  
---Axis - Invert Axis Flags  
---list: pastebin.com/N9unUFWY  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0E7E72961BA18619)
---@param effectName string 
---@param ped number 
---@param offsetX number 
---@param offsetY number 
---@param offsetZ number 
---@param rotX number 
---@param rotY number 
---@param rotZ number 
---@param boneIndex number 
---@param scale number 
---@param axisX boolean 
---@param axisY boolean 
---@param axisZ boolean 
---@return boolean retval 
function StartParticleFxNonLoopedOnPedBone(effectName, ped, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x63606A61DE68898A)
---@param binkMovie number 
function StopBinkMovie(binkMovie) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF28DA9F38CD1787C)
---@param effectName string 
---@param ped number 
---@param xOffset number 
---@param yOffset number 
---@param zOffset number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param boneIndex number 
---@param scale number 
---@param xAxis boolean 
---@param yAxis boolean 
---@param zAxis boolean 
---@return number retval 
function StartParticleFxLoopedOnPedBone(effectName, ped, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis) end

---This native enables/disables the gold putting grid display (https://i.imgur.com/TC6cku6.png).
---This requires these two natives to be called as well to configure the grid: [`0x1c4fc5752bcd8e48`](https://runtime.fivem.net/doc/reference.html#\_0x1C4FC5752BCD8E48) and [`0x5ce62918f8d703c7`](https://runtime.fivem.net/doc/reference.html#\_0x5CE62918F8D703C7).
---[Native Documentation](https://docs.fivem.net/natives/?_0xA356990E161C9E65)
---@param toggle boolean Enables or disables the golf putting grid display.
function TerraingridActivate(toggle) end

---This native enables/disables the gold putting grid display (https://i.imgur.com/TC6cku6.png).
---This requires these two natives to be called as well to configure the grid: [`0x1c4fc5752bcd8e48`](https://runtime.fivem.net/doc/reference.html#\_0x1C4FC5752BCD8E48) and [`0x5ce62918f8d703c7`](https://runtime.fivem.net/doc/reference.html#\_0x5CE62918F8D703C7).
---[Native Documentation](https://docs.fivem.net/natives/?_0xA356990E161C9E65)
---@param toggle boolean Enables or disables the golf putting grid display.
function N_0xA356990E161C9E65(toggle) end

---```
---GRAPHICS::START_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_paleto_roof_impact", -140.8576f, 6420.789f, 41.1391f, 0f, 0f, 267.3957f, 0x3F800000, 0, 0, 0);  
---Axis - Invert Axis Flags  
---list: pastebin.com/N9unUFWY  
----------------------------------------------------------------------  
---C#  
---Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, = you are calling this function.  
---char *effectname = This is an in-game effect name, for e.g. "scr_fbi4_trucks_crash" is used to give the effects when truck crashes etc  
---float x, y, z pos = this one is Simple, you just have to declare, where do you want this effect to take place at, so declare the ordinates  
---float xrot, yrot, zrot = Again simple? just mention the value in case if you want the effect to rotate.  
---float scale = is declare the scale of the effect, this may vary as per the effects for e.g 1.0f  
---bool xaxis, yaxis, zaxis = To bool the axis values.  
---example:  
---Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, "scr_fbi4_trucks_crash", GTA.Game.Player.Character.Position.X, GTA.Game.Player.Character.Position.Y, GTA.Game.Player.Character.Position.Z + 4f, 0, 0, 0, 5.5f, 0, 0, 0);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x25129531F77B9ED3)
---@param effectName string 
---@param xPos number 
---@param yPos number 
---@param zPos number 
---@param xRot number 
---@param yRot number 
---@param zRot number 
---@param scale number 
---@param xAxis boolean 
---@param yAxis boolean 
---@param zAxis boolean 
---@return number retval 
function StartParticleFxNonLoopedAtCoord(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x99AC7F0D8B9C893D)
---@param p0 number 
function StartPetrolTrailDecals(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x99AC7F0D8B9C893D)
---@param p0 number 
function N_0x99AC7F0D8B9C893D(p0) end

---This native is used along with these two natives: [`0xa356990e161c9e65`](https://runtime.fivem.net/doc/reference.html#\_0xA356990E161C9E65) and [`0x5ce62918f8d703c7`](https://runtime.fivem.net/doc/reference.html#\_0x5CE62918F8D703C7).
---
---This native configures the location, size, rotation, normal height, and the difference ratio between min, normal and max.
---
---All those natives combined they will output something like this: https://i.imgur.com/TC6cku6.png
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C4FC5752BCD8E48)
---@param x number Grid center x coord.
---@param y number Grid center y coord.
---@param z number Grid center z coord.
---@param p3 number Not sure, but seems to be the amount of lines top/bottom there are in the grid. -1.0 works best.
---@param rotation number Grid rotation (keep between 0.0 and 1.0).
---@param p5 number Offset top/bottom (? not sure about this one, seems weird).
---@param width number Grid width (usually 15.0).
---@param height number Grid height (usually 15.0).
---@param p8 number Not sure, but seems to be the amount of lines left/right there are in the grid. -1.0 works best.
---@param scale number Zoom / scale (higher values = smaller (more) squares) (lower values = bigger (less) squares).
---@param glowIntensity number glow intensity / opacity (40.0 is fine for daylight, 15.0 is fine for night time).
---@param normalHeight number The z coord for 'normal' height (white grid lines level).
---@param heightDiff number This is the height difference/margin used for line color changes. 0.2 works fine (normalHeight + 0.2 = yellow, normalHeight - 0.2 = red).
function TerraingridSetParams(x, y, z, p3, rotation, p5, width, height, p8, scale, glowIntensity, normalHeight, heightDiff) end

---This native is used along with these two natives: [`0xa356990e161c9e65`](https://runtime.fivem.net/doc/reference.html#\_0xA356990E161C9E65) and [`0x5ce62918f8d703c7`](https://runtime.fivem.net/doc/reference.html#\_0x5CE62918F8D703C7).
---
---This native configures the location, size, rotation, normal height, and the difference ratio between min, normal and max.
---
---All those natives combined they will output something like this: https://i.imgur.com/TC6cku6.png
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C4FC5752BCD8E48)
---@param x number Grid center x coord.
---@param y number Grid center y coord.
---@param z number Grid center z coord.
---@param p3 number Not sure, but seems to be the amount of lines top/bottom there are in the grid. -1.0 works best.
---@param rotation number Grid rotation (keep between 0.0 and 1.0).
---@param p5 number Offset top/bottom (? not sure about this one, seems weird).
---@param width number Grid width (usually 15.0).
---@param height number Grid height (usually 15.0).
---@param p8 number Not sure, but seems to be the amount of lines left/right there are in the grid. -1.0 works best.
---@param scale number Zoom / scale (higher values = smaller (more) squares) (lower values = bigger (less) squares).
---@param glowIntensity number glow intensity / opacity (40.0 is fine for daylight, 15.0 is fine for night time).
---@param normalHeight number The z coord for 'normal' height (white grid lines level).
---@param heightDiff number This is the height difference/margin used for line color changes. 0.2 works fine (normalHeight + 0.2 = yellow, normalHeight - 0.2 = red).
function N_0x1C4FC5752BCD8E48(x, y, z, p3, rotation, p5, width, height, p8, scale, glowIntensity, normalHeight, heightDiff) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA328A24AAA6B7FDC)
---@param transitionTime number Time in milliseconds to transition into a fully blurred screen
---@return boolean retval 
function TriggerScreenblurFadeIn(transitionTime) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA328A24AAA6B7FDC)
---@param transitionTime number Time in milliseconds to transition into a fully blurred screen
---@return boolean retval 
function TransitionToBlurred(transitionTime) end

---```
---p1 is always 0 in the native scripts  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F75998877616996)
---@param ptfxHandle number 
---@param p1 boolean 
function StopParticleFxLooped(ptfxHandle, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFC252D8A3E15AB7)
---@param toggle boolean 
function TogglePausedRenderphases(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFC252D8A3E15AB7)
---@param toggle boolean 
function EnableGameplayCam(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFC252D8A3E15AB7)
---@param toggle boolean 
function SetFrozenRenderingDisabled(toggle) end

---This native is used along with these two natives: [`0xa356990e161c9e65`](https://runtime.fivem.net/doc/reference.html#\_0xA356990E161C9E65) and [`0x1c4fc5752bcd8e48`](https://runtime.fivem.net/doc/reference.html#\_0x1C4FC5752BCD8E48).
---This native sets the colors for the golf putting grid. the 'min...' values are for the lower areas that the grid covers, the 'max...' values are for the higher areas that the grid covers, all remaining values are for the 'normal' ground height.
---All those natives combined they will output something like this: https://i.imgur.com/TC6cku6.png
---
---Old description:
---Only called in golf and golf_mp\
---parameters used are\
---GRAPHICS::\_0x5CE62918F8D703C7(255, 0, 0, 64, 255, 255, 255, 5, 255, 255, 0, 64);
---[Native Documentation](https://docs.fivem.net/natives/?_0x5CE62918F8D703C7)
---@param lowR number red value for the lower level
---@param lowG number green value for the lower level
---@param lowB number blue value for the lower level
---@param lowAlpha number alpha value for the lower level
---@param R number red value for the normal level
---@param G number green value for the normal level
---@param B number blue value for the normal level
---@param Alpha number alpha value for the normal level
---@param highR number red value for the upper level
---@param highG number green value for the upper level
---@param highB number blue value for the upper level
---@param highAlpha number alpha value for the upper level
function TerraingridSetColours(lowR, lowG, lowB, lowAlpha, R, G, B, Alpha, highR, highG, highB, highAlpha) end

---This native is used along with these two natives: [`0xa356990e161c9e65`](https://runtime.fivem.net/doc/reference.html#\_0xA356990E161C9E65) and [`0x1c4fc5752bcd8e48`](https://runtime.fivem.net/doc/reference.html#\_0x1C4FC5752BCD8E48).
---This native sets the colors for the golf putting grid. the 'min...' values are for the lower areas that the grid covers, the 'max...' values are for the higher areas that the grid covers, all remaining values are for the 'normal' ground height.
---All those natives combined they will output something like this: https://i.imgur.com/TC6cku6.png
---
---Old description:
---Only called in golf and golf_mp\
---parameters used are\
---GRAPHICS::\_0x5CE62918F8D703C7(255, 0, 0, 64, 255, 255, 255, 5, 255, 255, 0, 64);
---[Native Documentation](https://docs.fivem.net/natives/?_0x5CE62918F8D703C7)
---@param lowR number red value for the lower level
---@param lowG number green value for the lower level
---@param lowB number blue value for the lower level
---@param lowAlpha number alpha value for the lower level
---@param R number red value for the normal level
---@param G number green value for the normal level
---@param B number blue value for the normal level
---@param Alpha number alpha value for the normal level
---@param highR number red value for the upper level
---@param highG number green value for the upper level
---@param highB number blue value for the upper level
---@param highAlpha number alpha value for the upper level
function N_0x5CE62918F8D703C7(lowR, lowG, lowB, lowAlpha, R, G, B, Alpha, highR, highG, highB, highAlpha) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFACC8AEF94430D5)
---@param transitionTime number 
---@return boolean retval 
function TriggerScreenblurFadeOut(transitionTime) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEFACC8AEF94430D5)
---@param transitionTime number 
---@return boolean retval 
function TransitionFromBlurred(transitionTime) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3A10FC7FD8D98CD)
---@return boolean retval 
function Ui3dsceneIsAvailable() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3A10FC7FD8D98CD)
---@return boolean retval 
function N_0xD3A10FC7FD8D98CD() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDEADC0DEDEADC0DE)
---@param entity number 
function UpdateLightsOnEntity(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDEADC0DEDEADC0DE)
---@param entity number 
function N_0xDEADC0DEDEADC0DE(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDEADC0DEDEADC0DE)
---@param entity number 
function EntityDescriptionText(entity) end

---```
---All presets can be found in common\data\ui\uiscenes.meta
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1CEA8A4198D8E9A)
---@param presetName string 
---@return boolean retval 
function Ui3dscenePushPreset(presetName) end

---```
---All presets can be found in common\data\ui\uiscenes.meta
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1CEA8A4198D8E9A)
---@param presetName string 
---@return boolean retval 
function N_0xF1CEA8A4198D8E9A(presetName) end

---```
---From the b678d decompiled scripts:
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("FM_Mission_Controler");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_apartment_mp");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_indep_fireworks");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_cig_plane");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_creator");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_ornate_heist");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_prison_break_heist_station");
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6C38AF3693A69A91)
---@param name string 
function UseParticleFxAsset(name) end

---```
---From the b678d decompiled scripts:
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("FM_Mission_Controler");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_apartment_mp");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_indep_fireworks");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_cig_plane");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_creator");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_ornate_heist");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_prison_break_heist_station");
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6C38AF3693A69A91)
---@param name string 
function SetPtfxAssetNextCall(name) end

---```
---From the b678d decompiled scripts:
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("FM_Mission_Controler");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_apartment_mp");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_indep_fireworks");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_cig_plane");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_creator");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_ornate_heist");
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_prison_break_heist_station");
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6C38AF3693A69A91)
---@param name string 
function UseParticleFxAssetNextCall(name) end

---```
---GRAPHICS::UNPATCH_DECAL_DIFFUSE_MAP(9123);  
---GRAPHICS::SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED("MPMissMarkers256");  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7ED70C49521A61D)
---@param decalType number 
function UnpatchDecalDiffuseMap(decalType) end

---```
---GRAPHICS::UNPATCH_DECAL_DIFFUSE_MAP(9123);  
---GRAPHICS::SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED("MPMissMarkers256");  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7ED70C49521A61D)
---@param decalType number 
function N_0xB7ED70C49521A61D(decalType) end

---```
---GRAPHICS::UNPATCH_DECAL_DIFFUSE_MAP(9123);  
---GRAPHICS::SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED("MPMissMarkers256");  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7ED70C49521A61D)
---@param decalType number 
function UndoDecalTextureOverride(decalType) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9C30613D50A6ADEF)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 any 
function WashDecalsInRange(p0, p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B712761429DBC14)
---@param vehicle number 
---@param p1 number 
function WashDecalsFromVehicle(vehicle, p1) end

