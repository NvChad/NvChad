---@meta
---**`FILES` `client` [`0x10144267DD22866C`](https://docs.fivem.net/natives/?_0x10144267DD22866C)**
---
---Returns some sort of index/offset for overlays/decorations.
---
---```
---Character types:
---0 = Michael,
---1 = Franklin,
---2 = Trevor,
---3 = MPMale,
---4 = MPFemale
---```
---
---```
---NativeDB Introduced: v2189
---```
---
---@param overlayHash Hash
---@param p1 any
---@param character number
---@return number
function N_0x10144267dd22866c(overlayHash, p1, character) end

---**`FILES` `client` [`0x6CEBE002E58DEE97`](https://docs.fivem.net/natives/?_0x6CEBE002E58DEE97)**
---
---Returns some sort of index/offset for props.
---Needs \_GET_NUM_PROPS_FROM_OUTFIT to be called with p3 = true and componentId = -1 first, returns -1 otherwise.
---
---```
---NativeDB Introduced: v2189
---```
---
---@param componentHash Hash
---@return number
function N_0x6cebe002e58dee97(componentHash) end

---**`FILES` `client` [`0x96E2929292A4DB77`](https://docs.fivem.net/natives/?_0x96E2929292A4DB77)**
---
---Returns some sort of index/offset for components.
---Needs \_GET_NUM_PROPS_FROM_OUTFIT to be called with p3 = false and componentId with the drawable's component slot first, returns -1 otherwise.
---
---```
---NativeDB Introduced: v2189
---```
---
---@param componentHash Hash
---@return number
function N_0x96e2929292a4db77(componentHash) end

---**`FILES` `client` [`0x341DE7ED1D2A1BFD`](https://docs.fivem.net/natives/?_0x341DE7ED1D2A1BFD)**
---
---@param componentHash Hash
---@param restrictionTagHash Hash
---@param componentId number
---@return boolean
function DoesShopPedApparelHaveRestrictionTag(componentHash, restrictionTagHash, componentId) end

---**`FILES` `client` [`0x33468EDC08E371F6`](https://docs.fivem.net/natives/?_0x33468EDC08E371F6)**
---
---The Second item in the struct `*(Hash *)(outData + 1)` is the vehicle hash.
---
---@param dlcVehicleIndex number takes a number from 0 to `GET_NUM_DLC_VEHICLES()` - 1.
---@param outData any a struct of 3 8-byte items.
---@return boolean, any # A boolean value return if find or not the dlcVehicleIndex.
function GetDlcVehicleData(dlcVehicleIndex, outData) end

---**`FILES` `client` [`0x5549EE11FA22FCF2`](https://docs.fivem.net/natives/?_0x5549EE11FA22FCF2)**
---
---@param dlcVehicleIndex number
---@return number
function GetDlcVehicleFlags(dlcVehicleIndex) end

---**`FILES` `client` [`0xECC01B7C5763333C`](https://docs.fivem.net/natives/?_0xECC01B7C5763333C)**
---
---```
---dlcVehicleIndex is 0 to GET_NUM_DLC_VEHICLS()
---```
---
---@param dlcVehicleIndex number
---@return Hash
function GetDlcVehicleModel(dlcVehicleIndex) end

---**`FILES` `client` [`0xC098810437312FFF`](https://docs.fivem.net/natives/?_0xC098810437312FFF)**
---
---@param hash Hash
---@return Hash
function GetDlcVehicleModLockHash(hash) end

---**`FILES` `client` [`0x6CF598A2957C2BF8`](https://docs.fivem.net/natives/?_0x6CF598A2957C2BF8)**
---
---```
---p0 seems to be the weapon index
---p1 seems to be the weapon component index
---struct DlcComponentData{
---int attachBone;
---int padding1;
---int bActiveByDefault;
---int padding2;
---int unk;
---int padding3;
---int componentHash;
---int padding4;
---int unk2;
---int padding5;
---int componentCost;
---int padding6;
---char nameLabel[64];
---char descLabel[64];
---};
---```
---
---@param dlcWeaponIndex number
---@param dlcWeapCompIndex number
---@param ComponentDataPtr number
---@return boolean, number
function GetDlcWeaponComponentData(dlcWeaponIndex, dlcWeapCompIndex, ComponentDataPtr) end

---**`FILES` `client` [`0x79923CD21BECE14E`](https://docs.fivem.net/natives/?_0x79923CD21BECE14E)**
---
---```
---dlcWeaponIndex takes a number from 0 - GET_NUM_DLC_WEAPONS() - 1.
---struct DlcWeaponData
---{
---int emptyCheck; //use DLC1::_IS_DLC_DATA_EMPTY on this
---int padding1;
---int weaponHash;
---int padding2;
---int unk;
---int padding3;
---int weaponCost;
---int padding4;
---int ammoCost;
---int padding5;
---int ammoType;
---int padding6;
---int defaultClipSize;
---int padding7;
---char nameLabel[64];
---char descLabel[64];
---char desc2Label[64]; // usually "the" + name
---char upperCaseNameLabel[64];
---};
---```
---
---@param dlcWeaponIndex number
---@param outData number
---@return boolean, number
function GetDlcWeaponData(dlcWeaponIndex, outData) end

---**`FILES` `client` [`0x6C93ED8C2F74859B`](https://docs.fivem.net/natives/?_0x6C93ED8C2F74859B)**
---
---@param componentHash Hash
---@param forcedComponentIndex number
---@param nameHash Hash
---@param enumValue number
---@param componentType number
function GetForcedComponent(componentHash, forcedComponentIndex, nameHash, enumValue, componentType) end

---**`FILES` `client` [`0xE1CA84EBF72E691D`](https://docs.fivem.net/natives/?_0xE1CA84EBF72E691D)**
---
---@param componentHash Hash
---@param forcedPropIndex number
---@param nameHash Hash
---@param enumValue number
---@param anchorPoint number
function GetForcedProp(componentHash, forcedPropIndex, nameHash, enumValue, anchorPoint) end

---**`FILES` `client` [`0x0368B3A838070348`](https://docs.fivem.net/natives/?_0x0368B3A838070348)**
---
---@param entity Entity
---@param componentId number
---@param drawableVariant number
---@param textureVariant number
---@return Hash
function GetHashNameForComponent(entity, componentId, drawableVariant, textureVariant) end

---**`FILES` `client` [`0x5D6160275CAEC8DD`](https://docs.fivem.net/natives/?_0x5D6160275CAEC8DD)**
---
---@param entity Entity
---@param componentId number
---@param propIndex number
---@param propTextureIndex number
---@return Hash
function GetHashNameForProp(entity, componentId, propIndex, propTextureIndex) end

---**`FILES` `client` [`0xA7A866D21CD2329B`](https://docs.fivem.net/natives/?_0xA7A866D21CD2329B)**
---
---Returns the total number of DLC vehicles.
---
---@return number
function GetNumDlcVehicles() end

---**`FILES` `client` [`0xEE47635F352DA367`](https://docs.fivem.net/natives/?_0xEE47635F352DA367)**
---
---```
---Returns the total number of DLC weapons.
---```
---
---@return number
function GetNumDlcWeapons() end

---**`FILES` `client` [`0x405425358A7D61FE`](https://docs.fivem.net/natives/?_0x405425358A7D61FE)**
---
---```
---Returns the total number of DLC weapon components.
---```
---
---@param dlcWeaponIndex number
---@return number
function GetNumDlcWeaponComponents(dlcWeaponIndex) end

---**`FILES` `client` [`0x278F76C3B0A8F109`](https://docs.fivem.net/natives/?_0x278F76C3B0A8F109)**
---
---```
---Character types:
---0 = Michael,
---1 = Franklin,
---2 = Trevor,
---3 = MPMale,
---4 = MPFemale
---```
---
---@param character number
---@return number
function GetNumTattooShopDlcItems(character) end

---**`FILES` `client` [`0xC6B9DB42C04DD8C3`](https://docs.fivem.net/natives/?_0xC6B9DB42C04DD8C3)**
---
---```
---Returns number of possible values of the forcedComponentIndex argument of GET_FORCED_COMPONENT.
---```
---
---@param componentHash Hash
---@return number
function GetShopPedApparelForcedComponentCount(componentHash) end

---**`FILES` `client` [`0x017568A8182D98A6`](https://docs.fivem.net/natives/?_0x017568A8182D98A6)**
---
---```
---Returns number of possible values of the forcedPropIndex argument of GET_FORCED_PROP.
---```
---
---@param componentHash Hash
---@return number
function GetShopPedApparelForcedPropCount(componentHash) end

---**`FILES` `client` [`0xC17AD0E5752BECDA`](https://docs.fivem.net/natives/?_0xC17AD0E5752BECDA)**
---
---@param componentHash Hash
---@return number
function GetShopPedApparelVariantComponentCount(componentHash) end

---**`FILES` `client` [`0x74C0E2A57EC66760`](https://docs.fivem.net/natives/?_0x74C0E2A57EC66760)**
---
---```
---More info here: https://gist.github.com/root-cause/3b80234367b0c856d60bf5cb4b826f86
---```
---
---@param componentHash Hash
---@param outComponent any
function GetShopPedComponent(componentHash, outComponent) end

---**`FILES` `client` [`0xB7952076E444979D`](https://docs.fivem.net/natives/?_0xB7952076E444979D)**
---
---@param p0 any
---@param p1 any
function GetShopPedOutfit(p0, p1) end

---**`FILES` `client` [`0x19F2A026EDF0013F`](https://docs.fivem.net/natives/?_0x19F2A026EDF0013F)**
---
---@param outfit Hash A structure, see [`GET_SHOP_PED_QUERY_OUTFIT`](#\_0x6D793F03A631FE56).
---@param slot number outfit slot.
---@param outComponentVariant any
---@return boolean, any
function GetShopPedOutfitComponentVariant(outfit, slot, outComponentVariant) end

---**`FILES` `client` [`0x073CA26B079F956E`](https://docs.fivem.net/natives/?_0x073CA26B079F956E)**
---
---@param p0 any
---@return number
function GetShopPedOutfitLocate(p0) end

---**`FILES` `client` [`0xA9F9C2E0FDE11CBB`](https://docs.fivem.net/natives/?_0xA9F9C2E0FDE11CBB)**
---
---@param outfitHash Hash
---@param variantIndex number
---@param outPropVariant any
---@return boolean, any
function GetShopPedOutfitPropVariant(outfitHash, variantIndex, outPropVariant) end

---**`FILES` `client` [`0x5D5CAFF661DDF6FC`](https://docs.fivem.net/natives/?_0x5D5CAFF661DDF6FC)**
---
---@param componentHash Hash
---@param outProp any
function GetShopPedProp(componentHash, outProp) end

---**`FILES` `client` [`0x249E310B2D920699`](https://docs.fivem.net/natives/?_0x249E310B2D920699)**
---
---@param componentId number
---@param outComponent number
function GetShopPedQueryComponent(componentId, outComponent) end

---**`FILES` `client` [`0x6D793F03A631FE56`](https://docs.fivem.net/natives/?_0x6D793F03A631FE56)**
---
---```
---struct Outfit_s
---{
---	int mask, torso, pants, parachute, shoes, misc1, tops1, armour, crew, tops2, hat, glasses, earpiece;
---	int maskTexture, torsoTexture, pantsTexture, parachuteTexture, shoesTexture, misc1Texture, tops1Texture,
---		armourTexture, crewTexture, tops2Texture, hatTexture, glassesTexture, earpieceTexture;
---};
---```
---
---@param outfitIndex number
---@param outfit any
function GetShopPedQueryOutfit(outfitIndex, outfit) end

---**`FILES` `client` [`0xDE44A00999B2837D`](https://docs.fivem.net/natives/?_0xDE44A00999B2837D)**
---
---@param componentId number
---@param outProp any
function GetShopPedQueryProp(componentId, outProp) end

---**`FILES` `client` [`0xFF56381874F82086`](https://docs.fivem.net/natives/?_0xFF56381874F82086)**
---
---Character types:
---
---```
---0 = Michael,
---1 = Franklin,
---2 = Trevor,
---3 = MPMale,
---4 = MPFemale
---```
---
---```csharp
---enum TattooZoneData
---{
---    ZONE_TORSO = 0,
---    ZONE_HEAD = 1,
---    ZONE_LEFT_ARM = 2,
---    ZONE_RIGHT_ARM = 3,
---    ZONE_LEFT_LEG = 4,
---    ZONE_RIGHT_LEG = 5,
---    ZONE_UNKNOWN = 6,
---    ZONE_NONE = 7,
---};
---
---struct outComponent
---{
---    // these vars are suffixed with 4 bytes of padding each.
---    uint unk;
---    int unk2;
---    uint tattooCollectionHash;
---    uint tattooNameHash;
---    int unk3;
---    TattooZoneData zoneId;
---    uint unk4;
---    uint unk5;
---    // maybe more, not sure exactly, decompiled scripts are very vague around this part.
---}
---```
---
---@param characterType number Character types 0 = Michael, 1 = Franklin, 2 = Trevor, 3 = MPMale, 4 = MPFemale.
---@param decorationIndex number Tattoo index, value between 0 and GetNumDecorations(characterType).
---@param outComponent any The referenced struct.
---@return boolean, any # A bool indicating that the tattoo data could be fetched(?)
function GetTattooShopDlcItemData(characterType, decorationIndex, outComponent) end

---**`FILES` `client` [`0x6E11F282F11863B6`](https://docs.fivem.net/natives/?_0x6E11F282F11863B6)**
---
---@param componentHash Hash
---@param variantComponentIndex number
---@param nameHash Hash
---@param enumValue number
---@param componentType number
function GetVariantComponent(componentHash, variantComponentIndex, nameHash, enumValue, componentType) end

---**`FILES` `client` [`0x1E8C308FD312C036`](https://docs.fivem.net/natives/?_0x1E8C308FD312C036)**
---
---@param outComponent number
function InitShopPedComponent(outComponent) end

---**`FILES` `client` [`0xEB0A2B758F7B850F`](https://docs.fivem.net/natives/?_0xEB0A2B758F7B850F)**
---
---@param outProp number
function InitShopPedProp(outProp) end

---**`FILES` `client` [`0xD4D7B033C3AA243C`](https://docs.fivem.net/natives/?_0xD4D7B033C3AA243C)**
---
---@param itemHash Hash
---@return boolean
function IsContentItemLocked(itemHash) end

---**`FILES` `client` [`0x0564B9FF9631B82C`](https://docs.fivem.net/natives/?_0x0564B9FF9631B82C)**
---
---@param hash Hash
---@return boolean
function IsDlcVehicleMod(hash) end

---**`FILES` `client` [`0x50F457823CE6EB5F`](https://docs.fivem.net/natives/?_0x50F457823CE6EB5F)**
---
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@return number
function SetupShopPedApparelQuery(p0, p1, p2, p3) end

---**`FILES` `client` [`0x9BDF59818B1E38C1`](https://docs.fivem.net/natives/?_0x9BDF59818B1E38C1)**
---
---```
---character is 0 for Michael, 1 for Franklin, 2 for Trevor, 3 for freemode male, and 4 for freemode female.
---componentId is between 0 and 11 and corresponds to the usual component slots.
---p1 could be the outfit number; unsure.
---p2 is usually -1; unknown function.
---p3 appears to be for selecting between clothes and props; false is used with components/clothes, true is used with props.
---p4 is usually -1; unknown function.
---componentId is -1 when p3 is true in decompiled scripts.
---```
---
---@param character number
---@param p1 number
---@param p2 number
---@param p3 boolean
---@param p4 number
---@param componentId number
---@return number
function SetupShopPedApparelQueryTu(character, p1, p2, p3, p4, componentId) end

---**`FILES` `client` [`0xF3FBE2D50A6A8C28`](https://docs.fivem.net/natives/?_0xF3FBE2D50A6A8C28)**
---
---```
---characters
---0: Michael
---1: Franklin
---2: Trevor
---3: MPMale
---4: MPFemale
---```
---
---@param character number
---@param p1 boolean
---@return number
function SetupShopPedOutfitQuery(character, p1) end

---**`FILES` `client` [`0x31D5E073B6F93CDC`](https://docs.fivem.net/natives/?_0x31D5E073B6F93CDC)**
---
---Same as GET_DLC_WEAPON_COMPONENT_DATA but only works for DLC components that are available in SP.
---
---```
---NativeDB Introduced: v2060
---```
---
---@param dlcWeaponIndex number
---@param dlcWeapCompIndex number
---@param ComponentDataPtr number
---@return boolean, number
function GetDlcWeaponComponentDataSp(dlcWeaponIndex, dlcWeapCompIndex, ComponentDataPtr) end

---**`FILES` `client` [`0x310836EE7129BA33`](https://docs.fivem.net/natives/?_0x310836EE7129BA33)**
---
---Same as GET_DLC_WEAPON_DATA but only works for DLC weapons that are available in SP.
---
---```
---NativeDB Introduced: v2060
---```
---
---@param dlcWeaponIndex number
---@param outData number
---@return boolean, number
function GetDlcWeaponDataSp(dlcWeaponIndex, outData) end

---**`FILES` `client` [`0x4160B65AE085B5A9`](https://docs.fivem.net/natives/?_0x4160B65AE085B5A9)**
---
---Returns the total number of DLC weapons that are available in SP (availableInSP field in shop_weapon.meta).
---
---```
---NativeDB Introduced: v2060
---```
---
---@return number
function GetNumDlcWeaponsSp() end

---**`FILES` `client` [`0xAD2A7A6DFF55841B`](https://docs.fivem.net/natives/?_0xAD2A7A6DFF55841B)**
---
---Returns the total number of DLC weapon components that are available in SP.
---
---```
---NativeDB Introduced: v2060
---```
---
---@param dlcWeaponIndex number
---@return number
function GetNumDlcWeaponComponentsSp(dlcWeaponIndex) end

---**`FILES` `client` [`0xD40AAC51E8E4C663`](https://docs.fivem.net/natives/?_0xD40AAC51E8E4C663)**
---
---Example code:
---```lua
---local iVar16 = GetPedPropIndex(PlayerPedId(), 0) -- helmet prop index
---local iVar17 = GetPedPropTextureIndex(PlayerPedId(), 0) -- helmet prop index
---local iVar18 = GetHashNameForProp(PlayerPedId(), 0, iVar16, iVar17) -- gets the hash name for the helmet
---if N_0xd40aac51e8e4c663(iVar18) > 0 then -- visor variant so can toggle the visor
---    BeginTextCommandDisplayHelp("VISOR_TOGGLE") -- Hold ~INPUT_SWITCH_VISOR~ to flip your helmet visor open or closed when on foot or on a motorcycle. You can also set the default state of your Helmet Visor in the Style section of the Interaction menu.
---    EndTextCommandDisplayHelp(0, 0, true, 6000)
---end
---```
---
---@param propHash Hash Ped helmet prop hash
---@return number # This native returns 1 when the player helmet has a visor (there is another prop index for the same helmet with closed/opened visor variant) that can be toggled. 0 if there's no alternative version with a visor for this helmet prop.
function GetShopPedApparelVariantPropCount(propHash) end

---**`FILES` `client` [`0xD81B7F27BC773E66`](https://docs.fivem.net/natives/?_0xD81B7F27BC773E66)**
---
---@param componentHash Hash
---@param variantPropIndex number
---@param nameHash Hash
---@param enumValue number
---@param anchorPoint number
function GetVariantProp(componentHash, variantPropIndex, nameHash, enumValue, anchorPoint) end

---**`FILES` `client` [`0x6BEDF5769AC2DC07`](https://docs.fivem.net/natives/?_0x6BEDF5769AC2DC07)**
---
---```
---From fm_deathmatch_creator and fm_race_creator:
---
---FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
---FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));
---
---NativeDB Introduced: v1604
---```
---
---@param hash Hash
function LoadContentChangeSetGroup(hash) end

---**`FILES` `client` [`0x3C1978285B036B25`](https://docs.fivem.net/natives/?_0x3C1978285B036B25)**
---
---```
---From fm_deathmatch_creator and fm_race_creator:
---
---FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
---FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));
---
---NativeDB Introduced: v1604
---```
---
---@param hash Hash
function UnloadContentChangeSetGroup(hash) end
