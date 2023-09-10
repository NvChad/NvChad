---@meta

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x36DD3FE58B5E5212)
---@param x number 
---@param y number 
---@param z number 
---@param explosionType number See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param explosionFx number | string 
---@param damageScale number 
---@param isAudible boolean If explosion makes a sound.
---@param isInvisible boolean If the explosion is invisible or not.
---@param cameraShake number 
function AddExplosionWithUserVfx(x, y, z, explosionType, explosionFx, damageScale, isAudible, isInvisible, cameraShake) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x36DD3FE58B5E5212)
---@param x number 
---@param y number 
---@param z number 
---@param explosionType number See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param explosionFx number | string 
---@param damageScale number 
---@param isAudible boolean If explosion makes a sound.
---@param isInvisible boolean If the explosion is invisible or not.
---@param cameraShake number 
function AddSpecfxExplosion(x, y, z, explosionType, explosionFx, damageScale, isAudible, isInvisible, cameraShake) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x172AA1B624FA1013)
---@param ped number 
---@param x number 
---@param y number 
---@param z number 
---@param explosionType number See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param damageScale number 
---@param isAudible boolean If explosion makes a sound.
---@param isInvisible boolean If the explosion is invisible or not.
---@param cameraShake number 
function AddOwnedExplosion(ped, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake) end

---```
---NativeDB Added Parameter 9: BOOL noDamage
---```
---
---```
---BOOL isAudible = If explosion makes a sound.  
---BOOL isInvisible = If the explosion is invisible or not.
---BOOL noDamage = false: damage || nodamage = true: no damage
---```
---
---```cpp
---enum class eExplosionTag : uint32_t
---{
---    DONTCARE = 0xFFFFFFFF,
---    GRENADE = 0,
---    GRENADELAUNCHER = 1,
---    STICKYBOMB = 2,
---    MOLOTOV = 3,
---    ROCKET = 4,
---    TANKSHELL = 5,
---    HI_OCTANE = 6,
---    CAR = 7,
---    PLANE = 8,
---    PETROL_PUMP = 9,
---    BIKE = 10,
---    DIR_STEAM = 11,
---    DIR_FLAME = 12,
---    DIR_WATER_HYDRANT = 13,
---    DIR_GAS_CANISTER = 14,
---    BOAT = 15,
---    SHIP_DESTROY = 16,
---    TRUCK = 17,
---    BULLET = 18,
---    SMOKEGRENADELAUNCHER = 19,
---    SMOKEGRENADE = 20,
---    BZGAS = 21,
---    FLARE = 22,
---    GAS_CANISTER = 23,
---    EXTINGUISHER = 24,
---    _0x988620B8 = 25,
---    EXP_TAG_TRAIN = 26,
---    EXP_TAG_BARREL = 27,
---    EXP_TAG_PROPANE = 28,
---    EXP_TAG_BLIMP = 29,
---    EXP_TAG_DIR_FLAME_EXPLODE = 30,
---    EXP_TAG_TANKER = 31,
---    PLANE_ROCKET = 32,
---    EXP_TAG_VEHICLE_BULLET = 33,
---    EXP_TAG_GAS_TANK = 34,
---    EXP_TAG_BIRD_CRAP = 35,
---    EXP_TAG_RAILGUN = 36,
---    EXP_TAG_BLIMP2 = 37,
---    EXP_TAG_FIREWORK = 38,
---    EXP_TAG_SNOWBALL = 39,
---    EXP_TAG_PROXMINE = 40,
---    EXP_TAG_VALKYRIE_CANNON = 41,
---    EXP_TAG_AIR_DEFENCE = 42,
---    EXP_TAG_PIPEBOMB = 43,
---    EXP_TAG_VEHICLEMINE = 44,
---    EXP_TAG_EXPLOSIVEAMMO = 45,
---    EXP_TAG_APCSHELL = 46,
---    EXP_TAG_BOMB_CLUSTER = 47,
---    EXP_TAG_BOMB_GAS = 48,
---    EXP_TAG_BOMB_INCENDIARY = 49,
---    EXP_TAG_BOMB_STANDARD = 50,
---    EXP_TAG_TORPEDO = 51,
---    EXP_TAG_TORPEDO_UNDERWATER = 52,
---    EXP_TAG_BOMBUSHKA_CANNON = 53,
---    EXP_TAG_BOMB_CLUSTER_SECONDARY = 54,
---    EXP_TAG_HUNTER_BARRAGE = 55,
---    EXP_TAG_HUNTER_CANNON = 56,
---    EXP_TAG_ROGUE_CANNON = 57,
---    EXP_TAG_MINE_UNDERWATER = 58,
---    EXP_TAG_ORBITAL_CANNON = 59,
---    EXP_TAG_BOMB_STANDARD_WIDE = 60,
---    EXP_TAG_EXPLOSIVEAMMO_SHOTGUN = 61,
---    EXP_TAG_OPPRESSOR2_CANNON = 62,
---    EXP_TAG_MORTAR_KINETIC = 63,
---    EXP_TAG_VEHICLEMINE_KINETIC = 64,
---    EXP_TAG_VEHICLEMINE_EMP = 65,
---    EXP_TAG_VEHICLEMINE_SPIKE = 66,
---    EXP_TAG_VEHICLEMINE_SLICK = 67,
---    EXP_TAG_VEHICLEMINE_TAR = 68,
---    EXP_TAG_SCRIPT_DRONE = 69,
---    EXP_TAG_RAYGUN = 70,
---    EXP_TAG_BURIEDMINE = 71,
---    EXP_TAG_SCRIPT_MISSILE = 72,
---    EXP_TAG_RCTANK_ROCKET = 73,
---    EXP_TAG_BOMB_WATER = 74,
---    EXP_TAG_BOMB_WATER_SECONDARY = 75,
---    _0xF728C4A9 = 76,
---    _0xBAEC056F = 77,
---    EXP_TAG_FLASHGRENADE = 78,
---    EXP_TAG_STUNGRENADE = 79,
---    _0x763D3B3B = 80,
---    EXP_TAG_SCRIPT_MISSILE_LARGE = 81,
---    EXP_TAG_SUBMARINE_BIG = 82,
---};
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xE3AD2BDBAEE269AC)
---@param x number 
---@param y number 
---@param z number 
---@param explosionType number 
---@param damageScale number 
---@param isAudible boolean 
---@param isInvisible boolean 
---@param cameraShake number 
function AddExplosion(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake) end

---```
---Returns a handle to the first entity within the a circle spawned inside the 2 points from a radius.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x14BA4BA137AF6CEC)
---@param explosionType number See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param radius number 
---@return number retval 
function GetEntityInsideExplosionArea(explosionType, x1, y1, z1, x2, y2, z2, radius) end

---```
---Returns a handle to the first entity within the a circle spawned inside the 2 points from a radius.
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x14BA4BA137AF6CEC)
---@param explosionType number See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@param radius number 
---@return number retval 
function GetPedInsideExplosionArea(explosionType, x1, y1, z1, x2, y2, z2, radius) end

---```
---Returns TRUE if it found something. FALSE if not.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x352A9F6BCF90081F)
---@param outPosition vector3 
---@param x number 
---@param y number 
---@param z number 
---@return boolean retval 
function GetClosestFirePos(outPosition, x, y, z) end

---```
---NativeDB Introduced: v1290
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3CD51E3DB86F176)
---@param explosionType number 
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@return number retval 
function GetEntityInsideExplosionSphere(explosionType, x, y, z, radius) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6070104B699B2EF4)
---@param explosionType number See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@return boolean retval 
function IsExplosionActiveInArea(explosionType, x1, y1, z1, x2, y2, z2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6070104B699B2EF4)
---@param explosionType number See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@return boolean retval 
function N_0x6070104B699B2EF4(explosionType, x1, y1, z1, x2, y2, z2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x2E2EBA0EE7CED0E0)
---@param explosionType number See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param x1 number 
---@param y1 number 
---@param z1 number 
---@param x2 number 
---@param y2 number 
---@param z2 number 
---@return boolean retval 
function IsExplosionInArea(explosionType, x1, y1, z1, x2, y2, z2) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x50CAD495A460B305)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@return number retval 
function GetNumberOfFiresInRange(x, y, z, radius) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xAB0F816885B0E483)
---@param explosionType number See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
---@return boolean retval 
function IsExplosionInSphere(explosionType, x, y, z, radius) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7FF548385680673F)
---@param fireHandle fireid 
function RemoveScriptFire(fireHandle) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x28D3FED7190D3A0B)
---@param entity number 
---@return boolean retval 
function IsEntityOnFire(entity) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6A9D9708F6F23DF)
---@param entity number 
---@return fireid retval 
function StartEntityFire(entity) end

---See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
---[Native Documentation](https://docs.fivem.net/natives/?_0xA079A6C51525DC4B)
---@param explosionType number explosion enum, -1 for any explosion type. See [ADD_EXPLOSION](#\_0xE3AD2BDBAEE269AC).
---@param x1 number X dimension of the angled area 'origin'
---@param y1 number Y dimension of the angled area 'origin'
---@param z1 number Z dimension of the angled area 'origin'
---@param x2 number X dimension of the angled area 'extent'
---@param y2 number Y dimension of the angled area 'extent'
---@param z2 number Z dimension of the angled area 'extent'
---@param width number Width of the angled area
---@return boolean retval 
function IsExplosionInAngledArea(explosionType, x1, y1, z1, x2, y2, z2, width) end

---SET_FIRE_\*
---
---```
---NativeDB Introduced: v1734
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x8F390AC4155099BA)
---@param p0 number 
function SetFireSpreadRate(p0) end

---```
---Starts a fire:  
---xyz: Location of fire  
---maxChildren: The max amount of times a fire can spread to other objects. Must be 25 or less, or the function will do nothing.  
---isGasFire: Whether or not the fire is powered by gasoline.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6B83617E04503888)
---@param X number 
---@param Y number 
---@param Z number 
---@param maxChildren number 
---@param isGasFire boolean 
---@return fireid retval 
function StartScriptFire(X, Y, Z, maxChildren, isGasFire) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x056A8A219B8E829F)
---@param x number 
---@param y number 
---@param z number 
---@param radius number 
function StopFireInRange(x, y, z, radius) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x7F0DD2EBBB651AFF)
---@param entity number 
function StopEntityFire(entity) end

