---@meta

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x73D57CFFDD12C355)
---@param value number 
---@return number retval 
function Absf(value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0D31AD191A74F87)
---@param value number 
---@return number retval 
function Absi(value) end

---To remove, see: [`REMOVE_DISPATCH_SPAWN_BLOCKING_AREA`](#\_0x264AC28B01B353A5).
---
---See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
---[Native Documentation](https://docs.fivem.net/natives/?_0x918C7B2D2FF3928B)
---@param x1 number X dimension of the angled area 'origin'
---@param y1 number Y dimension of the angled area 'origin'
---@param z1 number Z dimension of the angled area 'origin'
---@param x2 number X dimension of the angled area 'extent'
---@param y2 number Y dimension of the angled area 'extent'
---@param z2 number Z dimension of the angled area 'extent'
---@param width number Width of the angled area
---@return any retval 
function AddDispatchSpawnBlockingAngledArea(x1, y1, z1, x2, y2, z2, width) end

---To remove, see: [`REMOVE_DISPATCH_SPAWN_BLOCKING_AREA`](#\_0x264AC28B01B353A5).
---
---See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
---[Native Documentation](https://docs.fivem.net/natives/?_0x918C7B2D2FF3928B)
---@param x1 number X dimension of the angled area 'origin'
---@param y1 number Y dimension of the angled area 'origin'
---@param z1 number Z dimension of the angled area 'origin'
---@param x2 number X dimension of the angled area 'extent'
---@param y2 number Y dimension of the angled area 'extent'
---@param z2 number Z dimension of the angled area 'extent'
---@param width number Width of the angled area
---@return any retval 
function N_0x918C7B2D2FF3928B(x1, y1, z1, x2, y2, z2, width) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1D08B970013C34B6)
---@param p0 number 
---@return number retval 
function Acos(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2D4259F1FEB81DA9)
---@param x1 number 
---@param y1 number 
---@param x2 number 
---@param y2 number 
---@return any retval 
function AddDispatchSpawnBlockingArea(x1, y1, x2, y2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2D4259F1FEB81DA9)
---@param x1 number 
---@param y1 number 
---@param x2 number 
---@param y2 number 
---@return any retval 
function N_0x2D4259F1FEB81DA9(x1, y1, x2, y2) end

---```
---Returns the index of the newly created hospital spawn point.  
---p3 might be radius?  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F464EF988465A81)
---@param x number 
---@param y number 
---@param z number 
---@param p3 number 
---@param p4 any 
---@return number retval 
function AddHospitalRestart(x, y, z, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x452736765B31FC4B)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 any 
---@return any retval 
function AddPoliceRestart(p0, p1, p2, p3, p4) end

---```
---This native is adding a zone, where you can change density settings. For example, you can add a zone on 0.0, 0.0, 0.0 with radius 900.0 and vehicleMultiplier 0.0, and you will not see any new population vehicle spawned in a radius of 900.0 from 0.0, 0.0, 0.0. Returns the id. You can have only 15 zones at the same time. You can remove zone using REMOVE_POP_MULTIPLIER_SPHERE
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x32C7A7E8C43A1F80)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param pedMultiplier number 
---@param vehicleMultiplier number 
---@param p6 boolean 
---@param p7 boolean 
---@return number retval 
function AddPopMultiplierSphere(x, y, z, radius, pedMultiplier, vehicleMultiplier, p6, p7) end

---```
---This native is adding a zone, where you can change density settings. For example, you can add a zone on 0.0, 0.0, 0.0 with radius 900.0 and vehicleMultiplier 0.0, and you will not see any new population vehicle spawned in a radius of 900.0 from 0.0, 0.0, 0.0. Returns the id. You can have only 15 zones at the same time. You can remove zone using REMOVE_POP_MULTIPLIER_SPHERE
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x32C7A7E8C43A1F80)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param pedMultiplier number 
---@param vehicleMultiplier number 
---@param p6 boolean 
---@param p7 boolean 
---@return number retval 
function N_0x32C7A7E8C43A1F80(x, y, z, radius, pedMultiplier, vehicleMultiplier, p6, p7) end

---```
---NativeDB Added Parameter 10: BOOL p9
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x67F6413D3220E18D)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param p6 number 
---@param p7 number 
---@param p8 boolean 
---@return number retval 
function AddPopMultiplierArea(x1, y1, z1, x2, y2, z2, p6, p7, p8) end

---```
---NativeDB Added Parameter 10: BOOL p9
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x67F6413D3220E18D)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param p6 number 
---@param p7 number 
---@param p8 boolean 
---@return number retval 
function N_0x67F6413D3220E18D(x1, y1, z1, x2, y2, z2, p6, p7, p8) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x69FE6DC87BD2A5E9)
---@param value any 
function AddReplayStatValue(value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x69FE6DC87BD2A5E9)
---@param value any 
function N_0x69FE6DC87BD2A5E9(value) end

---```
---Adds a point related to CTacticalAnalysis
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8721407EE9C3FF6)
---@param x number 
---@param y number 
---@param z number 
function AddTacticalAnalysisPoint(x, y, z) end

---```
---Adds a point related to CTacticalAnalysis
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8721407EE9C3FF6)
---@param x number 
---@param y number 
---@param z number 
function N_0xB8721407EE9C3FF6(x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5AA3BEFA29F03AD4)
---@return boolean retval 
function AreProfileSettingsValid() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5AA3BEFA29F03AD4)
---@return boolean retval 
function N_0x5AA3BEFA29F03AD4() end

---See description of [`ADD_STUNT_JUMP_ANGLED`](#\_0xBBE5D803A5360CBF) for detailed info. The only difference really is this one does not have the radius (or angle, not sure) floats parameters for entry and landing zones.
---[Native Documentation](https://docs.fivem.net/natives/?_0x1A992DA297A4630C)
---@param x1 number Jump entry left far bottom corner coordinate X.
---@param y1 number Jump entry left far bottom corner coordinate Y.
---@param z1 number Jump entry left far bottom corner coordinate Z.
---@param x2 number Jump entry right near top corner coordinate X.
---@param y2 number Jump entry right near top corner coordinate Y.
---@param z2 number Jump entry right near top corner coordinate Z.
---@param x3 number Landing zone end coordinate X.
---@param y3 number Landing zone end coordinate Y.
---@param z3 number Landing zone end coordinate Z.
---@param x4 number Landing zone start coordinate X.
---@param y4 number Landing zone start coordinate Y.
---@param z4 number Landing zone start coordinate Z.
---@param camX number Stuntcam (cinematic) coordinate x.
---@param camY number Stuntcam (cinematic) coordinate y.
---@param camZ number Stuntcam (cinematic) coordinate z.
---@param unk1 number Unknown, always 150.
---@param unk2 number Unknown, always 0.
---@param unk3 number Unknown, always 0.
---@return number retval The ID of the stunt jump that was added.
function AddStuntJump(x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, y4, z4, camX, camY, camZ, unk1, unk2, unk3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC843060B5765DCE7)
---@param p0 number 
---@return number retval 
function Asin(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8927CBF9D22261A4)
---@param p0 number 
---@param p1 number 
---@return number retval 
function Atan2(p0, p1) end

---Creates a new stunt jump.
---
---The radius1 and radius2 might actually not be a radius at all, but that's what it seems to me testing them in-game. But they may be 'angle' floats instead, considering this native is named ADD_STUNT_JUMP\_**ANGLED**.
---
---Info about the specific 'parameter sections':
---
---**x1, y1, z1, x2, y2, z2 and radius1:**
---
---First coordinates are for the jump entry area, and the radius that will be checked around that area. So if you're not exactly within the coordinates, but you are within the outter radius limit then it will still register as entering the stunt jump. Note as mentioned above, the radius is just a guess, I'm not really sure about it's exact purpose.
---
---**x3, y3, z3, x4, y4, z4 and radius2:**
---
---Next part is the landing area, again starting with the left bottom (nearest to the stunt jump entry zone) coordinate, and the second one being the top right furthest away part of the landing area. Followed by another (most likely) radius float, this is usually slightly larger than the entry zone 'radius' float value, just because you have quite a lot of places where you can land (I'm guessing).
---
---**camX, camY and camZ:**
---
---The final coordinate in this native is the Camera position. Rotation and zoom/FOV is managed by the game itself, you just need to provide the camera location.
---
---**unk1, unk2 and unk3:**
---
---Not sure what these are for, but they're always `150, 0, 0` in decompiled scripts.
---
---Visualized example in-game:
---
---![](https://d.fivem.dev/2019-03-15\_18-24\_c7802\_846.png)
---
---Here is a list of almost all of the stunt jumps from GTA V (taken from decompiled scripts): https://pastebin.com/EW1jBPkY
---[Native Documentation](https://docs.fivem.net/natives/?_0xBBE5D803A5360CBF)
---Example: 
---```local data = {
---    entry = {
---        leftbottom = vector3(-963.1714, -2778.506, 14.47828),
---        righttop = vector3(-965.7361, -2777.121, 19.46395),
---        radius = 8.0
---    },
---    landing = {
---        start = vector3(-988.8297, -2830.789, 11.96478),
---        ending = vector3(-1027.989, -2895.436, 16.95805),
---        radius = 18.0
---    },
---    camcoords = vector3(-967.196, -2811.716, 14.5521),
---    unk1 = 150,
---    unk2 = 0,
---    unk3 = 0
---
---}
---
---local stuntjump = AddStuntJumpAngled(
---    data.entry.leftbottom, 
---    data.entry.righttop,
---    data.entry.radius,
---    data.landing.start,
---    data.landing.ending,
---    data.landing.radius,
---    data.camcoords,
---    data.unk1,
---    data.unk2,
---    data.unk3
---)
---
---print("New stunt jump added, id: " .. stuntjump)
---
---Citizen.CreateThread(function()
---    while true do
---        Wait(0)
---        DrawLine(data.entry.leftbottom, data.entry.righttop, 255, 255, 255, 255)
---        DrawLine(data.landing.start, data.landing.ending, 255, 0, 0, 255)
---        DrawMarker(28, data.camcoords.x, data.camcoords.y, data.camcoords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 255, 255, 150, false, false, 2, false, nil, nil, false)
---    end
---end)```
---@param x1 number Entry zone bottom left corner x.
---@param y1 number Entry zone bottom left corner y.
---@param z1 number Entry zone bottom left corner z.
---@param x2 number Entry zone top right corner x.
---@param y2 number Entry zone top right corner y.
---@param z2 number Entry zone top right corner z.
---@param radius1 number Probably a "feather" radius for entry zone, you need to enter the jump within the min/max coordinates, or within this radius of those two coordinates.
---@param x3 number Landing zone start corner coordinate x.
---@param y3 number Landing zone start corner coordinate y.
---@param z3 number Landing zone start corner coordinate z.
---@param x4 number Landing zone end corner coordinate x.
---@param y4 number Landing zone end corner coordinate y.
---@param z4 number Landing zone end corner coordinate z.
---@param radius2 number Probably a "feather" radius for landing zone, you need to land within the min/max coordinates, or within this radius of those two coordinates.
---@param camX number Stunt (cinematic) camera x position.
---@param camY number Stunt (cinematic) camera y position.
---@param camZ number Stunt (cinematic) camera z position.
---@param unk1 number always 150
---@param unk2 number always 0
---@param unk3 number always 0
---@return number retval The ID of the stuntjump that was created.
function AddStuntJumpAngled(x1, y1, z1, x2, y2, z2, radius1, x3, y3, z3, x4, y4, z4, radius2, camX, camY, camZ, unk1, unk2, unk3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE0E500246FF73D66)
---@param p0 any 
---@param p1 any 
function BeginReplayStats(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDEA36202FC3382DF)
---@param toggle boolean 
function AllowMissionCreatorWarp(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDEA36202FC3382DF)
---@param toggle boolean 
function N_0xDEA36202FC3382DF(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6B7B0ACD4E4B75E)
function CancelStuntJump() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0C515FAB3FF9EA92)
---@param string1 string 
---@param string2 string 
---@return boolean retval 
function AreStringsEqual(string1, string2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC79AE21974B01FB2)
function CleanupAsyncInstall() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC79AE21974B01FB2)
function N_0xC79AE21974B01FB2() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA9D1795CD5043663)
---@param p0 number 
---@return number retval 
function Atan(p0) end

---```
---Example: CLEAR_AREA(0, 0, 0, 30, true, false, false, false);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA56F01F3765B93A0)
---@param X number 
---@param Y number 
---@param Z number 
---@param radius number 
---@param p4 boolean 
---@param ignoreCopCars boolean 
---@param ignoreObjects boolean 
---@param p7 boolean 
function ClearArea(X, Y, Z, radius, p4, ignoreCopCars, ignoreObjects, p7) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B2BD3773123EA2F)
---@param dispatchService number 
---@param toggle boolean 
function BlockDispatchServiceResourceCreation(dispatchService, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B2BD3773123EA2F)
---@param dispatchService number 
---@param toggle boolean 
function N_0x9B2BD3773123EA2F(dispatchService, toggle) end

---```
---DO NOT use this as it doesn't clean up the text input box properly and your script will get stuck in the UPDATE_ONSCREEN_KEYBOARD() loop.
---Use _FORCE_CLOSE_TEXT_INPUT_BOX instead.
---CANCEL_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x58A39BE597CE99CD)
function CancelOnscreenKeyboard() end

---```
---DO NOT use this as it doesn't clean up the text input box properly and your script will get stuck in the UPDATE_ONSCREEN_KEYBOARD() loop.
---Use _FORCE_CLOSE_TEXT_INPUT_BOX instead.
---CANCEL_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x58A39BE597CE99CD)
function N_0x58A39BE597CE99CD() end

---```
---I looked through the PC scripts that this site provides you with a link to find. It shows the last param mainly uses, (0, 2, 6, 16, and 17) so I am going to assume it is a type of flag.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDD9B9B385AAC7F5B)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param flags number 
function ClearAreaOfObjects(x, y, z, radius, flags) end

---```
---Example:       CLEAR_AREA_OF_PEDS(0, 0, 0, 10000, 1);
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBE31FD6CE464AC59)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param flags number 
function ClearAreaOfPeds(x, y, z, radius, flags) end

---```
---NativeDB Added Parameter 13: Any p12
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x11DB3500F042A8AA)
---@param x1 number X dimension of the angled area 'origin'
---@param y1 number Y dimension of the angled area 'origin'
---@param z1 number Z dimension of the angled area 'origin'
---@param x2 number X dimension of the angled area 'extent'
---@param y2 number Y dimension of the angled area 'extent'
---@param z2 number Z dimension of the angled area 'extent'
---@param width number Width of the angled area
---@param p7 boolean 
---@param p8 boolean 
---@param p9 boolean 
---@param p10 boolean 
---@param p11 boolean 
function ClearAngledAreaOfVehicles(x1, y1, z1, x2, y2, z2, width, p7, p8, p9, p10, p11) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A1CB9094635D1A6)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param flags number 
function ClearAreaOfProjectiles(x, y, z, radius, flags) end

---```
---MISC::_0x957838AAF91BD12D(x, y, z, radius, false, false, false, false); seem to make all objects go away, peds, vehicles etc. All booleans set to true doesn't seem to change anything.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x957838AAF91BD12D)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param p4 boolean 
---@param p5 boolean 
---@param p6 boolean 
---@param p7 boolean 
function ClearAreaLeaveVehicleHealth(x, y, z, radius, p4, p5, p6, p7) end

---```
---MISC::_0x957838AAF91BD12D(x, y, z, radius, false, false, false, false); seem to make all objects go away, peds, vehicles etc. All booleans set to true doesn't seem to change anything.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x957838AAF91BD12D)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param p4 boolean 
---@param p5 boolean 
---@param p6 boolean 
---@param p7 boolean 
function N_0x957838AAF91BD12D(x, y, z, radius, p4, p5, p6, p7) end

---```
---MISC::_0x957838AAF91BD12D(x, y, z, radius, false, false, false, false); seem to make all objects go away, peds, vehicles etc. All booleans set to true doesn't seem to change anything.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x957838AAF91BD12D)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param p4 boolean 
---@param p5 boolean 
---@param p6 boolean 
---@param p7 boolean 
function ClearAreaOfEverything(x, y, z, radius, p4, p5, p6, p7) end

---```
---Example: 		CLEAR_AREA_OF_VEHICLES(0, 0, 0, 10000, false, false, false, false, false);  
---```
---
---```
---NativeDB Added Parameter 10: BOOL p9
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x01C7B9B38428AEB6)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param p4 boolean 
---@param p5 boolean 
---@param p6 boolean 
---@param p7 boolean 
---@param p8 boolean 
function ClearAreaOfVehicles(x, y, z, radius, p4, p5, p6, p7, p8) end

---```
---flags appears to always be 0
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x04F8FC8FCF58F88D)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param flags number 
function ClearAreaOfCops(x, y, z, radius, flags) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x957E790EA1727B64)
function ClearCloudHat() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x338D2E3477711050)
function ClearOverrideWeather() end

---```
---This sets bit [offset] of [address] to off.
---Example:
---MISC::CLEAR_BIT(&bitAddress, 1);
---To check if this bit has been enabled:
---MISC::IS_BIT_SET(bitAddress, 1); // will return 0 afterwards
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE80492A9AC099A93)
---@param address number 
---@param offset number 
function ClearBit(address, offset) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2716D40842EAF79)
function ClearRestartCustomPosition() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2716D40842EAF79)
function N_0xA2716D40842EAF79() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2716D40842EAF79)
function SetNextRespawnToCustom() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1B1AB132A16FDA55)
function ClearReplayStats() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3CD58CCA6CDA852)
function ClearTacticalAnalysisPoints() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3CD58CCA6CDA852)
function N_0xB3CD58CCA6CDA852() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCCC39339BEF76CF5)
function ClearWeatherTypePersist() end

---```
---Compares two strings up to a specified number of characters.
---Parameters:
---str1 - String to be compared.
---str2 - String to be compared.
---matchCase - Comparison will be case-sensitive.
---maxLength - Maximum number of characters to compare. A value of -1 indicates an infinite length.
---Returns:
---A value indicating the relationship between the strings:
---<0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'A' < 'B', so result = -1)
---0 - The contents of both strings are equal.
--->0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'B' > 'A', so result = 1)
---Examples:
---MISC::COMPARE_STRINGS("STRING", "string", false, -1); // 0; equal
---MISC::COMPARE_STRINGS("TESTING", "test", false, 4); // 0; equal
---MISC::COMPARE_STRINGS("R2D2", "R2xx", false, 2); // 0; equal
---MISC::COMPARE_STRINGS("foo", "bar", false, -1); // 4; 'f' > 'b'
---MISC::COMPARE_STRINGS("A", "A", true, 1); // 0; equal
---When comparing case-sensitive strings, lower-case characters are greater than upper-case characters:
---MISC::COMPARE_STRINGS("A", "a", true, 1); // -1; 'A' < 'a'
---MISC::COMPARE_STRINGS("a", "A", true, 1); // 1; 'a' > 'A'
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1E34710ECD4AB0EB)
---@param str1 string 
---@param str2 string 
---@param matchCase boolean 
---@param maxLength number 
---@return number retval 
function CompareStrings(str1, str2, matchCase, maxLength) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x213AEB2B90CBA7AC)
---@param dst any 
---@param src any 
---@param size number 
function CopyMemory(dst, src, size) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x213AEB2B90CBA7AC)
---@param dst any 
---@param src any 
---@param size number 
function N_0x213AEB2B90CBA7AC(dst, src, size) end

---```
---enum IncidentTypes  
---{  
---    FireDepartment = 3,  
---    Paramedics = 5,  
---    Police = 7,  
---    PedsInCavalcades = 11,   
---    Merryweather = 14  
---};  
---As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f.   
---Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).  
---Side Note 2: I say it breaks as if you call this proper,  
---if(CREATE_INCIDENT) etc it will return false if you do as I said above.  
---=====================================================  
---```
---
---```
---NativeDB Added Parameter 8: Any p7
---NativeDB Added Parameter 9: Any p8
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3F892CAF67444AE7)
---@param dispatchService number 
---@param x number 
---@param y number 
---@param z number 
---@param numUnits number 
---@param radius number 
---@param outIncidentID number 
---@return boolean retval 
function CreateIncident(dispatchService, x, y, z, numUnits, radius, outIncidentID) end

---```
---p0 could be type (valueused in scripts: 14, 7, 5, 3, 11)  
---p1 is a return from get_player_ped() in am_gang_call.c, but player_ped_id() in other (non am) scripts.  
---p3 is usually 0f or 3f  
---=====================================================  
---enum IncidentTypes  
---{  
---    FireDepartment = 3,  
---    Paramedics = 5,  
---    Police = 7,  
---    PedsInCavalcades = 11,   
---    Merryweather = 14  
---};  
---As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f.   
---Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).  
---Side Note 2: I say it breaks as if you call this proper,  
---if(CREATE_INCIDENT) etc it will return false if you do as I said above.  
---=====================================================  
---```
---
---```
---NativeDB Added Parameter 6: Any p5
---NativeDB Added Parameter 7: Any p6
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x05983472F0494E60)
---@param dispatchService number 
---@param ped number 
---@param numUnits number 
---@param radius number 
---@param outIncidentID number 
---@return boolean retval 
function CreateIncidentWithEntity(dispatchService, ped, numUnits, radius, outIncidentID) end

---```
---The game by default has 5 hospital respawn points. Disabling them all will cause the player to respawn at the last position they were.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC8535819C450EBA8)
---@param hospitalIndex number 
---@param toggle boolean 
function DisableHospitalRestart(hospitalIndex, toggle) end

---```
---Delete an incident with a given id.  
---=======================================================  
---Correction, I have change this to int, instead of int*  
---as it doesn't use a pointer to the createdIncident.  
---If you try it you will crash (or) freeze.  
---=======================================================  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x556C1AA270D5A207)
---@param incidentId number 
function DeleteIncident(incidentId) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC518000E39DAE1F)
---@param p0 number 
function DeleteStuntJump(p0) end

---```
---Disables the spawn point at the police house on the specified index.
---policeIndex: The police house index.
---toggle: true to enable the spawn point, false to disable.
---- Nacorpio
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x23285DED6EBD7EA3)
---@param policeIndex number 
---@param toggle boolean 
function DisablePoliceRestart(policeIndex, toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA5272EBEDD4747F6)
---@param p0 number 
function DisableStuntJumpSet(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA78CFA0366592FE)
---@param p0 number 
---@param windowTitle string 
---@param p2 any 
---@param defaultText string 
---@param defaultConcat1 string 
---@param defaultConcat2 string 
---@param defaultConcat3 string 
---@param defaultConcat4 string 
---@param defaultConcat5 string 
---@param defaultConcat6 string 
---@param defaultConcat7 string 
---@param maxInputLength number 
function DisplayOnscreenKeyboardWithLongerInitialString(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, defaultConcat4, defaultConcat5, defaultConcat6, defaultConcat7, maxInputLength) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA78CFA0366592FE)
---@param p0 number 
---@param windowTitle string 
---@param p2 any 
---@param defaultText string 
---@param defaultConcat1 string 
---@param defaultConcat2 string 
---@param defaultConcat3 string 
---@param defaultConcat4 string 
---@param defaultConcat5 string 
---@param defaultConcat6 string 
---@param defaultConcat7 string 
---@param maxInputLength number 
function N_0xCA78CFA0366592FE(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, defaultConcat4, defaultConcat5, defaultConcat6, defaultConcat7, maxInputLength) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA78CFA0366592FE)
---@param p0 number 
---@param windowTitle string 
---@param p2 any 
---@param defaultText string 
---@param defaultConcat1 string 
---@param defaultConcat2 string 
---@param defaultConcat3 string 
---@param defaultConcat4 string 
---@param defaultConcat5 string 
---@param defaultConcat6 string 
---@param defaultConcat7 string 
---@param maxInputLength number 
function DisplayOnscreenKeyboard2(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, defaultConcat4, defaultConcat5, defaultConcat6, defaultConcat7, maxInputLength) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1327E2FE9746BAEE)
---@param id number 
---@return boolean retval 
function DoesPopMultiplierAreaExist(id) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1327E2FE9746BAEE)
---@param id number 
---@return boolean retval 
function N_0x1327E2FE9746BAEE(id) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE369A5783B866016)
---@param p0 number 
function EnableStuntJumpSet(p0) end

---```
---windowTitle's  
--------------------  
---CELL_EMAIL_BOD	=	"Enter your Eyefind message"  
---CELL_EMAIL_BODE	=	"Message too long. Try again"  
---CELL_EMAIL_BODF	=	"Forbidden message. Try again"  
---CELL_EMAIL_SOD	=	"Enter your Eyefind subject"  
---CELL_EMAIL_SODE	=	"Subject too long. Try again"  
---CELL_EMAIL_SODF	=	"Forbidden text. Try again"  
---CELL_EMASH_BOD	=	"Enter your Eyefind message"  
---CELL_EMASH_BODE	=	"Message too long. Try again"  
---CELL_EMASH_BODF	=	"Forbidden message. Try again"  
---CELL_EMASH_SOD	=	"Enter your Eyefind subject"  
---CELL_EMASH_SODE	=	"Subject too long. Try again"  
---CELL_EMASH_SODF	=	"Forbidden Text. Try again"  
---FMMC_KEY_TIP10	=	"Enter Synopsis"  
---FMMC_KEY_TIP12	=	"Enter Custom Team Name"  
---FMMC_KEY_TIP12F	=	"Forbidden Text. Try again"  
---FMMC_KEY_TIP12N	=	"Custom Team Name"  
---FMMC_KEY_TIP8	=	"Enter Message"  
---FMMC_KEY_TIP8F	=	"Forbidden Text. Try again"  
---FMMC_KEY_TIP8FS	=	"Invalid Message. Try again"  
---FMMC_KEY_TIP8S	=	"Enter Message"  
---FMMC_KEY_TIP9	=	"Enter Outfit Name"  
---FMMC_KEY_TIP9F	=	"Invalid Outfit Name. Try again"  
---FMMC_KEY_TIP9N	=	"Outfit Name"  
---PM_NAME_CHALL	=	"Enter Challenge Name"  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x00DC833F2568DBF6)
---@param p0 number 
---@param windowTitle string 
---@param p2 string 
---@param defaultText string 
---@param defaultConcat1 string 
---@param defaultConcat2 string 
---@param defaultConcat3 string 
---@param maxInputLength number 
function DisplayOnscreenKeyboard(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength) end

---```
---Makes the ped jump around like they're in a tennis match  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x28A04B411933F8A6)
---@param ped number 
---@param toggle boolean 
---@param p2 boolean 
function EnableTennisMode(ped, toggle, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x50EEAAD86232EE55)
function DoAutoSave() end

---```
---Finds a position ahead of the player by predicting the players next actions.  
---The positions match path finding node positions.  
---When roads diverge, the position may rapidly change between two or more positions. This is due to the engine not being certain of which path the player will take.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6874E2190B0C1972)
---@param posX number 
---@param posY number 
---@param posZ number 
---@param dirX number 
---@param dirY number 
---@param dirZ number 
---@param distance number 
---@param spawnPoint vector3 
---@return boolean retval 
function FindSpawnPointInDirection(posX, posY, posZ, dirX, dirY, dirZ, distance, spawnPoint) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x171BAFB3C60389F4)
---@param id number 
---@return boolean retval 
function DoesPopMultiplierSphereExist(id) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x171BAFB3C60389F4)
---@param id number 
---@return boolean retval 
function N_0x171BAFB3C60389F4(id) end

---```
---creates single lightning+thunder at random position  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6062E089251C898)
function ForceLightningFlash() end

---```
---creates single lightning+thunder at random position  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6062E089251C898)
function CreateLightningThunder() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8B3CA62B1EF19B62)
---@return number retval 
function GetAllocatedStackSize() end

---Enables or disables the specified 'dispatch service' type. 'Dispatch services' are used for spawning AI response peds/vehicles for events such as a fire in the street (type 3 - DT_FireDepartment), or gunfire in a gang area (type 11 - DT_Gangs).
---
---List of dispatch services:
---
---```cpp
---enum DispatchType
---{
---	DT_Invalid = 0,
---	DT_PoliceAutomobile,
---	DT_PoliceHelicopter,
---	DT_FireDepartment,
---	DT_SwatAutomobile,
---	DT_AmbulanceDepartment,
---	DT_PoliceRiders,
---	DT_PoliceVehicleRequest,
---	DT_PoliceRoadBlock,
---	DT_PoliceAutomobileWaitPulledOver,
---	DT_PoliceAutomobileWaitCruising,
---	DT_Gangs,
---	DT_SwatHelicopter,
---	DT_PoliceBoat,
---	DT_ArmyVehicle,
---	DT_BikerBackup = 15
---};
---```
---
---Note that 'dispatch service' has nothing to do with the police scanner (audio), to toggle that, use [SET_AUDIO_FLAG](#\_0xB9EFD5C25018725A) with `'PoliceScannerDisabled'`.
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC0F817884CDD856)
---@param dispatchService number The ID of the dispatch service to toggle.
---@param toggle boolean True to enable the dispatch service, false to disable the dispatch service.
function EnableDispatchService(dispatchService, toggle) end

---Enables or disables the specified 'dispatch service' type. 'Dispatch services' are used for spawning AI response peds/vehicles for events such as a fire in the street (type 3 - DT_FireDepartment), or gunfire in a gang area (type 11 - DT_Gangs).
---
---List of dispatch services:
---
---```cpp
---enum DispatchType
---{
---	DT_Invalid = 0,
---	DT_PoliceAutomobile,
---	DT_PoliceHelicopter,
---	DT_FireDepartment,
---	DT_SwatAutomobile,
---	DT_AmbulanceDepartment,
---	DT_PoliceRiders,
---	DT_PoliceVehicleRequest,
---	DT_PoliceRoadBlock,
---	DT_PoliceAutomobileWaitPulledOver,
---	DT_PoliceAutomobileWaitCruising,
---	DT_Gangs,
---	DT_SwatHelicopter,
---	DT_PoliceBoat,
---	DT_ArmyVehicle,
---	DT_BikerBackup = 15
---};
---```
---
---Note that 'dispatch service' has nothing to do with the police scanner (audio), to toggle that, use [SET_AUDIO_FLAG](#\_0xB9EFD5C25018725A) with `'PoliceScannerDisabled'`.
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC0F817884CDD856)
---@param dispatchService number The ID of the dispatch service to toggle.
---@param toggle boolean True to enable the dispatch service, false to disable the dispatch service.
function N_0xDC0F817884CDD856(dispatchService, toggle) end

---```
---Returns value of the '-benchmarkIterations' command line option.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4750FC27570311EC)
---@return number retval 
function GetBenchmarkIterationsFromCommandLine() end

---```
---Returns value of the '-benchmarkIterations' command line option.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4750FC27570311EC)
---@return number retval 
function N_0x4750FC27570311EC() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA23E821FBDF8A5F2)
function EndReplayStats() end

---```
---Sets the localplayer playerinfo state back to playing (State 0)  
---States are:  
----1: "Invalid"  
---0: "Playing"  
---1: "Died"  
---2: "Arrested"  
---3: "Failed Mission"  
---4: "Left Game"  
---5: "Respawn"  
---6: "In MP Cutscene"  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0AA53F866B3134D)
function ForceGameStatePlaying() end

---```
---Sets the localplayer playerinfo state back to playing (State 0)  
---States are:  
----1: "Invalid"  
---0: "Playing"  
---1: "Died"  
---2: "Arrested"  
---3: "Failed Mission"  
---4: "Left Game"  
---5: "Respawn"  
---6: "In MP Cutscene"  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0AA53F866B3134D)
function ResetLocalplayerState() end

---```
---Exits the game and downloads a fresh social club update on next restart.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB6891F03362FB12)
function ForceSocialClubUpdate() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x186FC4BE848E1C92)
---@param x1 number 
---@param y1 number 
---@param x2 number 
---@param y2 number 
---@return number retval 
function GetAngleBetween2dVectors(x1, y1, x2, y2) end

---```
---Returns value of the '-benchmarkPass' command line option.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1B2366C3F2A5C8DF)
---@return number retval 
function GetBenchmarkPassFromCommandLine() end

---```
---Returns value of the '-benchmarkPass' command line option.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1B2366C3F2A5C8DF)
---@return number retval 
function N_0x1B2366C3F2A5C8DF() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB335F761606DB47C)
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 boolean 
---@return boolean retval 
function GetBaseElementMetadata(p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB335F761606DB47C)
---@param p1 any 
---@param p2 any 
---@param p3 any 
---@param p4 boolean 
---@return boolean retval 
function N_0xB335F761606DB47C(p1, p2, p3, p4) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x53158863FCC0893A)
---@param var number 
---@param rangeStart number 
---@param rangeEnd number 
---@return number retval 
function GetBitsInRange(var, rangeStart, rangeEnd) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE599A503B3837E1B)
---@return number retval 
function GetBenchmarkTime() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE599A503B3837E1B)
---@return number retval 
function N_0xE599A503B3837E1B() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x20AC25E781AE4A84)
---@return number retval 
function GetCloudHatOpacity() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x20AC25E781AE4A84)
---@return number retval 
function N_0x20AC25E781AE4A84() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D7A43EC6A5FEA45)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param projectileHash number | string 
---@param projectilePos vector3 
---@param ownedByPlayer boolean 
---@return boolean retval 
function GetCoordsOfProjectileTypeInArea(x1, y1, z1, x2, y2, z2, projectileHash, projectilePos, ownedByPlayer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D7A43EC6A5FEA45)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param projectileHash number | string 
---@param projectilePos vector3 
---@param ownedByPlayer boolean 
---@return boolean retval 
function N_0x8D7A43EC6A5FEA45(x1, y1, z1, x2, y2, z2, projectileHash, projectilePos, ownedByPlayer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D7A43EC6A5FEA45)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param projectileHash number | string 
---@param projectilePos vector3 
---@param ownedByPlayer boolean 
---@return boolean retval 
function GetIsProjectileTypeInArea(x1, y1, z1, x2, y2, z2, projectileHash, projectilePos, ownedByPlayer) end

---Returns the distance between two three-dimensional points, optionally ignoring the Z values.
---If useZ is false, only the 2D plane (X-Y) will be considered for calculating the distance.
---Consider using this faster native instead: SYSTEM::VDIST - DVIST always takes in consideration the 3D coordinates.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF1B760881820C952)
---Example: 
---```local dist = GetDistanceBetweenCoords(0.0, 0.0, 0.0, 5.0, 5.0, 5.0, true)
---
----- language faster equivalent:
---local firstVec = vector3(0.0, 0.0, 0.0)
---local secondVec = vector3(5.0, 5.0, 5.0)
---
---local dist = #(firstVec - secondVec) -- Use Z
---local dist = #(firstVec.xy - secondVec.xy) -- Do not use Z```
---@param x1 number The X coordinate of the first point.
---@param y1 number The Y coordinate of the first point.
---@param z1 number The Z coordinate of the first point.
---@param x2 number The X coordinate of the second point.
---@param y2 number The Y coordinate of the second point.
---@param z2 number The Z coordinate of the second point.
---@param useZ boolean Whether or not to use the Z coordinate.
---@return number retval The distance between the passed points in units.
function GetDistanceBetweenCoords(x1, y1, z1, x2, y2, z2, useZ) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC8202EFC642E6F2)
---@return number retval 
function GetFrameCount() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFB4138EEFED7B81)
---@param ped number 
---@param weaponHash number | string 
---@param distance number 
---@param outCoords vector3 
---@param ownedByPlayer boolean 
---@return boolean retval 
function GetCoordsOfProjectileTypeWithinDistance(ped, weaponHash, distance, outCoords, ownedByPlayer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFB4138EEFED7B81)
---@param ped number 
---@param weaponHash number | string 
---@param distance number 
---@param outCoords vector3 
---@param ownedByPlayer boolean 
---@return boolean retval 
function N_0xDFB4138EEFED7B81(ped, weaponHash, distance, outCoords, ownedByPlayer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDFB4138EEFED7B81)
---@param ped number 
---@param weaponHash number | string 
---@param distance number 
---@param outCoords vector3 
---@param ownedByPlayer boolean 
---@return boolean retval 
function GetProjectileNearPedCoords(ped, weaponHash, distance, outCoords, ownedByPlayer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9CD27B0045628463)
---@return number retval 
function GetGameTimer() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C9296CBCD1B971E)
---@return number retval 
function GetFakeWantedLevel() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C9296CBCD1B971E)
---@return number retval 
function N_0x4C9296CBCD1B971E() end

---```
---Bear in mind this native can only calculate the elevation when the coordinates are within the client's render distance.
---```
---
---```
---NativeDB Added Parameter 6: BOOL p5
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC906A7DAB05C8D2B)
---@param x number Position on the X-axis to get ground elevation at.
---@param y number Position on the Y-axis to get ground elevation at.
---@param z number Position on the Z-axis to get ground elevation at.
---@param groundZ number The ground elevation at the specified position.
---@param ignoreWater boolean 
---@return boolean retval 
function GetGroundZFor3dCoord(x, y, z, groundZ, ignoreWater) end

---Gets the high precision frame time of the last frame in seconds.
---
---*note: the example above is way less precise.*
---[Native Documentation](https://docs.fivem.net/natives/?_0x15C40837039FFAF7)
---Example: 
---```local time1 = GetGameTimer()
---Citizen.Wait(0)
---
----- Prints for example 0.01253530010581 at around 90 FPS
---print(GetFrameTime())
---
----- This would print about the same as above, but is less accurate, ie: 0.012
---print((GetGameTimer() - time1) / 1000)```
---@return number retval The frame time (in seconds) of the last frame.
function GetFrameTime() end

---This native converts its past string to hash. It is hashed using jenkins one at a time method.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD24D37CC275948CC)
---Example: 
---```local zentorno = GetHashKey('zentorno')
---
---if GetEntityModel(car) == zentorno then
---    print('Car is a zentorno!')
---end```
---@param string string The string to hash.
---@return number | string retval The hash of `string`.
function GetHashKey(string) end

---```
---Returns pointer to an empty string.
---GET_C*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x24DA7D7667FD7B09)
---@return string retval 
function GetGlobalCharBuffer() end

---```
---Returns pointer to an empty string.
---GET_C*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x24DA7D7667FD7B09)
---@return string retval 
function N_0x24DA7D7667FD7B09() end

---```
---dx = x1 - x2
---dy = y1 - y2
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2FFB6B224F4B2926)
---@param dx number 
---@param dy number 
---@return number retval 
function GetHeadingFromVector2d(dx, dy) end

---```
---Returns true if profile setting 208 is equal to 0.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E04F06094C87047)
---@return boolean retval 
function GetIsAutoSaveOff() end

---```
---Returns true if profile setting 208 is equal to 0.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E04F06094C87047)
---@return boolean retval 
function N_0x6E04F06094C87047() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BDC7BFC57A81E76)
---@param x number 
---@param y number 
---@param z number 
---@param groundZ number 
---@param normal vector3 
---@return boolean retval 
function GetGroundZAndNormalFor3dCoord(x, y, z, groundZ, normal) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BDC7BFC57A81E76)
---@param x number 
---@param y number 
---@param z number 
---@param groundZ number 
---@param normal vector3 
---@return boolean retval 
function N_0x8BDC7BFC57A81E76(x, y, z, groundZ, normal) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8BDC7BFC57A81E76)
---@param x number 
---@param y number 
---@param z number 
---@param groundZ number 
---@param normal vector3 
---@return boolean retval 
function GetGroundZCoordWithOffsets(x, y, z, groundZ, normal) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCBAD6729F7B1F4FC)
---@return number retval 
function GetIndexOfCurrentLevel() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA33CDCCDA663159E)
---@return boolean retval 
function GetMissionFlag() end

---```
---NativeDB Added Parameter 6: BOOL p5
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9E82F0F362881B29)
---@param x number 
---@param y number 
---@param z number 
---@param groundZ number 
---@param p4 boolean 
---@return boolean retval 
function GetGroundZFor3dCoord2(x, y, z, groundZ, p4) end

---```
---NativeDB Added Parameter 6: BOOL p5
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9E82F0F362881B29)
---@param x number 
---@param y number 
---@param z number 
---@param groundZ number 
---@param p4 boolean 
---@return boolean retval 
function N_0x9E82F0F362881B29(x, y, z, groundZ, p4) end

---```
---Although we don't have a jenkins hash for this one, the name is 100% confirmed.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9689123E3F213AA5)
---@return boolean retval 
function GetIsPlayerInAnimalForm() end

---```
---Although we don't have a jenkins hash for this one, the name is 100% confirmed.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9689123E3F213AA5)
---@return boolean retval 
function N_0x9689123E3F213AA5() end

---Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---[Native Documentation](https://docs.fivem.net/natives/?_0x711327CD09C8F162)
---@return number | string retval 
function GetNextWeatherTypeHashName() end

---Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---[Native Documentation](https://docs.fivem.net/natives/?_0x711327CD09C8F162)
---@return number | string retval 
function GetNextWeatherType() end

---```
---Gets the dimensions of a model.
---Calculate (maximum - minimum) to get the size, in which case, Y will be how long the model is.
---Example from the scripts: MISC::GET_MODEL_DIMENSIONS(ENTITY::GET_ENTITY_MODEL(PLAYER::PLAYER_PED_ID()), &v_1A, &v_17);
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x03E8D3D5F549087A)
---@param modelHash number | string 
---@param minimum vector3 
---@param maximum vector3 
function GetModelDimensions(modelHash, minimum, maximum) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFEAD16FC8F9DFC0F)
---@param stackSize number 
---@return number retval 
function GetNumberOfFreeStacksOfThisSize(stackSize) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFEAD16FC8F9DFC0F)
---@param stackSize number 
---@return number retval 
function GetFreeStackSlotsCount(stackSize) end

---```
---Returns NULL unless UPDATE_ONSCREEN_KEYBOARD() returns 1 in the same tick.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8362B09B91893647)
---@return string retval 
function GetOnscreenKeyboardResult() end

---Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---[Native Documentation](https://docs.fivem.net/natives/?_0x564B884A05EC45A3)
---@return number | string retval 
function GetPrevWeatherTypeHashName() end

---Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---[Native Documentation](https://docs.fivem.net/natives/?_0x564B884A05EC45A3)
---@return number | string retval 
function GetPrevWeatherType() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB4A0C2D56441717)
---@param dispatchService number 
---@return number retval 
function GetNumDispatchedUnitsForPlayer(dispatchService) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB4A0C2D56441717)
---@param dispatchService number 
---@return number retval 
function N_0xEB4A0C2D56441717(dispatchService) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB4A0C2D56441717)
---@param dispatchService number 
---@return number retval 
function GetNumberOfDispatchedUnitsForPlayer(dispatchService) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x82FDE6A57EE4EE44)
---@param ped number 
---@param weaponHash number | string 
---@param distance number 
---@param outCoords vector3 
---@param outProjectile table 
---@param ownedByPlayer boolean 
---@return boolean retval 
function GetProjectileNearPed(ped, weaponHash, distance, outCoords, outProjectile, ownedByPlayer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x82FDE6A57EE4EE44)
---@param ped number 
---@param weaponHash number | string 
---@param distance number 
---@param outCoords vector3 
---@param outProjectile table 
---@param ownedByPlayer boolean 
---@return boolean retval 
function N_0x82FDE6A57EE4EE44(ped, weaponHash, distance, outCoords, outProjectile, ownedByPlayer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x996DD1E1E02F1008)
---@return number retval 
function GetNumSuccessfulStuntJumps() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x996DD1E1E02F1008)
---@return number retval 
function N_0x996DD1E1E02F1008() end

---```
---Returns duration of how long the game has been in power-saving mode (aka "constrained") in milliseconds.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xABB2FA71C83A1B72)
---@return number retval 
function GetPowerSavingModeDuration() end

---```
---Returns duration of how long the game has been in power-saving mode (aka "constrained") in milliseconds.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xABB2FA71C83A1B72)
---@return number retval 
function N_0xABB2FA71C83A1B72() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD2D57F1D764117B1)
---@return boolean retval 
function GetRandomEventFlag() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC488FF2356EA7791)
---@param profileSetting number 
---@return number retval 
function GetProfileSetting(profileSetting) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD53343AA4FB7DD28)
---@param startRange number 
---@param endRange number 
---@return number retval 
function GetRandomIntInRange(startRange, endRange) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x96695E368AD855F3)
---@return number retval 
function GetRainLevel() end

---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2D49816A804D134)
---@param startRange number 
---@param endRange number 
---@return number retval 
function GetRandomIntInRange2(startRange, endRange) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x313CE5879CEB6FCD)
---@param startRange number 
---@param endRange number 
---@return number retval 
function GetRandomFloatInRange(startRange, endRange) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC9274A7EF6B2867)
---@return number retval 
function GetReplayStatCount() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC9274A7EF6B2867)
---@return number retval 
function N_0xDC9274A7EF6B2867() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8098C8D6597AAE18)
---@param index number 
---@return number retval 
function GetReplayStatAtIndex(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8098C8D6597AAE18)
---@param index number 
---@return number retval 
function N_0x8098C8D6597AAE18(index) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B626A0150E4D449)
---@return number retval 
function GetReplayStatMissionType() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B626A0150E4D449)
---@return number retval 
function N_0x2B626A0150E4D449() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA09F896CE912481F)
---@param p0 boolean 
---@return number retval 
function GetSizeOfSaveData(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA09F896CE912481F)
---@param p0 boolean 
---@return number retval 
function N_0xA09F896CE912481F(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B5E102E4A42F2BF)
---@return number retval 
function GetStatusOfMissionRepeatSave() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B5E102E4A42F2BF)
---@return number retval 
function N_0x2B5E102E4A42F2BF() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC5868A966E5BE3AE)
---@return number retval 
function GetSnowLevel() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x17DF68D720AA77F8)
---@param ped number 
---@return boolean retval 
function GetTennisSwingAnimComplete(ped) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x17DF68D720AA77F8)
---@param ped number 
---@return boolean retval 
function N_0x17DF68D720AA77F8(ped) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA8CF1CC0AFCD3F12)
---@return number retval 
function GetWindSpeed() end

---```
---p3 - possibly radius?  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9870ACFB89A90995)
---@param x number 
---@param y number 
---@param z number 
---@param p3 number 
---@param p4 boolean 
---@param p5 boolean 
---@return boolean retval 
function HasBulletImpactedInArea(x, y, z, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6856EC3D35C81EA4)
---@return number retval 
function GetTotalSuccessfulStuntJumps() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6856EC3D35C81EA4)
---@return number retval 
function N_0x6856EC3D35C81EA4() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC8C5D7CFEAB8394)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 boolean 
---@param p7 boolean 
---@return boolean retval 
function HasBulletImpactedInBox(p0, p1, p2, p3, p4, p5, p6, p7) end

---Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---[Native Documentation](https://docs.fivem.net/natives/?_0xF3BBE884A14BB413)
---@param weatherType1 number | string 
---@param weatherType2 number | string 
---@param percentWeather2 number 
function GetWeatherTypeTransition(weatherType1, weatherType2, percentWeather2) end

---```
---Get inputted "Cheat code", for example:
---while (TRUE)
---{
---    if (MISC::_557E43C447E700A8(${fugitive}))
---    {
---       // Do something.
---    }
---    SYSTEM::WAIT(0);
---}
---Calling this will also set the last saved string hash to zero.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x557E43C447E700A8)
---@param hash number | string 
---@return boolean retval 
function HasCheatStringJustBeenEntered(hash) end

---```
---Get inputted "Cheat code", for example:
---while (TRUE)
---{
---    if (MISC::_557E43C447E700A8(${fugitive}))
---    {
---       // Do something.
---    }
---    SYSTEM::WAIT(0);
---}
---Calling this will also set the last saved string hash to zero.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x557E43C447E700A8)
---@param hash number | string 
---@return boolean retval 
function N_0x557E43C447E700A8(hash) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1F400FEF721170DA)
---@return vector3 retval 
function GetWindDirection() end

---```
---Hardcoded to always return true.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x14832BF2ABA53FC5)
---@return boolean retval 
function HasAsyncInstallFinished() end

---```
---Hardcoded to always return true.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x14832BF2ABA53FC5)
---@return boolean retval 
function N_0x14832BF2ABA53FC5() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x075F1D57402C93BA)
---@return boolean retval 
function HaveCreditsReachedEnd() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x075F1D57402C93BA)
---@return boolean retval 
function N_0x075F1D57402C93BA() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA61B4DF533DCB56E)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 boolean 
---@param p7 boolean 
---@param p8 boolean 
---@param p9 boolean 
---@param p10 boolean 
---@param p11 any 
---@param p12 boolean 
---@return boolean retval 
function IsAreaOccupied(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) end

---```
---This native appears on the cheat_controller script and tracks a combination of buttons, which may be used to toggle cheats in-game. Credits to ThreeSocks for the info. The hash contains the combination, while the "amount" represents the amount of buttons used in a combination. The following page can be used to make a button combination: gta5offset.com/ts/hash/
---INT_SCORES_SCORTED was a hash collision
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x071E2A839DE82D90)
---@param hash number | string 
---@param amount number 
---@return boolean retval 
function HasButtonCombinationJustBeenEntered(hash, amount) end

---```
---This native appears on the cheat_controller script and tracks a combination of buttons, which may be used to toggle cheats in-game. Credits to ThreeSocks for the info. The hash contains the combination, while the "amount" represents the amount of buttons used in a combination. The following page can be used to make a button combination: gta5offset.com/ts/hash/
---INT_SCORES_SCORTED was a hash collision
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x071E2A839DE82D90)
---@param hash number | string 
---@param amount number 
---@return boolean retval 
function N_0x071E2A839DE82D90(hash, amount) end

---```
---Hardcoded to return false.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE8B9C0EC9E183F35)
---@return boolean retval 
function HasResumedFromSuspend() end

---```
---Hardcoded to return false.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE8B9C0EC9E183F35)
---@return boolean retval 
function N_0xE8B9C0EC9E183F35() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x21FFB63D8C615361)
---@param toggle boolean 
function IgnoreNextRestart(toggle) end

---```
---if (MISC::IS_AUSSIE_VERSION()) {
---    sub_127a9(&l_31, 1024); // l_31 |= 1024
---    l_129 = 3;
---    sub_129d2("AUSSIE VERSION IS TRUE!?!?!"); // DEBUG
---}
---Used to block some of the prostitute stuff due to laws in Australia.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F1935CA1F724008)
---@return boolean retval 
function IsAussieVersion() end

---```
---Returns bit's boolean state from [offset] of [address].
---Example:
---MISC::IS_BIT_SET(bitAddress, 1);
---To enable and disable bits, see:
---MISC::SET_BIT(&bitAddress, 1);   // enable
---MISC::CLEAR_BIT(&bitAddress, 1); // disable
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA921AA820C25702F)
---@param address number 
---@param offset number 
---@return boolean retval 
function IsBitSet(address, offset) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x69240733738C19A0)
---@return boolean retval 
function IsAutoSaveInProgress() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x3F2023999AD51C1F)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@param ownedByPlayer boolean 
---@return boolean retval 
function IsBulletInArea(x, y, z, radius, ownedByPlayer) end

---See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
---
---For projectiles, see: [`IS_PROJECTILE_TYPE_IN_ANGLED_AREA`](#\_0xF0BC12401061DEA0)
---[Native Documentation](https://docs.fivem.net/natives/?_0x1A8B5F3C01E2B477)
---@param x1 number X dimension of the angled area 'origin'
---@param y1 number Y dimension of the angled area 'origin'
---@param z1 number Z dimension of the angled area 'origin'
---@param x2 number X dimension of the angled area 'extent'
---@param y2 number Y dimension of the angled area 'extent'
---@param z2 number Z dimension of the angled area 'extent'
---@param width number Width of the angled area
---@param ownedByPlayer boolean 
---@return boolean retval True if a bullet, as maintained by a pool within CWeaponManager, has been fired into the defined angled area.
function IsBulletInAngledArea(x1, y1, z1, x2, y2, z2, width, ownedByPlayer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDE0F6D7450D37351)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param ownedByPlayer boolean 
---@return boolean retval 
function IsBulletInBox(x1, y1, z1, x2, y2, z2, ownedByPlayer) end

---```
---aka "constrained"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x684A41975F077262)
---@return boolean retval 
function IsInPowerSavingMode() end

---```
---aka "constrained"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x684A41975F077262)
---@return boolean retval 
function N_0x684A41975F077262() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8A75CE2956274ADD)
---@return boolean retval 
function IsMemoryCardInUse() end

---Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2FAA3A30BEC0F25D)
---@param weatherType string 
---@return boolean retval 
function IsNextWeatherType(weatherType) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA72BC0B675B1519E)
---@return boolean retval Hard-coded to always return 0.
function IsOrbisVersion() end

---```
---Returns true if command line option '-benchmark' is set.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA049A5BE0F04F2F8)
---@return boolean retval 
function IsCommandLineBenchmarkValueSet() end

---```
---Returns true if command line option '-benchmark' is set.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA049A5BE0F04F2F8)
---@return boolean retval 
function N_0xA049A5BE0F04F2F8() end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1312F4B242609CE3)
---@param id number 
---@return boolean retval 
function IsPopMultiplierAreaUnk(id) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D982ADB1978442D)
---@return boolean retval Hard-coded to always return 0.
function IsDurangoVersion() end

---```
---This function is hard-coded to always return 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7EA2B6AF97ECA6ED)
---@return boolean retval 
function IsFrontendFading() end

---The BOOL parameters that are documented have not been confirmed. They are just documented from what I've found during testing. They may not work as expected in all cases.
---[Native Documentation](https://docs.fivem.net/natives/?_0xADCDE75E1C60F32D)
---@param x number X coordinate of the position to check.
---@param y number Y coordinate of the position to check.
---@param z number Z coordinate of the position to check.
---@param range number The range, seems to not be very accurate during testing.
---@param p4 boolean Unknown, when set to true it seems to always return true no matter what I try.
---@param checkVehicles boolean Check for any vehicles in that area.
---@param checkPeds boolean Check for any peds in that area.
---@param p7 boolean Unknown.
---@param p8 boolean Unknown.
---@param ignoreEntity number This entity will be ignored if it's in the area. Set to 0 if you don't want to exclude any entities.
---@param p10 boolean Unknown.
---@return boolean retval Returns true if there is anything in that location matching the provided parameters.
function IsPositionOccupied(x, y, z, range, p4, checkVehicles, checkPeds, p7, p8, ignoreEntity, p10) end

---```
---=======================================================  
---Correction, I have change this to int, instead of int*  
---as it doesn't use a pointer to the createdIncident.  
---If you try it you will crash (or) freeze.  
---=======================================================  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC8BC6461E629BEAA)
---@param incidentId number 
---@return boolean retval 
function IsIncidentValid(incidentId) end

---Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---[Native Documentation](https://docs.fivem.net/natives/?_0x44F28F86433B10A9)
---@param weatherType string 
---@return boolean retval 
function IsPrevWeatherType(weatherType) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B4A15E44DE0F478)
---@return boolean retval 
function IsMinigameInProgress() end

---```
---Determines whether there is a projectile within the specified coordinates. The coordinates form a rectangle.  
---ownedByPlayer = only projectiles fired by the player will be detected.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5270A8FBC098C3F8)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param ownedByPlayer boolean 
---@return boolean retval 
function IsProjectileInArea(x1, y1, z1, x2, y2, z2, ownedByPlayer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x48AF36444B965238)
---@return boolean retval Hard-coded to always return 1.
function IsPcVersion() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE54E209C35FFA18D)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 any 
---@return boolean retval 
function IsPointObscuredByAMissionEntity(p0, p1, p2, p3, p4, p5, p6) end

---See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
---
---```
---NativeDB Removed Parameter 7: float p7
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0BC12401061DEA0)
---@param x1 number X dimension of the angled area 'origin'
---@param y1 number Y dimension of the angled area 'origin'
---@param z1 number Z dimension of the angled area 'origin'
---@param x2 number X dimension of the angled area 'extent'
---@param y2 number Y dimension of the angled area 'extent'
---@param z2 number Z dimension of the angled area 'extent'
---@param width number Width of the angled area
---@param p7 number 
---@param weaponHash number | string 
---@param ownedByPlayer boolean 
---@return boolean retval 
function IsProjectileTypeInAngledArea(x1, y1, z1, x2, y2, z2, width, p7, weaponHash, ownedByPlayer) end

---```
---Determines whether there is a projectile of a specific type within the specified coordinates. The coordinates form a axis-aligned bounding box.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2E0DC353342C4A6D)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param type number 
---@param ownedByPlayer boolean 
---@return boolean retval 
function IsProjectileTypeInArea(x1, y1, z1, x2, y2, z2, type, ownedByPlayer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x34318593248C8FB2)
---@param x number 
---@param y number 
---@param z number 
---@param projHash number | string 
---@param radius number 
---@param ownedByPlayer boolean 
---@return boolean retval 
function IsProjectileTypeWithinDistance(x, y, z, projHash, radius, ownedByPlayer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x34318593248C8FB2)
---@param x number 
---@param y number 
---@param z number 
---@param projHash number | string 
---@param radius number 
---@param ownedByPlayer boolean 
---@return boolean retval 
function N_0x34318593248C8FB2(x, y, z, projHash, radius, ownedByPlayer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x34318593248C8FB2)
---@param x number 
---@param y number 
---@param z number 
---@param projHash number | string 
---@param radius number 
---@param ownedByPlayer boolean 
---@return boolean retval 
function IsProjectileTypeInRadius(x, y, z, projHash, radius, ownedByPlayer) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCCA1072C29D096C2)
---@return boolean retval Hard-coded to always return 0.
function IsPs3Version() end

---```
---Determines whether there is a sniper bullet within the specified coordinates. The coordinates form an axis-aligned bounding box.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFEFCF11B01287125)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@return boolean retval 
function IsSniperBulletInArea(x1, y1, z1, x2, y2, z2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2272B0A1343129F4)
---@return boolean retval 
function IsStuntJumpMessageShowing() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2272B0A1343129F4)
---@return boolean retval 
function N_0x2272B0A1343129F4() end

---```
---This function is hard-coded to always return 0.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x61A23B7EDA9BDA24)
---@return boolean retval 
function IsSniperInverted() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7B30F65D7B710098)
---@return boolean retval 
function IsThisAMinigameScript() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6201B4DAF662A9D)
---@return boolean retval Hard-coded to always return 0.
function IsXbox360Version() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF22B6C47C6EAB066)
---@param string string 
---@return boolean retval 
function IsStringNull(string) end

---```
---The following cloudhats are useable:
---altostratus
---Cirrus
---cirrocumulus
---Clear 01
---Cloudy 01
---Contrails
---Horizon
---horizonband1
---horizonband2
---horizonband3
---horsey
---Nimbus
---Puffs
---RAIN
---Snowy 01
---Stormy 01
---stratoscumulus
---Stripey
---shower
---Wispy
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC4842A34657BFCB)
---@param name string 
---@param transitionTime number 
function LoadCloudHat(name, transitionTime) end

---```
---The following cloudhats are useable:
---altostratus
---Cirrus
---cirrocumulus
---Clear 01
---Cloudy 01
---Contrails
---Horizon
---horizonband1
---horizonband2
---horizonband3
---horsey
---Nimbus
---Puffs
---RAIN
---Snowy 01
---Stormy 01
---stratoscumulus
---Stripey
---shower
---Wispy
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC4842A34657BFCB)
---@param name string 
---@param transitionTime number 
function SetCloudHatTransition(name, transitionTime) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xCA042B6957743895)
---@param string string 
---@return boolean retval 
function IsStringNullOrEmpty(string) end

---```
---CLEAR_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x06462A961E94B67C)
function N_0x06462A961E94B67C() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7A3F19700A4D0525)
---@return boolean retval 
function IsStuntJumpInProgress() end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1178E104409FE58C)
---@param p0 any 
---@param p1 any 
function N_0x1178E104409FE58C(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5D5479D115290C3F)
---@param ped number 
---@return boolean retval 
function IsTennisMode(ped) end

---```
---GET_TENNIS_*; references 0xFBFEC0E9 = interruptswing
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x19BFED045C647C49)
---@param ped number 
---@return boolean retval 
function N_0x19BFED045C647C49(ped) end

---```
---Returns true if the current frontend menu is FE_MENU_VERSION_LANDING_MENU
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3BBBD13E5041A79E)
---@return boolean retval 
function LandingMenuIsActive() end

---```
---Returns true if the current frontend menu is FE_MENU_VERSION_LANDING_MENU
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3BBBD13E5041A79E)
---@return boolean retval 
function N_0x3BBBD13E5041A79E() end

---```
---Unsure about the use of this native but here's an example:
---void sub_8709() {
---    MISC::_1EAE0A6E978894A2(0, 1);
---    MISC::_1EAE0A6E978894A2(1, 1);
---    MISC::_1EAE0A6E978894A2(2, 1);
---    MISC::_1EAE0A6E978894A2(3, 1);
---    MISC::_1EAE0A6E978894A2(4, 1);
---    MISC::_1EAE0A6E978894A2(5, 1);
---    MISC::_1EAE0A6E978894A2(6, 1);
---    MISC::_1EAE0A6E978894A2(7, 1);
---    MISC::_1EAE0A6E978894A2(8, 1);
---}
---So it appears that p0 ranges from 0 to 8.
---ENABLE_DISPATCH_SERVICE, seems to have a similar layout.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1EAE0A6E978894A2)
---@param p0 number 
---@param p1 boolean 
function N_0x1EAE0A6E978894A2(p0, p1) end

---```
---GET_C*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x21C235BC64831E5A)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@param p7 number 
---@param p8 number 
---@param p9 boolean 
---@return vector3 retval 
function N_0x21C235BC64831E5A(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

---```
---Found in the scripts:
---MISC::_02DEAAC8F8EA7FE7("");
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x02DEAAC8F8EA7FE7)
---@param p0 string 
function N_0x02DEAAC8F8EA7FE7(p0) end

---```
---0 as param = weird black and green screen
---0.1 - 0.99 = Prevent rain effect from falling (still sound and effects on puddles) and prevent puddles from increase/decrease, seems than it prevent any weather change too
---1 and more = "Unfreeze" rain puddles but clear weather too
---When 'freezing' is enabled, it seem to also freeze value getted with GetRainLevel
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0CF97F497FE7D048)
---@param p0 number 
function N_0x0CF97F497FE7D048(p0) end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x23227DF0B2115469)
function N_0x23227DF0B2115469() end

---```
---SCRIPT_RACE_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1BB299305C3E8C13)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
function N_0x1BB299305C3E8C13(p0, p1, p2, p3) end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x31125FD509D9043F)
---@param p0 any 
function N_0x31125FD509D9043F(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x397BAA01068BAA96)
---@return number retval 
function N_0x397BAA01068BAA96() end

---```
---HAS_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x2107A3773771186D)
---@return boolean retval 
function N_0x2107A3773771186D() end

---```
---Only found 3 times in decompiled scripts. Not a whole lot to go off of.
---MISC::_48F069265A0E4BEC(a_0, "Movie_Name_For_This_Player");
---MISC::_48F069265A0E4BEC(&a_0._fB, "Ringtone_For_This_Player");
---MISC::_48F069265A0E4BEC(&a_0._f1EC4._f12[v_A/*6*/], &v_13); // where v_13 is "MPATMLOGSCRS0" thru "MPATMLOGSCRS15"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x48F069265A0E4BEC)
---@param p0 any 
---@param name string 
function N_0x48F069265A0E4BEC(p0, name) end

---```
---From the scripts:
---MISC::_54F157E0336A3822(sub_aa49(a_0), "ForcedStopDirection", v_E);
---Related to tennis mode.
---SET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x54F157E0336A3822)
---@param ped number 
---@param p1 string 
---@param p2 number 
function N_0x54F157E0336A3822(ped, p1, p2) end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x39455BF4F4F55186)
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
---@param p10 any 
---@param p11 any 
---@param p12 any 
---@return any retval 
function N_0x39455BF4F4F55186(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x4DCDF92BF64236CD)
---@param p0 string 
---@param p1 string 
function N_0x4DCDF92BF64236CD(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x5B1F2E327B6B6FE1)
---@return any retval 
function N_0x5B1F2E327B6B6FE1() end

---```
---Sets GtaThread+0x14A
---
---SET_S*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x65D2EBB47E1CEC21)
---@param toggle boolean 
function N_0x65D2EBB47E1CEC21(toggle) end

---```
---Sets bit 3 in GtaThread+0x150
---
---SET_T*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F2135B6129620C1)
---@param toggle boolean 
function N_0x6F2135B6129620C1(toggle) end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x703CC7F60CBB2B57)
---@param p0 any 
function N_0x703CC7F60CBB2B57(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x693478ACBD7F18E7)
function N_0x693478ACBD7F18E7() end

---```
---HAS_*
---Probably something like "has game been started for the first time".
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6FDDF453C0C756EC)
---@return boolean retval 
function N_0x6FDDF453C0C756EC() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7F8F6405F4777AF6)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 number 
---@param p6 number 
---@param p7 number 
---@param p8 number 
---@param p9 boolean 
---@return number retval 
function N_0x7F8F6405F4777AF6(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

---```
---Possibly used to clear scenario points.
---
---CLEAR_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7EC6F9A478A6A512)
function N_0x7EC6F9A478A6A512() end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x8951EB9C6906D3C8)
function N_0x8951EB9C6906D3C8() end

---Does nothing (it's a nullsub). Seems to be PS4 specific.
---
---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x916CA67D26FD1E37)
---@param p0 string 
function N_0x916CA67D26FD1E37(p0) end

---```
---Only found 2 times in decompiled scripts. Not a whole lot to go off of.
---MISC::_8269816F6CFD40F8(&a_0._f1F5A._f6[0/*8*/], "TEMPSTAT_LABEL"); // gets saved in a struct called "g_SaveData_STRING_ScriptSaves"
---MISC::_8269816F6CFD40F8(&a_0._f4B4[v_1A/*8*/], &v_5); // where v_5 is "Name0" thru "Name9", gets saved in a struct called "OUTFIT_Name"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8269816F6CFD40F8)
---@param p0 any 
---@param name string 
function N_0x8269816F6CFD40F8(p0, name) end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0x97E7E2C04245115B)
---@param p0 any 
function N_0x97E7E2C04245115B(p0) end

---```
---I*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8D74E26F54B4E5C3)
---@param p0 string 
function N_0x8D74E26F54B4E5C3(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB51B9AB9EF81868C)
---@param toggle boolean 
function N_0xB51B9AB9EF81868C(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD642319C54AADEB6)
---@return any retval 
function N_0xD642319C54AADEB6() end

---```
---RESET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD9F692D349249528)
function N_0xD9F692D349249528() end

---```
---NativeDB Introduced: v2189
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0AD167E4B39D9A2)
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
---@param p10 any 
---@param p11 any 
---@param p12 any 
---@param p13 any 
---@return any retval 
function N_0xA0AD167E4B39D9A2(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13) end

---```
---sets something to 1  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE3D969D2785FFB5E)
function N_0xE3D969D2785FFB5E() end

---```
---GET_SAVE_*
---
---GET_SAVE_UNLESS_CUSTOM_DOT ?
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA4A0065E39C9F25C)
---@param p0 vector3 
---@param p1 number 
---@param fadeInAfterLoad boolean 
---@param p3 boolean 
---@return boolean retval 
function N_0xA4A0065E39C9F25C(p0, p1, fadeInAfterLoad, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB2104E905C6F2E9)
---@return any retval 
function N_0xEB2104E905C6F2E9() end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0xBA4B8D83BDC75551)
---@param p0 any 
function N_0xBA4B8D83BDC75551(p0) end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0xEBD3205A207939ED)
---@param p0 any 
function N_0xEBD3205A207939ED(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD10282B6E3751BA0)
---@return any retval 
function N_0xD10282B6E3751BA0() end

---```
---NativeDB Introduced: v2060
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFA3FFB0EEBC288A3)
---@param p0 boolean 
function N_0xFA3FFB0EEBC288A3(p0) end

---```
---SET_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE532EC1A63231B4F)
---@param p0 number 
---@param p1 number 
function N_0xE532EC1A63231B4F(p0, p1) end

---```
---Another unknown label type...
---MISC::_FAA457EF263E8763(a_0, "Thumb_label");
---MISC::_FAA457EF263E8763(&a_0._f10, "Photo_label");
---MISC::_FAA457EF263E8763(a_0, "GXTlabel");
---MISC::_FAA457EF263E8763(&a_0._f21, "StringComp");
---MISC::_FAA457EF263E8763(&a_0._f43, "SecondStringComp");
---MISC::_FAA457EF263E8763(&a_0._f53, "ThirdStringComp");
---MISC::_FAA457EF263E8763(&a_0._f32, "SenderStringComp");
---MISC::_FAA457EF263E8763(&a_0._f726[v_1A/*16*/], &v_20); // where v_20 is "LastJobTL_0_1" thru "LastJobTL_2_1", gets saved in a struct called "LAST_JobGamer_TL"
---MISC::_FAA457EF263E8763(&a_0._f4B, "PAID_PLAYER");
---MISC::_FAA457EF263E8763(&a_0._f5B, "RADIO_STATION");
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFAA457EF263E8763)
---@param p0 any 
---@param name string 
function N_0xFAA457EF263E8763(p0, name) end

---Related to tennis mode. Checks for `0x0FCED5ADF = swung`
---[Native Documentation](https://docs.fivem.net/natives/?_0xE95B0C7D5BA3B96B)
---@param ped number 
---@return boolean retval 
function N_0xE95B0C7D5BA3B96B(ped) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB00CA71DA386228)
function N_0xFB00CA71DA386228() end

---**This native does absolutely nothing, just a nullsub**
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB078CA2B5E82ADD)
---@param p0 any 
---@param p1 any 
function N_0xEB078CA2B5E82ADD(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9243BAC96D64C050)
function NetworkSetScriptIsSafeForNetworkGame() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF56DFB7B61BE7276)
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
---@param p12 number 
---@return boolean retval 
function N_0xF56DFB7B61BE7276(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1162EA8AE9D24EEA)
---@param p0 boolean 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 boolean 
---@param p6 number 
---@param p7 number 
---@return boolean retval 
function OverrideSaveHouse(p0, p1, p2, p3, p4, p5, p6, p7) end

---```
---Toggles some stunt jump stuff.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB80AB299D2EE1BD)
---@param toggle boolean 
function N_0xFB80AB299D2EE1BD(toggle) end

---```
---p0 was always 2 in R* scripts.
---Called before calling DISPLAY_ONSCREEN_KEYBOARD if the input needs to be saved.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3ED1438C1F5C6612)
---@param p0 number 
function NextOnscreenKeyboardResultWillDisplayUsingTheseFonts(p0) end

---```
---p0 was always 2 in R* scripts.
---Called before calling DISPLAY_ONSCREEN_KEYBOARD if the input needs to be saved.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x3ED1438C1F5C6612)
---@param p0 number 
function N_0x3ED1438C1F5C6612(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE266ED23311F24D4)
---@param ped number 
---@param animDict string 
---@param animName string 
---@param p3 number 
---@param p4 number 
---@param p5 boolean 
function PlayTennisSwingAnim(ped, animDict, animName, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE266ED23311F24D4)
---@param ped number 
---@param animDict string 
---@param animName string 
---@param p3 number 
---@param p4 number 
---@param p5 boolean 
function N_0xE266ED23311F24D4(ped, animDict, animName, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C2B3493FBF51C71)
---@param toggle boolean 
function PauseDeathArrestRestart(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2C2B3493FBF51C71)
---@param toggle boolean 
function DisableAutomaticRespawn(toggle) end

---```
---Found in the scripts:
---MISC::_11B56FBBF7224868("CONTRAILS");
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x11B56FBBF7224868)
---@param name string 
function PreloadCloudHat(name) end

---```
---Found in the scripts:
---MISC::_11B56FBBF7224868("CONTRAILS");
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x11B56FBBF7224868)
---@param name string 
function N_0x11B56FBBF7224868(name) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8FA9C42FC5D7C64B)
---@param ped number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 boolean 
function PlayTennisDiveAnim(ped, p1, p2, p3, p4, p5) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8FA9C42FC5D7C64B)
---@param ped number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 number 
---@param p5 boolean 
function N_0x8FA9C42FC5D7C64B(ped, p1, p2, p3, p4, p5) end

---```
---spawns a few distant/out-of-sight peds, vehicles, animals etc each time it is called  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7472BB270D7B4F3E)
function PopulateNow() end

---Shows the screen which is visible before you redo a mission? The game will make a restoration point where you will cameback when the mission is over.
---[Native Documentation](https://docs.fivem.net/natives/?_0x44A0BDC559B35F6E)
---@return boolean retval Returns 1 if the message isn't currently on screen.
function QueueMissionRepeatSave() end

---Shows the screen which is visible before you redo a mission? The game will make a restoration point where you will cameback when the mission is over.
---[Native Documentation](https://docs.fivem.net/natives/?_0x44A0BDC559B35F6E)
---@return boolean retval Returns 1 if the message isn't currently on screen.
function N_0x44A0BDC559B35F6E() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x72DE52178C291CB5)
---@return boolean retval 
function QueueMissionRepeatLoad() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x72DE52178C291CB5)
---@return boolean retval 
function N_0x72DE52178C291CB5() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7CAEC29ECB5DFEBB)
---@param p0 any 
---@param name string 
function RegisterFloatToSave(p0, name) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA735353C77334EA0)
---@param p0 any 
---@param name string 
function RegisterInt64ToSave(p0, name) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA735353C77334EA0)
---@param p0 any 
---@param name string 
function N_0xA735353C77334EA0(p0, name) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC0714D0A7EEECA54)
---@param p0 number 
---@param p1 number 
---@param p2 number 
---@param p3 number 
---@param p4 any 
---@param p5 any 
---@param p6 any 
---@return any retval 
function RegisterSaveHouse(p0, p1, p2, p3, p4, p5, p6) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC8F4131414C835A1)
---@param p0 any 
---@param name string 
function RegisterBoolToSave(p0, name) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x10C2FA78D0E128A1)
---@param p0 any 
---@param name string 
function RegisterEnumToSave(p0, name) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x264AC28B01B353A5)
---@param p0 any 
function RemoveDispatchSpawnBlockingArea(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB129E447A2EDA4BF)
---@param id number 
---@param p1 boolean 
function RemovePopMultiplierArea(id, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB129E447A2EDA4BF)
---@param id number 
---@param p1 boolean 
function N_0xB129E447A2EDA4BF(id, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x34C9EE5986258415)
---@param p0 any 
---@param name string 
function RegisterIntToSave(p0, name) end

---```
---Appears to remove stealth kill action from memory
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6A12939F16D85BE)
---@param hash number | string 
---@param p1 boolean 
function RemoveStealthKill(hash, p1) end

---```
---Appears to remove stealth kill action from memory
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA6A12939F16D85BE)
---@param hash number | string 
---@param p1 boolean 
function N_0xA6A12939F16D85BE(hash, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEDB1232C5BEAE62F)
---@param p0 any 
---@param name string 
function RegisterTextLabelToSave(p0, name) end

---```
---Begins with RESET_*. Next character in the name is either D or E.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x437138B6A830166A)
function ResetBenchmarkRecording() end

---```
---Begins with RESET_*. Next character in the name is either D or E.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x437138B6A830166A)
function N_0x437138B6A830166A() end

---```
---Seems to have the same functionality as REGISTER_TEXT_LABEL_TO_SAVE?
---MISC::_6F7794F28C6B2535(&a_0._f1, "tlPlateText");
---MISC::_6F7794F28C6B2535(&a_0._f1C, "tlPlateText_pending");
---MISC::_6F7794F28C6B2535(&a_0._f10B, "tlCarAppPlateText");
---"tl" prefix sounds like "Text Label"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F7794F28C6B2535)
---@param p0 any 
---@param name string 
function RegisterTextLabelToSave2(p0, name) end

---```
---Seems to have the same functionality as REGISTER_TEXT_LABEL_TO_SAVE?
---MISC::_6F7794F28C6B2535(&a_0._f1, "tlPlateText");
---MISC::_6F7794F28C6B2535(&a_0._f1C, "tlPlateText_pending");
---MISC::_6F7794F28C6B2535(&a_0._f10B, "tlCarAppPlateText");
---"tl" prefix sounds like "Text Label"
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F7794F28C6B2535)
---@param p0 any 
---@param name string 
function N_0x6F7794F28C6B2535(p0, name) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x77A84429DD9F0A15)
function ResetDispatchIdealSpawnDistance() end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5896F2BD5683A4E1)
function ResetDispatchSpawnLocation() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6869BECDD8F2403)
---@param id number 
---@param p1 boolean 
function RemovePopMultiplierSphere(id, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xE6869BECDD8F2403)
---@param id number 
---@param p1 boolean 
function N_0xE6869BECDD8F2403(id, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAC7BFD5C1D83EA75)
function ResetDispatchSpawnBlockingAreas() end

---```
---Saves the benchmark recording to %USERPROFILE%\Documents\Rockstar Games\GTA V\Benchmarks and submits some metrics.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x37DEB0AA183FB6D8)
function SaveBenchmarkRecording() end

---```
---Saves the benchmark recording to %USERPROFILE%\Documents\Rockstar Games\GTA V\Benchmarks and submits some metrics.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x37DEB0AA183FB6D8)
function N_0x37DEB0AA183FB6D8() end

---```
---NativeDB Introduced: v323
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB2DB0CAD13154B3)
---@param p0 any 
function ResetDispatchTimeBetweenSpawnAttempts(p0) end

---In singleplayer it does exactly what the name implies. In FiveM / GTA:Online it shows `Disconnecting from GTA Online` HUD and then quits the game.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE574A662ACAEFBB1)
function RestartGame() end

---In singleplayer it does exactly what the name implies. In FiveM / GTA:Online it shows `Disconnecting from GTA Online` HUD and then quits the game.
---[Native Documentation](https://docs.fivem.net/natives/?_0xE574A662ACAEFBB1)
function N_0xE574A662ACAEFBB1() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A60017F841A54F2)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
function ScriptRaceInit(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x0A60017F841A54F2)
---@param p0 any 
---@param p1 any 
---@param p2 any 
---@param p3 any 
function N_0x0A60017F841A54F2(p0, p1, p2, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8EF5573A1F801A5C)
---@param player number 
---@param p1 number 
---@param p2 number 
---@return boolean retval 
function ScriptRaceGetPlayerSplitTime(player, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8EF5573A1F801A5C)
---@param player number 
---@param p1 number 
---@param p2 number 
---@return boolean retval 
function N_0x8EF5573A1F801A5C(player, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1FF6BF9A63E5757F)
function ScriptRaceShutdown() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x1FF6BF9A63E5757F)
function N_0x1FF6BF9A63E5757F() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x438822C279B73B93)
---@param player number 
function SetBeastModeActive(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x438822C279B73B93)
---@param player number 
function N_0x438822C279B73B93(player) end

---```
---This sets bit [offset] of [address] to on.
---The offsets used are different bits to be toggled on and off, typically there is only one address used in a script.
---Example:
---MISC::SET_BIT(&bitAddress, 1);
---To check if this bit has been enabled:
---MISC::IS_BIT_SET(bitAddress, 1); // will return 1 afterwards
---Please note, this method may assign a value to [address] when used.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x933D6A9EEC1BACD0)
---@param address number 
---@param offset number 
function SetBit(address, offset) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8EF07E15701D61ED)
---@param var number 
---@param rangeStart number 
---@param rangeEnd number 
---@param p3 number 
function SetBitsInRange(var, rangeStart, rangeEnd, p3) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6FE601A64180D423)
---@param p0 number 
function SetDispatchIdealSpawnDistance(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF36199225D6D8C86)
---@param opacity number 
function SetCloudHatOpacity(opacity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF36199225D6D8C86)
---@param opacity number 
function N_0xF36199225D6D8C86(opacity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x44F7CBC1BEB3327D)
---@param p0 any 
---@param p1 number 
function SetDispatchTimeBetweenSpawnAttempts(p0, p1) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB938B7E6D3C0620C)
---@param toggle boolean 
function SetCreditsActive(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA66C71C98D5F2CFB)
---@param player number 
function SetExplosiveAmmoThisFrame(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF3D78F59DFE18D79)
---@param toggle boolean 
function SetFadeInAfterLoad(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD10F442036302D50)
---@param x number 
---@param y number 
---@param z number 
function SetDispatchSpawnLocation(x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD10F442036302D50)
---@param x number 
---@param y number 
---@param z number 
function N_0xD10F442036302D50(x, y, z) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x48838ED9937A15D1)
---@param p0 any 
---@param p1 number 
function SetDispatchTimeBetweenSpawnAttemptsMultiplier(p0, p1) end

---```
---Sets whether the game should fade out after the player is arrested.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1E0B4DC0D990A4E7)
---@param toggle boolean 
function SetFadeOutAfterArrest(toggle) end

---```
---Sets a visually fake wanted level on the user interface. Used by Rockstar's scripts to "override" regular wanted levels and make custom ones while the real wanted level and multipliers are still in effect.
---Max is 6, anything above this makes it just 6. Also the mini-map gets the red & blue flashing effect.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1454F2448DE30163)
---@param fakeWantedLevel number 
function SetFakeWantedLevel(fakeWantedLevel) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x11879CDD803D30F4)
---@param player number 
function SetFireAmmoThisFrame(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF1BED81BFDC0FE0)
---@param player number 
function SetExplosiveMeleeThisFrame(player) end

---```
---Make sure to call this from the correct thread if you're using multiple threads because all other threads except the one which is calling SET_GAME_PAUSED will be paused which means you will lose control and the game remains in paused mode until you exit GTA5.exe  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x577D1284D6873711)
---@param toggle boolean 
function SetGamePaused(toggle) end

---```
---Sets whether the game should fade in after the player dies or is arrested.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA66D2796BA33F12)
---@param toggle boolean 
function SetFadeInAfterDeathArrest(toggle) end

---```
---Sets whether the game should fade out after the player dies.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4A18E01DF2C87B86)
---@param toggle boolean 
function SetFadeOutAfterDeath(toggle) end

---```
---SET_INCIDENT_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD261BA3E7E998072)
---@param incidentId number 
---@param p1 number 
function SetIncidentUnk(incidentId, p1) end

---```
---SET_INCIDENT_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xD261BA3E7E998072)
---@param incidentId number 
---@param p1 number 
function N_0xD261BA3E7E998072(incidentId, p1) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1183BCFEE0F93D1)
---@param player number 
function SetForcePlayerToJump(player) end

---```
---NativeDB Introduced: v1180
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA1183BCFEE0F93D1)
---@param player number 
function N_0xA1183BCFEE0F93D1(player) end

---```
---Sets an unknown flag used by CScene in determining which entities from CMapData scene nodes to draw, similar to SET_INSTANCE_PRIORITY_MODE.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC5F0A8EBD3F361CE)
---@param flag number 
function SetInstancePriorityHint(flag) end

---```
---Sets an unknown flag used by CScene in determining which entities from CMapData scene nodes to draw, similar to SET_INSTANCE_PRIORITY_MODE.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC5F0A8EBD3F361CE)
---@param flag number 
function SetUnkMapFlag(flag) end

---```
---level can be from 0 to 3  
---0: 9.8   
---1: 2.4   
---2: 0.1 - very low  
---3: 0.0  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x740E14FAD5842351)
---@param level number 
function SetGravityLevel(level) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB08B85D860E7BA3C)
---@param incidentId number 
---@param dispatchService number 
---@param numUnits number 
function SetIncidentRequestedUnits(incidentId, dispatchService, numUnits) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB08B85D860E7BA3C)
---@param incidentId number 
---@param dispatchService number 
---@param numUnits number 
function N_0xB08B85D860E7BA3C(incidentId, dispatchService, numUnits) end

---Sets the maximum prop density and changes a loading screen flag from 'loading story mode' to 'loading GTA Online'. It causes a loading screen to show as it reloads map data.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BAE5AD2508DF078)
---@param toggle number toggles the instance priority mode
function SetInstancePriorityMode(toggle) end

---Sets the maximum prop density and changes a loading screen flag from 'loading story mode' to 'loading GTA Online'. It causes a loading screen to show as it reloads map data.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BAE5AD2508DF078)
---@param toggle number toggles the instance priority mode
function EnableMpDlcMaps(toggle) end

---Sets the maximum prop density and changes a loading screen flag from 'loading story mode' to 'loading GTA Online'. It causes a loading screen to show as it reloads map data.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BAE5AD2508DF078)
---@param toggle number toggles the instance priority mode
function UseFreemodeMapBehavior(toggle) end

---Sets the maximum prop density and changes a loading screen flag from 'loading story mode' to 'loading GTA Online'. It causes a loading screen to show as it reloads map data.
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BAE5AD2508DF078)
---@param toggle number toggles the instance priority mode
function LowerMapPropDensity(toggle) end

---```
---If true, the player can't save the game.   
---If the parameter is true, sets the mission flag to true, if the parameter is false, the function does nothing at all.  
---^ also, if the mission flag is already set, the function does nothing at all  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC4301E5121A0ED73)
---@param toggle boolean 
function SetMissionFlag(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x19E00D7322C6F85B)
---@param toggle boolean 
function SetMinigameInProgress(toggle) end

---Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA43D5C6FE51ADBEF)
---@param weatherType string 
function SetOverrideWeather(weatherType) end

---```
---If toggle is true, the ped's head is shown in the pause menu
---If toggle is false, the ped's head is not shown in the pause menu
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4EBB7E87AA0DBED4)
---@param toggle boolean 
function SetPlayerIsInAnimalForm(toggle) end

---```
---If toggle is true, the ped's head is shown in the pause menu
---If toggle is false, the ped's head is not shown in the pause menu
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4EBB7E87AA0DBED4)
---@param toggle boolean 
function N_0x4EBB7E87AA0DBED4(toggle) end

---```
---If toggle is true, the ped's head is shown in the pause menu
---If toggle is false, the ped's head is not shown in the pause menu
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x4EBB7E87AA0DBED4)
---@param toggle boolean 
function ShowPedInPauseMenu(toggle) end

---Controls rain, rain sounds and the creation of puddles.
---
---With an `level` higher than `0.5f`, only the creation of puddles gets faster, rain and rain sound won't increase after that.
---
---With an `level` of `0.0f` rain and rain sounds are disabled and there won't be any new puddles.
---
---To use the rain level of the current weather, call this native with `-1f` as `level`.
---[Native Documentation](https://docs.fivem.net/natives/?_0x643E26EA6E024D92)
---@param level number Strength of rain effects
function SetRainLevel(level) end

---Controls rain, rain sounds and the creation of puddles.
---
---With an `level` higher than `0.5f`, only the creation of puddles gets faster, rain and rain sound won't increase after that.
---
---With an `level` of `0.0f` rain and rain sounds are disabled and there won't be any new puddles.
---
---To use the rain level of the current weather, call this native with `-1f` as `level`.
---[Native Documentation](https://docs.fivem.net/natives/?_0x643E26EA6E024D92)
---@param level number Strength of rain effects
function SetRainFxIntensity(level) end

---```
---SET_PLAYER_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D8D44ADBBA61EF2)
---@param toggle boolean 
function SetPlayerRockstarEditorDisabled(toggle) end

---```
---SET_PLAYER_*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9D8D44ADBBA61EF2)
---@param toggle boolean 
function N_0x9D8D44ADBBA61EF2(toggle) end

---```
---If the parameter is true, sets the random event flag to true, if the parameter is false, the function does nothing at all.  
---Does nothing if the mission flag is set.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x971927086CFD2158)
---@param toggle boolean 
function SetRandomEventFlag(toggle) end

---Activates riot mode. All NPCs are being hostile to each other (including player). Also the game will give weapons (pistols, smgs) to random NPCs.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2587A48BC88DFADF)
---@param toggle boolean Turn on or off riot mode. Set to `true` to enable riot mode.
function SetRiotModeEnabled(toggle) end

---Activates riot mode. All NPCs are being hostile to each other (including player). Also the game will give weapons (pistols, smgs) to random NPCs.
---[Native Documentation](https://docs.fivem.net/natives/?_0x2587A48BC88DFADF)
---@param toggle boolean Turn on or off riot mode. Set to `true` to enable riot mode.
function N_0x2587A48BC88DFADF(toggle) end

---```
---ignoreVehicle - bypasses vehicle check of the local player (it will not open if you are in a vehicle and this is set to false)
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC9BF75D28165FF77)
---@param ignoreVehicle boolean 
function SetSaveMenuActive(ignoreVehicle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x444D98F98C11F3EC)
---@param seed number 
function SetRandomSeed(seed) end

---```
---NativeDB Introduced: v1868
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x7F06937B0CDCBC1A)
---@param level number 
function SetSnowLevel(level) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x8B05F884CF7E8020)
function SetRandomWeatherType() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x57FFF03E423A4C0B)
---@param player number 
function SetSuperJumpThisFrame(player) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x706B5EDCAA7FA663)
---@param x number 
---@param y number 
---@param z number 
---@param heading number 
function SetRestartCustomPosition(x, y, z, heading) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x706B5EDCAA7FA663)
---@param x number 
---@param y number 
---@param z number 
---@param heading number 
function N_0x706B5EDCAA7FA663(x, y, z, heading) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x706B5EDCAA7FA663)
---@param x number 
---@param y number 
---@param z number 
---@param heading number 
function SetCustomRespawnPosition(x, y, z, heading) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB98236CAAECEF897)
---@param toggle boolean 
function SetThisScriptCanRemoveBlipsCreatedByAnyScript(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4F548CABEAE553BC)
---@param p0 any 
---@param p1 boolean 
---@param p2 boolean 
function SetSaveHouse(p0, p1, p2) end

---```
---Maximum value is 1.  
---At a value of 0 the game will still run at a minimum time scale.  
---Slow Motion 1: 0.6  
---Slow Motion 2: 0.4  
---Slow Motion 3: 0.2  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x1D408577D440E81E)
---@param timeScale number 
function SetTimeScale(timeScale) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD79185689F8FD5DF)
---@param toggle boolean 
function SetStuntJumpsCanTrigger(toggle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xD79185689F8FD5DF)
---@param toggle boolean 
function N_0xD79185689F8FD5DF(toggle) end

---Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB5045B7C42B75BF)
---@param weatherType string The weather type to override to.
---@param time number A float on how long to take to transition (in seconds).
function SetWeatherTypeOvertimePersist(weatherType, time) end

---Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---[Native Documentation](https://docs.fivem.net/natives/?_0xFB5045B7C42B75BF)
---@param weatherType string The weather type to override to.
---@param time number A float on how long to take to transition (in seconds).
function SetWeatherTypeOverTime(weatherType, time) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA391C728106F7AF)
---@param toggle boolean 
function SetThisScriptCanBePaused(toggle) end

---Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---[Native Documentation](https://docs.fivem.net/natives/?_0x704983DF373B198F)
---@param weatherType string 
function SetWeatherTypePersist(weatherType) end

---```
---// timecycle_keyframe_data
---BLIZZARD = 0x27EA2814
---CLEAR = 0x36A83D84
---CLEARING = 0x6DB1A50D
---CLOUDS = 0x30FDAF5C
---EXTRASUNNY = 0x97AA0A79
---FOGGY = 0xAE737644
---HALLOWEEN = 0xC91A3202
---NEUTRAL = 0xA4CA1326
---OVERCAST = 0xBB898D2D
---RAIN = 0x54A69840
---SMOG = 0x10DCF4B5
---SNOW = 0xEFB6EFF6
---SNOWLIGHT = 0x23FB812B
---THUNDER = 0xB677829F
---XMAS = 0xAAC9C895
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x29B487C359E19889)
---@param weatherType string 
function SetWeatherTypeNow(weatherType) end

---```
---Sets the the raw wind speed value.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xAC3A74E8384A9919)
---@param speed number 
function SetWind(speed) end

---```
---Using this native will clamp the wind speed value to a range of 0.0- 12.0. Using SET_WIND sets the same value but without the restriction.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEE09ECEDBABE47FC)
---@param speed number 
function SetWindSpeed(speed) end

---Refer to [`SET_WEATHER_TYPE_NOW`](#0x29B487C359E19889) for weather types.
---[Native Documentation](https://docs.fivem.net/natives/?_0xED712CA327900C8A)
---@param weatherType string 
function SetWeatherTypeNowPersist(weatherType) end

---Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---
---```
---Mixes two weather types. If percentWeather2 is set to 0.0f, then the weather will be entirely of weatherType1, if it is set to 1.0f it will be entirely of weatherType2. If it's set somewhere in between, there will be a mixture of weather behaviors. To test, try this in the RPH console, and change the float to different values between 0 and 1:  
---execute "NativeFunction.Natives.x578C752848ECFA0C(Game.GetHashKey(""RAIN""), Game.GetHashKey(""SMOG""), 0.50f);  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x578C752848ECFA0C)
---@param weatherType1 number | string 
---@param weatherType2 number | string 
---@param percentWeather2 number 
function SetWeatherTypeTransition(weatherType1, weatherType2, percentWeather2) end

---Sets the wind direction.
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB0F4468467B4528)
---Example: 
---```-- 180 degrees, wind will blow from the south
---SetWindDirection(math.rad(180.0))```
---@param direction number the [wind direction](https://en.wikipedia.org/wiki/Wind_direction) in radians
function SetWindDirection(direction) end

---Shoots a bullet from the first vector to the second vector. The weapon used as weaponHash should already be loaded via REQUEST_WEAPON_ASSET, otherwise the bullet may fail to materialise.
---[Native Documentation](https://docs.fivem.net/natives/?_0x867654CBC7606F2C)
---@param x1 number The X coordinate to start the shot at.
---@param y1 number The Y coordinate to start the shot at.
---@param z1 number The Z coordinate to start the shot at.
---@param x2 number The X coordinate the shot should end up at.
---@param y2 number The Y coordinate the shot should end up at.
---@param z2 number The Z coordinate the shot should end up at.
---@param damage number The amount of damage the bullet carries.
---@param pureAccuracy boolean Whether the bullet should have pinpoint accuracy.
---@param weaponHash number | string Hash of the weapon the bullet is used as ammunition for.
---@param ownerPed number Owner of the bullet, e.g. if the bullet kills someone the kill feed shows 'X was shot by ownerPed.'
---@param isAudible boolean Whether the bullet should be audible. Optional, defaults to true
---@param isInvisible boolean Whether the bullet should be invisible. Optional, defaults to false
---@param speed number Speed the bullet should fly at. Optional
function ShootSingleBulletBetweenCoords(x1, y1, z1, x2, y2, z2, damage, pureAccuracy, weaponHash, ownerPed, isAudible, isInvisible, speed) end

---```
---NativeDB Added Parameter 19: Any p18
---NativeDB Added Parameter 20: Any p19
---NativeDB Added Parameter 21: Any p20
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBFE5756E7407064A)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param damage number 
---@param p7 boolean 
---@param weaponHash number | string 
---@param ownerPed number 
---@param isAudible boolean 
---@param isInvisible boolean 
---@param speed number 
---@param entity number 
---@param p14 boolean 
---@param p15 boolean 
---@param p16 boolean 
---@param p17 boolean 
function ShootSingleBulletBetweenCoordsIgnoreEntityNew(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity, p14, p15, p16, p17) end

---```
---NativeDB Added Parameter 19: Any p18
---NativeDB Added Parameter 20: Any p19
---NativeDB Added Parameter 21: Any p20
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBFE5756E7407064A)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param damage number 
---@param p7 boolean 
---@param weaponHash number | string 
---@param ownerPed number 
---@param isAudible boolean 
---@param isInvisible boolean 
---@param speed number 
---@param entity number 
---@param p14 boolean 
---@param p15 boolean 
---@param p16 boolean 
---@param p17 boolean 
function N_0xBFE5756E7407064A(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity, p14, p15, p16, p17) end

---```
---NativeDB Added Parameter 19: Any p18
---NativeDB Added Parameter 20: Any p19
---NativeDB Added Parameter 21: Any p20
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xBFE5756E7407064A)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param damage number 
---@param p7 boolean 
---@param weaponHash number | string 
---@param ownerPed number 
---@param isAudible boolean 
---@param isInvisible boolean 
---@param speed number 
---@param entity number 
---@param p14 boolean 
---@param p15 boolean 
---@param p16 boolean 
---@param p17 boolean 
function ShootSingleBulletBetweenCoordsWithExtraParams(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity, p14, p15, p16, p17) end

---```
---entity - entity to ignore  
---```
---
---```
---NativeDB Added Parameter 15: Any p14
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE3A7742E0B7A2F8B)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param damage number 
---@param p7 boolean 
---@param weaponHash number | string 
---@param ownerPed number 
---@param isAudible boolean 
---@param isInvisible boolean 
---@param speed number 
---@param entity number 
function ShootSingleBulletBetweenCoordsIgnoreEntity(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity) end

---```
---entity - entity to ignore  
---```
---
---```
---NativeDB Added Parameter 15: Any p14
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE3A7742E0B7A2F8B)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param damage number 
---@param p7 boolean 
---@param weaponHash number | string 
---@param ownerPed number 
---@param isAudible boolean 
---@param isInvisible boolean 
---@param speed number 
---@param entity number 
function N_0xE3A7742E0B7A2F8B(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity) end

---```
---entity - entity to ignore  
---```
---
---```
---NativeDB Added Parameter 15: Any p14
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE3A7742E0B7A2F8B)
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param damage number 
---@param p7 boolean 
---@param weaponHash number | string 
---@param ownerPed number 
---@param isAudible boolean 
---@param isInvisible boolean 
---@param speed number 
---@param entity number 
function ShootSingleBulletBetweenCoordsPresetParams(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity) end

---Returns true if the game is using the metric measurement system (profile setting 227), false if imperial is used.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3D15555431AB793)
---Example: 
---```if (ShouldUseMetricMeasurements()) then
---    print("Distance to finish line: 8,04672 km.")
---else
---    print("Distance to finish line: 5 mi.")
---end```
---@return boolean retval Returns true if the game is using the metric measurement system, false if imperial is used.
function ShouldUseMetricMeasurements() end

---Returns true if the game is using the metric measurement system (profile setting 227), false if imperial is used.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3D15555431AB793)
---Example: 
---```if (ShouldUseMetricMeasurements()) then
---    print("Distance to finish line: 8,04672 km.")
---else
---    print("Distance to finish line: 5 mi.")
---end```
---@return boolean retval Returns true if the game is using the metric measurement system, false if imperial is used.
function N_0xD3D15555431AB793() end

---Returns true if the game is using the metric measurement system (profile setting 227), false if imperial is used.
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3D15555431AB793)
---Example: 
---```if (ShouldUseMetricMeasurements()) then
---    print("Distance to finish line: 8,04672 km.")
---else
---    print("Distance to finish line: 5 mi.")
---end```
---@return boolean retval Returns true if the game is using the metric measurement system, false if imperial is used.
function IsGameUsingMetricMeasurementSystem() end

---This native always come right before SET_ENTITY_QUATERNION where its final 4 parameters are SLERP_NEAR_QUATERNION p9 to p12
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2F6A2FA49278625)
---@param t number acceleration differenzial (am_rollercoaster.c func\_134)
---@param x number rotation parameter (maybe X axys)
---@param y number rotation parameter (maybe X axys)
---@param z number rotation parameter (maybe X axys)
---@param w number rotation parameter (maybe X axys)
---@param x1 number rotation parameter (maybe Y axys)
---@param y1 number rotation parameter (maybe Y axys)
---@param z1 number rotation parameter (maybe Y axys)
---@param w1 number rotation parameter (maybe Y axys)
---@param outX number output value calculated (X)
---@param outY number output value calculated (Y)
---@param outZ number output value calculated (Z)
---@param outW number output value calculated (W)
function SlerpNearQuaternion(t, x, y, z, w, x1, y1, z1, w1, outX, outY, outZ, outW) end

---This native always come right before SET_ENTITY_QUATERNION where its final 4 parameters are SLERP_NEAR_QUATERNION p9 to p12
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2F6A2FA49278625)
---@param t number acceleration differenzial (am_rollercoaster.c func\_134)
---@param x number rotation parameter (maybe X axys)
---@param y number rotation parameter (maybe X axys)
---@param z number rotation parameter (maybe X axys)
---@param w number rotation parameter (maybe X axys)
---@param x1 number rotation parameter (maybe Y axys)
---@param y1 number rotation parameter (maybe Y axys)
---@param z1 number rotation parameter (maybe Y axys)
---@param w1 number rotation parameter (maybe Y axys)
---@param outX number output value calculated (X)
---@param outY number output value calculated (Y)
---@param outZ number output value calculated (Z)
---@param outW number output value calculated (W)
function N_0xF2F6A2FA49278625(t, x, y, z, w, x1, y1, z1, w1, outX, outY, outZ, outW) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x60FE567DF1B1AF9D)
---@param p0 any 
---@param size number 
---@param arrayName string 
function StartSaveArrayWithSize(p0, size, arrayName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x60FE567DF1B1AF9D)
---@param p0 any 
---@param size number 
---@param arrayName string 
function StartSaveArray(p0, size, arrayName) end

---```
---Begins with START_*. Next character in the name is either D or E.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x92790862E36C2ADA)
function StartBenchmarkRecording() end

---```
---Begins with START_*. Next character in the name is either D or E.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x92790862E36C2ADA)
function N_0x92790862E36C2ADA() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA9575F812C6A7997)
---@param p0 any 
---@param p1 any 
---@param p2 boolean 
function StartSaveData(p0, p1, p2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBF737600CDDBEADD)
---@param p0 any 
---@param size number 
---@param structName string 
function StartSaveStructWithSize(p0, size, structName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xBF737600CDDBEADD)
---@param p0 any 
---@param size number 
---@param structName string 
function StartSaveStruct(p0, size, structName) end

---```
---Begins with STOP_*. Next character in the name is either D or E.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7DB36C24634F52B)
function StopBenchmarkRecording() end

---```
---Begins with STOP_*. Next character in the name is either D or E.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7DB36C24634F52B)
function N_0xC7DB36C24634F52B() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x04456F95153C6BE4)
function StopSaveArray() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x74E20C9145FB66FD)
function StopSaveData() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB1774DF12BB9F12)
function StopSaveStruct() end

---```
---Returns false if it's a null or empty string or if the string is too long. outInteger will be set to -999 in that case.  
---If all checks have passed successfully, the return value will be set to whatever strtol(string, 0i64, 10); returns.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x5A5F40FE637EB584)
---@param string string 
---@param outInteger number 
---@return boolean retval 
function StringToInt(string, outInteger) end

---```
---For a full list, see here: pastebin.com/yLNWicUi  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9DC711BC69C548DF)
---@param scriptName string 
function TerminateAllScriptsWithThisName(scriptName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x632106CC96E82E91)
---@param p0 number 
---@return number retval 
function Tan(p0) end

---```
---Called 4 times in the b617d scripts:
---MISC::_A74802FB8D0B7814("CONTRAILS", 0);
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA74802FB8D0B7814)
---@param name string 
---@param p1 number 
function UnloadCloudHat(name, p1) end

---```
---Called 4 times in the b617d scripts:
---MISC::_A74802FB8D0B7814("CONTRAILS", 0);
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA74802FB8D0B7814)
---@param name string 
---@param p1 number 
function N_0xA74802FB8D0B7814(name, p1) end

---```
---Returns the current status of the onscreen keyboard, and updates the output.
---Status Codes:
----1: Keyboard isn't active
---0: User still editing
---1: User has finished editing
---2: User has canceled editing
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0CF2B696BBF945AE)
---@return number retval 
function UpdateOnscreenKeyboard() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF14878FC50BEC6EE)
---@param toggle boolean 
function UsingMissionCreator(toggle) end

---```
---Returns true if the current frontend menu is FE_MENU_VERSION_SP_PAUSE
---
---U*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA2F2061875EED90)
---@return boolean retval 
function UiIsSingleplayerPauseMenuActive() end

---```
---Returns true if the current frontend menu is FE_MENU_VERSION_SP_PAUSE
---
---U*
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xEA2F2061875EED90)
---@return boolean retval 
function N_0xEA2F2061875EED90() end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA8434F1DFF41D6E7)
---@param p0 number 
function WaterOverrideFadeIn(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA8434F1DFF41D6E7)
---@param p0 number 
function N_0xA8434F1DFF41D6E7(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3C221ADDDE31A11)
---@param p0 number 
function WaterOverrideFadeOut(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3C221ADDDE31A11)
---@param p0 number 
function N_0xC3C221ADDDE31A11(p0) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x31727907B2C43C55)
---@param minAmplitude number 
function WaterOverrideSetOceannoiseminamplitude(minAmplitude) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x31727907B2C43C55)
---@param minAmplitude number 
function N_0x31727907B2C43C55(minAmplitude) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x405591EC8FD9096D)
---@param amplitude number 
function WaterOverrideSetOceanwaveamplitude(amplitude) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x405591EC8FD9096D)
---@param amplitude number 
function N_0x405591EC8FD9096D(amplitude) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3E6360DDE733E82)
---@param maxAmplitude number 
function WaterOverrideSetOceanwavemaxamplitude(maxAmplitude) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3E6360DDE733E82)
---@param maxAmplitude number 
function N_0xB3E6360DDE733E82(maxAmplitude) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7C9C0B1EEB1F9072)
---@param bumpiness number 
function WaterOverrideSetRipplebumpiness(bumpiness) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7C9C0B1EEB1F9072)
---@param bumpiness number 
function N_0x7C9C0B1EEB1F9072(bumpiness) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF751B16FB32ABC1D)
---@param minAmplitude number 
function WaterOverrideSetOceanwaveminamplitude(minAmplitude) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF751B16FB32ABC1D)
---@param minAmplitude number 
function N_0xF751B16FB32ABC1D(minAmplitude) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9854DFDE0D833D6)
---@param disturb number 
function WaterOverrideSetRippledisturb(disturb) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB9854DFDE0D833D6)
---@param disturb number 
function N_0xB9854DFDE0D833D6(disturb) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F5E6BB6B34540DA)
---@param maxBumpiness number 
function WaterOverrideSetRipplemaxbumpiness(maxBumpiness) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x9F5E6BB6B34540DA)
---@param maxBumpiness number 
function N_0x9F5E6BB6B34540DA(maxBumpiness) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6216B116083A7CB4)
---@param minBumpiness number 
function WaterOverrideSetRippleminbumpiness(minBumpiness) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6216B116083A7CB4)
---@param minBumpiness number 
function N_0x6216B116083A7CB4(minBumpiness) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8F87EAD7533B176)
---@param amplitude number 
function WaterOverrideSetShorewaveamplitude(amplitude) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xB8F87EAD7533B176)
---@param amplitude number 
function N_0xB8F87EAD7533B176(amplitude) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7A1127490312C36)
---@param maxAmplitude number 
function WaterOverrideSetShorewavemaxamplitude(maxAmplitude) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7A1127490312C36)
---@param maxAmplitude number 
function N_0xA7A1127490312C36(maxAmplitude) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3EAD29AB273ECE8)
---@param minAmplitude number 
function WaterOverrideSetShorewaveminamplitude(minAmplitude) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xC3EAD29AB273ECE8)
---@param minAmplitude number 
function N_0xC3EAD29AB273ECE8(minAmplitude) end

---```
---This seems to edit the water wave, intensity around your current location.  
---0.0f = Normal  
---1.0f = So Calm and Smooth, a boat will stay still.  
---3.0f = Really Intense.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC54A08C85AE4D410)
---@param strength number 
function WaterOverrideSetStrength(strength) end

---```
---This seems to edit the water wave, intensity around your current location.  
---0.0f = Normal  
---1.0f = So Calm and Smooth, a boat will stay still.  
---3.0f = Really Intense.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xC54A08C85AE4D410)
---@param strength number 
function N_0xC54A08C85AE4D410(strength) end

