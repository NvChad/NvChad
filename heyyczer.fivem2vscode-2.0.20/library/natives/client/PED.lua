---@meta
---**`PED` `client` [`0x03EA03AF85A85CB7`](https://docs.fivem.net/natives/?_0x03EA03AF85A85CB7)**
---
---@param ped Ped
---@param p1 boolean
---@param p2 boolean
---@param p3 boolean
---@param p4 boolean
---@param p5 boolean
---@param p6 boolean
---@param p7 boolean
---@param p8 any
---@return boolean
function N_0x03ea03af85a85cb7(ped, p1, p2, p3, p4, p5, p6, p7, p8) end

---**`PED` `client` [`0x06087579E7AA85A9`](https://docs.fivem.net/natives/?_0x06087579E7AA85A9)**
---
---@param p0 any
---@param p1 any
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@return boolean
function N_0x06087579e7aa85a9(p0, p1, p2, p3, p4, p5) end

---**`PED` `client` [`0x061CB768363D6424`](https://docs.fivem.net/natives/?_0x061CB768363D6424)**
---
---@param ped Ped
---@param toggle boolean
function N_0x061cb768363d6424(ped, toggle) end

---**`PED` `client` [`0x0B3E35AC043707D9`](https://docs.fivem.net/natives/?_0x0B3E35AC043707D9)**
---
---@param p0 any
---@param p1 any
function N_0x0b3e35ac043707d9(p0, p1) end

---**`PED` `client` [`0x0F62619393661D6E`](https://docs.fivem.net/natives/?_0x0F62619393661D6E)**
---
---@param p0 any
---@param p1 any
---@param p2 any
function N_0x0f62619393661d6e(p0, p1, p2) end

---**`PED` `client` [`0x110F526AB784111F`](https://docs.fivem.net/natives/?_0x110F526AB784111F)**
---
---```
---In agency_heist3b.c4, its like this 90% of the time:
---PED::_110F526AB784111F(ped, 0.099);
---PED::SET_PED_ENVEFF_SCALE(ped, 1.0);
---PED::_D69411AA0CEBF9E9(ped, 87, 81, 68);
---PED::SET_ENABLE_PED_ENVEFF_SCALE(ped, 1);
---and its like this 10% of the time:
---PED::_110F526AB784111F(ped, 0.2);
---PED::SET_PED_ENVEFF_SCALE(ped, 0.65);
---PED::_D69411AA0CEBF9E9(ped, 74, 69, 60);
---PED::SET_ENABLE_PED_ENVEFF_SCALE(ped, 1);
---```
---
---@param ped Ped
---@param p1 number
function N_0x110f526ab784111f(ped, p1) end

---**`PED` `client` [`0x1216E0BFA72CC703`](https://docs.fivem.net/natives/?_0x1216E0BFA72CC703)**
---
---**This native does absolutely nothing, just a nullsub**
---
---@param p0 any
---@param p1 any
function N_0x1216e0bfa72cc703(p0, p1) end

---**`PED` `client` [`0x1A330D297AAC6BC1`](https://docs.fivem.net/natives/?_0x1A330D297AAC6BC1)**
---
---```
---Only appears in lamar1 script.
---```
---
---@param ped Ped
---@param p1 number
function N_0x1a330d297aac6bc1(ped, p1) end

---**`PED` `client` [`0x1E77FA7A62EE6C4C`](https://docs.fivem.net/natives/?_0x1E77FA7A62EE6C4C)**
---
---```
---GET_*
---```
---
---@param p0 any
---@return any
function N_0x1e77fa7a62ee6c4c(p0) end

---**`PED` `client` [`0x2016C603D6B8987C`](https://docs.fivem.net/natives/?_0x2016C603D6B8987C)**
---
---```
---SET_PED_STE*
---```
---
---@param ped Ped
---@param toggle boolean
function N_0x2016c603d6b8987c(ped, toggle) end

---**`PED` `client` [`0x25361A96E0F7E419`](https://docs.fivem.net/natives/?_0x25361A96E0F7E419)**
---
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@return any
function N_0x25361a96e0f7e419(p0, p1, p2, p3) end

---**`PED` `client` [`0x2735233A786B1BEF`](https://docs.fivem.net/natives/?_0x2735233A786B1BEF)**
---
---@param ped Ped
---@param p1 number
function N_0x2735233a786b1bef(ped, p1) end

---**`PED` `client` [`0x288DF530C92DAD6F`](https://docs.fivem.net/natives/?_0x288DF530C92DAD6F)**
---
---[`SET_VEHICLE_STEER_BIAS`](#\_0x42A8EC77D5150CBE) for peds, e.g., `_SET_PED_STEER_BIAS`.
---
---@param ped Ped
---@param value number
function N_0x288df530c92dad6f(ped, value) end

---**`PED` `client` [`0x2B694AFCF64E6994`](https://docs.fivem.net/natives/?_0x2B694AFCF64E6994)**
---
---@param ped Ped
---@param p1 boolean
function N_0x2b694afcf64e6994(ped, p1) end

---**`PED` `client` [`0x2DFC81C9B9608549`](https://docs.fivem.net/natives/?_0x2DFC81C9B9608549)**
---
---@param ped Ped
---@param p1 number
---@return boolean, number
function N_0x2dfc81c9b9608549(ped, p1) end

---**`PED` `client` [`0x2F074C904D85129E`](https://docs.fivem.net/natives/?_0x2F074C904D85129E)**
---
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
function N_0x2f074c904d85129e(p0, p1, p2, p3, p4, p5, p6) end

---**`PED` `client` [`0x2F3C3D9F50681DE4`](https://docs.fivem.net/natives/?_0x2F3C3D9F50681DE4)**
---
---@param p0 any
---@param p1 boolean
function N_0x2f3c3d9f50681de4(p0, p1) end

---**`PED` `client` [`0x336B3D200AB007CB`](https://docs.fivem.net/natives/?_0x336B3D200AB007CB)**
---
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@return any
function N_0x336b3d200ab007cb(p0, p1, p2, p3, p4) end

---**`PED` `client` [`0x3E9679C1DFCF422C`](https://docs.fivem.net/natives/?_0x3E9679C1DFCF422C)**
---
---@param p0 any
---@param p1 any
function N_0x3e9679c1dfcf422c(p0, p1) end

---**`PED` `client` [`0x412F1364FA066CFB`](https://docs.fivem.net/natives/?_0x412F1364FA066CFB)**
---
---@param p0 any
---@return any
function N_0x412f1364fa066cfb(p0) end

---**`PED` `client` [`0x425AECF167663F48`](https://docs.fivem.net/natives/?_0x425AECF167663F48)**
---
---@param ped Ped
---@param p1 boolean
function N_0x425aecf167663f48(ped, p1) end

---**`PED` `client` [`0x46B05BCAE43856B0`](https://docs.fivem.net/natives/?_0x46B05BCAE43856B0)**
---
---```
---Checks if the specified unknown flag is set in the ped's model.
---The engine itself seems to exclusively check for flags 1 and 4 (Might be inlined code of the check that checks for other flags).
---Game scripts exclusively check for flags 1 and 4.
---```
---
---@param ped Ped
---@param flag number
---@return boolean
function N_0x46b05bcae43856b0(ped, flag) end

---**`PED` `client` [`0x49E50BDB8BA4DAB2`](https://docs.fivem.net/natives/?_0x49E50BDB8BA4DAB2)**
---
---```
---SET_PED_ALLOW*
---```
---
---@param ped Ped
---@param toggle boolean
function N_0x49e50bdb8ba4dab2(ped, toggle) end

---**`PED` `client` [`0x511F1A683387C7E2`](https://docs.fivem.net/natives/?_0x511F1A683387C7E2)**
---
---```
---GET_*
---```
---
---@param ped Ped
---@return number
function N_0x511f1a683387c7e2(ped) end

---**`PED` `client` [`0x5407B7288D0478B7`](https://docs.fivem.net/natives/?_0x5407B7288D0478B7)**
---
---@param p0 any
---@return number
function N_0x5407b7288d0478b7(p0) end

---**`PED` `client` [`0x5A7F62FDA59759BD`](https://docs.fivem.net/natives/?_0x5A7F62FDA59759BD)**
---
function N_0x5a7f62fda59759bd() end

---**`PED` `client` [`0x5B6010B3CBC29095`](https://docs.fivem.net/natives/?_0x5B6010B3CBC29095)**
---
---@param p0 any
---@param p1 boolean
function N_0x5b6010b3cbc29095(p0, p1) end

---**`PED` `client` [`0x711794453CFD692B`](https://docs.fivem.net/natives/?_0x711794453CFD692B)**
---
---@param p0 any
---@param p1 any
function N_0x711794453cfd692b(p0, p1) end

---**`PED` `client` [`0x733C87D4CE22BEA2`](https://docs.fivem.net/natives/?_0x733C87D4CE22BEA2)**
---
---@param ped Ped
function N_0x733c87d4ce22bea2(ped) end

---**`PED` `client` [`0x75BA1CB3B7D40CAF`](https://docs.fivem.net/natives/?_0x75BA1CB3B7D40CAF)**
---
---```
---REQUEST_*
---```
---
---@param ped Ped
---@param p1 boolean
function N_0x75ba1cb3b7d40caf(ped, p1) end

---**`PED` `client` [`0x80054D7FCC70EEC6`](https://docs.fivem.net/natives/?_0x80054D7FCC70EEC6)**
---
---```
---CLEAR_PED_*
---```
---
---@param ped Ped
function N_0x80054d7fcc70eec6(ped) end

---**`PED` `client` [`0x820E9892A77E97CD`](https://docs.fivem.net/natives/?_0x820E9892A77E97CD)**
---
---@param p0 any
---@param p1 any
function N_0x820e9892a77e97cd(p0, p1) end

---**`PED` `client` [`0x83A169EABCDB10A2`](https://docs.fivem.net/natives/?_0x83A169EABCDB10A2)**
---
---@param p0 any
---@param p1 any
function N_0x83a169eabcdb10a2(p0, p1) end

---**`PED` `client` [`0x87DDEB611B329A9C`](https://docs.fivem.net/natives/?_0x87DDEB611B329A9C)**
---
---```
---SET_A*
---```
---
---@param multiplier number
function N_0x87ddeb611b329a9c(multiplier) end

---**`PED` `client` [`0x9911F4A24485F653`](https://docs.fivem.net/natives/?_0x9911F4A24485F653)**
---
---@param p0 boolean
function N_0x9911f4a24485f653(p0) end

---**`PED` `client` [`0x9A77DFD295E29B09`](https://docs.fivem.net/natives/?_0x9A77DFD295E29B09)**
---
---@param ped Ped
---@param toggle boolean
function N_0x9a77dfd295e29b09(ped, toggle) end

---**`PED` `client` [`0x9C6A6C19B6C0C496`](https://docs.fivem.net/natives/?_0x9C6A6C19B6C0C496)**
---
---@param ped Ped
---@param p1 number
---@return boolean, number
function N_0x9c6a6c19b6c0c496(ped, p1) end

---**`PED` `client` [`0x9E30E91FB03A2CAF`](https://docs.fivem.net/natives/?_0x9E30E91FB03A2CAF)**
---
---@param p0 any
---@param p1 any
---@return boolean, any, any
function N_0x9e30e91fb03a2caf(p0, p1) end

---**`PED` `client` [`0xA3F3564A5B3646C0`](https://docs.fivem.net/natives/?_0xA3F3564A5B3646C0)**
---
---```
---Only called once in the scripts:
---if (sub_1abd() && (!PED::_A3F3564A5B3646C0(l_8C))) {
---    if (sub_52e3("RESNA_CELLR", 0)) {
---        PED::SET_PED_CAN_PLAY_GESTURE_ANIMS(l_8C, 1);
---        PED::SET_PED_CAN_PLAY_AMBIENT_ANIMS(l_8C, 1);
---        PED::SET_PED_CAN_PLAY_VISEME_ANIMS(l_8C, 1, 0);
---        l_184 += 1;
---    }
---}
---Checks something related to the mobile phone task.
---IS_*
---```
---
---@param ped Ped
---@return boolean
function N_0xa3f3564a5b3646c0(ped) end

---**`PED` `client` [`0xA52D5247A4227E14`](https://docs.fivem.net/natives/?_0xA52D5247A4227E14)**
---
---@param p0 any
function N_0xa52d5247a4227e14(p0) end

---**`PED` `client` [`0xA660FAF550EB37E5`](https://docs.fivem.net/natives/?_0xA660FAF550EB37E5)**
---
---@param p0 any
---@param p1 boolean
function N_0xa660faf550eb37e5(p0, p1) end

---**`PED` `client` [`0xA9B61A329BFDCBEA`](https://docs.fivem.net/natives/?_0xA9B61A329BFDCBEA)**
---
---@param p0 any
---@param p1 boolean
function N_0xa9b61a329bfdcbea(p0, p1) end

---**`PED` `client` [`0xAAA6A3698A69E048`](https://docs.fivem.net/natives/?_0xAAA6A3698A69E048)**
---
---@param p0 any
---@return any
function N_0xaaa6a3698a69e048(p0) end

---**`PED` `client` [`0xAD27D957598E49E9`](https://docs.fivem.net/natives/?_0xAD27D957598E49E9)**
---
---```
---NativeDB Introduced: v1290
---```
---
---@param ped Ped
---@param p1 any
---@param p2 number
---@param hash Hash
---@param p4 any
---@param p5 any
function N_0xad27d957598e49e9(ped, p1, p2, hash, p4, p5) end

---**`PED` `client` [`0xAFC976FD0580C7B3`](https://docs.fivem.net/natives/?_0xAFC976FD0580C7B3)**
---
---```
---SET_PED_*
---```
---
---@param ped Ped
---@param toggle boolean
function N_0xafc976fd0580c7b3(ped, toggle) end

---**`PED` `client` [`0xB282749D5E028163`](https://docs.fivem.net/natives/?_0xB282749D5E028163)**
---
---**This native does absolutely nothing, just a nullsub**
---
---@param p0 any
---@param p1 any
function N_0xb282749d5e028163(p0, p1) end

---**`PED` `client` [`0xB3352E018D6F89DF`](https://docs.fivem.net/natives/?_0xB3352E018D6F89DF)**
---
---```
---_SET_PED_HEAD_* - _SET_PED_HEARING_*
---
---_SET_PED_HEALTH_...
---```
---
---```
---NativeDB Introduced: v2699
---```
---
---@param toggle boolean
function N_0xb3352e018d6f89df(toggle) end

---**`PED` `client` [`0xB8B52E498014F5B0`](https://docs.fivem.net/natives/?_0xB8B52E498014F5B0)**
---
---@param ped Ped
---@return boolean
function N_0xb8b52e498014f5b0(ped) end

---**`PED` `client` [`0xC2EE020F5FB4DB53`](https://docs.fivem.net/natives/?_0xC2EE020F5FB4DB53)**
---
---@param ped Ped
function N_0xc2ee020f5fb4db53(ped) end

---**`PED` `client` [`0xC30BDAEE47256C13`](https://docs.fivem.net/natives/?_0xC30BDAEE47256C13)**
---
---```
---NativeDB Introduced: v1868
---```
---
---@param p0 any
---@return any
function N_0xc30bdaee47256c13(p0) end

---**`PED` `client` [`0xC56FBF2F228E1DAC`](https://docs.fivem.net/natives/?_0xC56FBF2F228E1DAC)**
---
---@param modelHash Hash
---@param p1 any
---@param p2 any
---@return any
function N_0xc56fbf2f228e1dac(modelHash, p1, p2) end

---**`PED` `client` [`0xCD018C591F94CB43`](https://docs.fivem.net/natives/?_0xCD018C591F94CB43)**
---
---```
---REQUEST_*
---```
---
---@param ped Ped
---@param p1 boolean
function N_0xcd018c591f94cb43(ped, p1) end

---**`PED` `client` [`0xCEDA60A74219D064`](https://docs.fivem.net/natives/?_0xCEDA60A74219D064)**
---
---@param p0 any
---@param p1 boolean
function N_0xceda60a74219d064(p0, p1) end

---**`PED` `client` [`0xD33DAA36272177C4`](https://docs.fivem.net/natives/?_0xD33DAA36272177C4)**
---
---@param ped Ped
function N_0xd33daa36272177c4(ped) end

---**`PED` `client` [`0xDFE68C4B787E1BFB`](https://docs.fivem.net/natives/?_0xDFE68C4B787E1BFB)**
---
---```
---NativeDB Introduced: v1180
---```
---
---@param ped Ped
function N_0xdfe68c4b787e1bfb(ped) end

---**`PED` `client` [`0xE906EC930F5FE7C8`](https://docs.fivem.net/natives/?_0xE906EC930F5FE7C8)**
---
---@param p0 any
---@param p1 any
function N_0xe906ec930f5fe7c8(p0, p1) end

---**`PED` `client` [`0xEA9960D07DADCF10`](https://docs.fivem.net/natives/?_0xEA9960D07DADCF10)**
---
---@param p0 any
---@return number
function N_0xea9960d07dadcf10(p0) end

---**`PED` `client` [`0xEC4B4B3B9908052A`](https://docs.fivem.net/natives/?_0xEC4B4B3B9908052A)**
---
---```
---SET_PED_*
---Has most likely to do with some shooting attributes as it sets the float which is in the same range as shootRate.
---```
---
---@param ped Ped
---@param unk number
function N_0xec4b4b3b9908052a(ped, unk) end

---**`PED` `client` [`0xED3C76ADFA6D07C4`](https://docs.fivem.net/natives/?_0xED3C76ADFA6D07C4)**
---
---```
---FORCE_*
---```
---
---@param ped Ped
function N_0xed3c76adfa6d07c4(ped) end

---**`PED` `client` [`0xF033419D1B81FAE8`](https://docs.fivem.net/natives/?_0xF033419D1B81FAE8)**
---
---```
---GET_*
---```
---
---@param p0 any
---@return any
function N_0xf033419d1b81fae8(p0) end

---**`PED` `client` [`0xF2385935BFFD4D92`](https://docs.fivem.net/natives/?_0xF2385935BFFD4D92)**
---
---Initial guess of native: `_IS_PED_WEARING_MOTORCYCLE_HELMET`.
---
---@param ped Ped
---@return boolean
function N_0xf2385935bffd4d92(ped) end

---**`PED` `client` [`0xF2BEBCDFAFDAA19E`](https://docs.fivem.net/natives/?_0xF2BEBCDFAFDAA19E)**
---
---```
---SET_PED_ALLOW*
---toggle was always false except in one instance (b678).
---The one time this is set to true seems to do with when you fail the mission.
---```
---
---@param toggle boolean
function N_0xf2bebcdfafdaa19e(toggle) end

---**`PED` `client` [`0xF9ACF4A08098EA25`](https://docs.fivem.net/natives/?_0xF9ACF4A08098EA25)**
---
---```
---p1 was always 1 (true).
---Kicks the ped from the current vehicle and keeps the rendering-focus on this ped (also disables its collision). If doing this for your player ped, you'll still be able to drive the vehicle.
---Actual name begins with 'S'
---```
---
---@param ped Ped
---@param p1 boolean
function N_0xf9acf4a08098ea25(ped, p1) end

---**`PED` `client` [`0xFAB944D4D481ACCB`](https://docs.fivem.net/natives/?_0xFAB944D4D481ACCB)**
---
---SET_A\*
---
---```
---NativeDB Introduced: v1734
---```
---
---@param ped Ped
---@param toggle boolean
function N_0xfab944d4d481accb(ped, toggle) end

---**`PED` `client` [`0xFD325494792302D7`](https://docs.fivem.net/natives/?_0xFD325494792302D7)**
---
---@param ped Ped
---@param toggle boolean
function N_0xfd325494792302d7(ped, toggle) end

---**`PED` `client` [`0xFEC9A3B1820F3331`](https://docs.fivem.net/natives/?_0xFEC9A3B1820F3331)**
---
---Native to check whether [`_SET_PED_SCUBA_GEAR_VARIATION`](#\_0x36c6984c3ed0c911) is enabled/actived.
---
---@param ped Ped
---@return boolean
function N_0xfec9a3b1820f3331(ped) end

---**`PED` `client` [`0xFF4803BC019852D9`](https://docs.fivem.net/natives/?_0xFF4803BC019852D9)**
---
---```
---Related to Peds dropping pickup_health_snack; p0 is a value between [0.0, 1.0] that corresponds to drop rate
---```
---
---@param p0 number
---@param p1 any
function N_0xff4803bc019852d9(p0, p1) end

---**`PED` `client` [`0x5BA652A0CD14DF2F`](https://docs.fivem.net/natives/?_0x5BA652A0CD14DF2F)**
---
---```
---Same as SET_PED_ARMOUR, but ADDS 'amount' to the armor the Ped already has.
---```
---
---@param ped Ped
---@param amount number
function AddArmourToPed(ped, amount) end

---**`PED` `client` [`0x5F5D1665E352A839`](https://docs.fivem.net/natives/?_0x5F5D1665E352A839)**
---
---```
---Applies an Item from a PedDecorationCollection to a ped. These include tattoos and shirt decals.
---collection - PedDecorationCollection filename hash
---overlay - Item name hash
---Example:
---Entry inside "mpbeach_overlays.xml" -
---<Item>
---  <uvPos x="0.500000" y="0.500000" />
---  <scale x="0.600000" y="0.500000" />
---  <rotation value="0.000000" />
---  <nameHash>FM_Hair_Fuzz</nameHash>
---  <txdHash>mp_hair_fuzz</txdHash>
---  <txtHash>mp_hair_fuzz</txtHash>
---  <zone>ZONE_HEAD</zone>
---  <type>TYPE_TATTOO</type>
---  <faction>FM</faction>
---  <garment>All</garment>
---  <gender>GENDER_DONTCARE</gender>
---  <award />
---  <awardLevel />
---</Item>
---Code:
---PED::_0x5F5D1665E352A839(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("mpbeach_overlays"), MISC::GET_HASH_KEY("fm_hair_fuzz"))
---```
---
---@param ped Ped
---@param collection Hash
---@param overlay Hash
function AddPedDecorationFromHashes(ped, collection, overlay) end

---**`PED` `client` [`0x5619BFA07CFD7833`](https://docs.fivem.net/natives/?_0x5619BFA07CFD7833)**
---
---@param ped Ped
---@param collection Hash
---@param overlay Hash
function AddPedDecorationFromHashesInCorona(ped, collection, overlay) end

---**`PED` `client` [`0xF372BC22FCB88606`](https://docs.fivem.net/natives/?_0xF372BC22FCB88606)**
---
---```
---Can't select void. This function returns nothing. The hash of the created relationship group is output in the second parameter.
---```
---
---@param name string
---@param groupHash Hash
---@return any, Hash
function AddRelationshipGroup(name, groupHash) end

---**`PED` `client` [`0x1B5C85C612E5256E`](https://docs.fivem.net/natives/?_0x1B5C85C612E5256E)**
---
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param p6 boolean
---@param p7 boolean
---@param p8 boolean
---@param p9 boolean
---@return number
function AddScenarioBlockingArea(x1, y1, z1, x2, y2, z2, p6, p7, p8, p9) end

---**`PED` `client` [`0x697157CED63F18D4`](https://docs.fivem.net/natives/?_0x697157CED63F18D4)**
---
---```
---damages a ped with the given amount
-------
---armorFirst means it will damage/lower the armor first before damaging the player.
---setting damageAmount to a negative amount will cause the player or the armor (depending on armorFirst) to be healed by damageAmount instead.
---```
---
---```
---NativeDB Added Parameter 4: Any p3
---```
---
---@param ped Ped
---@param damageAmount number
---@param armorFirst boolean
function ApplyDamageToPed(ped, damageAmount, armorFirst) end

---**`PED` `client` [`0x83F7E01C7B769A26`](https://docs.fivem.net/natives/?_0x83F7E01C7B769A26)**
---
---```
---Found one occurence in re_crashrescue.c4
---PED::APPLY_PED_BLOOD(l_4B, 3, 0.0, 0.0, 0.0, "wound_sheet");
---```
---
---@param ped Ped
---@param boneIndex number
---@param xRot number
---@param yRot number
---@param zRot number
---@param woundType string
function ApplyPedBlood(ped, boneIndex, xRot, yRot, zRot, woundType) end

---**`PED` `client` [`0x3311E47B91EDCBBC`](https://docs.fivem.net/natives/?_0x3311E47B91EDCBBC)**
---
---@param ped Ped
---@param p1 any
---@param p2 number
---@param p3 number
---@param p4 any
function ApplyPedBloodByZone(ped, p1, p2, p3, p4) end

---**`PED` `client` [`0x816F6981C60BF53B`](https://docs.fivem.net/natives/?_0x816F6981C60BF53B)**
---
---@param ped Ped
---@param p1 any
---@param p2 number
---@param p3 number
---@param p4 any
function ApplyPedBloodDamageByZone(ped, p1, p2, p3, p4) end

---**`PED` `client` [`0xEF0D582CBF2D9B0F`](https://docs.fivem.net/natives/?_0xEF0D582CBF2D9B0F)**
---
---@param ped Ped
---@param p1 any
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 any
---@param p7 number
---@param p8 any
function ApplyPedBloodSpecific(ped, p1, p2, p3, p4, p5, p6, p7, p8) end

---**`PED` `client` [`0x397C38AA7B4A5F83`](https://docs.fivem.net/natives/?_0x397C38AA7B4A5F83)**
---
---```
---enum eDamageZone
---{
---	DZ_Torso = 0,
---	DZ_Head,
---	DZ_LeftArm,
---	DZ_RightArm,
---	DZ_LeftLeg,
---	DZ_RightLeg,
---};
---Decal Names:
---scar
---blushing
---cs_flush_anger
---cs_flush_anger_face
---bruise
---bruise_large
---herpes
---ArmorBullet
---basic_dirt_cloth
---basic_dirt_skin
---cs_trev1_dirt
---APPLY_PED_DAMAGE_DECAL(ped, 1, 0.5f, 0.513f, 0f, 1f, unk, 0, 0, "blushing");
---```
---
---@param ped Ped
---@param damageZone number
---@param xOffset number
---@param yOffset number
---@param heading number
---@param scale number
---@param alpha number
---@param variation number
---@param fadeIn boolean
---@param decalName string
function ApplyPedDamageDecal(ped, damageZone, xOffset, yOffset, heading, scale, alpha, variation, fadeIn, decalName) end

---**`PED` `client` [`0x46DF918788CB093F`](https://docs.fivem.net/natives/?_0x46DF918788CB093F)**
---
---```
---Damage Packs:
---"SCR_TrevorTreeBang"
---"HOSPITAL_0"
---"HOSPITAL_1"
---"HOSPITAL_2"
---"HOSPITAL_3"
---"HOSPITAL_4"
---"HOSPITAL_5"
---"HOSPITAL_6"
---"HOSPITAL_7"
---"HOSPITAL_8"
---"HOSPITAL_9"
---"SCR_Dumpster"
---"BigHitByVehicle"
---"SCR_Finale_Michael_Face"
---"SCR_Franklin_finb"
---"SCR_Finale_Michael"
---"SCR_Franklin_finb2"
---"Explosion_Med"
---"SCR_Torture"
---"SCR_TracySplash"
---"Skin_Melee_0"
---Additional damage packs:
---gist.github.com/alexguirre/f3f47f75ddcf617f416f3c8a55ae2227
---```
---
---@param ped Ped
---@param damagePack string
---@param damage number
---@param mult number
function ApplyPedDamagePack(ped, damagePack, damage, mult) end

---**`PED` `client` [`0x272E4723B56A3B96`](https://docs.fivem.net/natives/?_0x272E4723B56A3B96)**
---
---@param sceneID number
---@param entity Entity
---@param boneIndex number
function AttachSynchronizedSceneToEntity(sceneID, entity, boneIndex) end

---**`PED` `client` [`0xEACEEDA81751915C`](https://docs.fivem.net/natives/?_0xEACEEDA81751915C)**
---
---@return boolean
function CanCreateRandomBikeRider() end

---**`PED` `client` [`0x5EE2CAFF7F17770D`](https://docs.fivem.net/natives/?_0x5EE2CAFF7F17770D)**
---
---@return boolean
function CanCreateRandomCops() end

---**`PED` `client` [`0xB8EB95E5B4E56978`](https://docs.fivem.net/natives/?_0xB8EB95E5B4E56978)**
---
---@return boolean
function CanCreateRandomDriver() end

---**`PED` `client` [`0x3E8349C08E4B82E4`](https://docs.fivem.net/natives/?_0x3E8349C08E4B82E4)**
---
---@param unk boolean
---@return boolean
function CanCreateRandomPed(unk) end

---**`PED` `client` [`0x51AC07A44D4F5B8A`](https://docs.fivem.net/natives/?_0x51AC07A44D4F5B8A)**
---
---@param ped Ped
---@return boolean
function CanKnockPedOffVehicle(ped) end

---**`PED` `client` [`0xEAD42DE3610D0721`](https://docs.fivem.net/natives/?_0xEAD42DE3610D0721)**
---
---@param ped Ped
---@param target Ped
---@return boolean
function CanPedInCombatSeeTarget(ped, target) end

---**`PED` `client` [`0x128F79EDCECE4FD5`](https://docs.fivem.net/natives/?_0x128F79EDCECE4FD5)**
---
---```
---Prevents the ped from going limp.
---[Example: Can prevent peds from falling when standing on moving vehicles.]
---```
---
---@param ped Ped
---@return boolean
function CanPedRagdoll(ped) end

---**`PED` `client` [`0x6CD5A433374D4CFB`](https://docs.fivem.net/natives/?_0x6CD5A433374D4CFB)**
---
---@param ped1 Ped
---@param ped2 Ped
---@return boolean
function CanPedSeeHatedPed(ped1, ped2) end

---**`PED` `client` [`0xCD8A7537A9B52F06`](https://docs.fivem.net/natives/?_0xCD8A7537A9B52F06)**
---
---@param ped Ped The ped handle.
function ClearAllPedProps(ped) end

---**`PED` `client` [`0xE6CA85E7259CE16B`](https://docs.fivem.net/natives/?_0xE6CA85E7259CE16B)**
---
---@param ped Ped
function ClearAllPedVehicleForcedSeatUsage(ped) end

---**`PED` `client` [`0x726256CC1EEB182F`](https://docs.fivem.net/natives/?_0x726256CC1EEB182F)**
---
---@param ped Ped
function ClearFacialIdleAnimOverride(ped) end

---**`PED` `client` [`0xD8D19675ED5FBDCE`](https://docs.fivem.net/natives/?_0xD8D19675ED5FBDCE)**
---
---@param ped Ped
---@param stance number
---@param p2 number
function ClearPedAlternateMovementAnim(ped, stance, p2) end

---**`PED` `client` [`0x8844BBFCE30AA9E9`](https://docs.fivem.net/natives/?_0x8844BBFCE30AA9E9)**
---
---@param ped Ped
---@param p1 number
function ClearPedAlternateWalkAnim(ped, p1) end

---**`PED` `client` [`0x8FE22675A5A45817`](https://docs.fivem.net/natives/?_0x8FE22675A5A45817)**
---
---Clears the blood on a ped.
---
---@param ped Ped Ped id.
function ClearPedBloodDamage(ped) end

---**`PED` `client` [`0x56E3B78C5408D9F4`](https://docs.fivem.net/natives/?_0x56E3B78C5408D9F4)**
---
---```
---Somehow related to changing ped's clothes.
---```
---
---@param ped Ped
---@param p1 number
function ClearPedBloodDamageByZone(ped, p1) end

---**`PED` `client` [`0x523C79AEEFCC4A2A`](https://docs.fivem.net/natives/?_0x523C79AEEFCC4A2A)**
---
---```
---p1: from 0 to 5 in the b617d scripts.
---p2: "blushing" and "ALL" found in the b617d scripts.
---```
---
---@param ped Ped
---@param p1 number
---@param p2 string
function ClearPedDamageDecalByZone(ped, p1, p2) end

---**`PED` `client` [`0x0E5173C163976E38`](https://docs.fivem.net/natives/?_0x0E5173C163976E38)**
---
---@param ped Ped
function ClearPedDecorations(ped) end

---**`PED` `client` [`0xE3B27E70CEAB9F0C`](https://docs.fivem.net/natives/?_0xE3B27E70CEAB9F0C)**
---
---@param ped Ped
function ClearPedDecorationsLeaveScars(ped) end

---**`PED` `client` [`0x4AFE3690D7E0B5AC`](https://docs.fivem.net/natives/?_0x4AFE3690D7E0B5AC)**
---
---@param ped Ped
function ClearPedDriveByClipsetOverride(ped) end

---**`PED` `client` [`0x6585D955A68452A5`](https://docs.fivem.net/natives/?_0x6585D955A68452A5)**
---
---@param ped Ped
function ClearPedEnvDirt(ped) end

---**`PED` `client` [`0x8EF6B7AC68E2F01B`](https://docs.fivem.net/natives/?_0x8EF6B7AC68E2F01B)**
---
---@param ped Ped
function ClearPedLastDamageBone(ped) end

---**`PED` `client` [`0x2E05208086BA0651`](https://docs.fivem.net/natives/?_0x2E05208086BA0651)**
---
function ClearPedNonCreationArea() end

---**`PED` `client` [`0x1280804F7CFD2D6C`](https://docs.fivem.net/natives/?_0x1280804F7CFD2D6C)**
---
---@param ped Ped
function ClearPedParachutePackVariation(ped) end

---**`PED` `client` [`0x0943E5B8E078E76E`](https://docs.fivem.net/natives/?_0x0943E5B8E078E76E)**
---
---@param ped Ped The ped handle.
---@param propId number The prop id you want to clear from the ped. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F).
function ClearPedProp(ped, propId) end

---**`PED` `client` [`0xB50EB4CCB29704AC`](https://docs.fivem.net/natives/?_0xB50EB4CCB29704AC)**
---
---Removes the scubagear (for mp male: component id: 8, drawableId: 123, textureId: any) from peds. Does not play the 'remove scuba gear' animation, but instantly removes it.
---
---@param ped Ped The ped to remove the scuba gear from.
function ClearPedScubaGearVariation(ped) end

---**`PED` `client` [`0x687C0B594907D2E8`](https://docs.fivem.net/natives/?_0x687C0B594907D2E8)**
---
---@param ped Ped
function ClearPedStoredHatProp(ped) end

---**`PED` `client` [`0x9C720776DAA43E7E`](https://docs.fivem.net/natives/?_0x9C720776DAA43E7E)**
---
---```
---It clears the wetness of the selected Ped/Player. Clothes have to be wet to notice the difference.
---```
---
---@param ped Ped
function ClearPedWetness(ped) end

---**`PED` `client` [`0xD86D101FCFD00A4B`](https://docs.fivem.net/natives/?_0xD86D101FCFD00A4B)**
---
---```
---There seem to be 26 flags
---```
---
---@param ped Ped
---@param flags number
function ClearRagdollBlockingFlags(ped, flags) end

---**`PED` `client` [`0x5E29243FB56FC6D4`](https://docs.fivem.net/natives/?_0x5E29243FB56FC6D4)**
---
---```
---Clears the relationship between two groups. This should be called twice (once for each group).
---Relationship types:
---0 = Companion
---1 = Respect
---2 = Like
---3 = Neutral
---4 = Dislike
---5 = Hate
---255 = Pedestrians
---(Credits: Inco)
---Example:
---PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);
---PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);
---```
---
---@param relationship number
---@param group1 Hash
---@param group2 Hash
function ClearRelationshipBetweenGroups(relationship, group1, group2) end

---**`PED` `client` [`0xEF29A16337FACADB`](https://docs.fivem.net/natives/?_0xEF29A16337FACADB)**
---
---Creates a copy of the passed ped, optionally setting it as local and/or shallow-copying the head blend data.
---
---Example code:
---```lua
----- makes a locally visible duplicate of the local player for presentation
---local playerDummy = ClonePed(PlayerPedId(), false, false, true)
---SetEntityCoords(playerDummy, pos.x, pos.y, pos.z)
---```
---
---@param ped Ped The input ped.
---@param isNetwork boolean Whether or not the ped should be registered as a network object.
---@param bScriptHostPed boolean Script host flag.
---@param copyHeadBlendFlag boolean If true, head blend data is referenced, not copied.
---@return Ped # A new ped handle representing the ped's copy.
function ClonePed(ped, isNetwork, bScriptHostPed, copyHeadBlendFlag) end

---**`PED` `client` [`0xE952D6431689AD9A`](https://docs.fivem.net/natives/?_0xE952D6431689AD9A)**
---
---```
---Copies ped's components and props to targetPed.
---```
---
---@param ped Ped
---@param targetPed Ped
function ClonePedToTarget(ped, targetPed) end

---**`PED` `client` [`0x90370EBE0FEE1A3D`](https://docs.fivem.net/natives/?_0x90370EBE0FEE1A3D)**
---
---```
---Creates a new ped group.
---Groups can contain up to 8 peds.
---The parameter is unused.
---Returns a handle to the created group, or 0 if a group couldn't be created.
---```
---
---@param unused number
---@return number
function CreateGroup(unused) end

---**`PED` `client` [`0x418EF2A1BCE56685`](https://docs.fivem.net/natives/?_0x418EF2A1BCE56685)**
---
---```
---Creates a new NaturalMotion message.
---startImmediately: If set to true, the character will perform the message the moment it receives it by GIVE_PED_NM_MESSAGE. If false, the Ped will get the message but won't perform it yet. While it's a boolean value, if negative, the message will not be initialized.
---messageId: The ID of the NaturalMotion message.
---If a message already exists, this function does nothing. A message exists until the point it has been successfully dispatched by GIVE_PED_NM_MESSAGE.
---```
---
---@param startImmediately boolean
---@param messageId number
function CreateNmMessage(startImmediately, messageId) end

---**`PED` `client` [`0x8C4F3BF23B6237DB`](https://docs.fivem.net/natives/?_0x8C4F3BF23B6237DB)**
---
---@param ped Ped
---@param p1 boolean
---@param p2 boolean
---@return Object
function CreateParachuteBagObject(ped, p1, p2) end

---**`PED` `client` [`0xD49F9B0955C367DE`](https://docs.fivem.net/natives/?_0xD49F9B0955C367DE)**
---
---Creates a ped (biped character, pedestrian, actor) with the specified model at the specified position and heading.
---This ped will initially be owned by the creating script as a mission entity, and the model should be loaded already
---(e.g. using REQUEST_MODEL).
---
---@param pedType number Unused. Peds get set to CIVMALE/CIVFEMALE/etc. no matter the value specified.
---@param modelHash Hash The model of ped to spawn.
---@param x number Spawn coordinate X component.
---@param y number Spawn coordinate Y component.
---@param z number Spawn coordinate Z component.
---@param heading number Heading to face towards, in degrees.
---@param isNetwork boolean Whether to create a network object for the ped. If false, the ped exists only locally.
---@param bScriptHostPed boolean Whether to register the ped as pinned to the script host in the R\* network model.
---@return Ped # A script handle (fwScriptGuid index) for the ped, or `0` if the ped failed to be created.
function CreatePed(pedType, modelHash, x, y, z, heading, isNetwork, bScriptHostPed) end

---**`PED` `client` [`0x7DD959874C1FD534`](https://docs.fivem.net/natives/?_0x7DD959874C1FD534)**
---
---@param vehicle Vehicle
---@param pedType number See [`CREATE_PED`](#\_0xD49F9B0955C367DE)
---@param modelHash Hash
---@param seat number
---@param isNetwork boolean
---@param bScriptHostPed boolean
---@return Ped
function CreatePedInsideVehicle(vehicle, pedType, modelHash, seat, isNetwork, bScriptHostPed) end

---**`PED` `client` [`0xB4AC7D0CF06BFE8F`](https://docs.fivem.net/natives/?_0xB4AC7D0CF06BFE8F)**
---
---```
---vb.net
---Dim ped_handle As Integer
---                    With Game.Player.Character
---                        Dim pos As Vector3 = .Position + .ForwardVector * 3
---                        ped_handle = Native.Function.Call(Of Integer)(Hash.CREATE_RANDOM_PED, pos.X, pos.Y, pos.Z)
---                    End With
---Creates a Ped at the specified location, returns the Ped Handle.
---Ped will not act until SET_PED_AS_NO_LONGER_NEEDED is called.
---```
---
---@param posX number
---@param posY number
---@param posZ number
---@return Ped
function CreateRandomPed(posX, posY, posZ) end

---**`PED` `client` [`0x9B62392B474F44A0`](https://docs.fivem.net/natives/?_0x9B62392B474F44A0)**
---
---@param vehicle Vehicle
---@param returnHandle boolean
---@return Ped
function CreateRandomPedAsDriver(vehicle, returnHandle) end

---**`PED` `client` [`0x8C18E0F9080ADD73`](https://docs.fivem.net/natives/?_0x8C18E0F9080ADD73)**
---
---```
---p6 always 2 (but it doesnt seem to matter...)
---roll and pitch 0
---yaw to Ped.rotation
---```
---
---@param x number
---@param y number
---@param z number
---@param roll number
---@param pitch number
---@param yaw number
---@param p6 number
---@return number
function CreateSynchronizedScene(x, y, z, roll, pitch, yaw, p6) end

---**`PED` `client` [`0x9614299DCB53E54B`](https://docs.fivem.net/natives/?_0x9614299DCB53E54B)**
---
---```
---Deletes the specified ped, then sets the handle pointed to by the pointer to NULL.
---```
---
---@param ped Ped
function DeletePed(ped) end

---**`PED` `client` [`0x6D38F1F04CBB37EA`](https://docs.fivem.net/natives/?_0x6D38F1F04CBB37EA)**
---
---@param sceneID number
function DetachSynchronizedScene(sceneID) end

---**`PED` `client` [`0xA21C118553BBDF02`](https://docs.fivem.net/natives/?_0xA21C118553BBDF02)**
---
---@param ped Ped
function DisableHeadBlendPaletteColor(ped) end

---**`PED` `client` [`0x600048C60D5C2C51`](https://docs.fivem.net/natives/?_0x600048C60D5C2C51)**
---
---@param ped Ped
function DisablePedHeatscaleOverride(ped) end

---**`PED` `client` [`0x7C6B0C22F9F40BBE`](https://docs.fivem.net/natives/?_0x7C6B0C22F9F40BBE)**
---
---@param groupId number
---@return boolean
function DoesGroupExist(groupId) end

---**`PED` `client` [`0xAFF4710E2A0A6C12`](https://docs.fivem.net/natives/?_0xAFF4710E2A0A6C12)**
---
---@param ped Ped
function DropAmbientProp(ped) end

---**`PED` `client` [`0x2D05CED3A38D0F3A`](https://docs.fivem.net/natives/?_0x2D05CED3A38D0F3A)**
---
---Applies lethal damage (FLT_MAX) to the `SKEL_Head` bone of the specified ped using the weapon passed, leading to the
---ped's untimely demise.
---
---The naming of the native is a legacy leftover (formerly EXPLODE_CHAR_HEAD in GTA3) as in the early 3D GTA games, lethal
---damage to a ped head would 'explode' it.
---
---@param ped Ped The ped to lethally injure.
---@param weaponHash Hash The weapon to attribute the damage to.
function ExplodePedHead(ped, weaponHash) end

---**`PED` `client` [`0x4668D80430D6C299`](https://docs.fivem.net/natives/?_0x4668D80430D6C299)**
---
---@param ped Ped
function FinalizeHeadBlend(ped) end

---**`PED` `client` [`0x2208438012482A1A`](https://docs.fivem.net/natives/?_0x2208438012482A1A)**
---
---@param ped Ped
---@param p1 boolean
---@param p2 boolean
function ForcePedAiAndAnimationUpdate(ped, p1, p2) end

---**`PED` `client` [`0xF28965D04F570DCA`](https://docs.fivem.net/natives/?_0xF28965D04F570DCA)**
---
---```
---Some motionstate hashes are
---0xec17e58 (standing idle), 0xbac0f10b (nothing?), 0x3f67c6af (aiming with pistol 2-h), 0x422d7a25 (stealth), 0xbd8817db, 0x916e828c
---and those for the strings
---"motionstate_idle", "motionstate_walk", "motionstate_run", "motionstate_actionmode_idle", and "motionstate_actionmode_walk".
---Regarding p2, p3 and p4: Most common is 0, 0, 0); followed by 0, 1, 0); and 1, 1, 0); in the scripts. p4 is very rarely something other than 0.
--- [31/03/2017] ins1de :
---        enum MotionState
---        {
---            StopRunning = -530524,
---            StopWalking = -668482597,
---            Idle = 247561816, // 1, 1, 0
---            Idl2 = -1871534317,
---            SkyDive =-1161760501, // 0, 1, 0
---            Stealth = 1110276645,
---            Sprint = -1115154469,
---            Swim = -1855028596,
---            Unknown1 = 1063765679,
---            Unknown2 = -633298724,
---        }
---```
---
---@param ped Ped
---@param motionStateHash Hash
---@param p2 boolean
---@param p3 number
---@param p4 boolean
---@return boolean
function ForcePedMotionState(ped, motionStateHash, p2, p3, p4) end

---**`PED` `client` [`0x16E42E800B472221`](https://docs.fivem.net/natives/?_0x16E42E800B472221)**
---
---@param ped Ped
function ForcePedToOpenParachute(ped) end

---**`PED` `client` [`0xBE22B26DD764C040`](https://docs.fivem.net/natives/?_0xBE22B26DD764C040)**
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---
---@param animDict string
---@param animName string
---@param x number
---@param y number
---@param z number
---@param xRot number
---@param yRot number
---@param zRot number
---@param p8 number
---@param p9 number
---@return vector3
function GetAnimInitialOffsetPosition(animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9) end

---**`PED` `client` [`0x4B805E6046EE9E47`](https://docs.fivem.net/natives/?_0x4B805E6046EE9E47)**
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---
---@param animDict string
---@param animName string
---@param x number
---@param y number
---@param z number
---@param xRot number
---@param yRot number
---@param zRot number
---@param p8 number
---@param p9 number
---@return vector3
function GetAnimInitialOffsetRotation(animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9) end

---**`PED` `client` [`0xC33AB876A77F8164`](https://docs.fivem.net/natives/?_0xC33AB876A77F8164)**
---
---```
---Gets the closest ped in a radius.
---Ped Types:
---Any ped = -1
---Player = 1
---Male = 4
---Female = 5
---Cop = 6
---Human = 26
---SWAT = 27
---Animal = 28
---Army = 29
---------------------
---P4 P5 P7 P8
---1  0  x  x  = return nearest walking Ped
---1  x  0  x  = return nearest walking Ped
---x  1  1  x  = return Ped you are using
---0  0  x  x  = no effect
---0  x  0  x  = no effect
---x = can be 1 or 0. Does not have any obvious changes.
---This function does not return ped who is:
---1. Standing still
---2. Driving
---3. Fleeing
---4. Attacking
---This function only work if the ped is:
---1. walking normally.
---2. waiting to cross a road.
---Note: PED::GET_PED_NEARBY_PEDS works for more peds.
---```
---
---@param x number
---@param y number
---@param z number
---@param radius number
---@param p4 boolean
---@param p5 boolean
---@param outPed Ped
---@param p7 boolean
---@param p8 boolean
---@param pedType number
---@return boolean, Ped
function GetClosestPed(x, y, z, radius, p4, p5, outPed, p7, p8, pedType) end

---**`PED` `client` [`0x52DFF8A10508090A`](https://docs.fivem.net/natives/?_0x52DFF8A10508090A)**
---
---```
---p0: Ped Handle
---p1: int i | 0 <= i <= 27
---p1 probably refers to the attributes configured in combatbehavior.meta. There are 13. Example:
---<BlindFireChance value="0.1"/>
---<WeaponShootRateModifier value="1.0"/>
---<TimeBetweenBurstsInCover value="1.25"/>
---<BurstDurationInCover value="2.0"/>
---<TimeBetweenPeeks value="10.0"/>
---<WeaponAccuracy value="0.18"/>
---<FightProficiency value="0.8"/>
---<StrafeWhenMovingChance value="1.0"/>
---<WalkWhenStrafingChance value="0.0"/>
---<AttackWindowDistanceForCover value="55.0"/>
---<TimeToInvalidateInjuredTarget value="9.0"/>
---<TriggerChargeTime_Near value="4.0"/>
---<TriggerChargeTime_Far value="10.0"/>
----------------Confirmed by editing combatbehavior.meta:
---p1:
---0=BlindFireChance
---1=BurstDurationInCover
---3=TimeBetweenBurstsInCover
---4=TimeBetweenPeeks
---5=StrafeWhenMovingChance
---8=WalkWhenStrafingChance
---11=AttackWindowDistanceForCover
---12=TimeToInvalidateInjuredTarget
---16=OptimalCoverDistance
---```
---
---@param ped Ped
---@param p1 number
---@return number
function GetCombatFloat(ped, p1) end

---**`PED` `client` [`0xCD5003B097200F36`](https://docs.fivem.net/natives/?_0xCD5003B097200F36)**
---
---@param ped Ped
---@param p1 number
---@param p2 number
---@return vector3
function GetDeadPedPickupCoords(ped, p1, p2) end

---**`PED` `client` [`0x8DE69FE35CA09A45`](https://docs.fivem.net/natives/?_0x8DE69FE35CA09A45)**
---
---```
---p1 may be a BOOL representing whether or not the group even exists
---```
---
---@param groupID number
---@param unknown any
---@param sizeInMembers number
function GetGroupSize(groupID, unknown, sizeInMembers) end

---**`PED` `client` [`0x5486A79D9FBD342D`](https://docs.fivem.net/natives/?_0x5486A79D9FBD342D)**
---
---@param ped Ped
---@return Ped
function GetJackTarget(ped) end

---**`PED` `client` [`0x18A3E9EE1297FD39`](https://docs.fivem.net/natives/?_0x18A3E9EE1297FD39)**
---
---@param ped Ped
---@return Ped
function GetMeleeTargetForPed(ped) end

---**`PED` `client` [`0xE7E11B8DCBED1058`](https://docs.fivem.net/natives/?_0xE7E11B8DCBED1058)**
---
---```
---Function just returns 0
---void __fastcall ped__get_mount(NativeContext *a1)
---{
---  NativeContext *v1; // rbx@1
---  v1 = a1;
---  GetAddressOfPedFromScriptHandle(a1->Args->Arg1);
---  v1->Returns->Item1= 0;
---}
---```
---
---@param ped Ped
---@return Ped
function GetMount(ped) end

---**`PED` `client` [`0x27561561732A7842`](https://docs.fivem.net/natives/?_0x27561561732A7842)**
---
---@param ped Ped The ped handle.
---@param componentId number The component id you want to get the drawable variatons of. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
---@return number
function GetNumberOfPedDrawableVariations(ped, componentId) end

---**`PED` `client` [`0x5FAF9754E789FB47`](https://docs.fivem.net/natives/?_0x5FAF9754E789FB47)**
---
---@param ped Ped The ped handle.
---@param propId number The prop id you want to get the drawable variations of. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
---@return number
function GetNumberOfPedPropDrawableVariations(ped, propId) end

---**`PED` `client` [`0xA6E7F1CEB523E171`](https://docs.fivem.net/natives/?_0xA6E7F1CEB523E171)**
---
---```
---Need to check behavior when drawableId = -1
---```
---
---@param ped Ped The ped handle.
---@param propId number The prop id you want to get the texture variations of. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
---@param drawableId number The drawable id of the prop you want to get the texture variations of. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
---@return number
function GetNumberOfPedPropTextureVariations(ped, propId, drawableId) end

---**`PED` `client` [`0x8F7156A3142A6BAD`](https://docs.fivem.net/natives/?_0x8F7156A3142A6BAD)**
---
---@param ped Ped The ped handle.
---@param componentId number The component id you want to get the texture variations of. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@param drawableId number The drawable id of the component you want to get the texture variations of. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
---@return number
function GetNumberOfPedTextureVariations(ped, componentId, drawableId) end

---**`PED` `client` [`0xDB4EACD4AD0A5D6B`](https://docs.fivem.net/natives/?_0xDB4EACD4AD0A5D6B)**
---
---```
---gtaforums.com/topic/885580-ped-headshotmugshot-txd/
---```
---
---@param id number
---@return string
function GetPedheadshotTxdString(id) end

---**`PED` `client` [`0x9B128DC36C1E04CF`](https://docs.fivem.net/natives/?_0x9B128DC36C1E04CF)**
---
---@param ped Ped
---@return Ped
function GetPedsJacker(ped) end

---**`PED` `client` [`0x37F4AD56ECBC0CD6`](https://docs.fivem.net/natives/?_0x37F4AD56ECBC0CD6)**
---
---@param ped Ped
---@return number
function GetPedAccuracy(ped) end

---**`PED` `client` [`0xF6AA118530443FD2`](https://docs.fivem.net/natives/?_0xF6AA118530443FD2)**
---
---```
---Returns the ped's alertness (0-3).
---Values :
---0 : Neutral
---1 : Heard something (gun shot, hit, etc)
---2 : Knows (the origin of the event)
---3 : Fully alerted (is facing the event?)
---If the Ped does not exist, returns -1.
---```
---
---@param ped Ped
---@return number
function GetPedAlertness(ped) end

---**`PED` `client` [`0x9483AF821605B1D8`](https://docs.fivem.net/natives/?_0x9483AF821605B1D8)**
---
---@param ped Ped
---@return number
function GetPedArmour(ped) end

---**`PED` `client` [`0x5CCE68DBD5FE93EC`](https://docs.fivem.net/natives/?_0x5CCE68DBD5FE93EC)**
---
---@param groupID number
---@return Ped
function GetPedAsGroupLeader(groupID) end

---**`PED` `client` [`0x51455483CF23ED97`](https://docs.fivem.net/natives/?_0x51455483CF23ED97)**
---
---```
---from fm_mission_controller.c4 (variable names changed for clarity):
---int groupID = PLAYER::GET_PLAYER_GROUP(PLAYER::PLAYER_ID());
---PED::GET_GROUP_SIZE(group, &unused, &groupSize);
---if (groupSize >= 1) {
---. . . . for (int memberNumber = 0; memberNumber < groupSize; memberNumber++) {
---. . . . . . . . Ped ped1 = PED::GET_PED_AS_GROUP_MEMBER(groupID, memberNumber);
---. . . . . . . . //and so on
---```
---
---@param groupID number
---@param memberNumber number
---@return Ped
function GetPedAsGroupMember(groupID, memberNumber) end

---**`PED` `client` [`0x17C07FC640E86B4E`](https://docs.fivem.net/natives/?_0x17C07FC640E86B4E)**
---
---```
---Gets the position of the specified bone of the specified ped.
---ped: The ped to get the position of a bone from.
---boneId: The ID of the bone to get the position from. This is NOT the index.
---offsetX: The X-component of the offset to add to the position relative to the bone's rotation.
---offsetY: The Y-component of the offset to add to the position relative to the bone's rotation.
---offsetZ: The Z-component of the offset to add to the position relative to the bone's rotation.
---```
---
---@param ped Ped
---@param boneId number
---@param offsetX number
---@param offsetY number
---@param offsetZ number
---@return vector3
function GetPedBoneCoords(ped, boneId, offsetX, offsetY, offsetZ) end

---**`PED` `client` [`0x3F428D08BE5AAE31`](https://docs.fivem.net/natives/?_0x3F428D08BE5AAE31)**
---
---```
---enum ePedBoneId : uint16_t
---{
---    SKEL_ROOT = 0x0,
---    SKEL_Pelvis = 0x2E28,
---    SKEL_L_Thigh = 0xE39F,
---    SKEL_L_Calf = 0xF9BB,
---    SKEL_L_Foot = 0x3779,
---    SKEL_L_Toe0 = 0x83C,
---    EO_L_Foot = 0x84C5,
---    EO_L_Toe = 0x68BD,
---    IK_L_Foot = 0xFEDD,
---    PH_L_Foot = 0xE175,
---    MH_L_Knee = 0xB3FE,
---    SKEL_R_Thigh = 0xCA72,
---    SKEL_R_Calf = 0x9000,
---    SKEL_R_Foot = 0xCC4D,
---    SKEL_R_Toe0 = 0x512D,
---    EO_R_Foot = 0x1096,
---    EO_R_Toe = 0x7163,
---    IK_R_Foot = 0x8AAE,
---    PH_R_Foot = 0x60E6,
---    MH_R_Knee = 0x3FCF,
---    RB_L_ThighRoll = 0x5C57,
---    RB_R_ThighRoll = 0x192A,
---    SKEL_Spine_Root = 0xE0FD,
---    SKEL_Spine0 = 0x5C01,
---    SKEL_Spine1 = 0x60F0,
---    SKEL_Spine2 = 0x60F1,
---    SKEL_Spine3 = 0x60F2,
---    SKEL_L_Clavicle = 0xFCD9,
---    SKEL_L_UpperArm = 0xB1C5,
---    SKEL_L_Forearm = 0xEEEB,
---    SKEL_L_Hand = 0x49D9,
---    SKEL_L_Finger00 = 0x67F2,
---    SKEL_L_Finger01 = 0xFF9,
---    SKEL_L_Finger02 = 0xFFA,
---    SKEL_L_Finger10 = 0x67F3,
---    SKEL_L_Finger11 = 0x1049,
---    SKEL_L_Finger12 = 0x104A,
---    SKEL_L_Finger20 = 0x67F4,
---    SKEL_L_Finger21 = 0x1059,
---    SKEL_L_Finger22 = 0x105A,
---    SKEL_L_Finger30 = 0x67F5,
---    SKEL_L_Finger31 = 0x1029,
---    SKEL_L_Finger32 = 0x102A,
---    SKEL_L_Finger40 = 0x67F6,
---    SKEL_L_Finger41 = 0x1039,
---    SKEL_L_Finger42 = 0x103A,
---    PH_L_Hand = 0xEB95,
---    IK_L_Hand = 0x8CBD,
---    RB_L_ForeArmRoll = 0xEE4F,
---    RB_L_ArmRoll = 0x1470,
---    MH_L_Elbow = 0x58B7,
---    SKEL_R_Clavicle = 0x29D2,
---    SKEL_R_UpperArm = 0x9D4D,
---    SKEL_R_Forearm = 0x6E5C,
---    SKEL_R_Hand = 0xDEAD,
---    SKEL_R_Finger00 = 0xE5F2,
---    SKEL_R_Finger01 = 0xFA10,
---    SKEL_R_Finger02 = 0xFA11,
---    SKEL_R_Finger10 = 0xE5F3,
---    SKEL_R_Finger11 = 0xFA60,
---    SKEL_R_Finger12 = 0xFA61,
---    SKEL_R_Finger20 = 0xE5F4,
---    SKEL_R_Finger21 = 0xFA70,
---    SKEL_R_Finger22 = 0xFA71,
---    SKEL_R_Finger30 = 0xE5F5,
---    SKEL_R_Finger31 = 0xFA40,
---    SKEL_R_Finger32 = 0xFA41,
---    SKEL_R_Finger40 = 0xE5F6,
---    SKEL_R_Finger41 = 0xFA50,
---    SKEL_R_Finger42 = 0xFA51,
---    PH_R_Hand = 0x6F06,
---    IK_R_Hand = 0x188E,
---    RB_R_ForeArmRoll = 0xAB22,
---    RB_R_ArmRoll = 0x90FF,
---    MH_R_Elbow = 0xBB0,
---    SKEL_Neck_1 = 0x9995,
---    SKEL_Head = 0x796E,
---    IK_Head = 0x322C,
---    FACIAL_facialRoot = 0xFE2C,
---    FB_L_Brow_Out_000 = 0xE3DB,
---    FB_L_Lid_Upper_000 = 0xB2B6,
---    FB_L_Eye_000 = 0x62AC,
---    FB_L_CheekBone_000 = 0x542E,
---    FB_L_Lip_Corner_000 = 0x74AC,
---    FB_R_Lid_Upper_000 = 0xAA10,
---    FB_R_Eye_000 = 0x6B52,
---    FB_R_CheekBone_000 = 0x4B88,
---    FB_R_Brow_Out_000 = 0x54C,
---    FB_R_Lip_Corner_000 = 0x2BA6,
---    FB_Brow_Centre_000 = 0x9149,
---    FB_UpperLipRoot_000 = 0x4ED2,
---    FB_UpperLip_000 = 0xF18F,
---    FB_L_Lip_Top_000 = 0x4F37,
---    FB_R_Lip_Top_000 = 0x4537,
---    FB_Jaw_000 = 0xB4A0,
---    FB_LowerLipRoot_000 = 0x4324,
---    FB_LowerLip_000 = 0x508F,
---    FB_L_Lip_Bot_000 = 0xB93B,
---    FB_R_Lip_Bot_000 = 0xC33B,
---    FB_Tongue_000 = 0xB987,
---    RB_Neck_1 = 0x8B93,
---    SPR_L_Breast = 0xFC8E,
---    SPR_R_Breast = 0x885F,
---    IK_Root = 0xDD1C,
---    SKEL_Neck_2 = 0x5FD4,
---    SKEL_Pelvis1 = 0xD003,
---    SKEL_PelvisRoot = 0x45FC,
---    SKEL_SADDLE = 0x9524,
---    MH_L_CalfBack = 0x1013,
---    MH_L_ThighBack = 0x600D,
---    SM_L_Skirt = 0xC419,
---    MH_R_CalfBack = 0xB013,
---    MH_R_ThighBack = 0x51A3,
---    SM_R_Skirt = 0x7712,
---    SM_M_BackSkirtRoll = 0xDBB,
---    SM_L_BackSkirtRoll = 0x40B2,
---    SM_R_BackSkirtRoll = 0xC141,
---    SM_M_FrontSkirtRoll = 0xCDBB,
---    SM_L_FrontSkirtRoll = 0x9B69,
---    SM_R_FrontSkirtRoll = 0x86F1,
---    SM_CockNBalls_ROOT = 0xC67D,
---    SM_CockNBalls = 0x9D34,
---    MH_L_Finger00 = 0x8C63,
---    MH_L_FingerBulge00 = 0x5FB8,
---    MH_L_Finger10 = 0x8C53,
---    MH_L_FingerTop00 = 0xA244,
---    MH_L_HandSide = 0xC78A,
---    MH_Watch = 0x2738,
---    MH_L_Sleeve = 0x933C,
---    MH_R_Finger00 = 0x2C63,
---    MH_R_FingerBulge00 = 0x69B8,
---    MH_R_Finger10 = 0x2C53,
---    MH_R_FingerTop00 = 0xEF4B,
---    MH_R_HandSide = 0x68FB,
---    MH_R_Sleeve = 0x92DC,
---    FACIAL_jaw = 0xB21,
---    FACIAL_underChin = 0x8A95,
---    FACIAL_L_underChin = 0x234E,
---    FACIAL_chin = 0xB578,
---    FACIAL_chinSkinBottom = 0x98BC,
---    FACIAL_L_chinSkinBottom = 0x3E8F,
---    FACIAL_R_chinSkinBottom = 0x9E8F,
---    FACIAL_tongueA = 0x4A7C,
---    FACIAL_tongueB = 0x4A7D,
---    FACIAL_tongueC = 0x4A7E,
---    FACIAL_tongueD = 0x4A7F,
---    FACIAL_tongueE = 0x4A80,
---    FACIAL_L_tongueE = 0x35F2,
---    FACIAL_R_tongueE = 0x2FF2,
---    FACIAL_L_tongueD = 0x35F1,
---    FACIAL_R_tongueD = 0x2FF1,
---    FACIAL_L_tongueC = 0x35F0,
---    FACIAL_R_tongueC = 0x2FF0,
---    FACIAL_L_tongueB = 0x35EF,
---    FACIAL_R_tongueB = 0x2FEF,
---    FACIAL_L_tongueA = 0x35EE,
---    FACIAL_R_tongueA = 0x2FEE,
---    FACIAL_chinSkinTop = 0x7226,
---    FACIAL_L_chinSkinTop = 0x3EB3,
---    FACIAL_chinSkinMid = 0x899A,
---    FACIAL_L_chinSkinMid = 0x4427,
---    FACIAL_L_chinSide = 0x4A5E,
---    FACIAL_R_chinSkinMid = 0xF5AF,
---    FACIAL_R_chinSkinTop = 0xF03B,
---    FACIAL_R_chinSide = 0xAA5E,
---    FACIAL_R_underChin = 0x2BF4,
---    FACIAL_L_lipLowerSDK = 0xB9E1,
---    FACIAL_L_lipLowerAnalog = 0x244A,
---    FACIAL_L_lipLowerThicknessV = 0xC749,
---    FACIAL_L_lipLowerThicknessH = 0xC67B,
---    FACIAL_lipLowerSDK = 0x7285,
---    FACIAL_lipLowerAnalog = 0xD97B,
---    FACIAL_lipLowerThicknessV = 0xC5BB,
---    FACIAL_lipLowerThicknessH = 0xC5ED,
---    FACIAL_R_lipLowerSDK = 0xA034,
---    FACIAL_R_lipLowerAnalog = 0xC2D9,
---    FACIAL_R_lipLowerThicknessV = 0xC6E9,
---    FACIAL_R_lipLowerThicknessH = 0xC6DB,
---    FACIAL_nose = 0x20F1,
---    FACIAL_L_nostril = 0x7322,
---    FACIAL_L_nostrilThickness = 0xC15F,
---    FACIAL_noseLower = 0xE05A,
---    FACIAL_L_noseLowerThickness = 0x79D5,
---    FACIAL_R_noseLowerThickness = 0x7975,
---    FACIAL_noseTip = 0x6A60,
---    FACIAL_R_nostril = 0x7922,
---    FACIAL_R_nostrilThickness = 0x36FF,
---    FACIAL_noseUpper = 0xA04F,
---    FACIAL_L_noseUpper = 0x1FB8,
---    FACIAL_noseBridge = 0x9BA3,
---    FACIAL_L_nasolabialFurrow = 0x5ACA,
---    FACIAL_L_nasolabialBulge = 0xCD78,
---    FACIAL_L_cheekLower = 0x6907,
---    FACIAL_L_cheekLowerBulge1 = 0xE3FB,
---    FACIAL_L_cheekLowerBulge2 = 0xE3FC,
---    FACIAL_L_cheekInner = 0xE7AB,
---    FACIAL_L_cheekOuter = 0x8161,
---    FACIAL_L_eyesackLower = 0x771B,
---    FACIAL_L_eyeball = 0x1744,
---    FACIAL_L_eyelidLower = 0x998C,
---    FACIAL_L_eyelidLowerOuterSDK = 0xFE4C,
---    FACIAL_L_eyelidLowerOuterAnalog = 0xB9AA,
---    FACIAL_L_eyelashLowerOuter = 0xD7F6,
---    FACIAL_L_eyelidLowerInnerSDK = 0xF151,
---    FACIAL_L_eyelidLowerInnerAnalog = 0x8242,
---    FACIAL_L_eyelashLowerInner = 0x4CCF,
---    FACIAL_L_eyelidUpper = 0x97C1,
---    FACIAL_L_eyelidUpperOuterSDK = 0xAF15,
---    FACIAL_L_eyelidUpperOuterAnalog = 0x67FA,
---    FACIAL_L_eyelashUpperOuter = 0x27B7,
---    FACIAL_L_eyelidUpperInnerSDK = 0xD341,
---    FACIAL_L_eyelidUpperInnerAnalog = 0xF092,
---    FACIAL_L_eyelashUpperInner = 0x9B1F,
---    FACIAL_L_eyesackUpperOuterBulge = 0xA559,
---    FACIAL_L_eyesackUpperInnerBulge = 0x2F2A,
---    FACIAL_L_eyesackUpperOuterFurrow = 0xC597,
---    FACIAL_L_eyesackUpperInnerFurrow = 0x52A7,
---    FACIAL_forehead = 0x9218,
---    FACIAL_L_foreheadInner = 0x843,
---    FACIAL_L_foreheadInnerBulge = 0x767C,
---    FACIAL_L_foreheadOuter = 0x8DCB,
---    FACIAL_skull = 0x4221,
---    FACIAL_foreheadUpper = 0xF7D6,
---    FACIAL_L_foreheadUpperInner = 0xCF13,
---    FACIAL_L_foreheadUpperOuter = 0x509B,
---    FACIAL_R_foreheadUpperInner = 0xCEF3,
---    FACIAL_R_foreheadUpperOuter = 0x507B,
---    FACIAL_L_temple = 0xAF79,
---    FACIAL_L_ear = 0x19DD,
---    FACIAL_L_earLower = 0x6031,
---    FACIAL_L_masseter = 0x2810,
---    FACIAL_L_jawRecess = 0x9C7A,
---    FACIAL_L_cheekOuterSkin = 0x14A5,
---    FACIAL_R_cheekLower = 0xF367,
---    FACIAL_R_cheekLowerBulge1 = 0x599B,
---    FACIAL_R_cheekLowerBulge2 = 0x599C,
---    FACIAL_R_masseter = 0x810,
---    FACIAL_R_jawRecess = 0x93D4,
---    FACIAL_R_ear = 0x1137,
---    FACIAL_R_earLower = 0x8031,
---    FACIAL_R_eyesackLower = 0x777B,
---    FACIAL_R_nasolabialBulge = 0xD61E,
---    FACIAL_R_cheekOuter = 0xD32,
---    FACIAL_R_cheekInner = 0x737C,
---    FACIAL_R_noseUpper = 0x1CD6,
---    FACIAL_R_foreheadInner = 0xE43,
---    FACIAL_R_foreheadInnerBulge = 0x769C,
---    FACIAL_R_foreheadOuter = 0x8FCB,
---    FACIAL_R_cheekOuterSkin = 0xB334,
---    FACIAL_R_eyesackUpperInnerFurrow = 0x9FAE,
---    FACIAL_R_eyesackUpperOuterFurrow = 0x140F,
---    FACIAL_R_eyesackUpperInnerBulge = 0xA359,
---    FACIAL_R_eyesackUpperOuterBulge = 0x1AF9,
---    FACIAL_R_nasolabialFurrow = 0x2CAA,
---    FACIAL_R_temple = 0xAF19,
---    FACIAL_R_eyeball = 0x1944,
---    FACIAL_R_eyelidUpper = 0x7E14,
---    FACIAL_R_eyelidUpperOuterSDK = 0xB115,
---    FACIAL_R_eyelidUpperOuterAnalog = 0xF25A,
---    FACIAL_R_eyelashUpperOuter = 0xE0A,
---    FACIAL_R_eyelidUpperInnerSDK = 0xD541,
---    FACIAL_R_eyelidUpperInnerAnalog = 0x7C63,
---    FACIAL_R_eyelashUpperInner = 0x8172,
---    FACIAL_R_eyelidLower = 0x7FDF,
---    FACIAL_R_eyelidLowerOuterSDK = 0x1BD,
---    FACIAL_R_eyelidLowerOuterAnalog = 0x457B,
---    FACIAL_R_eyelashLowerOuter = 0xBE49,
---    FACIAL_R_eyelidLowerInnerSDK = 0xF351,
---    FACIAL_R_eyelidLowerInnerAnalog = 0xE13,
---    FACIAL_R_eyelashLowerInner = 0x3322,
---    FACIAL_L_lipUpperSDK = 0x8F30,
---    FACIAL_L_lipUpperAnalog = 0xB1CF,
---    FACIAL_L_lipUpperThicknessH = 0x37CE,
---    FACIAL_L_lipUpperThicknessV = 0x38BC,
---    FACIAL_lipUpperSDK = 0x1774,
---    FACIAL_lipUpperAnalog = 0xE064,
---    FACIAL_lipUpperThicknessH = 0x7993,
---    FACIAL_lipUpperThicknessV = 0x7981,
---    FACIAL_L_lipCornerSDK = 0xB1C,
---    FACIAL_L_lipCornerAnalog = 0xE568,
---    FACIAL_L_lipCornerThicknessUpper = 0x7BC,
---    FACIAL_L_lipCornerThicknessLower = 0xDD42,
---    FACIAL_R_lipUpperSDK = 0x7583,
---    FACIAL_R_lipUpperAnalog = 0x51CF,
---    FACIAL_R_lipUpperThicknessH = 0x382E,
---    FACIAL_R_lipUpperThicknessV = 0x385C,
---    FACIAL_R_lipCornerSDK = 0xB3C,
---    FACIAL_R_lipCornerAnalog = 0xEE0E,
---    FACIAL_R_lipCornerThicknessUpper = 0x54C3,
---    FACIAL_R_lipCornerThicknessLower = 0x2BBA,
---    MH_MulletRoot = 0x3E73,
---    MH_MulletScaler = 0xA1C2,
---    MH_Hair_Scale = 0xC664,
---    MH_Hair_Crown = 0x1675,
---    SM_Torch = 0x8D6,
---    FX_Light = 0x8959,
---    FX_Light_Scale = 0x5038,
---    FX_Light_Switch = 0xE18E,
---    BagRoot = 0xAD09,
---    BagPivotROOT = 0xB836,
---    BagPivot = 0x4D11,
---    BagBody = 0xAB6D,
---    BagBone_R = 0x937,
---    BagBone_L = 0x991,
---    SM_LifeSaver_Front = 0x9420,
---    SM_R_Pouches_ROOT = 0x2962,
---    SM_R_Pouches = 0x4141,
---    SM_L_Pouches_ROOT = 0x2A02,
---    SM_L_Pouches = 0x4B41,
---    SM_Suit_Back_Flapper = 0xDA2D,
---    SPR_CopRadio = 0x8245,
---    SM_LifeSaver_Back = 0x2127,
---    MH_BlushSlider = 0xA0CE,
---    SKEL_Tail_01 = 0x347,
---    SKEL_Tail_02 = 0x348,
---    MH_L_Concertina_B = 0xC988,
---    MH_L_Concertina_A = 0xC987,
---    MH_R_Concertina_B = 0xC8E8,
---    MH_R_Concertina_A = 0xC8E7,
---    MH_L_ShoulderBladeRoot = 0x8711,
---    MH_L_ShoulderBlade = 0x4EAF,
---    MH_R_ShoulderBladeRoot = 0x3A0A,
---    MH_R_ShoulderBlade = 0x54AF,
---    FB_R_Ear_000 = 0x6CDF,
---    SPR_R_Ear = 0x63B6,
---    FB_L_Ear_000 = 0x6439,
---    SPR_L_Ear = 0x5B10,
---    FB_TongueA_000 = 0x4206,
---    FB_TongueB_000 = 0x4207,
---    FB_TongueC_000 = 0x4208,
---    SKEL_L_Toe1 = 0x1D6B,
---    SKEL_R_Toe1 = 0xB23F,
---    SKEL_Tail_03 = 0x349,
---    SKEL_Tail_04 = 0x34A,
---    SKEL_Tail_05 = 0x34B,
---    SPR_Gonads_ROOT = 0xBFDE,
---    SPR_Gonads = 0x1C00,
---    FB_L_Brow_Out_001 = 0xE3DB,
---    FB_L_Lid_Upper_001 = 0xB2B6,
---    FB_L_Eye_001 = 0x62AC,
---    FB_L_CheekBone_001 = 0x542E,
---    FB_L_Lip_Corner_001 = 0x74AC,
---    FB_R_Lid_Upper_001 = 0xAA10,
---    FB_R_Eye_001 = 0x6B52,
---    FB_R_CheekBone_001 = 0x4B88,
---    FB_R_Brow_Out_001 = 0x54C,
---    FB_R_Lip_Corner_001 = 0x2BA6,
---    FB_Brow_Centre_001 = 0x9149,
---    FB_UpperLipRoot_001 = 0x4ED2,
---    FB_UpperLip_001 = 0xF18F,
---    FB_L_Lip_Top_001 = 0x4F37,
---    FB_R_Lip_Top_001 = 0x4537,
---    FB_Jaw_001 = 0xB4A0,
---    FB_LowerLipRoot_001 = 0x4324,
---    FB_LowerLip_001 = 0x508F,
---    FB_L_Lip_Bot_001 = 0xB93B,
---    FB_R_Lip_Bot_001 = 0xC33B,
---    FB_Tongue_001 = 0xB987
---};
---```
---
---@param ped Ped
---@param boneId number
---@return number
function GetPedBoneIndex(ped, boneId) end

---**`PED` `client` [`0x16FFE42AB2D2DC59`](https://docs.fivem.net/natives/?_0x16FFE42AB2D2DC59)**
---
---```
---Returns the hash of the weapon/model/object that killed the ped.
---```
---
---@param ped Ped
---@return Hash
function GetPedCauseOfDeath(ped) end

---**`PED` `client` [`0xDEA92412FCAEB3F5`](https://docs.fivem.net/natives/?_0xDEA92412FCAEB3F5)**
---
---@param ped Ped
---@return number
function GetPedCombatMovement(ped) end

---**`PED` `client` [`0xF9D9F7F2DB8E2FA0`](https://docs.fivem.net/natives/?_0xF9D9F7F2DB8E2FA0)**
---
---@param ped Ped
---@return number
function GetPedCombatRange(ped) end

---**`PED` `client` [`0x7EE53118C892B513`](https://docs.fivem.net/natives/?_0x7EE53118C892B513)**
---
---See [`SET_PED_CONFIG_FLAG`](#\_0x1913FE4CBF41C463).
---
---@param ped Ped
---@param flagId number
---@param p2 boolean
---@return boolean
function GetPedConfigFlag(ped, flagId, p2) end

---**`PED` `client` [`0x71EAB450D86954A1`](https://docs.fivem.net/natives/?_0x71EAB450D86954A1)**
---
---@param ped Ped
---@return number
function GetPedDecorationsState(ped) end

---**`PED` `client` [`0x9FD452BFBE7A7A8B`](https://docs.fivem.net/natives/?_0x9FD452BFBE7A7A8B)**
---
---```
---Returns the zoneID for the overlay if it is a member of collection.
---enum ePedDecorationZone
---{
---	ZONE_TORSO = 0,
---	ZONE_HEAD = 1,
---	ZONE_LEFT_ARM = 2,
---	ZONE_RIGHT_ARM = 3,
---	ZONE_LEFT_LEG = 4,
---	ZONE_RIGHT_LEG = 5,
---	ZONE_UNKNOWN = 6,
---	ZONE_NONE = 7
---};
---```
---
---@param collection Hash
---@param overlay Hash
---@return number
function GetPedDecorationZoneFromHashes(collection, overlay) end

---**`PED` `client` [`0x3C06B8786DD94CD1`](https://docs.fivem.net/natives/?_0x3C06B8786DD94CD1)**
---
---@param ped Ped
---@param p1 boolean
---@return vector3
function GetPedDefensiveAreaPosition(ped, p1) end

---**`PED` `client` [`0x67F3780DD425D4FC`](https://docs.fivem.net/natives/?_0x67F3780DD425D4FC)**
---
---```
---Ids
---0 - Head
---1 - Beard
---2 - Hair
---3 - Torso
---4 - Legs
---5 - Hands
---6 - Foot
---7 - Scarfs/Neck Accessories
---8 - Accessories 1
---9 - Accessories 2
---10- Decals
---11 - Auxiliary parts for torso
---```
---
---@param ped Ped
---@param componentId number
---@return number
function GetPedDrawableVariation(ped, componentId) end

---**`PED` `client` [`0x9C14D30395A51A3C`](https://docs.fivem.net/natives/?_0x9C14D30395A51A3C)**
---
---@param ped Ped
---@return number
function GetPedEnveffScale(ped) end

---**`PED` `client` [`0xE0AF41401ADF87E3`](https://docs.fivem.net/natives/?_0xE0AF41401ADF87E3)**
---
---```
---Gets the offset the specified ped has moved since the previous tick.
---If worldSpace is false, the returned offset is relative to the ped. That is, if the ped has moved 1 meter right and 5 meters forward, it'll return 1,5,0.
---If worldSpace is true, the returned offset is relative to the world. That is, if the ped has moved 1 meter on the X axis and 5 meters on the Y axis, it'll return 1,5,0.
---```
---
---@param ped Ped
---@param worldSpace boolean
---@return vector3
function GetPedExtractedDisplacement(ped, worldSpace) end

---**`PED` `client` [`0xF162E133B4E7A675`](https://docs.fivem.net/natives/?_0xF162E133B4E7A675)**
---
---```
---Returns the group id of which the specified ped is a member of.
---```
---
---@param ped Ped
---@return number
function GetPedGroupIndex(ped) end

---**`PED` `client` [`0x2746BD9D88C5C5D0`](https://docs.fivem.net/natives/?_0x2746BD9D88C5C5D0)**
---
---```
---The pointer is to a padded struct that matches the arguments to SET_PED_HEAD_BLEND_DATA(...). There are 4 bytes of padding after each field.
---pass this struct in the second parameter
---typedef struct
---{
---        int shapeFirst, shapeSecond, shapeThird;
---        int skinFirst, skinSecond, skinThird;
---	float shapeMix, skinMix, thirdMix;
---} headBlendData;
---```
---
---@param ped Ped
---@param headBlendData any
---@return boolean, any
function GetPedHeadBlendData(ped, headBlendData) end

---**`PED` `client` [`0x68D353AB88B97E0C`](https://docs.fivem.net/natives/?_0x68D353AB88B97E0C)**
---
---```
---Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.
---Used when calling SET_PED_HEAD_BLEND_DATA.
---```
---
---@param type number
---@return number
function GetPedHeadBlendFirstIndex(type) end

---**`PED` `client` [`0x5EF37013A6539C9D`](https://docs.fivem.net/natives/?_0x5EF37013A6539C9D)**
---
---```
---Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.
---```
---
---@param type number
---@return number
function GetPedHeadBlendNumHeads(type) end

---**`PED` `client` [`0xCF1CE768BB43480E`](https://docs.fivem.net/natives/?_0xCF1CE768BB43480E)**
---
---```
---Used with freemode (online) characters.
---```
---
---@param overlayID number
---@return number
function GetPedHeadOverlayNum(overlayID) end

---**`PED` `client` [`0x451294E859ECC018`](https://docs.fivem.net/natives/?_0x451294E859ECC018)**
---
---@param ped Ped
---@return number
function GetPedHelmetStoredHatPropIndex(ped) end

---**`PED` `client` [`0x9D728C1E12BF5518`](https://docs.fivem.net/natives/?_0x9D728C1E12BF5518)**
---
---@param ped Ped
---@return number
function GetPedHelmetStoredHatTexIndex(ped) end

---**`PED` `client` [`0xD75960F6BD9EA49C`](https://docs.fivem.net/natives/?_0xD75960F6BD9EA49C)**
---
---@param ped Ped
---@param outBone number
---@return boolean, number
function GetPedLastDamageBone(ped, outBone) end

---**`PED` `client` [`0x4700A416E8324EF3`](https://docs.fivem.net/natives/?_0x4700A416E8324EF3)**
---
---@param ped Ped
---@return number
function GetPedMaxHealth(ped) end

---**`PED` `client` [`0x3F69145BBA87BAE7`](https://docs.fivem.net/natives/?_0x3F69145BBA87BAE7)**
---
---@param ped Ped
---@return number
function GetPedMoney(ped) end

---**`PED` `client` [`0x23F8F5FC7E8C4A6B`](https://docs.fivem.net/natives/?_0x23F8F5FC7E8C4A6B)**
---
---Console/PC structure definitions and example: pastebin.com/SsFej963
---
---For FiveM/Cfx.Re use-cases refer to: [`GET_GAME_POOL`](#\_0x2B9D4F50).
---
---@param ped Ped
---@param sizeAndPeds number
---@param ignore number Ped type to ignore
---@return number, number
function GetPedNearbyPeds(ped, sizeAndPeds, ignore) end

---**`PED` `client` [`0xCFF869CBFA210D82`](https://docs.fivem.net/natives/?_0xCFF869CBFA210D82)**
---
---```
---Returns size of array, passed into the second variable.
---See below for usage information.
---This function actually requires a struct, where the first value is the maximum number of elements to return.  Here is a sample of how I was able to get it to work correctly, without yet knowing the struct format.
---//Setup the array
---	const int numElements = 10;
---	const int arrSize = numElements * 2 + 2;
---	Any veh[arrSize];
---	//0 index is the size of the array
---	veh[0] = numElements;
---	int count = PED::GET_PED_NEARBY_VEHICLES(PLAYER::PLAYER_PED_ID(), veh);
---	if (veh != NULL)
---	{
---//Simple loop to go through results
---for (int i = 0; i < count; i++)
---{
---	int offsettedID = i * 2 + 2;
---	//Make sure it exists
---	if (veh[offsettedID] != NULL && ENTITY::DOES_ENTITY_EXIST(veh[offsettedID]))
---	{
---//Do something
---	}
---}
---	}
---Here's the right way to do it (console and pc):
---pastebin.com/SsFej963
---```
---
---@param ped Ped
---@param sizeAndVehs number
---@return number, number
function GetPedNearbyVehicles(ped, sizeAndVehs) end

---**`PED` `client` [`0xE3DD5F2A84B42281`](https://docs.fivem.net/natives/?_0xE3DD5F2A84B42281)**
---
---@param ped Ped The ped handle.
---@param componentId number The component id to get the palette variation from. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@return number
function GetPedPaletteVariation(ped, componentId) end

---**`PED` `client` [`0x8B9F1FC6AE8166C0`](https://docs.fivem.net/natives/?_0x8B9F1FC6AE8166C0)**
---
---```
----1: no landing
---0: landing on both feet
---1: stumbling
---2: rolling
---3: ragdoll
---```
---
---@param ped Ped
---@return number
function GetPedParachuteLandingType(ped) end

---**`PED` `client` [`0x79CFD9827CC979B6`](https://docs.fivem.net/natives/?_0x79CFD9827CC979B6)**
---
---```
---Returns:
----1: Normal
---0: Wearing parachute on back
---1: Parachute opening
---2: Parachute open
---3: Falling to doom (e.g. after exiting parachute)
---Normal means no parachute?
---```
---
---@param ped Ped
---@return number
function GetPedParachuteState(ped) end

---**`PED` `client` [`0xEAF5F7E5AE7C6C9D`](https://docs.fivem.net/natives/?_0xEAF5F7E5AE7C6C9D)**
---
---@param ped Ped
---@param outTintIndex number
function GetPedParachuteTintIndex(ped, outTintIndex) end

---**`PED` `client` [`0x898CC20EA75BACD8`](https://docs.fivem.net/natives/?_0x898CC20EA75BACD8)**
---
---@param ped Ped The ped handle.
---@param componentId number The component id to get the prop index from. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@return number
function GetPedPropIndex(ped, componentId) end

---**`PED` `client` [`0xE131A28626F81AB2`](https://docs.fivem.net/natives/?_0xE131A28626F81AB2)**
---
---@param ped Ped The ped handle.
---@param componentId number The component id to get the prop texture index from. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@return number
function GetPedPropTextureIndex(ped, componentId) end

---**`PED` `client` [`0x2057EF813397A772`](https://docs.fivem.net/natives/?_0x2057EF813397A772)**
---
---@param ped Ped
---@param bone number
---@return number
function GetPedRagdollBoneIndex(ped, bone) end

---**`PED` `client` [`0x42FDD0F017B1E38E`](https://docs.fivem.net/natives/?_0x42FDD0F017B1E38E)**
---
---@param ped Ped
---@return Hash
function GetPedRelationshipGroupDefaultHash(ped) end

---**`PED` `client` [`0x7DBDD04862D95F04`](https://docs.fivem.net/natives/?_0x7DBDD04862D95F04)**
---
---@param ped Ped
---@return Hash
function GetPedRelationshipGroupHash(ped) end

---**`PED` `client` [`0xAF9E59B1B1FBF2A0`](https://docs.fivem.net/natives/?_0xAF9E59B1B1FBF2A0)**
---
---@param ped Ped
---@param flagId number
---@return boolean
function GetPedResetFlag(ped, flagId) end

---**`PED` `client` [`0x93C8B64DEB84728C`](https://docs.fivem.net/natives/?_0x93C8B64DEB84728C)**
---
---```
---Returns the Entity (Ped, Vehicle, or ?Object?) that killed the 'ped'
---Is best to check if the Ped is dead before asking for its killer.
---```
---
---@param ped Ped
---@return Entity
function GetPedSourceOfDeath(ped) end

---**`PED` `client` [`0x7C2AC9CA66575FBF`](https://docs.fivem.net/natives/?_0x7C2AC9CA66575FBF)**
---
---```
---Returns whether the entity is in stealth mode
---```
---
---@param ped Ped
---@return boolean
function GetPedStealthMovement(ped) end

---**`PED` `client` [`0x04A355E041E004E6`](https://docs.fivem.net/natives/?_0x04A355E041E004E6)**
---
---@param ped Ped The ped handle.
---@param componentId number The component id to get the texture variation from. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@return number
function GetPedTextureVariation(ped, componentId) end

---**`PED` `client` [`0x1E98817B311AE98A`](https://docs.fivem.net/natives/?_0x1E98817B311AE98A)**
---
---@param ped Ped
---@return number
function GetPedTimeOfDeath(ped) end

---**`PED` `client` [`0xFF059E1E4C01E63C`](https://docs.fivem.net/natives/?_0xFF059E1E4C01E63C)**
---
---Ped types:
---
---```cpp
---enum ePedType
---{
---	PED_TYPE_PLAYER_0,
---	PED_TYPE_PLAYER_1,
---	PED_TYPE_NETWORK_PLAYER,
---	PED_TYPE_PLAYER_2,
---	PED_TYPE_CIVMALE,
---	PED_TYPE_CIVFEMALE,
---	PED_TYPE_COP,
---	PED_TYPE_GANG_ALBANIAN,
---	PED_TYPE_GANG_BIKER_1,
---	PED_TYPE_GANG_BIKER_2,
---	PED_TYPE_GANG_ITALIAN,
---	PED_TYPE_GANG_RUSSIAN,
---	PED_TYPE_GANG_RUSSIAN_2,
---	PED_TYPE_GANG_IRISH,
---	PED_TYPE_GANG_JAMAICAN,
---	PED_TYPE_GANG_AFRICAN_AMERICAN,
---	PED_TYPE_GANG_KOREAN,
---	PED_TYPE_GANG_CHINESE_JAPANESE,
---	PED_TYPE_GANG_PUERTO_RICAN,
---	PED_TYPE_DEALER,
---	PED_TYPE_MEDIC,
---	PED_TYPE_FIREMAN,
---	PED_TYPE_CRIMINAL,
---	PED_TYPE_BUM,
---	PED_TYPE_PROSTITUTE,
---	PED_TYPE_SPECIAL,
---	PED_TYPE_MISSION,
---	PED_TYPE_SWAT,
---	PED_TYPE_ANIMAL,
---	PED_TYPE_ARMY
---};
---```
---
---@param ped Ped
---@return number
function GetPedType(ped) end

---**`PED` `client` [`0x6A3975DEA89F9A17`](https://docs.fivem.net/natives/?_0x6A3975DEA89F9A17)**
---
---@param ped Ped
---@return Player
function GetPlayerPedIsFollowing(ped) end

---**`PED` `client` [`0x876046A8E3A4B71C`](https://docs.fivem.net/natives/?_0x876046A8E3A4B71C)**
---
---```
---Gets a random ped in the x/y/zRadius near the x/y/z coordinates passed.
---Ped Types:
---Any = -1
---Player = 1
---Male = 4
---Female = 5
---Cop = 6
---Human = 26
---SWAT = 27
---Animal = 28
---Army = 29
---```
---
---@param x number
---@param y number
---@param z number
---@param xRadius number
---@param yRadius number
---@param zRadius number
---@param pedType number
---@return Ped
function GetRandomPedAtCoord(x, y, z, xRadius, yRadius, zRadius, pedType) end

---**`PED` `client` [`0x9E6B70061662AE5C`](https://docs.fivem.net/natives/?_0x9E6B70061662AE5C)**
---
---```
---Gets the relationship between two groups. This should be called twice (once for each group).
---Relationship types:
---0 = Companion
---1 = Respect
---2 = Like
---3 = Neutral
---4 = Dislike
---5 = Hate
---255 = Pedestrians
---Example:
---PED::GET_RELATIONSHIP_BETWEEN_GROUPS(l_1017, 0xA49E591C);
---PED::GET_RELATIONSHIP_BETWEEN_GROUPS(0xA49E591C, l_1017);
---```
---
---@param group1 Hash
---@param group2 Hash
---@return number
function GetRelationshipBetweenGroups(group1, group2) end

---**`PED` `client` [`0xEBA5AD3A0EAF7121`](https://docs.fivem.net/natives/?_0xEBA5AD3A0EAF7121)**
---
---```
---Gets the relationship between two peds. This should be called twice (once for each ped).
---Relationship types:
---0 = Companion
---1 = Respect
---2 = Like
---3 = Neutral
---4 = Dislike
---5 = Hate
---255 = Pedestrians
---(Credits: Inco)
---Example:
---PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, l_1017, 0xA49E591C);
---PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, 0xA49E591C, l_1017);
---```
---
---@param ped1 Ped
---@param ped2 Ped
---@return number
function GetRelationshipBetweenPeds(ped1, ped2) end

---**`PED` `client` [`0x6F4C85ACD641BCD2`](https://docs.fivem.net/natives/?_0x6F4C85ACD641BCD2)**
---
---@param ped Ped
---@return number
function GetSeatPedIsTryingToEnter(ped) end

---**`PED` `client` [`0xE4A310B1D7FA73CC`](https://docs.fivem.net/natives/?_0xE4A310B1D7FA73CC)**
---
---@param sceneID number
---@return number
function GetSynchronizedScenePhase(sceneID) end

---**`PED` `client` [`0xD80932D577274D40`](https://docs.fivem.net/natives/?_0xD80932D577274D40)**
---
---@param sceneID number
---@return number
function GetSynchronizedSceneRate(sceneID) end

---**`PED` `client` [`0xF92691AED837A5FC`](https://docs.fivem.net/natives/?_0xF92691AED837A5FC)**
---
---@param ped Ped
---@return Vehicle
function GetVehiclePedIsEntering(ped) end

---**`PED` `client` [`0x9A9112A0FE9A4713`](https://docs.fivem.net/natives/?_0x9A9112A0FE9A4713)**
---
---Gets the vehicle the specified Ped is in. Returns 0 if the ped is/was not in a vehicle.
---If the Ped is not in a vehicle and includeLastVehicle is true, the vehicle they were last in is returned.
---
---@param ped Ped The target ped
---@param lastVehicle boolean False = CurrentVehicle, True = LastVehicle
---@return Vehicle # The vehicle id. Returns 0 if the ped is/was not in a vehicle.
function GetVehiclePedIsIn(ped, lastVehicle) end

---**`PED` `client` [`0x814FA8BE5449445D`](https://docs.fivem.net/natives/?_0x814FA8BE5449445D)**
---
---@param ped Ped
---@return Vehicle
function GetVehiclePedIsTryingToEnter(ped) end

---**`PED` `client` [`0x6094AD011A2EA87D`](https://docs.fivem.net/natives/?_0x6094AD011A2EA87D)**
---
---```
---Gets ID of vehicle player using. It means it can get ID at any interaction with vehicle. Enter\exit for example. And that means it is faster than GET_VEHICLE_PED_IS_IN but less safe.
---```
---
---@param ped Ped
---@return Vehicle
function GetVehiclePedIsUsing(ped) end

---**`PED` `client` [`0x54C7C4A94367717E`](https://docs.fivem.net/natives/?_0x54C7C4A94367717E)**
---
---```
---PoliceMotorcycleHelmet   1024
---RegularMotorcycleHelmet   4096
---FiremanHelmet 16384
---PilotHeadset  32768
---PilotHelmet   65536
-----
---p2 is generally 4096 or 16384 in the scripts. p1 varies between 1 and 0.
---```
---
---@param ped Ped
---@param cannotRemove boolean
---@param helmetFlag number
---@param textureIndex number
function GivePedHelmet(ped, cannotRemove, helmetFlag, textureIndex) end

---**`PED` `client` [`0xB158DFCCC56E5C5B`](https://docs.fivem.net/natives/?_0xB158DFCCC56E5C5B)**
---
---```
---Sends the message that was created by a call to CREATE_NM_MESSAGE to the specified Ped.
---If a message hasn't been created already, this function does nothing.
---If the Ped is not ragdolled with Euphoria enabled, this function does nothing.
---The following call can be used to ragdoll the Ped with Euphoria enabled: SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);
---Call order:
---SET_PED_TO_RAGDOLL
---CREATE_NM_MESSAGE
---GIVE_PED_NM_MESSAGE
---Multiple messages can be chained. Eg. to make the ped stagger and swing his arms around, the following calls can be made:
---SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);
---CREATE_NM_MESSAGE(true, 0); // stopAllBehaviours - Stop all other behaviours, in case the Ped is already doing some Euphoria stuff.
---GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.
---CREATE_NM_MESSAGE(true, 1151); // staggerFall - Attempt to walk while falling.
---GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.
---CREATE_NM_MESSAGE(true, 372); // armsWindmill - Swing arms around.
---GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.
---```
---
---@param ped Ped
function GivePedNmMessage(ped) end

---**`PED` `client` [`0xE4B5F4BF2CB24E65`](https://docs.fivem.net/natives/?_0xE4B5F4BF2CB24E65)**
---
---@param asset string
---@return boolean
function HasActionModeAssetLoaded(asset) end

---**`PED` `client` [`0x876928DDDFCCC9CD`](https://docs.fivem.net/natives/?_0x876928DDDFCCC9CD)**
---
---@return boolean
function HasPedheadshotImgUploadFailed() end

---**`PED` `client` [`0xE8A169E666CBC541`](https://docs.fivem.net/natives/?_0xE8A169E666CBC541)**
---
---@return boolean
function HasPedheadshotImgUploadSucceeded() end

---**`PED` `client` [`0x654CD0A825161131`](https://docs.fivem.net/natives/?_0x654CD0A825161131)**
---
---@param ped Ped
---@return boolean
function HasPedHeadBlendFinished(ped) end

---**`PED` `client` [`0x784002A632822099`](https://docs.fivem.net/natives/?_0x784002A632822099)**
---
---@param ped Ped
---@return boolean
function HasPedPreloadPropDataFinished(ped) end

---**`PED` `client` [`0x66680A92700F43DF`](https://docs.fivem.net/natives/?_0x66680A92700F43DF)**
---
---@param ped Ped
---@return boolean
function HasPedPreloadVariationDataFinished(ped) end

---**`PED` `client` [`0x8507BCB710FA6DC0`](https://docs.fivem.net/natives/?_0x8507BCB710FA6DC0)**
---
---@param ped Ped
---@param eventId number
---@return boolean
function HasPedReceivedEvent(ped, eventId) end

---**`PED` `client` [`0xE977FC5B08AF3441`](https://docs.fivem.net/natives/?_0xE977FC5B08AF3441)**
---
---@param asset string
---@return boolean
function HasStealthModeAssetLoaded(asset) end

---**`PED` `client` [`0x7350823473013C02`](https://docs.fivem.net/natives/?_0x7350823473013C02)**
---
---@param ped Ped
---@return boolean
function HaveAllStreamingRequestsCompleted(ped) end

---**`PED` `client` [`0x62AB793144DE75DC`](https://docs.fivem.net/natives/?_0x62AB793144DE75DC)**
---
---@param ped Ped
---@param p1 any
---@param p2 boolean
function HidePedBloodDamageByZone(ped, p1, p2) end

---**`PED` `client` [`0x4759CC730F947C81`](https://docs.fivem.net/natives/?_0x4759CC730F947C81)**
---
function InstantlyFillPedPopulation() end

---**`PED` `client` [`0x68772DB2B2526F9F`](https://docs.fivem.net/natives/?_0x68772DB2B2526F9F)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param radius number
---@return boolean
function IsAnyHostilePedNearPoint(ped, x, y, z, radius) end

---**`PED` `client` [`0x083961498679DC9F`](https://docs.fivem.net/natives/?_0x083961498679DC9F)**
---
---@param x number
---@param y number
---@param z number
---@param radius number
---@return boolean
function IsAnyPedNearPoint(x, y, z, radius) end

---**`PED` `client` [`0xA0D3D71EA1086C55`](https://docs.fivem.net/natives/?_0xA0D3D71EA1086C55)**
---
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param p6 boolean
---@param p7 boolean
---@return boolean
function IsAnyPedShootingInArea(x1, y1, z1, x2, y2, z2, p6, p7) end

---**`PED` `client` [`0xE0A0AEC214B1FABA`](https://docs.fivem.net/natives/?_0xE0A0AEC214B1FABA)**
---
---@param ped Ped
---@return boolean
function IsConversationPedDead(ped) end

---**`PED` `client` [`0x16EC4839969F9F5E`](https://docs.fivem.net/natives/?_0x16EC4839969F9F5E)**
---
---```
---xyz - relative to the world origin.
---```
---
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return boolean
function IsCopPedInArea_3d(x1, y1, z1, x2, y2, z2) end

---**`PED` `client` [`0xEBB376779A760AA8`](https://docs.fivem.net/natives/?_0xEBB376779A760AA8)**
---
---@return boolean
function IsPedheadshotImgUploadAvailable() end

---**`PED` `client` [`0x7085228842B13A67`](https://docs.fivem.net/natives/?_0x7085228842B13A67)**
---
---```
---gtaforums.com/topic/885580-ped-headshotmugshot-txd/
---```
---
---@param id number
---@return boolean
function IsPedheadshotReady(id) end

---**`PED` `client` [`0xA0A9668F158129A2`](https://docs.fivem.net/natives/?_0xA0A9668F158129A2)**
---
---```
---gtaforums.com/topic/885580-ped-headshotmugshot-txd/
---```
---
---@param id number
---@return boolean
function IsPedheadshotValid(id) end

---**`PED` `client` [`0x3998B1276A3300E5`](https://docs.fivem.net/natives/?_0x3998B1276A3300E5)**
---
---@param ped Ped
---@return boolean
function IsPedAimingFromCover(ped) end

---**`PED` `client` [`0x12534C348C6CB68B`](https://docs.fivem.net/natives/?_0x12534C348C6CB68B)**
---
---```
---Returns true if the given ped has a valid pointer to CPlayerInfo in its CPed class. That's all.
---```
---
---@param ped Ped
---@return boolean
function IsPedAPlayer(ped) end

---**`PED` `client` [`0x9A497FE2DF198913`](https://docs.fivem.net/natives/?_0x9A497FE2DF198913)**
---
---@param ped Ped
---@return boolean
function IsPedBeingJacked(ped) end

---**`PED` `client` [`0x863B23EFDE9C5DF2`](https://docs.fivem.net/natives/?_0x863B23EFDE9C5DF2)**
---
---@param ped Ped
---@return boolean
function IsPedBeingStealthKilled(ped) end

---**`PED` `client` [`0x4FBACCE3B4138EE8`](https://docs.fivem.net/natives/?_0x4FBACCE3B4138EE8)**
---
---```
---p1 is always 0
---```
---
---@param ped Ped
---@param p1 number
---@return boolean
function IsPedBeingStunned(ped, p1) end

---**`PED` `client` [`0x53E8CB4F48BFE623`](https://docs.fivem.net/natives/?_0x53E8CB4F48BFE623)**
---
---@param ped Ped
---@return boolean
function IsPedClimbing(ped) end

---**`PED` `client` [`0xE825F6B6CEA7671D`](https://docs.fivem.net/natives/?_0xE825F6B6CEA7671D)**
---
---Checks if the component variation is valid, this works great for randomizing components using loops.
---
---@param ped Ped The ped handle.
---@param componentId number The component id to check the variation of. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@param drawableId number The drawable id to get the component variation of. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
---@param textureId number The texture id to get the component variation of. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171).
---@return boolean
function IsPedComponentVariationValid(ped, componentId, drawableId, textureId) end

---**`PED` `client` [`0x3317DEDB88C95038`](https://docs.fivem.net/natives/?_0x3317DEDB88C95038)**
---
---Seems to consistently return true if the ped is dead, however, it does not detect the dying phase.
---
---@param ped Ped the ped
---@param p1 boolean always passed 1 in the scripts; requires more research.
---@return boolean # Whether the ped is dead or dying.
function IsPedDeadOrDying(ped, p1) end

---**`PED` `client` [`0xBA63D9FE45412247`](https://docs.fivem.net/natives/?_0xBA63D9FE45412247)**
---
---@param ped Ped
---@param p1 boolean
---@return boolean
function IsPedDefensiveAreaActive(ped, p1) end

---**`PED` `client` [`0x5527B8246FEF9B11`](https://docs.fivem.net/natives/?_0x5527B8246FEF9B11)**
---
---@param ped Ped
---@return boolean
function IsPedDiving(ped) end

---**`PED` `client` [`0xB2C086CC1BF8F2BF`](https://docs.fivem.net/natives/?_0xB2C086CC1BF8F2BF)**
---
---@param ped Ped
---@return boolean
function IsPedDoingDriveby(ped) end

---**`PED` `client` [`0xD125AE748725C6BC`](https://docs.fivem.net/natives/?_0xD125AE748725C6BC)**
---
---@param ped Ped
---@return boolean
function IsPedDucking(ped) end

---**`PED` `client` [`0x414641C26E105898`](https://docs.fivem.net/natives/?_0x414641C26E105898)**
---
---```
---Presumably returns the Entity that the Ped is currently diving out of the way of.
---var num3;
---    if (PED::IS_PED_EVASIVE_DIVING(A_0, &num3) != 0)
---        if (ENTITY::IS_ENTITY_A_VEHICLE(num3) != 0)
---```
---
---@param ped Ped
---@param evadingEntity Entity
---@return boolean, Entity
function IsPedEvasiveDiving(ped, evadingEntity) end

---**`PED` `client` [`0xD71649DB0A545AA3`](https://docs.fivem.net/natives/?_0xD71649DB0A545AA3)**
---
---```
---angle is ped's view cone
---```
---
---@param ped Ped
---@param otherPed Ped
---@param angle number
---@return boolean
function IsPedFacingPed(ped, otherPed, angle) end

---**`PED` `client` [`0xFB92A102F1C4DFA3`](https://docs.fivem.net/natives/?_0xFB92A102F1C4DFA3)**
---
---@param ped Ped
---@return boolean
function IsPedFalling(ped) end

---**`PED` `client` [`0xD839450756ED5A80`](https://docs.fivem.net/natives/?_0xD839450756ED5A80)**
---
---```
---Gets a value indicating whether this ped's health is below its fatally injured threshold. The default threshold is 100.
---If the handle is invalid, the function returns true.
---```
---
---@param ped Ped
---@return boolean
function IsPedFatallyInjured(ped) end

---**`PED` `client` [`0xBBCCE00B381F8482`](https://docs.fivem.net/natives/?_0xBBCCE00B381F8482)**
---
---@param ped Ped
---@return boolean
function IsPedFleeing(ped) end

---**`PED` `client` [`0xBB062B2B5722478E`](https://docs.fivem.net/natives/?_0xBB062B2B5722478E)**
---
---@param ped Ped
---@return boolean
function IsPedGettingIntoAVehicle(ped) end

---**`PED` `client` [`0x9F65DBC537E59AD5`](https://docs.fivem.net/natives/?_0x9F65DBC537E59AD5)**
---
---@param ped Ped
---@return boolean
function IsPedGoingIntoCover(ped) end

---**`PED` `client` [`0x9BB01E3834671191`](https://docs.fivem.net/natives/?_0x9BB01E3834671191)**
---
---@param ped Ped
---@param groupId number
---@return boolean
function IsPedGroupMember(ped, groupId) end

---**`PED` `client` [`0x1C86D8AEF8254B78`](https://docs.fivem.net/natives/?_0x1C86D8AEF8254B78)**
---
---@param ped Ped
---@return boolean
function IsPedHangingOnToVehicle(ped) end

---**`PED` `client` [`0xFCF37A457CB96DC0`](https://docs.fivem.net/natives/?_0xFCF37A457CB96DC0)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param p4 number
---@return boolean
function IsPedHeadingTowardsPosition(ped, x, y, z, p4) end

---**`PED` `client` [`0x813A0A7C9D2E831F`](https://docs.fivem.net/natives/?_0x813A0A7C9D2E831F)**
---
---@param ped Ped
---@param entity Entity
---@return boolean
function IsPedHeadtrackingEntity(ped, entity) end

---**`PED` `client` [`0x5CD3CB88A7F8850D`](https://docs.fivem.net/natives/?_0x5CD3CB88A7F8850D)**
---
---@param ped1 Ped
---@param ped2 Ped
---@return boolean
function IsPedHeadtrackingPed(ped1, ped2) end

---**`PED` `client` [`0xB980061DA992779D`](https://docs.fivem.net/natives/?_0xB980061DA992779D)**
---
---```
---Returns true/false if the ped is/isn't humanoid.
---```
---
---@param ped Ped
---@return boolean
function IsPedHuman(ped) end

---**`PED` `client` [`0x5983BB449D7FDB12`](https://docs.fivem.net/natives/?_0x5983BB449D7FDB12)**
---
---```
---Returns whether the specified ped is hurt.
---```
---
---@param ped Ped
---@return boolean
function IsPedHurt(ped) end

---**`PED` `client` [`0x84A2DD9AC37C35C1`](https://docs.fivem.net/natives/?_0x84A2DD9AC37C35C1)**
---
---```
---Gets a value indicating whether this ped's health is below its injured threshold.
---The default threshold is 100.
---```
---
---@param ped Ped
---@return boolean
function IsPedInjured(ped) end

---**`PED` `client` [`0x2E0E1C2B4F6CB339`](https://docs.fivem.net/natives/?_0x2E0E1C2B4F6CB339)**
---
---@param ped Ped
---@return boolean
function IsPedInAnyBoat(ped) end

---**`PED` `client` [`0x298B91AE825E5705`](https://docs.fivem.net/natives/?_0x298B91AE825E5705)**
---
---@param ped Ped
---@return boolean
function IsPedInAnyHeli(ped) end

---**`PED` `client` [`0x5FFF4CFC74D8FB80`](https://docs.fivem.net/natives/?_0x5FFF4CFC74D8FB80)**
---
---@param ped Ped
---@return boolean
function IsPedInAnyPlane(ped) end

---**`PED` `client` [`0x0BD04E29640C9C12`](https://docs.fivem.net/natives/?_0x0BD04E29640C9C12)**
---
---@param ped Ped
---@return boolean
function IsPedInAnyPoliceVehicle(ped) end

---**`PED` `client` [`0xFBFC01CCFB35D99E`](https://docs.fivem.net/natives/?_0xFBFC01CCFB35D99E)**
---
---@param ped Ped
---@return boolean
function IsPedInAnySub(ped) end

---**`PED` `client` [`0x6E575D6A898AB852`](https://docs.fivem.net/natives/?_0x6E575D6A898AB852)**
---
---@param ped Ped
---@return boolean
function IsPedInAnyTaxi(ped) end

---**`PED` `client` [`0x6F972C1AB75A1ED0`](https://docs.fivem.net/natives/?_0x6F972C1AB75A1ED0)**
---
---@param ped Ped
---@return boolean
function IsPedInAnyTrain(ped) end

---**`PED` `client` [`0x997ABD671D25CA0B`](https://docs.fivem.net/natives/?_0x997ABD671D25CA0B)**
---
---Returns whether the specified ped is in any vehicle. If `atGetIn` is set to true, also returns true if the ped is
---currently in the process of entering a vehicle (a specific stage check for `CTaskEnterVehicle`).
---
---Example code:
---```lua
---if IsPedInAnyVehicle(PlayerPedId(), false) then
---    print('Local player is in a vehicle!')
---end
---```
---
---@param ped Ped The ped to check.
---@param atGetIn boolean `true` to also consider attempting to enter a vehicle.
---@return boolean # Whether or not the ped is currently involved in any vehicle.
function IsPedInAnyVehicle(ped, atGetIn) end

---**`PED` `client` [`0x4859F1FC66A6278E`](https://docs.fivem.net/natives/?_0x4859F1FC66A6278E)**
---
---```
---Checks to see if ped and target are in combat with eachother. Only goes one-way: if target is engaged in combat with ped but ped has not yet reacted, the function will return false until ped starts fighting back.
---p1 is usually 0 in the scripts because it gets the ped id during the task sequence. For instance: PED::IS_PED_IN_COMBAT(l_42E[4/*14*/], PLAYER::PLAYER_PED_ID()) // armenian2.ct4: 43794
---```
---
---@param ped Ped
---@param target Ped
---@return boolean
function IsPedInCombat(ped, target) end

---**`PED` `client` [`0x60DFD0691A170B88`](https://docs.fivem.net/natives/?_0x60DFD0691A170B88)**
---
---```
---p1 is nearly always 0 in the scripts.
---```
---
---@param ped Ped
---@param exceptUseWeapon boolean
---@return boolean
function IsPedInCover(ped, exceptUseWeapon) end

---**`PED` `client` [`0x845333B3150583AB`](https://docs.fivem.net/natives/?_0x845333B3150583AB)**
---
---@param ped Ped
---@return boolean
function IsPedInCoverFacingLeft(ped) end

---**`PED` `client` [`0x9134873537FA419C`](https://docs.fivem.net/natives/?_0x9134873537FA419C)**
---
---@param ped Ped
---@return boolean
function IsPedInFlyingVehicle(ped) end

---**`PED` `client` [`0x5891CAC5D4ACFF74`](https://docs.fivem.net/natives/?_0x5891CAC5D4ACFF74)**
---
---@param ped Ped
---@return boolean
function IsPedInGroup(ped) end

---**`PED` `client` [`0x6A03BF943D767C93`](https://docs.fivem.net/natives/?_0x6A03BF943D767C93)**
---
---@param ped Ped
---@return boolean
function IsPedInHighCover(ped) end

---**`PED` `client` [`0x4E209B2C1EAD5159`](https://docs.fivem.net/natives/?_0x4E209B2C1EAD5159)**
---
---```
---Notes: The function only returns true while the ped is:
---A.) Swinging a random melee attack (including pistol-whipping)
---B.) Reacting to being hit by a melee attack (including pistol-whipping)
---C.) Is locked-on to an enemy (arms up, strafing/skipping in the default fighting-stance, ready to dodge+counter).
---You don't have to be holding the melee-targetting button to be in this stance; you stay in it by default for a few seconds after swinging at someone. If you do a sprinting punch, it returns true for the duration of the punch animation and then returns false again, even if you've punched and made-angry many peds
---```
---
---@param ped Ped
---@return boolean
function IsPedInMeleeCombat(ped) end

---**`PED` `client` [`0x796D90EFB19AA332`](https://docs.fivem.net/natives/?_0x796D90EFB19AA332)**
---
---@param ped Ped
---@param modelHash Hash
---@return boolean
function IsPedInModel(ped, modelHash) end

---**`PED` `client` [`0x7DCE8BDA0F1C1200`](https://docs.fivem.net/natives/?_0x7DCE8BDA0F1C1200)**
---
---@param ped Ped
---@return boolean
function IsPedInParachuteFreeFall(ped) end

---**`PED` `client` [`0xA3EE4A07279BB9DB`](https://docs.fivem.net/natives/?_0xA3EE4A07279BB9DB)**
---
---```
---Gets a value indicating whether the specified ped is in the specified vehicle.
---If 'atGetIn' is false, the function will not return true until the ped is sitting in the vehicle and is about to close the door. If it's true, the function returns true the moment the ped starts to get onto the seat (after opening the door). Eg. if false, and the ped is getting into a submersible, the function will not return true until the ped has descended down into the submersible and gotten into the seat, while if it's true, it'll return true the moment the hatch has been opened and the ped is about to descend into the submersible.
---```
---
---@param ped Ped
---@param vehicle Vehicle
---@param atGetIn boolean
---@return boolean
function IsPedInVehicle(ped, vehicle, atGetIn) end

---**`PED` `client` [`0x4AE4FF911DFB61DA`](https://docs.fivem.net/natives/?_0x4AE4FF911DFB61DA)**
---
---@param ped Ped
---@return boolean
function IsPedJacking(ped) end

---**`PED` `client` [`0xCEDABC5900A0BF97`](https://docs.fivem.net/natives/?_0xCEDABC5900A0BF97)**
---
---@param ped Ped
---@return boolean
function IsPedJumping(ped) end

---**`PED` `client` [`0x433DDFFE2044B636`](https://docs.fivem.net/natives/?_0x433DDFFE2044B636)**
---
---@param ped Ped
---@return boolean
function IsPedJumpingOutOfVehicle(ped) end

---**`PED` `client` [`0x6D9F5FAA7488BA46`](https://docs.fivem.net/natives/?_0x6D9F5FAA7488BA46)**
---
---```
---Returns true/false if the ped is/isn't male.
---```
---
---@param ped Ped
---@return boolean
function IsPedMale(ped) end

---**`PED` `client` [`0xC9D55B1A358A5BF7`](https://docs.fivem.net/natives/?_0xC9D55B1A358A5BF7)**
---
---@param ped Ped
---@param modelHash Hash
---@return boolean
function IsPedModel(ped, modelHash) end

---**`PED` `client` [`0x94495889E22C6479`](https://docs.fivem.net/natives/?_0x94495889E22C6479)**
---
---@param ped Ped
---@return boolean
function IsPedOnAnyBike(ped) end

---**`PED` `client` [`0x01FEE67DB37F59B2`](https://docs.fivem.net/natives/?_0x01FEE67DB37F59B2)**
---
---@param ped Ped
---@return boolean
function IsPedOnFoot(ped) end

---**`PED` `client` [`0x460BC76A0E10655E`](https://docs.fivem.net/natives/?_0x460BC76A0E10655E)**
---
---```
---Same function call as PED::GET_MOUNT, aka just returns 0
---```
---
---@param ped Ped
---@return boolean
function IsPedOnMount(ped) end

---**`PED` `client` [`0xEC5F66E459AF3BB2`](https://docs.fivem.net/natives/?_0xEC5F66E459AF3BB2)**
---
---@param ped Ped
---@param vehicle Vehicle
---@return boolean
function IsPedOnSpecificVehicle(ped, vehicle) end

---**`PED` `client` [`0x67722AEB798E5FAB`](https://docs.fivem.net/natives/?_0x67722AEB798E5FAB)**
---
---```
---Gets a value indicating whether the specified ped is on top of any vehicle.
---Return 1 when ped is on vehicle.
---Return 0 when ped is not on a vehicle.
---```
---
---@param ped Ped
---@return boolean
function IsPedOnVehicle(ped) end

---**`PED` `client` [`0xEBD0EDBA5BE957CF`](https://docs.fivem.net/natives/?_0xEBD0EDBA5BE957CF)**
---
---@param ped Ped
---@return boolean
function IsPedPerformingDependentComboLimit(ped) end

---**`PED` `client` [`0xDCCA191DF9980FD7`](https://docs.fivem.net/natives/?_0xDCCA191DF9980FD7)**
---
---@param ped Ped
---@return boolean
function IsPedPerformingMeleeAction(ped) end

---**`PED` `client` [`0xFD4CCDBCC59941B7`](https://docs.fivem.net/natives/?_0xFD4CCDBCC59941B7)**
---
---@param ped Ped
---@return boolean
function IsPedPerformingStealthKill(ped) end

---**`PED` `client` [`0xC70B5FAE151982D8`](https://docs.fivem.net/natives/?_0xC70B5FAE151982D8)**
---
---@param ped Ped
---@return boolean
function IsPedPlantingBomb(ped) end

---**`PED` `client` [`0xD6A86331A537A7B9`](https://docs.fivem.net/natives/?_0xD6A86331A537A7B9)**
---
---@param ped Ped
---@return boolean
function IsPedProne(ped) end

---**`PED` `client` [`0x47E4E977581C5B55`](https://docs.fivem.net/natives/?_0x47E4E977581C5B55)**
---
---```
---If the ped handle passed through the parenthesis is in a ragdoll state this will return true.
---```
---
---@param ped Ped
---@return boolean
function IsPedRagdoll(ped) end

---**`PED` `client` [`0x24B100C68C645951`](https://docs.fivem.net/natives/?_0x24B100C68C645951)**
---
---```
---Returns whether the specified ped is reloading.
---```
---
---@param ped Ped
---@return boolean
function IsPedReloading(ped) end

---**`PED` `client` [`0x625B774D75C87068`](https://docs.fivem.net/natives/?_0x625B774D75C87068)**
---
---@param ped Ped
---@param event any
---@return boolean
function IsPedRespondingToEvent(ped, event) end

---**`PED` `client` [`0xD1871251F3B5ACD7`](https://docs.fivem.net/natives/?_0xD1871251F3B5ACD7)**
---
---@param ped Ped
---@return boolean
function IsPedRunningMeleeTask(ped) end

---**`PED` `client` [`0x2AFE52F782F25775`](https://docs.fivem.net/natives/?_0x2AFE52F782F25775)**
---
---@param ped Ped
---@return boolean
function IsPedRunningMobilePhoneTask(ped) end

---**`PED` `client` [`0xE3B6097CC25AA69E`](https://docs.fivem.net/natives/?_0xE3B6097CC25AA69E)**
---
---@param ped Ped
---@return boolean
function IsPedRunningRagdollTask(ped) end

---**`PED` `client` [`0x34616828CD07F1A1`](https://docs.fivem.net/natives/?_0x34616828CD07F1A1)**
---
---```
---Returns whether the specified ped is shooting.
---```
---
---@param ped Ped
---@return boolean
function IsPedShooting(ped) end

---**`PED` `client` [`0x7E9DFE24AC1E58EF`](https://docs.fivem.net/natives/?_0x7E9DFE24AC1E58EF)**
---
---@param ped Ped
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param p7 boolean
---@param p8 boolean
---@return boolean
function IsPedShootingInArea(ped, x1, y1, z1, x2, y2, z2, p7, p8) end

---**`PED` `client` [`0x826AA586EDB9FEF8`](https://docs.fivem.net/natives/?_0x826AA586EDB9FEF8)**
---
---```
---Detect if ped is in any vehicle
---[True/False]
---```
---
---@param ped Ped
---@return boolean
function IsPedSittingInAnyVehicle(ped) end

---**`PED` `client` [`0xA808AA1D79230FC2`](https://docs.fivem.net/natives/?_0xA808AA1D79230FC2)**
---
---```
---Detect if ped is sitting in the specified vehicle
---[True/False]
---```
---
---@param ped Ped
---@param vehicle Vehicle
---@return boolean
function IsPedSittingInVehicle(ped, vehicle) end

---**`PED` `client` [`0x530944F6F4B8A214`](https://docs.fivem.net/natives/?_0x530944F6F4B8A214)**
---
---```
---Returns true if the ped doesn't do any movement. If the ped is being pushed forwards by using APPLY_FORCE_TO_ENTITY for example, the function returns false.
---```
---
---@param ped Ped
---@return boolean
function IsPedStopped(ped) end

---**`PED` `client` [`0x9DE327631295B4C2`](https://docs.fivem.net/natives/?_0x9DE327631295B4C2)**
---
---@param ped Ped
---@return boolean
function IsPedSwimming(ped) end

---**`PED` `client` [`0xC024869A53992F34`](https://docs.fivem.net/natives/?_0xC024869A53992F34)**
---
---@param ped Ped
---@return boolean
function IsPedSwimmingUnderWater(ped) end

---**`PED` `client` [`0x14590DDBEDB1EC85`](https://docs.fivem.net/natives/?_0x14590DDBEDB1EC85)**
---
---@param ped Ped
---@return boolean
function IsPedTakingOffHelmet(ped) end

---**`PED` `client` [`0x4C5E1F087CD10BB7`](https://docs.fivem.net/natives/?_0x4C5E1F087CD10BB7)**
---
---@param ped Ped
---@return boolean
function IsPedTracked(ped) end

---**`PED` `client` [`0x44D28D5DDFE5F68C`](https://docs.fivem.net/natives/?_0x44D28D5DDFE5F68C)**
---
---@param ped Ped
---@return boolean
function IsPedTryingToEnterALockedVehicle(ped) end

---**`PED` `client` [`0x00E73468D085F745`](https://docs.fivem.net/natives/?_0x00E73468D085F745)**
---
---@param ped Ped
---@return boolean
function IsPedUsingActionMode(ped) end

---**`PED` `client` [`0x57AB4A3080F85143`](https://docs.fivem.net/natives/?_0x57AB4A3080F85143)**
---
---@param ped Ped
---@return boolean
function IsPedUsingAnyScenario(ped) end

---**`PED` `client` [`0x1BF094736DD62C2E`](https://docs.fivem.net/natives/?_0x1BF094736DD62C2E)**
---
---@param ped Ped
---@param scenario string
---@return boolean
function IsPedUsingScenario(ped, scenario) end

---**`PED` `client` [`0x117C70D1F5730B5E`](https://docs.fivem.net/natives/?_0x117C70D1F5730B5E)**
---
---@param ped Ped
---@return boolean
function IsPedVaulting(ped) end

---**`PED` `client` [`0xF33BDFE19B309B19`](https://docs.fivem.net/natives/?_0xF33BDFE19B309B19)**
---
---```
---Returns true if the ped passed through the parenthesis is wearing a helmet.
---```
---
---@param ped Ped
---@return boolean
function IsPedWearingHelmet(ped) end

---**`PED` `client` [`0x6EC47A344923E1ED`](https://docs.fivem.net/natives/?_0x6EC47A344923E1ED)**
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---
---@param ped Ped
---@param animDict string
---@param anim string
---@return boolean
function IsScriptedScenarioPedUsingConditionalAnim(ped, animDict, anim) end

---**`PED` `client` [`0x7F2F4F13AC5257EF`](https://docs.fivem.net/natives/?_0x7F2F4F13AC5257EF)**
---
---@param sceneID number
---@return boolean
function IsSynchronizedSceneHoldLastFrame(sceneID) end

---**`PED` `client` [`0x62522002E0C391BA`](https://docs.fivem.net/natives/?_0x62522002E0C391BA)**
---
---@param sceneID number
---@return boolean
function IsSynchronizedSceneLooped(sceneID) end

---**`PED` `client` [`0x25D39B935A038A26`](https://docs.fivem.net/natives/?_0x25D39B935A038A26)**
---
---```
---Returns true if a synchronized scene is running
---```
---
---@param sceneId number
---@return boolean
function IsSynchronizedSceneRunning(sceneId) end

---**`PED` `client` [`0x91C8E617F64188AC`](https://docs.fivem.net/natives/?_0x91C8E617F64188AC)**
---
---```
---returns whether or not a ped is visible within your FOV, not this check auto's to false after a certain distance.
---Target needs to be tracked.. won't work otherwise.
---```
---
---@param ped Ped
---@return boolean
function IsTrackedPedVisible(ped) end

---**`PED` `client` [`0x6FD7816A36615F48`](https://docs.fivem.net/natives/?_0x6FD7816A36615F48)**
---
---@param ped Ped
---@param p1 boolean
---@param p2 boolean
---@param p3 boolean
---@param p4 boolean
function KnockOffPedProp(ped, p1, p2, p3, p4) end

---**`PED` `client` [`0x45BBCBA77C29A841`](https://docs.fivem.net/natives/?_0x45BBCBA77C29A841)**
---
---@param ped Ped
function KnockPedOffVehicle(ped) end

---**`PED` `client` [`0xE1E65CA8AC9C00ED`](https://docs.fivem.net/natives/?_0xE1E65CA8AC9C00ED)**
---
---@param ped Ped
---@param animName string
---@param animDict string
function PlayFacialAnim(ped, animName, animDict) end

---**`PED` `client` [`0x9222F300BF8354FE`](https://docs.fivem.net/natives/?_0x9222F300BF8354FE)**
---
---```
---Based on TASK_COMBAT_HATED_TARGETS_AROUND_PED, the parameters are likely similar (PedHandle, and area to attack in).
---```
---
---@param ped Ped
---@param radius number
function RegisterHatedTargetsAroundPed(ped, radius) end

---**`PED` `client` [`0x4462658788425076`](https://docs.fivem.net/natives/?_0x4462658788425076)**
---
---```
---gtaforums.com/topic/885580-ped-headshotmugshot-txd/
---```
---
---Example code:
---```lua
---CreateThread(function()
---    -- Get the ped headshot image.
---    local handle = RegisterPedheadshot(PlayerPedId())
---    while not IsPedheadshotReady(handle) or not IsPedheadshotValid(handle) do
---        Wait(0)
---    end
---    local txd = GetPedheadshotTxdString(handle)
---
---    -- Add the notification text, the more text you add the smaller the font
---    -- size will become (text is forced on 1 line only), so keep this short!
---    SetNotificationTextEntry("STRING")
---    AddTextComponentSubstringPlayerName("Headshot")
---
---    -- Draw the notification
---    DrawNotificationAward(txd, txd, 200, 0, "FM_GEN_UNLOCK")
---
---    -- Cleanup after yourself!
---    UnregisterPedheadshot(handle)
---end)
---```
---
---@param ped Ped
---@return number # The Pedheadshot handle.
function RegisterPedheadshot(ped) end

---**`PED` `client` [`0x953563CE563143AF`](https://docs.fivem.net/natives/?_0x953563CE563143AF)**
---
---Similar to REGISTER_PEDHEADSHOT but creates a transparent background instead of black.
---
---**Result of the example code:**
---<https://i.imgur.com/iHz8ztn.png>
---
---Example code:
---```lua
---CreateThread(function()
---    -- Get the ped headshot image.
---    local handle = RegisterPedheadshotTransparent(PlayerPedId())
---    while not IsPedheadshotReady(handle) or not IsPedheadshotValid(handle) do
---        Wait(0)
---    end
---    local txd = GetPedheadshotTxdString(handle)
---
---    -- Add the notification text, the more text you add the smaller the font
---    -- size will become (text is forced on 1 line only), so keep this short!
---    SetNotificationTextEntry("STRING")
---    AddTextComponentSubstringPlayerName("Transparent Headshot")
---
---    -- Draw the notification
---    DrawNotificationAward(txd, txd, 200, 0, "FM_GEN_UNLOCK")
---
---    -- Cleanup after yourself!
---    UnregisterPedheadshot(handle)
---end)
---```
---
---@param ped Ped A ped handle.
---@return number # The Pedheadshot handle.
function RegisterPedheadshotTransparent(ped) end

---**`PED` `client` [`0x2F25D9AEFA34FBA2`](https://docs.fivem.net/natives/?_0x2F25D9AEFA34FBA2)**
---
---```
---PED::REGISTER_TARGET(l_216, PLAYER::PLAYER_PED_ID()); from re_prisonbreak.txt.
---l_216 = RECSBRobber1
---```
---
---@param ped Ped
---@param target Ped
function RegisterTarget(ped, target) end

---**`PED` `client` [`0x5D517B27CF6ECD04`](https://docs.fivem.net/natives/?_0x5D517B27CF6ECD04)**
---
---@param id number
function ReleasePedheadshotImgUpload(id) end

---**`PED` `client` [`0xF79F9DEF0AADE61A`](https://docs.fivem.net/natives/?_0xF79F9DEF0AADE61A)**
---
---@param ped Ped
function ReleasePedPreloadPropData(ped) end

---**`PED` `client` [`0x5AAB586FFEC0FD96`](https://docs.fivem.net/natives/?_0x5AAB586FFEC0FD96)**
---
---@param ped Ped
function ReleasePedPreloadVariationData(ped) end

---**`PED` `client` [`0x13E940F88470FA51`](https://docs.fivem.net/natives/?_0x13E940F88470FA51)**
---
---@param asset string
function RemoveActionModeAsset(asset) end

---**`PED` `client` [`0x8EB2F69076AF7053`](https://docs.fivem.net/natives/?_0x8EB2F69076AF7053)**
---
---@param groupId number
function RemoveGroup(groupId) end

---**`PED` `client` [`0x74D4E028107450A9`](https://docs.fivem.net/natives/?_0x74D4E028107450A9)**
---
---```
---Ped will no longer get angry when you stay near him.
---```
---
---@param ped Ped
---@param toggle boolean
function RemovePedDefensiveArea(ped, toggle) end

---**`PED` `client` [`0xAC6D445B994DF95E`](https://docs.fivem.net/natives/?_0xAC6D445B994DF95E)**
---
---```
---Judging purely from a quick disassembly, if the ped is in a vehicle, the ped will be deleted immediately. If not, it'll be marked as no longer needed.
---```
---
---@param ped Ped
function RemovePedElegantly(ped) end

---**`PED` `client` [`0xED74007FFB146BC2`](https://docs.fivem.net/natives/?_0xED74007FFB146BC2)**
---
---@param ped Ped
function RemovePedFromGroup(ped) end

---**`PED` `client` [`0xA7B2458D0AD6DED8`](https://docs.fivem.net/natives/?_0xA7B2458D0AD6DED8)**
---
---@param ped Ped
---@param instantly boolean
function RemovePedHelmet(ped, instantly) end

---**`PED` `client` [`0xFDDB234CF74073D9`](https://docs.fivem.net/natives/?_0xFDDB234CF74073D9)**
---
---@param ped Ped
function RemovePedPreferredCoverSet(ped) end

---**`PED` `client` [`0xB6BA2444AB393DA2`](https://docs.fivem.net/natives/?_0xB6BA2444AB393DA2)**
---
---@param groupHash Hash
function RemoveRelationshipGroup(groupHash) end

---**`PED` `client` [`0x31D16B74C6E29D66`](https://docs.fivem.net/natives/?_0x31D16B74C6E29D66)**
---
---@param p0 any
---@param p1 boolean
function RemoveScenarioBlockingArea(p0, p1) end

---**`PED` `client` [`0xD37401D78A929A49`](https://docs.fivem.net/natives/?_0xD37401D78A929A49)**
---
function RemoveScenarioBlockingAreas() end

---**`PED` `client` [`0x9219857D21F0E842`](https://docs.fivem.net/natives/?_0x9219857D21F0E842)**
---
---@param asset string
function RemoveStealthModeAsset(asset) end

---**`PED` `client` [`0x290E2780BB7AA598`](https://docs.fivem.net/natives/?_0x290E2780BB7AA598)**
---
---@param asset string
function RequestActionModeAsset(asset) end

---**`PED` `client` [`0xF0DAEF2F545BEE25`](https://docs.fivem.net/natives/?_0xF0DAEF2F545BEE25)**
---
---@param id number
---@return boolean
function RequestPedheadshotImgUpload(id) end

---**`PED` `client` [`0x2BC338A7B21F4608`](https://docs.fivem.net/natives/?_0x2BC338A7B21F4608)**
---
---@param ped Ped
---@param p1 boolean
function RequestPedVehicleVisibilityTracking(ped, p1) end

---**`PED` `client` [`0x7D7A2E43E74E2EB8`](https://docs.fivem.net/natives/?_0x7D7A2E43E74E2EB8)**
---
---@param ped Ped
function RequestPedVisibilityTracking(ped) end

---**`PED` `client` [`0x2A0A62FCDEE16D4F`](https://docs.fivem.net/natives/?_0x2A0A62FCDEE16D4F)**
---
---@param asset string
function RequestStealthModeAsset(asset) end

---**`PED` `client` [`0x46E56A7CD1D63C3F`](https://docs.fivem.net/natives/?_0x46E56A7CD1D63C3F)**
---
function ResetAiMeleeWeaponDamageModifier() end

---**`PED` `client` [`0xEA16670E7BA4743C`](https://docs.fivem.net/natives/?_0xEA16670E7BA4743C)**
---
function ResetAiWeaponDamageModifier() end

---**`PED` `client` [`0x63DAB4CCB3273205`](https://docs.fivem.net/natives/?_0x63DAB4CCB3273205)**
---
---@param groupHandle number
function ResetGroupFormationDefaultSpacing(groupHandle) end

---**`PED` `client` [`0x22EF8FF8778030EB`](https://docs.fivem.net/natives/?_0x22EF8FF8778030EB)**
---
---@param ped Ped
function ResetPedInVehicleContext(ped) end

---**`PED` `client` [`0xBB8DE8CF6A8DD8BB`](https://docs.fivem.net/natives/?_0xBB8DE8CF6A8DD8BB)**
---
---```
---Resets the value for the last vehicle driven by the Ped.
---```
---
---@param ped Ped
function ResetPedLastVehicle(ped) end

---**`PED` `client` [`0xAA74EC0CB0AAEA2C`](https://docs.fivem.net/natives/?_0xAA74EC0CB0AAEA2C)**
---
---@param ped Ped
---@param transitionSpeed number
function ResetPedMovementClipset(ped, transitionSpeed) end

---**`PED` `client` [`0x9FA4664CF62E47E8`](https://docs.fivem.net/natives/?_0x9FA4664CF62E47E8)**
---
---@param ped Ped
function ResetPedRagdollTimer(ped) end

---**`PED` `client` [`0x20510814175EA477`](https://docs.fivem.net/natives/?_0x20510814175EA477)**
---
---@param ped Ped
function ResetPedStrafeClipset(ped) end

---**`PED` `client` [`0x3AC1F7B898F30C05`](https://docs.fivem.net/natives/?_0x3AC1F7B898F30C05)**
---
---@param ped Ped
function ResetPedVisibleDamage(ped) end

---**`PED` `client` [`0x97B0DB5B4AA74E77`](https://docs.fivem.net/natives/?_0x97B0DB5B4AA74E77)**
---
---@param ped Ped
function ResetPedWeaponMovementClipset(ped) end

---**`PED` `client` [`0x71BC8E838B9C6035`](https://docs.fivem.net/natives/?_0x71BC8E838B9C6035)**
---
---```
---This function will simply bring the dead person back to life.
---Try not to use it alone, since using this function alone, will make peds fall through ground in hell(well for the most of the times).
---Instead, before calling this function, you may want to declare the position, where your Resurrected ped to be spawn at.(For instance, Around 2 floats of Player's current position.)
---Also, disabling any assigned task immediately helped in the number of scenarios, where If you want peds to perform certain decided tasks.
---```
---
---@param ped Ped
function ResurrectPed(ped) end

---**`PED` `client` [`0x8D8ACD8388CD99CE`](https://docs.fivem.net/natives/?_0x8D8ACD8388CD99CE)**
---
---```
---It will revive/cure the injured ped. The condition is ped must not be dead.
---Upon setting and converting the health int, found, if health falls below 5, the ped will lay on the ground in pain(Maximum default health is 100).
---This function is well suited there.
---```
---
---@param ped Ped
function ReviveInjuredPed(ped) end

---**`PED` `client` [`0x66460DEDDD417254`](https://docs.fivem.net/natives/?_0x66460DEDDD417254)**
---
---@param modifier number
function SetAiMeleeWeaponDamageModifier(modifier) end

---**`PED` `client` [`0x1B1E2A40A65B8521`](https://docs.fivem.net/natives/?_0x1B1E2A40A65B8521)**
---
---@param value number
function SetAiWeaponDamageModifier(value) end

---**`PED` `client` [`0x6B0E6172C9A4D902`](https://docs.fivem.net/natives/?_0x6B0E6172C9A4D902)**
---
---@param p0 boolean
function SetAmbientPedsDropMoney(p0) end

---**`PED` `client` [`0x9F8AA94D6D97DBF4`](https://docs.fivem.net/natives/?_0x9F8AA94D6D97DBF4)**
---
---```
---works with TASK::TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS to make a ped completely oblivious to all events going on around him
---```
---
---@param ped Ped
---@param toggle boolean
function SetBlockingOfNonTemporaryEvents(ped, toggle) end

---**`PED` `client` [`0xB3B1CB349FF9C75D`](https://docs.fivem.net/natives/?_0xB3B1CB349FF9C75D)**
---
---```
---Setting ped to true allows the ped to shoot "friendlies".
---p2 set to true when toggle is also true seams to make peds permanently unable to aim at, even if you set p2 back to false.
---p1 = false & p2 = false for unable to aim at.
---p1 = true & p2 = false for able to aim at.
---```
---
---@param ped Ped
---@param toggle boolean
---@param p2 boolean
function SetCanAttackFriendly(ped, toggle, p2) end

---**`PED` `client` [`0xFF41B4B141ED981C`](https://docs.fivem.net/natives/?_0xFF41B4B141ED981C)**
---
---@param ped Ped
---@param combatType number A value between 0-14, See [`GET_COMBAT_FLOAT`](#\_0x52DFF8A10508090A) for a list of possible parameters.
---@param p2 number
function SetCombatFloat(ped, combatType, p2) end

---**`PED` `client` [`0x102E68B2024D536D`](https://docs.fivem.net/natives/?_0x102E68B2024D536D)**
---
---@param toggle boolean
function SetCreateRandomCops(toggle) end

---**`PED` `client` [`0x8A4986851C4EF6E7`](https://docs.fivem.net/natives/?_0x8A4986851C4EF6E7)**
---
---@param toggle boolean
function SetCreateRandomCopsNotOnScenarios(toggle) end

---**`PED` `client` [`0x444CB7D7DBE6973D`](https://docs.fivem.net/natives/?_0x444CB7D7DBE6973D)**
---
---@param toggle boolean
function SetCreateRandomCopsOnScenarios(toggle) end

---**`PED` `client` [`0xB195FFA8042FC5C3`](https://docs.fivem.net/natives/?_0xB195FFA8042FC5C3)**
---
---```
---The function specifically verifies the value is equal to, or less than 1.0f. If it is greater than 1.0f, the function does nothing at all.
---```
---
---@param driver Ped
---@param ability number
function SetDriverAbility(driver, ability) end

---**`PED` `client` [`0xA731F608CA104E3C`](https://docs.fivem.net/natives/?_0xA731F608CA104E3C)**
---
---```
---range 0.0f - 1.0f
---```
---
---@param driver Ped
---@param aggressiveness number
function SetDriverAggressiveness(driver, aggressiveness) end

---**`PED` `client` [`0xDED5AF5A0EA4B297`](https://docs.fivem.net/natives/?_0xDED5AF5A0EA4B297)**
---
---```
---Scripts use 0.2, 0.5 and 1.0. Value must be >= 0.0 && <= 1.0
---```
---
---@param driver Ped
---@param modifier number
function SetDriverRacingModifier(driver, modifier) end

---**`PED` `client` [`0xC52E0F855C58FC2E`](https://docs.fivem.net/natives/?_0xC52E0F855C58FC2E)**
---
---Used with [SET_ENABLE_HANDCUFFS](#\_0xDF1AF8B5D56542FA) in decompiled scripts. From my observations, I have noticed that while being ragdolled you are not able to get up but you can still run. Your legs can also bend.
---
---@param ped Ped
---@param toggle boolean
function SetEnableBoundAnkles(ped, toggle) end

---**`PED` `client` [`0xDF1AF8B5D56542FA`](https://docs.fivem.net/natives/?_0xDF1AF8B5D56542FA)**
---
---```
---ped can not pull out a weapon when true
---```
---
---@param ped Ped
---@param toggle boolean
function SetEnableHandcuffs(ped, toggle) end

---**`PED` `client` [`0xD2C5AA0C0E8D0F1E`](https://docs.fivem.net/natives/?_0xD2C5AA0C0E8D0F1E)**
---
---@param ped Ped
---@param toggle boolean
function SetEnablePedEnveffScale(ped, toggle) end

---**`PED` `client` [`0xF99F62004024D506`](https://docs.fivem.net/natives/?_0xF99F62004024D506)**
---
---```
---Enables diving motion when underwater.
---```
---
---@param ped Ped
---@param toggle boolean
function SetEnableScuba(ped, toggle) end

---**`PED` `client` [`0xFFC24B988B938B38`](https://docs.fivem.net/natives/?_0xFFC24B988B938B38)**
---
---@param ped Ped
---@param animName string
---@param animDict string
function SetFacialIdleAnimOverride(ped, animName, animDict) end

---**`PED` `client` [`0x129466ED55140F8D`](https://docs.fivem.net/natives/?_0x129466ED55140F8D)**
---
---@param ped Ped
---@param toggle boolean
function SetForceFootstepUpdate(ped, toggle) end

---**`PED` `client` [`0xCB968B53FC7F916D`](https://docs.fivem.net/natives/?_0xCB968B53FC7F916D)**
---
---@param ped Ped
---@param p1 boolean
---@param type number
---@param p3 number
function SetForceStepType(ped, p1, type, p3) end

---**`PED` `client` [`0xCE2F5FC3AF7E8C1E`](https://docs.fivem.net/natives/?_0xCE2F5FC3AF7E8C1E)**
---
---```
---0: Freedom to move
---1: Circle Around Leader
---2: Alternative Circle Around Leader
---3: Line, with Leader at center
---4: Arrow Formation
---5: "V" Formation
---6: Line Follow Formation
---7: Single Formation
---8: Pairwise
---```
---
---@param groupId number
---@param formationType number
function SetGroupFormation(groupId, formationType) end

---**`PED` `client` [`0x1D9D45004C28C916`](https://docs.fivem.net/natives/?_0x1D9D45004C28C916)**
---
---@param groupId number
---@param p1 number
---@param p2 number
---@param p3 number
function SetGroupFormationSpacing(groupId, p1, p2, p3) end

---**`PED` `client` [`0x4102C7858CFEE4E4`](https://docs.fivem.net/natives/?_0x4102C7858CFEE4E4)**
---
---```
---Sets the range at which members will automatically leave the group.
---```
---
---@param groupHandle number
---@param separationRange number
function SetGroupSeparationRange(groupHandle, separationRange) end

---**`PED` `client` [`0xCC9682B8951C5229`](https://docs.fivem.net/natives/?_0xCC9682B8951C5229)**
---
---Preview: https://gfycat.com/MaleRareAmazonparrot
---
---@param ped Ped
---@param r number
---@param g number
---@param b number
---@param id number From 0 to 3.
function SetHeadBlendPaletteColor(ped, r, g, b, id) end

---**`PED` `client` [`0xC32779C16FCEECD9`](https://docs.fivem.net/natives/?_0xC32779C16FCEECD9)**
---
---@param ped Ped
---@param ikIndex number
---@param entityLookAt Entity
---@param boneLookAt number
---@param offsetX number
---@param offsetY number
---@param offsetZ number
---@param p7 any
---@param blendInDuration number
---@param blendOutDuration number
function SetIkTarget(
	ped,
	ikIndex,
	entityLookAt,
	boneLookAt,
	offsetX,
	offsetY,
	offsetZ,
	p7,
	blendInDuration,
	blendOutDuration
)
end

---**`PED` `client` [`0x781DE8FA214E87D2`](https://docs.fivem.net/natives/?_0x781DE8FA214E87D2)**
---
---```
---name: "MP_FEMALE_ACTION" found multiple times in the b617d scripts.
---```
---
---@param ped Ped
---@param name string
function SetMovementModeOverride(ped, name) end

---**`PED` `client` [`0x7AEFB85C1D49DEB6`](https://docs.fivem.net/natives/?_0x7AEFB85C1D49DEB6)**
---
---```
---accuracy = 0-100, 100 being perfectly accurate
---```
---
---@param ped Ped
---@param accuracy number
function SetPedAccuracy(ped, accuracy) end

---**`PED` `client` [`0xDBA71115ED9941A6`](https://docs.fivem.net/natives/?_0xDBA71115ED9941A6)**
---
---```
---value ranges from 0 to 3.
---```
---
---@param ped Ped
---@param value number
function SetPedAlertness(ped, value) end

---**`PED` `client` [`0xDA1F1B7BE1A8766F`](https://docs.fivem.net/natives/?_0xDA1F1B7BE1A8766F)**
---
---@param ped Ped
---@param toggle boolean
function SetPedAllowedToDuck(ped, toggle) end

---**`PED` `client` [`0x3C028C636A414ED9`](https://docs.fivem.net/natives/?_0x3C028C636A414ED9)**
---
---@param ped Ped
---@param toggle boolean
function SetPedAllowVehiclesOverride(ped, toggle) end

---**`PED` `client` [`0x90A43CC281FFAB46`](https://docs.fivem.net/natives/?_0x90A43CC281FFAB46)**
---
---```
---stance:
---0 = idle
---1 = walk
---2 = running
---p5 = usually set to true
---```
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---
---@param ped Ped
---@param stance number
---@param animDictionary string
---@param animationName string
---@param p4 number
---@param p5 boolean
function SetPedAlternateMovementAnim(ped, stance, animDictionary, animationName, p4, p5) end

---**`PED` `client` [`0x6C60394CB4F75E9A`](https://docs.fivem.net/natives/?_0x6C60394CB4F75E9A)**
---
---[Animations list](https://alexguirre.github.io/animations-list/)
---
---@param ped Ped
---@param animDict string
---@param animName string
---@param p3 number
---@param p4 boolean
function SetPedAlternateWalkAnim(ped, animDict, animName, p3, p4) end

---**`PED` `client` [`0xC7F76DF27A5045A1`](https://docs.fivem.net/natives/?_0xC7F76DF27A5045A1)**
---
---@param ped Ped
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 boolean
---@param p9 boolean
function SetPedAngledDefensiveArea(ped, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

---**`PED` `client` [`0x2B5AA717A181FB4C`](https://docs.fivem.net/natives/?_0x2B5AA717A181FB4C)**
---
---```
---Enable/disable ped shadow (ambient occlusion). https://gfycat.com/thankfulesteemedgecko
---```
---
---@param ped Ped
---@param toggle boolean
function SetPedAoBlobRendering(ped, toggle) end

---**`PED` `client` [`0xCEA04D83135264CC`](https://docs.fivem.net/natives/?_0xCEA04D83135264CC)**
---
---```
---Sets the armor of the specified ped.
---ped: The Ped to set the armor of.
---amount: A value between 0 and 100 indicating the value to set the Ped's armor to.
---```
---
---@param ped Ped
---@param amount number
function SetPedArmour(ped, amount) end

---**`PED` `client` [`0xBB03C38DD3FB7FFD`](https://docs.fivem.net/natives/?_0xBB03C38DD3FB7FFD)**
---
---```
---Turns the desired ped into a cop. If you use this on the player ped, you will become almost invisible to cops dispatched for you. You will also report your own crimes, get a generic cop voice, get a cop-vision-cone on the radar, and you will be unable to shoot at other cops. SWAT and Army will still shoot at you. Toggling ped as "false" has no effect; you must change p0's ped model to disable the effect.
---```
---
---@param ped Ped
---@param toggle boolean
function SetPedAsCop(ped, toggle) end

---**`PED` `client` [`0x02A0C9720B854BFA`](https://docs.fivem.net/natives/?_0x02A0C9720B854BFA)**
---
---@param ped Ped
---@param toggle boolean
function SetPedAsEnemy(ped, toggle) end

---**`PED` `client` [`0x2A7819605465FBCE`](https://docs.fivem.net/natives/?_0x2A7819605465FBCE)**
---
---@param ped Ped
---@param groupId number
function SetPedAsGroupLeader(ped, groupId) end

---**`PED` `client` [`0x9F3480FE65DB31B5`](https://docs.fivem.net/natives/?_0x9F3480FE65DB31B5)**
---
---@param ped Ped
---@param groupId number
function SetPedAsGroupMember(ped, groupId) end

---**`PED` `client` [`0x137BBD05230DB22D`](https://docs.fivem.net/natives/?_0x137BBD05230DB22D)**
---
---@param ped Ped
---@param father Ped
---@param mother Ped
---@param fathersSide number
---@param mothersSide number
function SetPedBlendFromParents(ped, father, mother, fathersSide, mothersSide) end

---**`PED` `client` [`0x576594E8D64375E2`](https://docs.fivem.net/natives/?_0x576594E8D64375E2)**
---
---@param ped Ped
---@param toggle boolean
function SetPedBlocksPathingWhenDead(ped, toggle) end

---**`PED` `client` [`0x4F5F651ACCC9C4CF`](https://docs.fivem.net/natives/?_0x4F5F651ACCC9C4CF)**
---
---@param ped Ped
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
function SetPedBoundsOrientation(ped, p1, p2, p3, p4, p5) end

---**`PED` `client` [`0x6C3B4D6D13B4C841`](https://docs.fivem.net/natives/?_0x6C3B4D6D13B4C841)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanArmIk(ped, toggle) end

---**`PED` `client` [`0xC1670E958EEE24E5`](https://docs.fivem.net/natives/?_0xC1670E958EEE24E5)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanBeDraggedOut(ped, toggle) end

---**`PED` `client` [`0x7A6535691B477C48`](https://docs.fivem.net/natives/?_0x7A6535691B477C48)**
---
---```
---state: https://alloc8or.re/gta5/doc/enums/eKnockOffVehicle.txt
---```
---
---@param ped Ped
---@param state number
function SetPedCanBeKnockedOffVehicle(ped, state) end

---**`PED` `client` [`0xC7EF1BA83230BA07`](https://docs.fivem.net/natives/?_0xC7EF1BA83230BA07)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanBeShotInVehicle(ped, toggle) end

---**`PED` `client` [`0x638C03B0F9878F57`](https://docs.fivem.net/natives/?_0x638C03B0F9878F57)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanBeTargetedWhenInjured(ped, toggle) end

---**`PED` `client` [`0x4328652AE5769C71`](https://docs.fivem.net/natives/?_0x4328652AE5769C71)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanBeTargetedWithoutLos(ped, toggle) end

---**`PED` `client` [`0x63F58F7C80513AAD`](https://docs.fivem.net/natives/?_0x63F58F7C80513AAD)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanBeTargetted(ped, toggle) end

---**`PED` `client` [`0x66B57B72E0836A76`](https://docs.fivem.net/natives/?_0x66B57B72E0836A76)**
---
---@param ped Ped
---@param player Player
---@param toggle boolean
function SetPedCanBeTargettedByPlayer(ped, player, toggle) end

---**`PED` `client` [`0xBF1CA77833E58F2C`](https://docs.fivem.net/natives/?_0xBF1CA77833E58F2C)**
---
---@param ped Ped
---@param team number
---@param toggle boolean
function SetPedCanBeTargettedByTeam(ped, team, toggle) end

---**`PED` `client` [`0xCB7553CDCEF4A735`](https://docs.fivem.net/natives/?_0xCB7553CDCEF4A735)**
---
---```
---It simply makes the said ped to cower behind cover object(wall, desk, car)
---Peds flee attributes must be set to not to flee, first. Else, most of the peds, will just flee from gunshot sounds or any other panic situations.
---```
---
---@param ped Ped
---@param toggle boolean
function SetPedCanCowerInCover(ped, toggle) end

---**`PED` `client` [`0x6B7A646C242A7059`](https://docs.fivem.net/natives/?_0x6B7A646C242A7059)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanEvasiveDive(ped, toggle) end

---**`PED` `client` [`0xC11C18092C5530DC`](https://docs.fivem.net/natives/?_0xC11C18092C5530DC)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanHeadIk(ped, toggle) end

---**`PED` `client` [`0x73518ECE2485412B`](https://docs.fivem.net/natives/?_0x73518ECE2485412B)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanLegIk(ped, toggle) end

---**`PED` `client` [`0xE861D0B05C7662B8`](https://docs.fivem.net/natives/?_0xE861D0B05C7662B8)**
---
---It makes the ped lose (or not lose) their props (like glasses or helmets/hat) when someone punches or pushes the ped.
---This is probably what's being used in GTA:O to keep players from knocking other player's hats/glasses off when in combat.
---
---Example code:
---```lua
----- Make the ped NOT lose their props when they're hit or pushed.
---SetPedCanLosePropsOnDamage(PlayerPedId(), false, 0)
---
----- Make the ped LOSE their props when they're hit or pushed.
---SetPedCanLosePropsOnDamage(PlayerPedId(), true, 0)
---```
---
---@param ped Ped The target ped
---@param loseProps boolean true = allow props to fall off, false = don't let props fall off
---@param p2 number purpose unknown, usually 0
function SetPedCanLosePropsOnDamage(ped, loseProps, p2) end

---**`PED` `client` [`0xC514825C507E3736`](https://docs.fivem.net/natives/?_0xC514825C507E3736)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanPeekInCover(ped, toggle) end

---**`PED` `client` [`0x6373D1349925A70E`](https://docs.fivem.net/natives/?_0x6373D1349925A70E)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanPlayAmbientAnims(ped, toggle) end

---**`PED` `client` [`0x0EB0585D15254740`](https://docs.fivem.net/natives/?_0x0EB0585D15254740)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanPlayAmbientBaseAnims(ped, toggle) end

---**`PED` `client` [`0xBAF20C5432058024`](https://docs.fivem.net/natives/?_0xBAF20C5432058024)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanPlayGestureAnims(ped, toggle) end

---**`PED` `client` [`0xF833DDBA3B104D43`](https://docs.fivem.net/natives/?_0xF833DDBA3B104D43)**
---
---```
---p2 usually 0
---```
---
---@param ped Ped
---@param toggle boolean
---@param p2 boolean
function SetPedCanPlayVisemeAnims(ped, toggle, p2) end

---**`PED` `client` [`0xB128377056A54E2A`](https://docs.fivem.net/natives/?_0xB128377056A54E2A)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanRagdoll(ped, toggle) end

---**`PED` `client` [`0xDF993EE5E90ABA25`](https://docs.fivem.net/natives/?_0xDF993EE5E90ABA25)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanRagdollFromPlayerImpact(ped, toggle) end

---**`PED` `client` [`0x1CCE141467FF42A2`](https://docs.fivem.net/natives/?_0x1CCE141467FF42A2)**
---
---@param ped Ped
---@param p1 boolean
---@param p2 boolean
function SetPedCanSmashGlass(ped, p1, p2) end

---**`PED` `client` [`0xED7F7EFE9FABF340`](https://docs.fivem.net/natives/?_0xED7F7EFE9FABF340)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanSwitchWeapon(ped, toggle) end

---**`PED` `client` [`0x2E2F4240B3F24647`](https://docs.fivem.net/natives/?_0x2E2F4240B3F24647)**
---
---```
---This only will teleport the ped to the group leader if the group leader teleports (sets coords).
---Only works in singleplayer
---```
---
---@param pedHandle Ped
---@param groupHandle number
---@param toggle boolean
function SetPedCanTeleportToGroupLeader(pedHandle, groupHandle, toggle) end

---**`PED` `client` [`0xF2B7106D37947CE0`](https://docs.fivem.net/natives/?_0xF2B7106D37947CE0)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanTorsoIk(ped, toggle) end

---**`PED` `client` [`0xF5846EDB26A98A24`](https://docs.fivem.net/natives/?_0xF5846EDB26A98A24)**
---
---@param ped Ped
---@param p1 boolean
function SetPedCanTorsoReactIk(ped, p1) end

---**`PED` `client` [`0x6647C5F6F5792496`](https://docs.fivem.net/natives/?_0x6647C5F6F5792496)**
---
---@param ped Ped
---@param p1 boolean
function SetPedCanTorsoVehicleIk(ped, p1) end

---**`PED` `client` [`0xEC4686EC06434678`](https://docs.fivem.net/natives/?_0xEC4686EC06434678)**
---
---@param ped Ped
---@param toggle boolean
function SetPedCanUseAutoConversationLookat(ped, toggle) end

---**`PED` `client` [`0x364DF566EC833DE2`](https://docs.fivem.net/natives/?_0x364DF566EC833DE2)**
---
---```
---Overrides the ped's collision capsule radius for the current tick.
---Must be called every tick to be effective.
---Setting this to 0.001 will allow warping through some objects.
---```
---
---@param ped Ped
---@param value number
function SetPedCapsule(ped, value) end

---**`PED` `client` [`0x78C4E9961DB3EB5B`](https://docs.fivem.net/natives/?_0x78C4E9961DB3EB5B)**
---
---@param ped Ped
---@param p1 number
function SetPedClothPackageIndex(ped, p1) end

---**`PED` `client` [`0x82A3D6D9CC2CB8E3`](https://docs.fivem.net/natives/?_0x82A3D6D9CC2CB8E3)**
---
---@param p0 any
---@param p1 any
function SetPedClothProne(p0, p1) end

---**`PED` `client` [`0xC7622C0D36B2FDA8`](https://docs.fivem.net/natives/?_0xC7622C0D36B2FDA8)**
---
---```
---100 would equal attack
---less then 50ish would mean run away
---Only the values 0, 1 and 2 occur in the decompiled scripts. Most likely refers directly to the values also described in combatbehaviour.meta:
---0: CA_Poor
---1: CA_Average
---2: CA_Professional
---Tested this and got the same results as the first explanation here. Could not find any difference between 0, 1 and 2.
---```
---
---@param ped Ped
---@param p1 number
function SetPedCombatAbility(ped, p1) end

---**`PED` `client` [`0x9F7794730795E019`](https://docs.fivem.net/natives/?_0x9F7794730795E019)**
---
---These combat attributes seem to be the same as the BehaviourFlags from combatbehaviour.meta.
---So far, these are the equivalents found:
---
---```
---enum CombatAttributes
---{
---	BF_CanUseCover = 0,
---	BF_CanUseVehicles = 1,
---	BF_CanDoDrivebys = 2,
---	BF_CanLeaveVehicle = 3,
---	BF_CanFightArmedPedsWhenNotArmed = 5,
---	BF_CanTauntInVehicle = 20,
---	BF_AlwaysFight = 46,
---	BF_IgnoreTrafficWhenDriving = 52,
---	BF_FleesFromInvincibleOpponents = 63,
---        BF_FreezeMovement = 292,
---        BF_PlayerCanUseFiringWeapons = 1424
---};
---```
---
---8 = ?\
---9 = ?\
---13 = ?\
---14 ?\
---Research thread: gtaforums.com/topic/833391-researchguide-combat-behaviour-flags/
---
---@param ped Ped
---@param attributeIndex number
---@param enabled boolean
function SetPedCombatAttributes(ped, attributeIndex, enabled) end

---**`PED` `client` [`0x4D9CA1009AFBD057`](https://docs.fivem.net/natives/?_0x4D9CA1009AFBD057)**
---
---```
---0 - Stationary (Will just stand in place)
---1 - Defensive (Will try to find cover and very likely to blind fire)
---2 - Offensive (Will attempt to charge at enemy but take cover as well)
---3 - Suicidal Offensive (Will try to flank enemy in a suicidal attack)
---```
---
---@param ped Ped
---@param combatMovement number
function SetPedCombatMovement(ped, combatMovement) end

---**`PED` `client` [`0x3C606747B23E497B`](https://docs.fivem.net/natives/?_0x3C606747B23E497B)**
---
---```
---Only the values 0, 1 and 2 occur in the decompiled scripts. Most likely refers directly to the values also described as AttackRange in combatbehaviour.meta:
---0: CR_Near
---1: CR_Medium
---2: CR_Far
---```
---
---@param ped Ped
---@param p1 number
function SetPedCombatRange(ped, p1) end

---**`PED` `client` [`0x262B14F48D29DE80`](https://docs.fivem.net/natives/?_0x262B14F48D29DE80)**
---
---This native is used to set component variation on a ped. Components, drawables and textures IDs are related to the ped model.
---
---### MP Freemode list of components
---
---**0**: Face
---**1**: Mask
---**2**: Hair
---**3**: Torso
---**4**: Leg
---**5**: Parachute / bag
---**6**: Shoes
---**7**: Accessory
---**8**: Undershirt
---**9**: Kevlar
---**10**: Badge
---**11**: Torso 2
---
---List of Component IDs
---
---```cpp
---// Components
---enum ePedVarComp
---{
---    PV_COMP_INVALID = 0xFFFFFFFF,
---    PV_COMP_HEAD = 0, // "HEAD"
---    PV_COMP_BERD = 1, // "BEARD"
---    PV_COMP_HAIR = 2, // "HAIR"
---    PV_COMP_UPPR = 3, // "UPPER"
---    PV_COMP_LOWR = 4, // "LOWER"
---    PV_COMP_HAND = 5, // "HAND"
---    PV_COMP_FEET = 6, // "FEET"
---    PV_COMP_TEEF = 7, // "TEETH"
---    PV_COMP_ACCS = 8, // "ACCESSORIES"
---    PV_COMP_TASK = 9, // "TASK"
---    PV_COMP_DECL = 10, // "DECL"
---    PV_COMP_JBIB = 11, // "JBIB"
---    PV_COMP_MAX = 12,
---};
---```
---
---@param ped Ped The ped handle.
---@param componentId number The component that you want to set.
---@param drawableId number The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#\_0x27561561732A7842).
---@param textureId number The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#\_0x8F7156A3142A6BAD).
---@param paletteId number 0 to 3.
function SetPedComponentVariation(ped, componentId, drawableId, textureId, paletteId) end

---**`PED` `client` [`0x1913FE4CBF41C463`](https://docs.fivem.net/natives/?_0x1913FE4CBF41C463)**
---
---```cpp
---// Potential names and hash collisions included as comments
---enum ePedConfigFlags {
---	_0x67D1A445 = 0,
---	_0xC63DE95E = 1,
---	CPED_CONFIG_FLAG_NoCriticalHits = 2,
---	CPED_CONFIG_FLAG_DrownsInWater = 3,
---	CPED_CONFIG_FLAG_DisableReticuleFixedLockon = 4,
---	_0x37D196F4 = 5,
---	_0xE2462399 = 6,
---	CPED_CONFIG_FLAG_UpperBodyDamageAnimsOnly = 7,
---	_0xEDDEB838 = 8,
---	_0xB398B6FD = 9,
---	_0xF6664E68 = 10,
---	_0xA05E7CA3 = 11,
---	_0xCE394045 = 12,
---	CPED_CONFIG_FLAG_NeverLeavesGroup = 13,
---	_0xCD8D1411 = 14,
---	_0xB031F1A9 = 15,
---	_0xFE65BEE3 = 16,
---	CPED_CONFIG_FLAG_BlockNonTemporaryEvents = 17,
---	_0x380165BD = 18,
---	_0x07C045C7 = 19,
---	_0x583B5E2D = 20,
---	_0x475EDA58 = 21,
---	_0x8629D05B = 22,
---	_0x1522968B = 23,
---	CPED_CONFIG_FLAG_IgnoreSeenMelee = 24,
---	_0x4CC09C4B = 25,
---	_0x034F3053 = 26,
---	_0xD91BA7CC = 27,
---	_0x5C8DC66E = 28,
---	_0x8902EAA0 = 29,
---	_0x6580B9D2 = 30,
---	_0x0EF7A297 = 31,
---	_0x6BF86E5B = 32,
---	CPED_CONFIG_FLAG_DieWhenRagdoll = 33,
---	CPED_CONFIG_FLAG_HasHelmet = 34,
---	CPED_CONFIG_FLAG_UseHelmet = 35,
---	_0xEEB3D630 = 36,
---	_0xB130D17B = 37,
---	_0x5F071200 = 38,
---	CPED_CONFIG_FLAG_DisableEvasiveDives = 39,
---	_0xC287AAFF = 40,
---	_0x203328CC = 41,
---	CPED_CONFIG_FLAG_DontInfluenceWantedLevel = 42,
---	CPED_CONFIG_FLAG_DisablePlayerLockon = 43,
---	CPED_CONFIG_FLAG_DisableLockonToRandomPeds = 44,
---	_0xEC4A8ACF = 45,
---	_0xDB115BFA = 46,
---	CPED_CONFIG_FLAG_PedBeingDeleted = 47,
---	CPED_CONFIG_FLAG_BlockWeaponSwitching = 48,
---	_0xF8E99565 = 49,
---	_0xDD17FEE6 = 50,
---	_0x7ED9B2C9 = 51,
---	_0x655E8618 = 52,
---	_0x5A6C1F6E = 53,
---	_0xD749FC41 = 54,
---	_0x357F63F3 = 55,
---	_0xC5E60961 = 56,
---	_0x29275C3E = 57,
---	CPED_CONFIG_FLAG_IsFiring = 58,
---	CPED_CONFIG_FLAG_WasFiring = 59,
---	CPED_CONFIG_FLAG_IsStanding = 60,
---	CPED_CONFIG_FLAG_WasStanding = 61,
---	CPED_CONFIG_FLAG_InVehicle = 62,
---	CPED_CONFIG_FLAG_OnMount = 63,
---	CPED_CONFIG_FLAG_AttachedToVehicle = 64,
---	CPED_CONFIG_FLAG_IsSwimming = 65,
---	CPED_CONFIG_FLAG_WasSwimming = 66,
---	CPED_CONFIG_FLAG_IsSkiing = 67,
---	CPED_CONFIG_FLAG_IsSitting = 68,
---	CPED_CONFIG_FLAG_KilledByStealth = 69,
---	CPED_CONFIG_FLAG_KilledByTakedown = 70,
---	CPED_CONFIG_FLAG_Knockedout = 71,
---	_0x3E3C4560 = 72,
---	_0x2994C7B7 = 73,
---	_0x6D59D275 = 74,
---	CPED_CONFIG_FLAG_UsingCoverPoint = 75,
---	CPED_CONFIG_FLAG_IsInTheAir = 76,
---	_0x2D493FB7 = 77,
---	CPED_CONFIG_FLAG_IsAimingGun = 78,
---	_0x14D69875 = 79,
---	_0x40B05311 = 80,
---	_0x8B230BC5 = 81,
---	_0xC74E5842 = 82,
---	_0x9EA86147 = 83,
---	_0x674C746C = 84,
---	_0x3E56A8C2 = 85,
---	_0xC144A1EF = 86,
---	_0x0548512D = 87,
---	_0x31C93909 = 88,
---	_0xA0269315 = 89,
---	_0xD4D59D4D = 90,
---	_0x411D4420 = 91,
---	_0xDF4AEF0D = 92,
---	CPED_CONFIG_FLAG_ForcePedLoadCover = 93,
---	_0x300E4CD3 = 94,
---	_0xF1C5BF04 = 95,
---	_0x89C2EF13 = 96,
---	CPED_CONFIG_FLAG_VaultFromCover = 97,
---	_0x02A852C8 = 98,
---	_0x3D9407F1 = 99,
---	_0x319B4558 = 100,
---	CPED_CONFIG_FLAG_ForcedAim = 101,
---	_0xB942D71A = 102,
---	_0xD26C55A8 = 103,
---	_0xB89E703B = 104,
---	CPED_CONFIG_FLAG_ForceReload = 105,
---	_0xD9E73DA2 = 106,
---	_0xFF71DC2C = 107,
---	_0x1E27E8D8 = 108,
---	_0xF2C53966 = 109,
---	_0xC4DBE247 = 110,
---	_0x83C0A4BF = 111,
---	_0x0E0FAF8C = 112,
---	_0x26616660 = 113,
---	_0x43B80B79 = 114,
---	_0x0D2A9309 = 115,
---	_0x12C1C983 = 116,
---	CPED_CONFIG_FLAG_BumpedByPlayer = 117,
---	_0xE586D504 = 118,
---	_0x52374204 = 119,
---	CPED_CONFIG_FLAG_IsHandCuffed = 120,
---	CPED_CONFIG_FLAG_IsAnkleCuffed = 121,
---	CPED_CONFIG_FLAG_DisableMelee = 122,
---	_0xFE714397 = 123,
---	_0xB3E660BD = 124,
---	_0x5FED6BFD = 125,
---	_0xC9D6F66F = 126,
---	_0x519BC986 = 127,
---	CPED_CONFIG_FLAG_CanBeAgitated = 128,
---	_0x9A4B617C = 129, // CPED_CONFIG_FLAG_FaceDirInsult
---	_0xDAB70E9F = 130,
---	_0xE569438A = 131,
---	_0xBBC77D6D = 132,
---	_0xCB59EF0F = 133,
---	_0x8C5EA971 = 134,
---	CPED_CONFIG_FLAG_IsScuba = 135,
---	CPED_CONFIG_FLAG_WillArrestRatherThanJack = 136,
---	_0xDCE59B58 = 137,
---	CPED_CONFIG_FLAG_RidingTrain = 138,
---	CPED_CONFIG_FLAG_ArrestResult = 139,
---	CPED_CONFIG_FLAG_CanAttackFriendly = 140,
---	_0x98A4BE43 = 141,
---	_0x6901E731 = 142,
---	_0x9EC9BF6C = 143,
---	_0x42841A8F = 144,
---	CPED_CONFIG_FLAG_ShootingAnimFlag = 145,
---	CPED_CONFIG_FLAG_DisableLadderClimbing = 146,
---	CPED_CONFIG_FLAG_StairsDetected = 147,
---	CPED_CONFIG_FLAG_SlopeDetected = 148,
---	_0x1A15670B = 149,
---	_0x61786EE5 = 150,
---	_0xCB9186BD = 151,
---	_0xF0710152 = 152,
---	_0x43DFE310 = 153,
---	_0xC43C624E = 154,
---	CPED_CONFIG_FLAG_CanPerformArrest = 155,
---	CPED_CONFIG_FLAG_CanPerformUncuff = 156,
---	CPED_CONFIG_FLAG_CanBeArrested = 157,
---	_0xF7960FF5 = 158,
---	_0x59564113 = 159,
---	_0x0C6C3099 = 160,
---	_0x645F927A = 161,
---	_0xA86549B9 = 162,
---	_0x8AAF337A = 163,
---	_0x13BAA6E7 = 164,
---	_0x5FB9D1F5 = 165,
---	CPED_CONFIG_FLAG_IsInjured = 166,
---	_0x6398A20B = 167,
---	_0xD8072639 = 168,
---	_0xA05B1845 = 169,
---	_0x83F6D220 = 170,
---	_0xD8430331 = 171,
---	_0x4B547520 = 172,
---	_0xE66E1406 = 173,
---	_0x1C4BFE0C = 174,
---	_0x90008BFA = 175,
---	_0x07C7A910 = 176,
---	_0xF15F8191 = 177,
---	_0xCE4E8BE2 = 178,
---	_0x1D46E4F2 = 179,
---	CPED_CONFIG_FLAG_IsInCustody = 180,
---	_0xE4FD9B3A = 181,
---	_0x67AE0812 = 182,
---	CPED_CONFIG_FLAG_IsAgitated = 183,
---	CPED_CONFIG_FLAG_PreventAutoShuffleToDriversSeat = 184,
---	_0x7B2D325E = 185,
---	CPED_CONFIG_FLAG_EnableWeaponBlocking = 186,
---	CPED_CONFIG_FLAG_HasHurtStarted = 187,
---	CPED_CONFIG_FLAG_DisableHurt = 188,
---	CPED_CONFIG_FLAG_PlayerIsWeird = 189,
---	_0x32FC208B = 190,
---	_0x0C296E5A = 191,
---	_0xE63B73EC = 192,
---	_0x04E9CC80 = 193,
---	CPED_CONFIG_FLAG_UsingScenario = 194,
---	CPED_CONFIG_FLAG_VisibleOnScreen = 195,
---	_0xD88C58A1 = 196,
---	_0x5A3DCF43 = 197, // CPED_CONFIG_FLAG_AvoidUnderSide
---	_0xEA02B420 = 198,
---	_0x3F559CFF = 199,
---	_0x8C55D029 = 200,
---	_0x5E6466F6 = 201,
---	_0xEB5AD706 = 202,
---	_0x0EDDDDE7 = 203,
---	_0xA64F7B1D = 204,
---	_0x48532CBA = 205,
---	_0xAA25A9E7 = 206,
---	_0x415B26B9 = 207,
---	CPED_CONFIG_FLAG_DisableExplosionReactions = 208,
---	CPED_CONFIG_FLAG_DodgedPlayer = 209,
---	_0x67405504 = 210,
---	_0x75DDD68C = 211,
---	_0x2AD879B4 = 212,
---	_0x51486F91 = 213,
---	_0x32F79E21 = 214,
---	_0xBF099213 = 215,
---	_0x054AC8E2 = 216,
---	_0x14E495CC = 217,
---	_0x3C7DF9DF = 218,
---	_0x848FFEF2 = 219,
---	CPED_CONFIG_FLAG_DontEnterLeadersVehicle = 220,
---	_0x2618E1CF = 221,
---	_0x84F722FA = 222,
---	_0xD1B87B1F = 223,
---	_0x728AA918 = 224,
---	CPED_CONFIG_FLAG_DisablePotentialToBeWalkedIntoResponse = 225,
---	CPED_CONFIG_FLAG_DisablePedAvoidance = 226,
---	_0x59E91185 = 227,
---	_0x1EA7225F = 228,
---	CPED_CONFIG_FLAG_DisablePanicInVehicle = 229,
---	_0x6DCA7D88 = 230,
---	_0xFC3E572D = 231,
---	_0x08E9F9CF = 232,
---	_0x2D3BA52D = 233,
---	_0xFD2F53EA = 234,
---	_0x31A1B03B = 235,
---	CPED_CONFIG_FLAG_IsHoldingProp = 236,
---	_0x82ED0A66 = 237, // CPED_CONFIG_FLAG_BlocksPathingWhenDead
---	_0xCE57C9A3 = 238,
---	_0x26149198 = 239,
---	_0x1B33B598 = 240,
---	_0x719B6E87 = 241,
---	_0x13E8E8E8 = 242,
---	_0xF29739AE = 243,
---	_0xABEA8A74 = 244,
---	_0xB60EA2BA = 245,
---	_0x536B0950 = 246,
---	_0x0C754ACA = 247,
---	CPED_CONFIG_FLAG_DisableVehicleSeatRandomAnimations = 248,
---	_0x12659168 = 249,
---	_0x1BDF2F04 = 250,
---	_0x7728FAA3 = 251,
---	_0x6A807ED8 = 252,
---	CPED_CONFIG_FLAG_OnStairs = 253,
---	_0xE1A2F73F = 254,
---	_0x5B3697C8 = 255,
---	_0xF1EB20A9 = 256,
---	_0x8B7DF407 = 257,
---	_0x329DCF1A = 258,
---	_0x8D90DD1B = 259,
---	_0xB8A292B7 = 260,
---	_0x8374B087 = 261,
---	_0x2AF558F0 = 262,
---	_0x82251455 = 263,
---	_0x30CF498B = 264,
---	_0xE1CD50AF = 265,
---	_0x72E4AE48 = 266,
---	_0xC2657EA1 = 267,
---	_0x29FF6030 = 268,
---	_0x8248A5EC = 269,
---	CPED_CONFIG_FLAG_OnStairSlope = 270,
---	_0xA0897933 = 271,
---	CPED_CONFIG_FLAG_DontBlipCop = 272,
---	CPED_CONFIG_FLAG_ClimbedShiftedFence = 273,
---	_0xF7823618 = 274,
---	_0xDC305CCE = 275, // CPED_CONFIG_FLAG_KillWhenTrapped
---	CPED_CONFIG_FLAG_EdgeDetected = 276,
---	_0x92B67896 = 277,
---	_0xCAD677C9 = 278,
---	CPED_CONFIG_FLAG_AvoidTearGas = 279,
---	_0x5276AC7B = 280,
---	_0x1032692A = 281,
---	_0xDA23E7F1 = 282,
---	_0x9139724D = 283,
---	_0xA1457461 = 284,
---	_0x4186E095 = 285,
---	_0xAC68E2EB = 286,
---	CPED_CONFIG_FLAG_RagdollingOnBoat = 287,
---	CPED_CONFIG_FLAG_HasBrandishedWeapon = 288,
---	_0x1B9EE8A1 = 289,
---	_0xF3F5758C = 290,
---	_0x2A9307F1 = 291,
---	_0x7403D216 = 292,
---	_0xA06A3C6C = 293,
---	CPED_CONFIG_FLAG_DisableShockingEvents = 294,
---	_0xF8DA25A5 = 295,
---	_0x7EF55802 = 296,
---	_0xB31F1187 = 297,
---	_0x84315402 = 298,
---	_0x0FD69867 = 299,
---	_0xC7829B67 = 300,
---	CPED_CONFIG_FLAG_DisablePedConstraints = 301,
---	_0x6D23CF25 = 302,
---	_0x2ADA871B = 303,
---	_0x47BC8A58 = 304,
---	_0xEB692FA5 = 305,
---	_0x4A133C50 = 306,
---	_0xC58099C3 = 307,
---	_0xF3D76D41 = 308,
---	_0xB0EEE9F2 = 309,
---	CPED_CONFIG_FLAG_IsInCluster = 310,
---	_0x0FA153EF = 311,
---	_0xD73F5CD3 = 312,
---	_0xD4136C22 = 313,
---	_0xE404CA6B = 314,
---	_0xB9597446 = 315,
---	_0xD5C98277 = 316,
---	_0xD5060A9C = 317,
---	_0x3E5F1CBB = 318,
---	_0xD8BE1D54 = 319,
---	_0x0B1F191F = 320,
---	_0xC995167A = 321,
---	CPED_CONFIG_FLAG_HasHighHeels = 322,
---	_0x86B01E54 = 323,
---	_0x3A56FE15 = 324,
---	_0xC03B736C = 325, // CPED_CONFIG_FLAG_SpawnedAtScenario
---	_0xBBF47729 = 326,
---	_0x22B668A8 = 327,
---	_0x2624D4D4 = 328,
---	CPED_CONFIG_FLAG_DisableTalkTo = 329,
---	CPED_CONFIG_FLAG_DontBlip = 330,
---	CPED_CONFIG_FLAG_IsSwitchingWeapon = 331,
---	_0x630F55F3 = 332,
---	_0x150468FD = 333,
---	_0x914EBD6B = 334,
---	_0x79AF3B6D = 335,
---	_0x75C7A632 = 336,
---	_0x52D530E2 = 337,
---	_0xDB2A90E0 = 338,
---	_0x5922763D = 339,
---	_0x12ADB567 = 340,
---	_0x105C8518 = 341,
---	_0x106F703D = 342,
---	_0xED152C3E = 343,
---	_0xA0EFE6A8 = 344,
---	_0xBF348C82 = 345,
---	_0xCDDFE830 = 346,
---	_0x7B59BD9B = 347,
---	_0x0124C788 = 348,
---	CPED_CONFIG_FLAG_EquipJetpack = 349,
---	_0x08D361A5 = 350,
---	_0xE13D1F7C = 351,
---	_0x40E25FB9 = 352,
---	_0x930629D9 = 353,
---	_0xECCF0C7F = 354,
---	_0xB6E9613B = 355,
---	_0x490C0478 = 356,
---	_0xE8865BEA = 357,
---	_0xF3C34A29 = 358,
---	CPED_CONFIG_FLAG_IsDuckingInVehicle = 359,
---	_0xF660E115 = 360,
---	_0xAB0E6DED = 361,
---	CPED_CONFIG_FLAG_HasReserveParachute = 362,
---	CPED_CONFIG_FLAG_UseReserveParachute = 363,
---	_0x5C5D9CD3 = 364,
---	_0x8F7701F3 = 365,
---	_0xBC4436AD = 366,
---	_0xD7E07D37 = 367,
---	_0x03C4FD24 = 368,
---	_0x7675789A = 369,
---	_0xB7288A88 = 370,
---	_0xC06B6291 = 371,
---	_0x95A4A805 = 372,
---	_0xA8E9A042 = 373,
---	CPED_CONFIG_FLAG_NeverLeaveTrain = 374,
---	_0xBAC674B3 = 375,
---	_0x147F1FFB = 376,
---	_0x4376DD79 = 377,
---	_0xCD3DB518 = 378,
---	_0xFE4BA4B6 = 379,
---	_0x5DF03A55 = 380,
---	_0xBCD816CD = 381,
---	_0xCF02DD69 = 382,
---	_0xF73AFA2E = 383,
---	_0x80B9A9D0 = 384,
---	_0xF601F7EE = 385,
---	_0xA91350FC = 386,
---	_0x3AB23B96 = 387,
---	CPED_CONFIG_FLAG_IsClimbingLadder = 388,
---	CPED_CONFIG_FLAG_HasBareFeet = 389,
---	_0xB4B1CD4C = 390,
---	_0x5459AFB8 = 391,
---	_0x54F27667 = 392,
---	_0xC11D3E8F = 393,
---	_0x5419EB3E = 394,
---	_0x82D8DBB4 = 395,
---	_0x33B02D2F = 396,
---	_0xAE66176D = 397,
---	_0xA2692593 = 398,
---	_0x714C7E31 = 399,
---	_0xEC488AC7 = 400,
---	_0xAE398504 = 401,
---	_0xABC58D72 = 402,
---	_0x5E5B9591 = 403,
---	_0x6BA1091E = 404,
---	_0x77840177 = 405,
---	_0x1C7ACAC4 = 406,
---	_0x124420E9 = 407,
---	_0x75A65587 = 408,
---	_0xDFD2D55B = 409,
---	_0xBDD39919 = 410,
---	_0x43DEC267 = 411,
---	_0xE42B7797 = 412,
---	CPED_CONFIG_FLAG_IsHolsteringWeapon = 413,
---	_0x4F8149F5 = 414,
---	_0xDD9ECA7A = 415,
---	_0x9E7EF9D2 = 416,
---	_0x2C6ED942 = 417,
---	CPED_CONFIG_FLAG_IsSwitchingHelmetVisor = 418,
---	_0xA488727D = 419,
---	_0xCFF5F6DE = 420,
---	_0x6D614599 = 421,
---	CPED_CONFIG_FLAG_DisableVehicleCombat = 422,
---	_0xFE401D26 = 423,
---	CPED_CONFIG_FLAG_FallsLikeAircraft = 424,
---	_0x2B42AE82 = 425,
---	_0x7A95734F = 426,
---	_0xDF4D8617 = 427,
---	_0x578F1F14 = 428,
---	CPED_CONFIG_FLAG_DisableStartEngine = 429,
---	CPED_CONFIG_FLAG_IgnoreBeingOnFire = 430,
---	_0x153C9500 = 431,
---	_0xCB7A632E = 432,
---	_0xDE727981 = 433,
---	CPED_CONFIG_FLAG_DisableHomingMissileLockon = 434,
---	_0x12BBB935 = 435,
---	_0xAD0A1277 = 436,
---	_0xEA6AA46A = 437,
---	CPED_CONFIG_FLAG_DisableHelmetArmor = 438,
---	_0xCB7F3A1E = 439,
---	_0x50178878 = 440,
---	_0x051B4F0D = 441,
---	_0x2FC3DECC = 442,
---	_0xC0030B0B = 443,
---	_0xBBDAF1E9 = 444,
---	_0x944FE59C = 445,
---	_0x506FBA39 = 446,
---	_0xDD45FE84 = 447,
---	_0xE698AE75 = 448,
---	_0x199633F8 = 449,
---	CPED_CONFIG_FLAG_PedIsArresting = 450,
---	CPED_CONFIG_FLAG_IsDecoyPed = 451,
---	_0x3A251D83 = 452,
---	_0xA56F6986 = 453,
---	_0x1D19C622 = 454,
---	_0xB68D3EAB = 455,
---	CPED_CONFIG_FLAG_CanBeIncapacitated = 456,
---	_0x4BD5EBAD = 457,
---}
---```
---
---@param ped Ped
---@param flagId number
---@param value boolean
function SetPedConfigFlag(ped, flagId, value) end

---**`PED` `client` [`0x9AFEFF481A85AB2E`](https://docs.fivem.net/natives/?_0x9AFEFF481A85AB2E)**
---
---```
---teleports ped to coords along with the vehicle ped is in
---```
---
---@param ped Ped
---@param posX number
---@param posY number
---@param posZ number
function SetPedCoordsKeepVehicle(ped, posX, posY, posZ) end

---**`PED` `client` [`0x87052FE446E07247`](https://docs.fivem.net/natives/?_0x87052FE446E07247)**
---
---@param ped Ped
---@param posX number
---@param posY number
---@param posZ number
function SetPedCoordsNoGang(ped, posX, posY, posZ) end

---**`PED` `client` [`0xA549131166868ED3`](https://docs.fivem.net/natives/?_0xA549131166868ED3)**
---
---```
---p1: Only "CODE_HUMAN_STAND_COWER" found in the b617d scripts.
---```
---
---@param ped Ped
---@param p1 string
function SetPedCowerHash(ped, p1) end

---**`PED` `client` [`0x45EEE61580806D63`](https://docs.fivem.net/natives/?_0x45EEE61580806D63)**
---
---```
---Sets Ped Default Clothes
---```
---
---@param ped Ped
function SetPedDefaultComponentVariation(ped) end

---**`PED` `client` [`0x4EF47FE21698A8B6`](https://docs.fivem.net/natives/?_0x4EF47FE21698A8B6)**
---
---@param ped Ped
---@param attachPed Ped
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 number
---@param p9 boolean
---@param p10 boolean
function SetPedDefensiveAreaAttachedToPed(ped, attachPed, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

---**`PED` `client` [`0x413C6C763A4AFFAD`](https://docs.fivem.net/natives/?_0x413C6C763A4AFFAD)**
---
---@param ped Ped
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 boolean
function SetPedDefensiveAreaDirection(ped, p1, p2, p3, p4) end

---**`PED` `client` [`0xF9B8F91AAD3B953E`](https://docs.fivem.net/natives/?_0xF9B8F91AAD3B953E)**
---
---@param ped Ped
---@param target Ped
---@param xOffset number
---@param yOffset number
---@param zOffset number
---@param radius number
---@param p6 boolean
function SetPedDefensiveSphereAttachedToPed(ped, target, xOffset, yOffset, zOffset, radius, p6) end

---**`PED` `client` [`0xE4723DB6E736CCFF`](https://docs.fivem.net/natives/?_0xE4723DB6E736CCFF)**
---
---@param ped Ped
---@param target Vehicle
---@param xOffset number
---@param yOffset number
---@param zOffset number
---@param radius number
---@param p6 boolean
function SetPedDefensiveSphereAttachedToVehicle(ped, target, xOffset, yOffset, zOffset, radius, p6) end

---**`PED` `client` [`0x95E3D6257B166CF2`](https://docs.fivem.net/natives/?_0x95E3D6257B166CF2)**
---
---@param multiplier number
function SetPedDensityMultiplierThisFrame(multiplier) end

---**`PED` `client` [`0xAA5A7ECE2AA8FE70`](https://docs.fivem.net/natives/?_0xAA5A7ECE2AA8FE70)**
---
---@param ped Ped
---@param heading number
function SetPedDesiredHeading(ped, heading) end

---**`PED` `client` [`0xEEB64139BA29A7CF`](https://docs.fivem.net/natives/?_0xEEB64139BA29A7CF)**
---
---@param ped Ped
---@param toggle boolean
function SetPedDiesInstantlyInWater(ped, toggle) end

---**`PED` `client` [`0xD718A22995E2B4BC`](https://docs.fivem.net/natives/?_0xD718A22995E2B4BC)**
---
---@param ped Ped
---@param toggle boolean
function SetPedDiesInSinkingVehicle(ped, toggle) end

---**`PED` `client` [`0x2A30922C90C9B42C`](https://docs.fivem.net/natives/?_0x2A30922C90C9B42C)**
---
---@param ped Ped
---@param toggle boolean
function SetPedDiesInVehicle(ped, toggle) end

---**`PED` `client` [`0x56CEF0AC79073BDE`](https://docs.fivem.net/natives/?_0x56CEF0AC79073BDE)**
---
---@param ped Ped
---@param toggle boolean
function SetPedDiesInWater(ped, toggle) end

---**`PED` `client` [`0x5BA7919BED300023`](https://docs.fivem.net/natives/?_0x5BA7919BED300023)**
---
---@param ped Ped
---@param toggle boolean
function SetPedDiesWhenInjured(ped, toggle) end

---**`PED` `client` [`0xED34AB6C5CB36520`](https://docs.fivem.net/natives/?_0xED34AB6C5CB36520)**
---
---@param ped Ped
---@param clipset string
function SetPedDriveByClipsetOverride(ped, clipset) end

---**`PED` `client` [`0x030983CA930B692D`](https://docs.fivem.net/natives/?_0x030983CA930B692D)**
---
---```
---This is the SET_CHAR_DUCKING from GTA IV, that makes Peds duck. This function does nothing in GTA V. It cannot set the ped as ducking in vehicles, and IS_PED_DUCKING will always return false.
---```
---
---@param ped Ped
---@param toggle boolean
function SetPedDucking(ped, toggle) end

---**`PED` `client` [`0x97A790315D3831FD`](https://docs.fivem.net/natives/?_0x97A790315D3831FD)**
---
---@param ped Ped
---@param toggle boolean
function SetPedEnableWeaponBlocking(ped, toggle) end

---**`PED` `client` [`0xD69411AA0CEBF9E9`](https://docs.fivem.net/natives/?_0xD69411AA0CEBF9E9)**
---
---```
---Something related to the environmental effects natives.
---In the "agency_heist3b" script, p1 - p3 are always under 100 - usually they are {87, 81, 68}. If SET_PED_ENVEFF_SCALE is set to 0.65 (instead of the usual 1.0), they use {74, 69, 60}
---```
---
---@param ped Ped
---@param r number
---@param g number
---@param b number
function SetPedEnveffColorModulator(ped, r, g, b) end

---**`PED` `client` [`0xBF29516833893561`](https://docs.fivem.net/natives/?_0xBF29516833893561)**
---
---```
---Values look to be between 0.0 and 1.0
---From decompiled scripts: 0.0, 0.6, 0.65, 0.8, 1.0
---You are correct, just looked in IDA it breaks from the function if it's less than 0.0f or greater than 1.0f.
---```
---
---@param ped Ped
---@param value number
function SetPedEnveffScale(ped, value) end

---**`PED` `client` [`0x9AC577F5A12AD8A9`](https://docs.fivem.net/natives/?_0x9AC577F5A12AD8A9)**
---
---```
---FIRING_PATTERN_BURST_FIRE = 0xD6FF6D61 ( 1073727030 )
---FIRING_PATTERN_BURST_FIRE_IN_COVER = 0x026321F1 ( 40051185 )
---FIRING_PATTERN_BURST_FIRE_DRIVEBY = 0xD31265F2 ( -753768974 )
---FIRING_PATTERN_FROM_GROUND = 0x2264E5D6 ( 577037782 )
---FIRING_PATTERN_DELAY_FIRE_BY_ONE_SEC = 0x7A845691 ( 2055493265 )
---FIRING_PATTERN_FULL_AUTO = 0xC6EE6B4C ( -957453492 )
---FIRING_PATTERN_SINGLE_SHOT = 0x5D60E4E0 ( 1566631136 )
---FIRING_PATTERN_BURST_FIRE_PISTOL = 0xA018DB8A ( -1608983670 )
---FIRING_PATTERN_BURST_FIRE_SMG = 0xD10DADEE ( 1863348768 )
---FIRING_PATTERN_BURST_FIRE_RIFLE = 0x9C74B406 ( -1670073338 )
---FIRING_PATTERN_BURST_FIRE_MG = 0xB573C5B4 ( -1250703948 )
---FIRING_PATTERN_BURST_FIRE_PUMPSHOTGUN = 0x00BAC39B ( 12239771 )
---FIRING_PATTERN_BURST_FIRE_HELI = 0x914E786F ( -1857128337 )
---FIRING_PATTERN_BURST_FIRE_MICRO = 0x42EF03FD ( 1122960381 )
---FIRING_PATTERN_SHORT_BURSTS = 0x1A92D7DF ( 445831135 )
---FIRING_PATTERN_SLOW_FIRE_TANK = 0xE2CA3A71 ( -490063247 )
---if anyone is interested firing pattern info: pastebin.com/Px036isB
---```
---
---@param ped Ped
---@param patternHash Hash
function SetPedFiringPattern(ped, patternHash) end

---**`PED` `client` [`0x70A2D1137C8ED7C9`](https://docs.fivem.net/natives/?_0x70A2D1137C8ED7C9)**
---
---```
---bit 15 (0x8000) = force cower
---```
---
---@param ped Ped
---@param attributeFlags number
---@param enable boolean
function SetPedFleeAttributes(ped, attributeFlags, enable) end

---**`PED` `client` [`0x7FB17BA2E7DECA5B`](https://docs.fivem.net/natives/?_0x7FB17BA2E7DECA5B)**
---
---@param ped Ped
---@param toggle boolean
function SetPedGeneratesDeadBodyEvents(ped, toggle) end

---**`PED` `client` [`0xDDF803377F94AAA8`](https://docs.fivem.net/natives/?_0xDDF803377F94AAA8)**
---
---```
---From the scripts:
---PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(),
---"ANIM_GROUP_GESTURE_MISS_FRA0");
---PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(),
---"ANIM_GROUP_GESTURE_MISS_DocksSetup1");
---```
---
---@param ped Ped
---@param animGroupGesture string
function SetPedGestureGroup(ped, animGroupGesture) end

---**`PED` `client` [`0xBC0ED94165A48BC2`](https://docs.fivem.net/natives/?_0xBC0ED94165A48BC2)**
---
---@param ped Ped
---@param toggle boolean
function SetPedGetOutUpsideDownVehicle(ped, toggle) end

---**`PED` `client` [`0x9FF447B6B6AD960A`](https://docs.fivem.net/natives/?_0x9FF447B6B6AD960A)**
---
---```
---enable or disable the gravity of a ped
---Examples:
---PED::SET_PED_GRAVITY(PLAYER::PLAYER_PED_ID(), 0x00000001);
---PED::SET_PED_GRAVITY(Local_289[iVar0 /*20*/], 0x00000001);
---```
---
---@param ped Ped
---@param toggle boolean
function SetPedGravity(ped, toggle) end

---**`PED` `client` [`0x0BDDB8D9EC6BCF3C`](https://docs.fivem.net/natives/?_0x0BDDB8D9EC6BCF3C)**
---
---@param ped Ped
---@param index number
function SetPedGroupMemberPassengerIndex(ped, index) end

---**`PED` `client` [`0x9414E18B9434C2FE`](https://docs.fivem.net/natives/?_0x9414E18B9434C2FE)**
---
---For more info please refer to [this](https://gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained) topic.
---
---**Other information:**
---
---IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.</br>
---
---This native function is often called prior to calling natives such as:
---
---*   [`SetPedHairColor`](#0xBB43F090)
---*   [`SetPedHeadOverlayColor`](#0x78935A27)
---*   [`SetPedHeadOverlay`](#0xD28DBA90)
---*   [`SetPedFaceFeature`](#0x6C8D4458)
---
---Example code:
---```lua
----- Unfortunately, there's no clear way of getting the head blend data in lua out of the box, but there are wrappers:
----- https://forum.cfx.re/t/small-c-export-event-wrapper-for-getpedheadblenddata/214611
---SetPedHeadBlendData(PlayerPedId(), 0, 0, 0, 0, 0, 0, 0, 0, 0, false)
---```
---
---@param ped Ped The ped entity
---@param shapeFirstID number Controls the shape of the first ped's face
---@param shapeSecondID number Controls the shape of the second ped's face
---@param shapeThirdID number Controls the shape of the third ped's face
---@param skinFirstID number Controls the first id's skin tone
---@param skinSecondID number Controls the second id's skin tone
---@param skinThirdID number Controls the third id's skin tone
---@param shapeMix number 0.0 - 1.0 Of whose characteristics to take Mother -> Father (shapeFirstID and shapeSecondID)
---@param skinMix number 0.0 - 1.0 Of whose characteristics to take Mother -> Father (skinFirstID and skinSecondID)
---@param thirdMix number Overrides the others in favor of the third IDs.
---@param isParent boolean IsParent is set for "children" of the player character's grandparents during old-gen character creation. It has unknown effect otherwise.
function SetPedHeadBlendData(
	ped,
	shapeFirstID,
	shapeSecondID,
	shapeThirdID,
	skinFirstID,
	skinSecondID,
	skinThirdID,
	shapeMix,
	skinMix,
	thirdMix,
	isParent
)
end

---**`PED` `client` [`0x48F44967FA05CC1E`](https://docs.fivem.net/natives/?_0x48F44967FA05CC1E)**
---
---```
---OverlayID ranges from 0 to 12, index from 0 to _GET_NUM_OVERLAY_VALUES(overlayID)-1, and opacity from 0.0 to 1.0.
---overlayID       Part                  Index, to disable
---0               Blemishes             0 - 23, 255
---1               Facial Hair           0 - 28, 255
---2               Eyebrows              0 - 33, 255
---3               Ageing                0 - 14, 255
---4               Makeup                0 - 74, 255
---5               Blush                 0 - 6, 255
---6               Complexion            0 - 11, 255
---7               Sun Damage            0 - 10, 255
---8               Lipstick              0 - 9, 255
---9               Moles/Freckles        0 - 17, 255
---10              Chest Hair            0 - 16, 255
---11              Body Blemishes        0 - 11, 255
---12              Add Body Blemishes    0 - 1, 255
---```
---
---**Note:**
---
---You may need to call [`SetPedHeadBlendData`](#0x9414E18B9434C2FE) prior to calling this native in order for it to work.
---
---@param ped Ped The ped entity
---@param overlayID number The overlay id displayed up above.
---@param index number An integer representing the index (from 0 to `_GET_NUM_OVERLAY_VALUES(overlayID)-1`)
---@param opacity number A float ranging from 0.0 to 1.0
function SetPedHeadOverlay(ped, overlayID, index, opacity) end

---**`PED` `client` [`0x33A8F7F7D5F7F33C`](https://docs.fivem.net/natives/?_0x33A8F7F7D5F7F33C)**
---
---@param ped Ped
---@param value number
function SetPedHearingRange(ped, value) end

---**`PED` `client` [`0xC1F6EBF9A3D55538`](https://docs.fivem.net/natives/?_0xC1F6EBF9A3D55538)**
---
---@param ped Ped
---@param heatScale number
function SetPedHeatscaleOverride(ped, heatScale) end

---**`PED` `client` [`0x560A43136EB58105`](https://docs.fivem.net/natives/?_0x560A43136EB58105)**
---
---@param ped Ped
---@param canWearHelmet boolean
function SetPedHelmet(ped, canWearHelmet) end

---**`PED` `client` [`0xC0E78D5C2CE3EB25`](https://docs.fivem.net/natives/?_0xC0E78D5C2CE3EB25)**
---
---@param ped Ped
---@param helmetFlag number
function SetPedHelmetFlag(ped, helmetFlag) end

---**`PED` `client` [`0x26D83693ED99291C`](https://docs.fivem.net/natives/?_0x26D83693ED99291C)**
---
---```
---NativeDB Added Parameter 3: BOOL p2
---```
---
---@param ped Ped The ped handle.
---@param propIndex number The prop index to set the helmet to. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F).
function SetPedHelmetPropIndex(ped, propIndex) end

---**`PED` `client` [`0xF1550C4BD22582E2`](https://docs.fivem.net/natives/?_0xF1550C4BD22582E2)**
---
---@param ped Ped
---@param textureIndex number
function SetPedHelmetTextureIndex(ped, textureIndex) end

---**`PED` `client` [`0x52D59AB61DDC05DD`](https://docs.fivem.net/natives/?_0x52D59AB61DDC05DD)**
---
---@param ped Ped
---@param toggle boolean
function SetPedHighlyPerceptive(ped, toggle) end

---**`PED` `client` [`0xF107E836A70DCE05`](https://docs.fivem.net/natives/?_0xF107E836A70DCE05)**
---
---@param ped Ped
---@param value number
function SetPedIdRange(ped, value) end

---**`PED` `client` [`0x570389D1C3DE3C6B`](https://docs.fivem.net/natives/?_0x570389D1C3DE3C6B)**
---
---@param ped Ped
function SetPedIncreasedAvoidanceRadius(ped) end

---**`PED` `client` [`0xF75B0D629E1C063D`](https://docs.fivem.net/natives/?_0xF75B0D629E1C063D)**
---
---@param ped Ped
---@param vehicle Vehicle
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669). -2 for the first available seat.
function SetPedIntoVehicle(ped, vehicle, seatIndex) end

---**`PED` `client` [`0x530071295899A8C6`](https://docs.fivem.net/natives/?_0x530071295899A8C6)**
---
---```
---PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, MISC::GET_HASH_KEY("MINI_PROSTITUTE_LOW_PASSENGER"));
---PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, MISC::GET_HASH_KEY("MINI_PROSTITUTE_LOW_RESTRICTED_PASSENGER"));
---PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, MISC::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT"));
---PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, MISC::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT_REAR"));
---PED::SET_PED_IN_VEHICLE_CONTEXT(l_95, MISC::GET_HASH_KEY("MISS_FAMILY2_JIMMY_BICYCLE"));
---PED::SET_PED_IN_VEHICLE_CONTEXT(num3, MISC::GET_HASH_KEY("MISSFBI2_MICHAEL_DRIVEBY"));
---PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("MISS_ARMENIAN3_FRANKLIN_TENSE"));
---PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("MISSFBI5_TREVOR_DRIVING"));
---```
---
---@param ped Ped
---@param context Hash
function SetPedInVehicleContext(ped, context) end

---**`PED` `client` [`0x971D38760FBC02EF`](https://docs.fivem.net/natives/?_0x971D38760FBC02EF)**
---
---@param ped Ped
---@param toggle boolean
function SetPedKeepTask(ped, toggle) end

---**`PED` `client` [`0xC396F5B86FF9FEBD`](https://docs.fivem.net/natives/?_0xC396F5B86FF9FEBD)**
---
---```
---"IK" stands for "Inverse kinematics." I assume this has something to do with how the ped uses his legs to balance. In the scripts, the second parameter is always an int with a value of 2, 0, or sometimes 1
---```
---
---@param ped Ped
---@param mode number
function SetPedLegIkMode(ped, mode) end

---**`PED` `client` [`0xDC2C5C242AAC342B`](https://docs.fivem.net/natives/?_0xDC2C5C242AAC342B)**
---
---@param ped Ped
---@param multiplier number
function SetPedLodMultiplier(ped, multiplier) end

---**`PED` `client` [`0xF5F6378C4F3419D3`](https://docs.fivem.net/natives/?_0xF5F6378C4F3419D3)**
---
---```
---sets the maximum health of a ped
---I think it's never been used in any script
---```
---
---@param ped Ped
---@param value number
function SetPedMaxHealth(ped, value) end

---**`PED` `client` [`0x433083750C5E064A`](https://docs.fivem.net/natives/?_0x433083750C5E064A)**
---
---@param ped Ped
---@param value number
function SetPedMaxMoveBlendRatio(ped, value) end

---**`PED` `client` [`0x43C851690662113D`](https://docs.fivem.net/natives/?_0x43C851690662113D)**
---
---@param ped Ped
---@param value number
function SetPedMaxTimeInWater(ped, value) end

---**`PED` `client` [`0x6BA428C528D9E522`](https://docs.fivem.net/natives/?_0x6BA428C528D9E522)**
---
---Set the maximum time a ped can stay underwater. Maximum seems to be 50 seconds.
---
---@param ped Ped Ped id.
---@param value number Time in seconds. Maximum is 50.0, any value above will be changed to 50.0.
function SetPedMaxTimeUnderwater(ped, value) end

---**`PED` `client` [`0xFA0675AB151073FA`](https://docs.fivem.net/natives/?_0xFA0675AB151073FA)**
---
---```
---Ped will stay on the ground after being stunned for at lest ms time. (in milliseconds)
---```
---
---@param ped Ped
---@param ms number
function SetPedMinGroundTimeForStungun(ped, ms) end

---**`PED` `client` [`0x01A898D26E2333DD`](https://docs.fivem.net/natives/?_0x01A898D26E2333DD)**
---
---@param ped Ped
---@param value number
function SetPedMinMoveBlendRatio(ped, value) end

---**`PED` `client` [`0xE163A4BCE4DE6F11`](https://docs.fivem.net/natives/?_0xE163A4BCE4DE6F11)**
---
---@param model Hash
---@param toggle boolean
function SetPedModelIsSuppressed(model, toggle) end

---**`PED` `client` [`0xA9C8960E8684C1B5`](https://docs.fivem.net/natives/?_0xA9C8960E8684C1B5)**
---
---```
---Maximum possible amount of money on MP is 2000. ~JX
--------------------------------------------------------------------------------
---Maximum amount that a ped can theoretically have is 65535 (0xFFFF) since the amount is stored as an unsigned short (uint16_t) value.
---```
---
---@param ped Ped
---@param amount number
function SetPedMoney(ped, amount) end

---**`PED` `client` [`0x0A986918B102B448`](https://docs.fivem.net/natives/?_0x0A986918B102B448)**
---
---@param ped Ped
---@param toggle boolean
function SetPedMotionBlur(ped, toggle) end

---**`PED` `client` [`0xAF8A94EDE7712BEF`](https://docs.fivem.net/natives/?_0xAF8A94EDE7712BEF)**
---
---```
---List of movement clipsets:
---Thanks to elsewhat for list.
--- "ANIM_GROUP_MOVE_BALLISTIC"
--- "ANIM_GROUP_MOVE_LEMAR_ALLEY"
--- "clipset@move@trash_fast_turn"
--- "FEMALE_FAST_RUNNER"
--- "missfbi4prepp1_garbageman"
--- "move_characters@franklin@fire"
--- "move_characters@Jimmy@slow@"
--- "move_characters@michael@fire"
--- "move_f@flee@a"
--- "move_f@scared"
--- "move_f@sexy@a"
--- "move_heist_lester"
--- "move_injured_generic"
--- "move_lester_CaneUp"
--- "move_m@bag"
--- "MOVE_M@BAIL_BOND_NOT_TAZERED"
--- "MOVE_M@BAIL_BOND_TAZERED"
--- "move_m@brave"
--- "move_m@casual@d"
--- "move_m@drunk@moderatedrunk"
--- "MOVE_M@DRUNK@MODERATEDRUNK"
--- "MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP"
--- "MOVE_M@DRUNK@SLIGHTLYDRUNK"
--- "MOVE_M@DRUNK@VERYDRUNK"
--- "move_m@fire"
--- "move_m@gangster@var_e"
--- "move_m@gangster@var_f"
--- "move_m@gangster@var_i"
--- "move_m@JOG@"
--- "MOVE_M@PRISON_GAURD"
--- "MOVE_P_M_ONE"
--- "MOVE_P_M_ONE_BRIEFCASE"
--- "move_p_m_zero_janitor"
--- "move_p_m_zero_slow"
--- "move_ped_bucket"
--- "move_ped_crouched"
--- "move_ped_mop"
--- "MOVE_M@FEMME@"
--- "MOVE_F@FEMME@"
--- "MOVE_M@GANGSTER@NG"
--- "MOVE_F@GANGSTER@NG"
--- "MOVE_M@POSH@"
--- "MOVE_F@POSH@"
--- "MOVE_M@TOUGH_GUY@"
--- "MOVE_F@TOUGH_GUY@"
---~ NotCrunchyTaco
---```
---
---@param ped Ped
---@param clipSet string
---@param transitionSpeed number time in seconds it takes to transition from one movement clipset to another.
function SetPedMovementClipset(ped, clipSet, transitionSpeed) end

---**`PED` `client` [`0x9E8C908F41584ECD`](https://docs.fivem.net/natives/?_0x9E8C908F41584ECD)**
---
---@param ped Ped
function SetPedMoveAnimsBlendOut(ped) end

---**`PED` `client` [`0x085BF80FA50A39D1`](https://docs.fivem.net/natives/?_0x085BF80FA50A39D1)**
---
---```
---Min: 0.00
---Max: 10.00
---Can be used in combo with fast run cheat.
---When value is set to 10.00:
---Sprinting without fast run cheat: 66 m/s
---Sprinting with fast run cheat: 77 m/s
---Needs to be looped!
---Note: According to IDA for the Xbox360 xex, when they check bgt they seem to have the min to 0.0f, but the max set to 1.15f not 10.0f.
---```
---
---@param ped Ped
---@param value number
function SetPedMoveRateOverride(ped, value) end

---**`PED` `client` [`0x98EFA132A4117BE1`](https://docs.fivem.net/natives/?_0x98EFA132A4117BE1)**
---
---```
---NOTE: Debugging functions are not present in the retail version of the game.
---*untested but char *name could also be a hash for a localized string
---```
---
---@param ped Ped
---@param name string
function SetPedNameDebug(ped, name) end

---**`PED` `client` [`0x3DBFC55D5C9BB447`](https://docs.fivem.net/natives/?_0x3DBFC55D5C9BB447)**
---
---@param ped Ped
---@param toggle boolean
function SetPedNeverLeavesGroup(ped, toggle) end

---**`PED` `client` [`0xEE01041D559983EA`](https://docs.fivem.net/natives/?_0xEE01041D559983EA)**
---
---```
---The distance between these points, is the diagonal of a box (remember it's 3D).
---```
---
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
function SetPedNonCreationArea(x1, y1, z1, x2, y2, z2) end

---**`PED` `client` [`0xFE07FF6495D52E2A`](https://docs.fivem.net/natives/?_0xFE07FF6495D52E2A)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@return any
function SetPedPanicExitScenario(ped, x, y, z) end

---**`PED` `client` [`0x333FC8DB079B7186`](https://docs.fivem.net/natives/?_0x333FC8DB079B7186)**
---
---@param ped Ped
---@param tintIndex number
function SetPedParachuteTintIndex(ped, tintIndex) end

---**`PED` `client` [`0xAAD6D1ACF08F4612`](https://docs.fivem.net/natives/?_0xAAD6D1ACF08F4612)**
---
---```
---i could be time. Only example in the decompiled scripts uses it as -1.
---```
---
---@param ped Ped
---@param pinned boolean
---@param i number
---@return any
function SetPedPinnedDown(ped, pinned, i) end

---**`PED` `client` [`0x94D94BF1A75AED3D`](https://docs.fivem.net/natives/?_0x94D94BF1A75AED3D)**
---
---**This native does absolutely nothing, just a nullsub**
---
---```
---Points to the same function as for example GET_RANDOM_VEHICLE_MODEL_IN_MEMORY and it does absolutely nothing.
---```
---
---@param ped Ped
---@param toggle boolean
function SetPedPlaysHeadOnHornAnimWhenDiesInVehicle(ped, toggle) end

---**`PED` `client` [`0x8421EB4DA7E391B9`](https://docs.fivem.net/natives/?_0x8421EB4DA7E391B9)**
---
---@param ped Ped
---@param itemSet any
function SetPedPreferredCoverSet(ped, itemSet) end

---**`PED` `client` [`0x2B16A3BFF1FBCE49`](https://docs.fivem.net/natives/?_0x2B16A3BFF1FBCE49)**
---
---@param ped Ped The ped handle.
---@param componentId number The component that you want to set. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@param drawableId number The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
---@param textureId number The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171).
---@return boolean
function SetPedPreloadPropData(ped, componentId, drawableId, textureId) end

---**`PED` `client` [`0x39D55A620FCB6A3A`](https://docs.fivem.net/natives/?_0x39D55A620FCB6A3A)**
---
---```
---from extreme3.c4
---PED::_39D55A620FCB6A3A(PLAYER::PLAYER_PED_ID(), 8, PED::GET_PED_DRAWABLE_VARIATION(PLAYER::PLAYER_PED_ID(), 8), PED::GET_PED_TEXTURE_VARIATION(PLAYER::PLAYER_PED_ID(), 8));
---p1 is probably componentId
---```
---
---@param ped Ped
---@param slot number
---@param drawableId number
---@param textureId number
---@return any
function SetPedPreloadVariationData(ped, slot, drawableId, textureId) end

---**`PED` `client` [`0xCD17B554996A8D9E`](https://docs.fivem.net/natives/?_0xCD17B554996A8D9E)**
---
---```
---This is only called once in the scripts.
---sub_1CD9(&l_49, 0, getElem(3, &l_34, 4), "MICHAEL", 0, 1);
---                    sub_1CA8("WORLD_HUMAN_SMOKING", 2);
---                    PED::SET_PED_PRIMARY_LOOKAT(getElem(3, &l_34, 4), PLAYER::PLAYER_PED_ID());
---```
---
---@param ped Ped
---@param lookAt Ped
function SetPedPrimaryLookat(ped, lookAt) end

---**`PED` `client` [`0x93376B65A266EB5F`](https://docs.fivem.net/natives/?_0x93376B65A266EB5F)**
---
---This native is used to set prop variation on a ped. Components, drawables and textures IDs are related to the ped model.
---
---### MP Freemode list of props
---
---**0**: Hats
---**1**: Glasses
---**2**: Ears
---**6**: Watches
---**7**: Bracelets
---
---List of Prop IDs
---
---```cpp
---// Props
---enum eAnchorPoints
---{
---    ANCHOR_HEAD = 0, // "p_head"
---    ANCHOR_EYES = 1, // "p_eyes"
---    ANCHOR_EARS = 2, // "p_ears"
---    ANCHOR_MOUTH = 3, // "p_mouth"
---    ANCHOR_LEFT_HAND = 4, // "p_lhand"
---    ANCHOR_RIGHT_HAND = 5, // "p_rhand"
---    ANCHOR_LEFT_WRIST = 6, // "p_lwrist"
---    ANCHOR_RIGHT_WRIST = 7, // "p_rwrist"
---    ANCHOR_HIP = 8, // "p_lhip"
---    ANCHOR_LEFT_FOOT = 9, // "p_lfoot"
---    ANCHOR_RIGHT_FOOT = 10, // "p_rfoot"
---    ANCHOR_PH_L_HAND = 11, // "ph_lhand"
---    ANCHOR_PH_R_HAND = 12, // "ph_rhand"
---    NUM_ANCHORS = 13,
---};
---```
---
---@param ped Ped The ped handle.
---@param componentId number The component that you want to set. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@param drawableId number The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
---@param textureId number The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171).
---@param attach boolean Attached or not.
function SetPedPropIndex(ped, componentId, drawableId, textureId, attach) end

---**`PED` `client` [`0x01F6594B923B9251`](https://docs.fivem.net/natives/?_0x01F6594B923B9251)**
---
---@param ped Ped
function SetPedRagdollForceFall(ped) end

---**`PED` `client` [`0xF0A4F1BBF4FA7497`](https://docs.fivem.net/natives/?_0xF0A4F1BBF4FA7497)**
---
---Causes Ped to ragdoll on collision with any object (e.g Running into trashcan). If applied to player you will sometimes trip on the sidewalk.
---Needs to be recalled after each ragdoll from a Collision.
---
---@param ped Ped
---@param toggle boolean
function SetPedRagdollOnCollision(ped, toggle) end

---**`PED` `client` [`0xC8A9481A01E63C28`](https://docs.fivem.net/natives/?_0xC8A9481A01E63C28)**
---
---```
---p1 is always 0 in R* scripts; and a quick disassembly seems to indicate that p1 is unused.
---```
---
---@param ped Ped
---@param p1 number
function SetPedRandomComponentVariation(ped, p1) end

---**`PED` `client` [`0xC44AA05345C992C6`](https://docs.fivem.net/natives/?_0xC44AA05345C992C6)**
---
---@param ped Ped The ped handle.
function SetPedRandomProps(ped) end

---**`PED` `client` [`0xADB3F206518799E8`](https://docs.fivem.net/natives/?_0xADB3F206518799E8)**
---
---@param ped Ped
---@param hash Hash
function SetPedRelationshipGroupDefaultHash(ped, hash) end

---**`PED` `client` [`0xC80A74AC829DDD92`](https://docs.fivem.net/natives/?_0xC80A74AC829DDD92)**
---
---@param ped Ped
---@param hash Hash
function SetPedRelationshipGroupHash(ped, hash) end

---**`PED` `client` [`0xE88DA0751C22A2AD`](https://docs.fivem.net/natives/?_0xE88DA0751C22A2AD)**
---
---@param ped Ped
---@param p1 any
function SetPedReserveParachuteTintIndex(ped, p1) end

---**`PED` `client` [`0xC1E8A365BF3B29F2`](https://docs.fivem.net/natives/?_0xC1E8A365BF3B29F2)**
---
---PED::SET_PED_RESET_FLAG(PLAYER::PLAYER_PED_ID(), 240, 1);
---Known values:
---
---@param ped Ped
---@param flagId number
---@param doReset boolean
function SetPedResetFlag(ped, flagId, doReset) end

---**`PED` `client` [`0xF29CF591C4BF6CEE`](https://docs.fivem.net/natives/?_0xF29CF591C4BF6CEE)**
---
---@param ped Ped
---@param value number
function SetPedSeeingRange(ped, value) end

---**`PED` `client` [`0x96A05E4FB321B1BA`](https://docs.fivem.net/natives/?_0x96A05E4FB321B1BA)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param toggle boolean
function SetPedShootsAtCoord(ped, x, y, z, toggle) end

---**`PED` `client` [`0x614DA022990752DC`](https://docs.fivem.net/natives/?_0x614DA022990752DC)**
---
---```
---shootRate 0-1000
---```
---
---@param ped Ped
---@param shootRate number
function SetPedShootRate(ped, shootRate) end

---**`PED` `client` [`0xEEED8FAFEC331A70`](https://docs.fivem.net/natives/?_0xEEED8FAFEC331A70)**
---
---@param ped Ped
---@param p1 any
---@param p2 any
---@param p3 any
---@return any
function SetPedShouldPlayFleeScenarioExit(ped, p1, p2, p3) end

---**`PED` `client` [`0xF1C03A5352243A30`](https://docs.fivem.net/natives/?_0xF1C03A5352243A30)**
---
---@param ped Ped
function SetPedShouldPlayImmediateScenarioExit(ped) end

---**`PED` `client` [`0xA3A9299C4F2ADB98`](https://docs.fivem.net/natives/?_0xA3A9299C4F2ADB98)**
---
---@param ped Ped
function SetPedShouldPlayNormalScenarioExit(ped) end

---**`PED` `client` [`0x9D3151A373974804`](https://docs.fivem.net/natives/?_0x9D3151A373974804)**
---
---@param ped Ped
---@param x number
---@param y number
---@param z number
---@param radius number
---@param p5 boolean
---@param p6 boolean
function SetPedSphereDefensiveArea(ped, x, y, z, radius, p5, p6) end

---**`PED` `client` [`0xEDF4079F9D54C9A1`](https://docs.fivem.net/natives/?_0xEDF4079F9D54C9A1)**
---
---@param ped Ped
---@param toggle boolean
function SetPedStayInVehicleWhenJacked(ped, toggle) end

---**`PED` `client` [`0x88CBB5CEB96B7BD2`](https://docs.fivem.net/natives/?_0x88CBB5CEB96B7BD2)**
---
---```
---p1 is usually 0 in the scripts. action is either 0 or a pointer to "DEFAULT_ACTION".
---```
---
---@param ped Ped
---@param p1 boolean
---@param action string
function SetPedStealthMovement(ped, p1, action) end

---**`PED` `client` [`0x1509C089ADC208BF`](https://docs.fivem.net/natives/?_0x1509C089ADC208BF)**
---
---@param ped Ped
---@param toggle boolean
function SetPedSteersAroundObjects(ped, toggle) end

---**`PED` `client` [`0x46F2193B3AD1D891`](https://docs.fivem.net/natives/?_0x46F2193B3AD1D891)**
---
---@param ped Ped
---@param toggle boolean
function SetPedSteersAroundPeds(ped, toggle) end

---**`PED` `client` [`0xEB6FB9D48DDE23EC`](https://docs.fivem.net/natives/?_0xEB6FB9D48DDE23EC)**
---
---@param ped Ped
---@param toggle boolean
function SetPedSteersAroundVehicles(ped, toggle) end

---**`PED` `client` [`0x29A28F3F8CF6D854`](https://docs.fivem.net/natives/?_0x29A28F3F8CF6D854)**
---
---@param ped Ped
---@param clipSet string
function SetPedStrafeClipset(ped, clipSet) end

---**`PED` `client` [`0xEBD76F2359F190AC`](https://docs.fivem.net/natives/?_0xEBD76F2359F190AC)**
---
---Ped no longer takes critical damage modifiers if set to FALSE.
---
---Example: Headshotting a player no longer one shots them. Instead they will take the same damage as a torso shot.
---
---@param ped Ped
---@param toggle boolean
function SetPedSuffersCriticalHits(ped, toggle) end

---**`PED` `client` [`0x27B0405F59637D1F`](https://docs.fivem.net/natives/?_0x27B0405F59637D1F)**
---
---```
---Sweat is set to 100.0 or 0.0 in the decompiled scripts.
---```
---
---@param ped Ped
---@param sweat number
function SetPedSweat(ped, sweat) end

---**`PED` `client` [`0x0703B9079823DA4A`](https://docs.fivem.net/natives/?_0x0703B9079823DA4A)**
---
---```
---Only 1 and 2 appear in the scripts. combatbehaviour.meta seems to only have TLR_SearchForTarget for all peds, but we don't know if that's 1 or 2.
---```
---
---@param ped Ped
---@param responseType number
function SetPedTargetLossResponse(ped, responseType) end

---**`PED` `client` [`0x112942C6E708F70B`](https://docs.fivem.net/natives/?_0x112942C6E708F70B)**
---
---@param ped Ped
---@param radius number
---@param maxFriends number
function SetPedToInformRespectedFriends(ped, radius, maxFriends) end

---**`PED` `client` [`0x332B562EEDA62399`](https://docs.fivem.net/natives/?_0x332B562EEDA62399)**
---
---@param ped Ped
---@param toggle boolean
function SetPedToLoadCover(ped, toggle) end

---**`PED` `client` [`0xAE99FB955581844A`](https://docs.fivem.net/natives/?_0xAE99FB955581844A)**
---
---p4/p5: Unusued in TU27
---
---### Ragdoll Types
---
---**0**: CTaskNMRelax
---**1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.
---**Else**: CTaskNMBalance
---
---@param ped Ped
---@param time1 number Time(ms) Ped is in ragdoll mode; only applies to ragdoll types 0 and not 1.
---@param time2 number
---@param ragdollType number
---@param p4 boolean
---@param p5 boolean
---@param p6 boolean
---@return boolean
function SetPedToRagdoll(ped, time1, time2, ragdollType, p4, p5, p6) end

---**`PED` `client` [`0xD76632D99E4966C8`](https://docs.fivem.net/natives/?_0xD76632D99E4966C8)**
---
---```
---Return variable is never used in R*'s scripts.
---Not sure what p2 does. It seems like it would be a time judging by it's usage in R*'s scripts, but didn't seem to affect anything in my testings.
---x, y, and z are coordinates, most likely to where the ped will fall.
---p7 is probably the force of the fall, but untested, so I left the variable name the same.
---p8 to p13 are always 0f in R*'s scripts.
---(Simplified) Example of the usage of the function from R*'s scripts:
---ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);
---```
---
---@param ped Ped
---@param time number
---@param p2 number
---@param ragdollType number
---@param x number
---@param y number
---@param z number
---@param p7 number
---@param p8 number
---@param p9 number
---@param p10 number
---@param p11 number
---@param p12 number
---@param p13 number
---@return boolean
function SetPedToRagdollWithFall(ped, time, p2, ragdollType, x, y, z, p7, p8, p9, p10, p11, p12, p13) end

---**`PED` `client` [`0xD75ACCF5E0FB5367`](https://docs.fivem.net/natives/?_0xD75ACCF5E0FB5367)**
---
---```
---p2 is usually -1 in the scripts. action is either 0 or "DEFAULT_ACTION".
---```
---
---@param ped Ped
---@param p1 boolean
---@param p2 number
---@param action string
function SetPedUsingActionMode(ped, p1, p2, action) end

---**`PED` `client` [`0x952F06BEECD775CC`](https://docs.fivem.net/natives/?_0x952F06BEECD775CC)**
---
---```
---NativeDB Added Parameter 5: Any p4
---```
---
---@param ped Ped
---@param vehicle Vehicle
---@param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@param flags number
function SetPedVehicleForcedSeatUsage(ped, vehicle, seatIndex, flags) end

---**`PED` `client` [`0x3B6405E8AB34A907`](https://docs.fivem.net/natives/?_0x3B6405E8AB34A907)**
---
---@param ped Ped
---@param angle number
function SetPedVisualFieldCenterAngle(ped, angle) end

---**`PED` `client` [`0x70793BDCA1E854D4`](https://docs.fivem.net/natives/?_0x70793BDCA1E854D4)**
---
---@param ped Ped
---@param value number
function SetPedVisualFieldMaxAngle(ped, value) end

---**`PED` `client` [`0x78D0B67629D75856`](https://docs.fivem.net/natives/?_0x78D0B67629D75856)**
---
---```
---This native refers to the field of vision the ped has above them, starting at 0 degrees. 90f would let the ped see enemies directly above of them.
---```
---
---@param ped Ped
---@param angle number
function SetPedVisualFieldMaxElevationAngle(ped, angle) end

---**`PED` `client` [`0x2DB492222FB21E26`](https://docs.fivem.net/natives/?_0x2DB492222FB21E26)**
---
---@param ped Ped
---@param value number
function SetPedVisualFieldMinAngle(ped, value) end

---**`PED` `client` [`0x7A276EB2C224D70F`](https://docs.fivem.net/natives/?_0x7A276EB2C224D70F)**
---
---```
---This native refers to the field of vision the ped has below them, starting at 0 degrees. The angle value should be negative.
---```
---
---@param ped Ped
---@param angle number
function SetPedVisualFieldMinElevationAngle(ped, angle) end

---**`PED` `client` [`0x9C74B0BC831B753A`](https://docs.fivem.net/natives/?_0x9C74B0BC831B753A)**
---
---@param ped Ped
---@param range number
function SetPedVisualFieldPeripheralRange(ped, range) end

---**`PED` `client` [`0x2622E35B77D3ACA2`](https://docs.fivem.net/natives/?_0x2622E35B77D3ACA2)**
---
---@param ped Ped
---@param clipSet string
function SetPedWeaponMovementClipset(ped, clipSet) end

---**`PED` `client` [`0xB5485E4907B53019`](https://docs.fivem.net/natives/?_0xB5485E4907B53019)**
---
---```
---combined with PED::SET_PED_WETNESS_HEIGHT(), this native makes the ped drenched in water up to the height specified in the other function
---```
---
---@param ped Ped
function SetPedWetnessEnabledThisFrame(ped) end

---**`PED` `client` [`0x44CB6447D2571AA0`](https://docs.fivem.net/natives/?_0x44CB6447D2571AA0)**
---
---```
---It adds the wetness level to the player clothing/outfit. As if player just got out from water surface.
---```
---
---@param ped Ped
---@param height number
function SetPedWetnessHeight(ped, height) end

---**`PED` `client` [`0xD8C3BE3EE94CAF2D`](https://docs.fivem.net/natives/?_0xD8C3BE3EE94CAF2D)**
---
---```
---Min and max are usually 100.0 and 200.0
---```
---
---@param x number
---@param y number
---@param z number
---@param min number
---@param max number
function SetPopControlSphereThisFrame(x, y, z, min, max) end

---**`PED` `client` [`0x26695EC767728D84`](https://docs.fivem.net/natives/?_0x26695EC767728D84)**
---
---```
---Works for both player and peds, but some flags don't seem to work for the player (1, for example)
---1 - Blocks ragdolling when shot.
---2 - Blocks ragdolling when hit by a vehicle. The ped still might play a falling animation.
---4 - Blocks ragdolling when set on fire.
--------------------------------------------------------------------------
---There seem to be 26 flags
---```
---
---@param ped Ped
---@param flags number
function SetRagdollBlockingFlags(ped, flags) end

---**`PED` `client` [`0xBF25EB89375A37AD`](https://docs.fivem.net/natives/?_0xBF25EB89375A37AD)**
---
---```
---Sets the relationship between two groups. This should be called twice (once for each group).
---Relationship types:
---0 = Companion
---1 = Respect
---2 = Like
---3 = Neutral
---4 = Dislike
---5 = Hate
---255 = Pedestrians
---Example:
---PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);
---PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);
---```
---
---@param relationship number
---@param group1 Hash
---@param group2 Hash
function SetRelationshipBetweenGroups(relationship, group1, group2) end

---**`PED` `client` [`0x28157D43CF600981`](https://docs.fivem.net/natives/?_0x28157D43CF600981)**
---
---@param x number
---@param y number
---@param z number
---@param range number
---@param p4 number
function SetScenarioPedsSpawnInSphereArea(x, y, z, range, p4) end

---**`PED` `client` [`0x14F19A8782C8071E`](https://docs.fivem.net/natives/?_0x14F19A8782C8071E)**
---
---```
---Sets a value indicating whether scenario peds should be returned by the next call to a command that returns peds. Eg. GET_CLOSEST_PED.
---```
---
---@param value boolean
function SetScenarioPedsToBeReturnedByNextCommand(value) end

---**`PED` `client` [`0x7A556143A1C03898`](https://docs.fivem.net/natives/?_0x7A556143A1C03898)**
---
---@param p0 number
---@param p1 number
function SetScenarioPedDensityMultiplierThisFrame(p0, p1) end

---**`PED` `client` [`0x5917BBA32D06C230`](https://docs.fivem.net/natives/?_0x5917BBA32D06C230)**
---
---@param ped Ped
---@param p1 number
function SetScriptedAnimSeatOffset(ped, p1) end

---**`PED` `client` [`0x5086C7843552CF85`](https://docs.fivem.net/natives/?_0x5086C7843552CF85)**
---
---@param x number
---@param y number
---@param z number
function SetScriptedConversionCoordThisFrame(x, y, z) end

---**`PED` `client` [`0x394B9CD12435C981`](https://docs.fivem.net/natives/?_0x394B9CD12435C981)**
---
---@param sceneID number
---@param toggle boolean
function SetSynchronizedSceneHoldLastFrame(sceneID, toggle) end

---**`PED` `client` [`0xD9A897A4C6C2974F`](https://docs.fivem.net/natives/?_0xD9A897A4C6C2974F)**
---
---@param sceneID number
---@param toggle boolean
function SetSynchronizedSceneLooped(sceneID, toggle) end

---**`PED` `client` [`0x6ACF6B7225801CD7`](https://docs.fivem.net/natives/?_0x6ACF6B7225801CD7)**
---
---@param sceneID number
---@param x number
---@param y number
---@param z number
---@param roll number
---@param pitch number
---@param yaw number
---@param p7 boolean
function SetSynchronizedSceneOrigin(sceneID, x, y, z, roll, pitch, yaw, p7) end

---**`PED` `client` [`0x734292F4F0ABF6D0`](https://docs.fivem.net/natives/?_0x734292F4F0ABF6D0)**
---
---@param sceneID number
---@param phase number
function SetSynchronizedScenePhase(sceneID, phase) end

---**`PED` `client` [`0xB6C49F8A5E295A5D`](https://docs.fivem.net/natives/?_0xB6C49F8A5E295A5D)**
---
---@param sceneID number
---@param rate number
function SetSynchronizedSceneRate(sceneID, rate) end

---**`PED` `client` [`0xFEE4A5459472A9F8`](https://docs.fivem.net/natives/?_0xFEE4A5459472A9F8)**
---
function SpawnpointsCancelSearch() end

---**`PED` `client` [`0xA635C11B8C44AFC2`](https://docs.fivem.net/natives/?_0xA635C11B8C44AFC2)**
---
---@return number
function SpawnpointsGetNumSearchResults() end

---**`PED` `client` [`0x280C7E3AC7F56E90`](https://docs.fivem.net/natives/?_0x280C7E3AC7F56E90)**
---
---@param randomInt number
---@param x number
---@param y number
---@param z number
function SpawnpointsGetSearchResult(randomInt, x, y, z) end

---**`PED` `client` [`0xB782F8238512BAD5`](https://docs.fivem.net/natives/?_0xB782F8238512BAD5)**
---
---@param p0 any
---@param p1 any
function SpawnpointsGetSearchResultFlags(p0, p1) end

---**`PED` `client` [`0x3C67506996001F5E`](https://docs.fivem.net/natives/?_0x3C67506996001F5E)**
---
---@return boolean
function SpawnpointsIsSearchActive() end

---**`PED` `client` [`0xA586FBEB32A53DBB`](https://docs.fivem.net/natives/?_0xA586FBEB32A53DBB)**
---
---@return boolean
function SpawnpointsIsSearchComplete() end

---**`PED` `client` [`0xF445DE8DA80A1792`](https://docs.fivem.net/natives/?_0xF445DE8DA80A1792)**
---
---@return boolean
function SpawnpointsIsSearchFailed() end

---**`PED` `client` [`0x2DF9038C90AD5264`](https://docs.fivem.net/natives/?_0x2DF9038C90AD5264)**
---
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param interiorFlags number
---@param scale number
---@param duration number
function SpawnpointsStartSearch(p0, p1, p2, p3, p4, interiorFlags, scale, duration) end

---**`PED` `client` [`0xB2AFF10216DEFA2F`](https://docs.fivem.net/natives/?_0xB2AFF10216DEFA2F)**
---
---@param x number
---@param y number
---@param z number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param interiorFlags number
---@param scale number
---@param duration number
function SpawnpointsStartSearchInAngledArea(x, y, z, p3, p4, p5, p6, interiorFlags, scale, duration) end

---**`PED` `client` [`0xB47BD05FA66B40CF`](https://docs.fivem.net/natives/?_0xB47BD05FA66B40CF)**
---
function StopAnyPedModelBeingSuppressed() end

---**`PED` `client` [`0xC158D28142A34608`](https://docs.fivem.net/natives/?_0xC158D28142A34608)**
---
---@param ped Ped
function StopPedWeaponFiringWhenDropped(ped) end

---**`PED` `client` [`0x96B1361D9B24C2FF`](https://docs.fivem.net/natives/?_0x96B1361D9B24C2FF)**
---
---```
---gtaforums.com/topic/885580-ped-headshotmugshot-txd/
---```
---
---@param id number
function UnregisterPedheadshot(id) end

---**`PED` `client` [`0x723538F61C647C5A`](https://docs.fivem.net/natives/?_0x723538F61C647C5A)**
---
---See [`SET_PED_HEAD_BLEND_DATA`](#\_0x9414E18B9434C2FE)
---
---@param ped Ped
---@param shapeMix number
---@param skinMix number
---@param thirdMix number
function UpdatePedHeadBlendData(ped, shapeMix, skinMix, thirdMix) end

---**`PED` `client` [`0xF9800AA1A771B000`](https://docs.fivem.net/natives/?_0xF9800AA1A771B000)**
---
---@param ped Ped
---@return boolean
function WasPedKilledByStealth(ped) end

---**`PED` `client` [`0x7F08E26039C7347C`](https://docs.fivem.net/natives/?_0x7F08E26039C7347C)**
---
---@param ped Ped
---@return boolean
function WasPedKilledByTakedown(ped) end

---**`PED` `client` [`0x61767F73EACEED21`](https://docs.fivem.net/natives/?_0x61767F73EACEED21)**
---
---@param ped Ped
---@return boolean
function WasPedKnockedOut(ped) end

---**`PED` `client` [`0x11B499C1E0FF8559`](https://docs.fivem.net/natives/?_0x11B499C1E0FF8559)**
---
---```
---Despite this function's name, it simply returns whether the specified handle is a Ped.
---```
---
---@param ped Ped
---@return boolean
function WasPedSkeletonUpdated(ped) end

---**`PED` `client` [`0xE43A13C9E4CCCBCF`](https://docs.fivem.net/natives/?_0xE43A13C9E4CCCBCF)**
---
---@param ped Ped
---@param toggle boolean
function BlockPedDeadBodyShockingEvents(ped, toggle) end

---**`PED` `client` [`0x637822DC2AFEEBF8`](https://docs.fivem.net/natives/?_0x637822DC2AFEEBF8)**
---
---```
---NativeDB Introduced: v1493
---```
---
---@param ped Ped
function ClearFacialClipsetOverride(ped) end

---**`PED` `client` [`0xC79196DCB36F6121`](https://docs.fivem.net/natives/?_0xC79196DCB36F6121)**
---
---```
---CLEAR_PED_*
---```
---
---@param ped Ped
function ClearPedCoverClipsetOverride(ped) end

---**`PED` `client` [`0x668FD40BCBA5DE48`](https://docs.fivem.net/natives/?_0x668FD40BCBA5DE48)**
---
---Used one time in fmmc_launcher.c instead of CLONE_PED because ?
---
---@param ped Ped
---@param heading number
---@param isNetwork boolean
---@param bScriptHostPed boolean
---@param p4 any
---@return Ped
function ClonePedEx(ped, heading, isNetwork, bScriptHostPed, p4) end

---**`PED` `client` [`0x148B08C2D2ACB884`](https://docs.fivem.net/natives/?_0x148B08C2D2ACB884)**
---
---@param ped Ped
---@param targetPed Ped
---@param p2 any
function ClonePedToTargetEx(ped, targetPed, p2) end

---**`PED` `client` [`0x62EC273D00187DCA`](https://docs.fivem.net/natives/?_0x62EC273D00187DCA)**
---
---@param x number
---@param y number
---@param z number
---@param radius number
---@param object Hash
---@return number
function CreateSynchronizedScene_2(x, y, z, radius, object) end

---**`PED` `client` [`0xCD9CC7E200A52A6F`](https://docs.fivem.net/natives/?_0xCD9CC7E200A52A6F)**
---
---@param scene number
function DisposeSynchronizedScene(scene) end

---**`PED` `client` [`0xCC6E3B6BB69501F1`](https://docs.fivem.net/natives/?_0xCC6E3B6BB69501F1)**
---
---@param groupHash Hash
---@return boolean
function DoesRelationshipGroupExist(groupHash) end

---**`PED` `client` [`0x8A24B067D175A7BD`](https://docs.fivem.net/natives/?_0x8A24B067D175A7BD)**
---
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return boolean
function DoesScenarioBlockingAreaExist(x1, y1, z1, x2, y2, z2) end

---**`PED` `client` [`0xFF287323B0E2C69A`](https://docs.fivem.net/natives/?_0xFF287323B0E2C69A)**
---
---@param ped Ped
function FreezePedCameraRotation(ped) end

---**`PED` `client` [`0xE5C0CF872C2AD150`](https://docs.fivem.net/natives/?_0xE5C0CF872C2AD150)**
---
---```
---Used for freemode (online) characters.
---```
---
---@return number
function GetNumHairColors() end

---**`PED` `client` [`0xD1F7CA1535D22818`](https://docs.fivem.net/natives/?_0xD1F7CA1535D22818)**
---
---@return number
function GetNumMakeupColors() end

---**`PED` `client` [`0xF60165E1D2C5370B`](https://docs.fivem.net/natives/?_0xF60165E1D2C5370B)**
---
---@param ped Ped
---@param speedX number
---@param speedY number
---@return boolean, number, number
function GetPedCurrentMovementSpeed(ped, speedX, speedY) end

---**`PED` `client` [`0x65671A4FB8218930`](https://docs.fivem.net/natives/?_0x65671A4FB8218930)**
---
---```
---NativeDB Introduced: v2699
---```
---
---@param ped Ped
---@return boolean
function GetPedDiesInWater(ped) end

---**`PED` `client` [`0x1461B28A06717D68`](https://docs.fivem.net/natives/?_0x1461B28A06717D68)**
---
---Use [`SetPedIlluminatedClothingGlowIntensity`](#\_0x4E90D746056E273D) to set the illuminated clothing glow intensity for a specific ped.
---
---@param ped Ped The ped to get the glow intensity from.
---@return number # A float between 0.0 and 1.0 representing the current illuminated clothing glow intensity.
function GetPedEmissiveIntensity(ped) end

---**`PED` `client` [`0xBA656A3BB01BDEA3`](https://docs.fivem.net/natives/?_0xBA656A3BB01BDEA3)**
---
---```
---NativeDB Introduced: v2189
---```
---
---@param ped Ped
---@param eventType number
---@param outData any
---@return boolean, any
function GetPedEventData(ped, eventType, outData) end

---**`PED` `client` [`0x76BBA2CEE66D47E9`](https://docs.fivem.net/natives/?_0x76BBA2CEE66D47E9)**
---
---A getter for [`_SET_PED_EYE_COLOR`](#\_0x50B56988B170AFDF).
---
---Example code:
---```lua
---local pedEyeColour = N_0x76bba2cee66d47e9(PlayerPedId())
---if pedEyeColour == 7 then
---  print("Gray eyes!")
---end
---```
---
---@param ped Ped The target ped
---@return number # Returns ped's eye colour, or -1 if fails to get.
function GetPedEyeColor(ped) end

---**`PED` `client` [`0x4852FC386E2E1BB5`](https://docs.fivem.net/natives/?_0x4852FC386E2E1BB5)**
---
---Input: Haircolor index, value between 0 and 63 (inclusive).
---Output: RGB values for the haircolor specified in the input.
---
---This is used with the hair color swatches scaleform.
---
---Use [`_0x013E5CFC38CD5387`](#\_0x013E5CFC38CD5387) to get the makeup colors.
---
---@param hairColorIndex number The hair color index. Value between 0-63 (inclusive).
---@param outR number Output red value.
---@param outG number Output green value.
---@param outB number Output blue value.
function GetPedHairRgbColor(hairColorIndex, outR, outG, outB) end

---**`PED` `client` [`0xA60EF3B6461A4D43`](https://docs.fivem.net/natives/?_0xA60EF3B6461A4D43)**
---
---```
---Likely a char, if that overlay is not set, e.i. "None" option, returns 255;
---This might be the once removed native GET_PED_HEAD_OVERLAY.
---```
---
---@param ped Ped
---@param overlayID number
---@return number
function GetPedHeadOverlayValue(ped, overlayID) end

---**`PED` `client` [`0x013E5CFC38CD5387`](https://docs.fivem.net/natives/?_0x013E5CFC38CD5387)**
---
---Input: Makeup color index, value between 0 and 63 (inclusive).
---Output: RGB values for the makeup color specified in the input.
---
---This is used with the makeup color swatches scaleform.
---
---Use [`_0x4852FC386E2E1BB5`](#\_0x4852FC386E2E1BB5) to get the hair colors.
---
---@param makeupColorIndex number The hair color index. Value between 0-63 (inclusive).
---@param outR number Output red value.
---@param outG number Output green value.
---@param outB number Output blue value.
function GetPedMakeupRgbColor(makeupColorIndex, outR, outG, outB) end

---**`PED` `client` [`0x32C27A11307B01CC`](https://docs.fivem.net/natives/?_0x32C27A11307B01CC)**
---
---```
---NativeDB Introduced: v2372
---```
---
---@param ped Ped
---@param p1 any
---@return Entity
function GetPedTaskCombatTarget(ped, p1) end

---**`PED` `client` [`0xEF2C71A32CAD5FBD`](https://docs.fivem.net/natives/?_0xEF2C71A32CAD5FBD)**
---
---```
---NativeDB Introduced: v1493
---```
---
---@param ped Ped
---@return number
function GetPedVisualFieldCenterAngle(ped) end

---**`PED` `client` [`0x36B77BB84687C318`](https://docs.fivem.net/natives/?_0x36B77BB84687C318)**
---
---```
---GET_TIME_*
---```
---
---@param ped Ped
---@param weaponHash Hash
---@return number
function GetTimeOfLastPedWeaponDamage(ped, weaponHash) end

---**`PED` `client` [`0x604E810189EE3A59`](https://docs.fivem.net/natives/?_0x604E810189EE3A59)**
---
---@param colorID number
---@return boolean
function IsPedBlushColorValid(colorID) end

---**`PED` `client` [`0xF41B5D290C99A3D6`](https://docs.fivem.net/natives/?_0xF41B5D290C99A3D6)**
---
---@param colorId number
---@return boolean
function IsPedBlushColorValid_2(colorId) end

---**`PED` `client` [`0x09E7ECA981D9B210`](https://docs.fivem.net/natives/?_0x09E7ECA981D9B210)**
---
---```
---NativeDB Introduced: v1290
---```
---
---@param colorID number
---@return boolean
function IsPedBodyBlemishValid(colorID) end

---**`PED` `client` [`0x451D05012CCEC234`](https://docs.fivem.net/natives/?_0x451D05012CCEC234)**
---
---@param ped Ped
---@return boolean
function IsPedDoingBeastJump(ped) end

---**`PED` `client` [`0xE0D36E5D9E99CC21`](https://docs.fivem.net/natives/?_0xE0D36E5D9E99CC21)**
---
---@param colorID number
---@return boolean
function IsPedHairColorValid(colorID) end

---**`PED` `client` [`0xED6D8E27A43B8CDE`](https://docs.fivem.net/natives/?_0xED6D8E27A43B8CDE)**
---
---@param colorId number
---@return boolean
function IsPedHairColorValid_2(colorId) end

---**`PED` `client` [`0xB9496CE47546DB2C`](https://docs.fivem.net/natives/?_0xB9496CE47546DB2C)**
---
---@param ped Ped
---@return boolean
function IsPedHelmetUnk(ped) end

---**`PED` `client` [`0x0525A2C2562F3CD4`](https://docs.fivem.net/natives/?_0x0525A2C2562F3CD4)**
---
---@param colorID number
---@return boolean
function IsPedLipstickColorValid(colorID) end

---**`PED` `client` [`0x3E802F11FBE27674`](https://docs.fivem.net/natives/?_0x3E802F11FBE27674)**
---
---@param colorId number
---@return boolean
function IsPedLipstickColorValid_2(colorId) end

---**`PED` `client` [`0x26AF0E8E30BD2A2C`](https://docs.fivem.net/natives/?_0x26AF0E8E30BD2A2C)**
---
---```
---IS_PED_*
---
---Returns true if the ped is currently opening a door (CTaskOpenDoor).
---```
---
---@param ped Ped
---@return boolean
function IsPedOpeningADoor(ped) end

---**`PED` `client` [`0x81AA517FBBA05D39`](https://docs.fivem.net/natives/?_0x81AA517FBBA05D39)**
---
---@param ped Ped
---@return boolean
function IsPedShaderEffectValid(ped) end

---**`PED` `client` [`0x3795688A307E1EB6`](https://docs.fivem.net/natives/?_0x3795688A307E1EB6)**
---
---@param Ped Ped
---@return boolean
function IsPedSwappingWeapon(Ped) end

---**`PED` `client` [`0x88274C11CF0D866D`](https://docs.fivem.net/natives/?_0x88274C11CF0D866D)**
---
---```
---NativeDB Introduced: v1493
---```
---
---@param ped Ped
---@return boolean
function IsScubaGearLightEnabled(ped) end

---**`PED` `client` [`0xBA8805A1108A2515`](https://docs.fivem.net/natives/?_0xBA8805A1108A2515)**
---
---@param ped Ped
---@return number
function RegisterPedheadshot_3(ped) end

---**`PED` `client` [`0xEE2476B9EE4A094F`](https://docs.fivem.net/natives/?_0xEE2476B9EE4A094F)**
---
---```
---NativeDB Introduced: v1493
---```
---
---@param ped Ped
---@param toggle boolean
function SetEnableScubaGearLight(ped, toggle) end

---**`PED` `client` [`0x5687C7F05B39E401`](https://docs.fivem.net/natives/?_0x5687C7F05B39E401)**
---
---Clipsets:
---"facials@gen_female@base"
---"facials@gen_male@base"
---"facials@p_m_zero@base"
---
---Typically followed with [SET_FACIAL_IDLE_ANIM_OVERRIDE](#\_0xFFC24B988B938B38):
---"mood_drunk\_1"
---"mood_stressed\_1"
---"mood_happy\_1"
---"mood_talking\_1"
---
---```
---NativeDB Introduced: v1493
---```
---
---@param ped Ped
---@param animDict string
function SetFacialClipsetOverride(ped, animDict) end

---**`PED` `client` [`0x33A60D8BDD6E508C`](https://docs.fivem.net/natives/?_0x33A60D8BDD6E508C)**
---
---@param ped Ped
---@param p1 boolean
function SetPedCanPlayInjuredAnims(ped, p1) end

---**`PED` `client` [`0x9DBA107B4937F809`](https://docs.fivem.net/natives/?_0x9DBA107B4937F809)**
---
---```
---Found in the b617d scripts:
---PED::_9DBA107B4937F809(v_7, "trevor_heist_cover_2h");
---SET_PED_MO*
---```
---
---@param ped Ped
---@param p1 string
function SetPedCoverClipsetOverride(ped, p1) end

---**`PED` `client` [`0x4E90D746056E273D`](https://docs.fivem.net/natives/?_0x4E90D746056E273D)**
---
---This native sets the glow intensity of illuminated clothing items.
---
---This native does **NOT** need to be executed every tick.
---This native is **NOT** synced with other connected players, you will have to set the opacity on the ped on all clients individually.
---
---Glow intensity is a value between `0.0` and `1.0`.
---
---In some older decompiled scripts this is known as `_SET_PED_REFLECTION_INTENSITY`.
---Since there's no joaat hash for this, I find `_SET_PED_ILLUMINATED_CLOTHING_GLOW_INTENSITY` more descriptive than `_SET_PED_REFLECTION_INTENSITY`.
---
---Use [`GetPedIlluminatedClothingGlowIntensity`](#\_0x1461B28A06717D68) to get the illuminated clothing glow intensity of a specific ped.
---
---Intensity: `1.0`:
---![](https://www.vespura.com/hi/i/2018-11-13\_17-03\_c2e23\_229.png)
---
---Intensity: `0.0`:
---![](https://www.vespura.com/hi/i/2018-11-13\_17-03\_35c33\_230.png)
---
---**Examples code result**:
---![](https://www.vespura.com/hi/i/2018-11-13\_17-11\_10199\_232.gif)
---
---(Direct link if embed doesn't work: [here](https://www.vespura.com/hi/i/2018-11-13\_17-11\_10199\_232.gif))
---
---Example code:
---```lua
---CreateThread(function()
---    local glowIntensity = 0.0
---    local reverse = false
---    while true do
---        Wait(100)
---        SetPedIlluminatedClothingGlowIntensity(PlayerPedId(), glowIntensity)
---        if reverse then
---            glowIntensity = glowIntensity - 0.05
---            if glowIntensity < 0.0 then
---                reverse = false
---                glowIntensity = 0.0
---            end
---        else
---            glowIntensity = glowIntensity + 0.05
---            if glowIntensity > 1.0 then
---                reverse = true
---                glowIntensity = 1.0
---            end
---        end
---    end
---end)
---```
---
---@param ped Ped The ped to set the glow intensity on.
---@param intensity number The glow intensity, value between `0.0` and `1.0`.
function SetPedEmissiveIntensity(ped, intensity) end

---**`PED` `client` [`0x50B56988B170AFDF`](https://docs.fivem.net/natives/?_0x50B56988B170AFDF)**
---
---Used for freemode (online) characters.
---
---Indices:
---
---1.  black
---2.  very light blue/green
---3.  dark blue
---4.  brown
---5.  darker brown
---6.  light brown
---7.  blue
---8.  light blue
---9.  pink
---10. yellow
---11. purple
---12. black
---13. dark green
---14. light brown
---15. yellow/black pattern
---16. light colored spiral pattern
---17. shiny red
---18. shiny half blue/half red
---19. half black/half light blue
---20. white/red perimter
---21. green snake
---22. red snake
---23. dark blue snake
---24. dark yellow
---25. bright yellow
---26. all black
---27. red small pupil
---28. devil blue/black
---29. white small pupil
---30. glossed over
---
---@param ped Ped
---@param index number
function SetPedEyeColor(ped, index) end

---**`PED` `client` [`0x71A5C1DBA060049E`](https://docs.fivem.net/natives/?_0x71A5C1DBA060049E)**
---
---Sets the various freemode face features, e.g. nose length, chin shape.
---
---**Indexes (From 0 to 19):**
---
---Parentheses indicate morph scale/direction as in (-1.0 to 1.0)
---
---*   **0**: Nose Width (Thin/Wide)
---*   **1**: Nose Peak (Up/Down)
---*   **2**: Nose Length (Long/Short)
---*   **3**: Nose Bone Curveness (Crooked/Curved)
---*   **4**: Nose Tip (Up/Down)
---*   **5**: Nose Bone Twist (Left/Right)
---*   **6**: Eyebrow (Up/Down)
---*   **7**: Eyebrow (In/Out)
---*   **8**: Cheek Bones (Up/Down)
---*   **9**: Cheek Sideways Bone Size (In/Out)
---*   **10**: Cheek Bones Width (Puffed/Gaunt)
---*   **11**: Eye Opening (Both) (Wide/Squinted)
---*   **12**: Lip Thickness (Both) (Fat/Thin)
---*   **13**: Jaw Bone Width (Narrow/Wide)
---*   **14**: Jaw Bone Shape (Round/Square)
---*   **15**: Chin Bone (Up/Down)
---*   **16**: Chin Bone Length (In/Out or Backward/Forward)
---*   **17**: Chin Bone Shape (Pointed/Square)
---*   **18**: Chin Hole (Chin Bum)
---*   **19**: Neck Thickness (Thin/Thick)
---
---**Note:**
---
---You may need to call [`SetPedHeadBlendData`](#0x9414E18B9434C2FE) prior to calling this native in order for it to work.
---
---@param ped Ped The ped entity
---@param index number An integer ranging from 0 to 19
---@param scale number A float ranging from -1.0 to 1.0
function SetPedFaceFeature(ped, index, scale) end

---**`PED` `client` [`0x4CFFC65454C93A49`](https://docs.fivem.net/natives/?_0x4CFFC65454C93A49)**
---
---```
---Used for freemode (online) characters.
---```
---
---@param ped Ped
---@param colorID number
---@param highlightColorID number
function SetPedHairColor(ped, colorID, highlightColorID) end

---**`PED` `client` [`0x497BF74A7B9CB952`](https://docs.fivem.net/natives/?_0x497BF74A7B9CB952)**
---
---```
---Used for freemode (online) characters.
---Called after SET_PED_HEAD_OVERLAY().
---```
---
---**Note:**
---
---You may need to call [`SetPedHeadBlendData`](#0x9414E18B9434C2FE) prior to calling this native in order for it to work.
---
---@param ped Ped The ped entity
---@param overlayID number An integer representing the overlay id
---@param colorType number 1 for eyebrows, beards, and chest hair; 2 for blush and lipstick; and 0 otherwise, though not called in those cases.
---@param colorID number An integer representing the primary color id
---@param secondColorID number An integer representing the secondary color id
function SetPedHeadOverlayColor(ped, overlayID, colorType, colorID, secondColorID) end

---**`PED` `client` [`0x3F7325574E41B44D`](https://docs.fivem.net/natives/?_0x3F7325574E41B44D)**
---
---@param ped Ped
---@param p1 boolean
---@param p2 number
---@param p3 number
function SetPedHelmetUnk(ped, p1, p2, p3) end

---**`PED` `client` [`0x36C6984C3ED0C911`](https://docs.fivem.net/natives/?_0x36C6984C3ED0C911)**
---
---This native sets a scuba mask for freemode models and an oxygen bottle for player_\* models. It works on freemode and player_\* models.
---
---@param ped Ped
function SetPedScubaGearVariation(ped) end

---**`PED` `client` [`0xEC6935EBE0847B90`](https://docs.fivem.net/natives/?_0xEC6935EBE0847B90)**
---
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@return any
function SetPedShouldPlayDirectedScenarioExit(p0, p1, p2, p3) end

---**`PED` `client` [`0x5615E0C5EB2BC6E2`](https://docs.fivem.net/natives/?_0x5615E0C5EB2BC6E2)**
---
---@param group Hash
---@param p1 boolean
function SetRelationshipGroupDontAffectWantedLevel(group, p1) end
