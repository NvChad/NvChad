---@meta
---**`DLC` `client` [`0x241FCA5B1AA14F75`](https://docs.fivem.net/natives/?_0x241FCA5B1AA14F75)**
---
---```
---Only used once in scripts, in maintransition.
---maintransition.c4, line ~82432:
---if (PED::_7350823473013C02(PLAYER::PLAYER_PED_ID()) && (DECORATOR::_241FCA5B1AA14F75() == 0)) {
---    g_2542A5 = a_1; // 'g_2542A5' used in 'building_controller.ysc' for IPL stuff?
---    return 1;
---}
---Likely used solely for the players ped. The function it's in seems to only be used for initialization/quitting. Called among natives to discard scaleforms, disable frontend, fading in/out, etc. Neighboring strings to some calls include "HUD_JOINING", "HUD_QUITTING".
---Most likely ARE_*
---```
---
---@return boolean
function N_0x241fca5b1aa14f75() end

---**`DLC` `client` [`0x9489659372A81585`](https://docs.fivem.net/natives/?_0x9489659372A81585)**
---
---@return boolean # Hard-coded to always return 0.
function N_0x9489659372a81585() end

---**`DLC` `client` [`0xA213B11DFF526300`](https://docs.fivem.net/natives/?_0xA213B11DFF526300)**
---
---@return boolean # Hard-coded to always return 1.
function N_0xa213b11dff526300() end

---**`DLC` `client` [`0xC4637A6D03C24CC3`](https://docs.fivem.net/natives/?_0xC4637A6D03C24CC3)**
---
---GET_IS_LOADING_\*
---
---```
---NativeDB Introduced: v1734
---```
---
---@return boolean
function N_0xc4637a6d03c24cc3() end

---**`DLC` `client` [`0xF2E07819EF1A5289`](https://docs.fivem.net/natives/?_0xF2E07819EF1A5289)**
---
---@return boolean # Hard-coded to always return 1.
function N_0xf2e07819ef1a5289() end

---**`DLC` `client` [`0x10D0A8F259E93EC9`](https://docs.fivem.net/natives/?_0x10D0A8F259E93EC9)**
---
---@return boolean
function GetIsLoadingScreenActive() end

---**`DLC` `client` [`0x46E2B844905BC5F0`](https://docs.fivem.net/natives/?_0x46E2B844905BC5F0)**
---
---```
---Sets the value of the specified variable to 0.
---Always returns true.
---```
---
---@param variable boolean
---@param unused any
---@return boolean, boolean
function HasCloudRequestsFinished(variable, unused) end

---**`DLC` `client` [`0x812595A0644CE1DE`](https://docs.fivem.net/natives/?_0x812595A0644CE1DE)**
---
---```
---Example:
---DLC::IS_DLC_PRESENT($\mpbusiness2\);
---($ = gethashkey)
---bruteforce these:
---0xB119F6D
---0x96F02EE6
---```
---
---@param dlcHash Hash
---@return boolean
function IsDlcPresent(dlcHash) end

---**`DLC` `client` [`0x0888C3502DBBEEF5`](https://docs.fivem.net/natives/?_0x0888C3502DBBEEF5)**
---
---```
---This loads the GTA:O dlc map parts (high end garages, apartments).
---Works in singleplayer.
---In order to use GTA:O heist IPL's you have to call this native with the following params: SET_INSTANCE_PRIORITY_MODE(1);
---```
---
function OnEnterMp() end

---**`DLC` `client` [`0xD7C10C4A637992C9`](https://docs.fivem.net/natives/?_0xD7C10C4A637992C9)**
---
---```
---Unloads GROUP_MAP (GTAO/MP) DLC data and loads GROUP_MAP_SP DLC. Neither are loaded by default, 0888C3502DBBEEF5 is a cognate to this function and loads MP DLC (and unloads SP DLC by extension).
---The original (and wrong) definition is below:
---This unload the GTA:O DLC map parts (like high end garages/apartments).
---Works in singleplayer.
---```
---
function OnEnterSp() end

---**`DLC` `client` [`0x8D30F648014A92B5`](https://docs.fivem.net/natives/?_0x8D30F648014A92B5)**
---
---@return boolean
function GetExtraContentPackHasBeenInstalled() end
