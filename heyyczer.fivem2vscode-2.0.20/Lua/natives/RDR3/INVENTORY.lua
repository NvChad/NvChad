---@meta

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ped number 
function InventoryGetInventoryIdFromPed(ped) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param eRoleMaxLevel number | string 
function GetItemRoleMaxLevelCount(inventoryId, eRoleMaxLevel) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param provision number | string 
---@param slotId number | string 
function GetItemSlotMaxCount(provision, slotId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param p1 number | string 
---@param year number 
---@param month number 
---@param day number 
---@param hour number 
---@param minute number 
---@param second number 
function N_undefined(inventoryId, p1, year, month, day, hour, minute, second) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param eInventoryItem number | string 
---@param p2 boolean 
function N_undefined(inventoryId, eInventoryItem, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param inUse boolean 
function InventorySetInventoryItemInUse(inventoryId, guid, inUse) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
function InventoryGetInventoryItemInUse(inventoryId, guid) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param hidden boolean 
function InventorySetInventoryItemHidden(inventoryId, guid, hidden) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param hidden boolean 
function InventorySetInventoryItemHidden2(inventoryId, guid, hidden) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
function InventoryGetInventoryItemHidden(inventoryId, guid) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param item number | string 
function InventoryGetInventoryItemIsAnimalPelt(item) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param item number | string 
function InventoryGetInventoryItemDescriptionHash(item) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param item number | string 
---@param flag number 
function InventoryIsInventoryItemFlagEnabled(item, flag) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param item number | string 
---@param soundType number 
function InventoryGetIsInventoryItemSoundValid(item, soundType) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param item number | string 
---@param soundType number 
function InventoryGetInventoryItemSound(item, soundType) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param item number | string 
---@param info any 
function InventoryGetInventoryItemInspectionInfo(item, info) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
function InventoryGetInventoryItemWeaponCopyId(inventoryId, guid) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
function InventoryAreLocalChangesAllowed(inventoryId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param guid any 
function InventoryIsGuidValid(guid) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param guid1 any 
---@param guid2 any 
function InventoryCompareGuids(guid1, guid2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param p2 number | string 
---@param slotId number | string 
---@param outGuid any 
function InventoryGetGuidFromItemid(inventoryId, guid, p2, slotId, outGuid) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param removeReason number | string 
function N_undefined(inventoryId, removeReason) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param inData any 
---@param outData any 
---@param p3 boolean 
function InventoryGetInventoryItem(inventoryId, inData, outData, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param p2 any 
---@param p3 number 
---@param p4 number 
function InventoryGetFullInventoryItemData(inventoryId, guid, p2, p3, p4) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param parentGuid any 
---@param childIndex any 
---@param outInventoryItem any 
function InventoryGetInventoryItemChild(inventoryId, parentGuid, childIndex, outInventoryItem) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid1 any 
---@param guid2 any 
---@param item number | string 
---@param inventoryItemSlot number | string 
---@param p5 number 
---@param addReason number | string 
function InventoryAddItemWithGuid(inventoryId, guid1, guid2, item, inventoryItemSlot, p5, addReason) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid1 any 
---@param guid2 any 
---@param p3 number 
function InventoryUpdateInventoryItem(inventoryId, guid1, guid2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param quantity number 
---@param removeReason number | string 
function InventoryRemoveInventoryItemWithGuid(inventoryId, guid, quantity, removeReason) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param item number | string 
---@param quantity number 
---@param removeReason number | string 
function InventoryRemoveInventoryItemWithItemid(inventoryId, item, quantity, removeReason) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid1 any 
---@param guid2 any 
---@param slotId number | string 
---@param quantity number 
---@param outGuid any 
function InventoryMoveInventoryItem(inventoryId, guid1, guid2, slotId, quantity, outGuid) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid1 any 
---@param guid2 any 
function InventorySwapInventoryItem(inventoryId, guid1, guid2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param filterName const char 
---@param slotId number | string 
---@param size number 
function InventoryCreateItemCollection(inventoryId, filterName, slotId, size) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param filter any 
---@param numInCollection number 
function InventoryCreateItemCollectionWithFilter(inventoryId, filter, numInCollection) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param collectionId number 
---@param itemIndex number 
---@param itemData any 
function InventoryGetItemFromCollectionIndex(collectionId, itemIndex, itemData) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param collectionId number 
function InventoryReleaseItemCollection(collectionId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param bEquipped boolean 
function InventoryEquipItemWithGuid(inventoryId, guid, bEquipped) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param slotId number | string 
---@param outGuid any 
function InventoryGetInventoryItemEquippedInSlotByRef(inventoryId, guid, slotId, outGuid) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param item number | string 
function InventoryDoesItemOwnEquipment(inventoryId, guid, item) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param p2 number 
---@param p3 number 
function N_undefined(inventoryId, guid, p2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 boolean 
---@param inventoryId number 
---@param guid any 
function N_undefined(p0, inventoryId, guid) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param weatherEffectiveness number 
function InventorySetInventoryItemWeatherEffectiveness(inventoryId, guid, weatherEffectiveness) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param item number | string 
---@param gtxReason number | string 
function InventoryDisableItem(inventoryId, item, gtxReason) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param item number | string 
function InventoryEnableItem(inventoryId, item) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param item number | string 
---@param p2 boolean 
function InventoryIsInventoryItemEquipped(inventoryId, item, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param p1 any 
---@param enabled boolean 
function InventorySetInventoryItemInspectionEnabled(inventoryId, p1, enabled) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param itemGUID any 
function InventoryIsItemExpired(itemGUID) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param itemGUID any 
function InventoryGetItemExpiryTime(itemGUID) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param p2 boolean 
function InventoryGetInventoryItemCountWithGuid(inventoryId, guid, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param eInventoryItem number | string 
---@param p2 boolean 
function InventoryGetInventoryItemCountWithItemid(inventoryId, eInventoryItem, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param itemGUID any 
function N_undefined(inventoryId, itemGUID) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param parentGuid any 
function InventoryGetChildrenCount(inventoryId, parentGuid) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param slotId number | string 
function InventoryGetChildrenInSlotCount(inventoryId, guid, slotId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param slotId number | string 
---@param p3 number 
---@param p4 any 
function InventoryGetInventoryItemEquippedInSlot(inventoryId, guid, slotId, p3, p4) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param item number | string 
---@param slotId number | string 
function InventoryFitsSlotId(item, slotId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param item number | string 
---@param p1 number | string 
function GetDefaultItemSlotInfo(item, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number | string 
---@param p1 any 
---@param p2 number 
function InventoryGetInventoryItemFitSlot(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param item number | string 
---@param p1 any 
---@param p2 any 
function N_undefined(item, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param data any 
---@param effects const char 
---@param p2 boolean 
---@param p3 boolean 
function N_undefined(data, effects, p2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param databindingEntryId number | string 
---@param p1 boolean 
---@param p2 boolean 
function N_undefined(databindingEntryId, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param data any 
---@param stats const char 
---@param p2 number 
---@param p3 number 
function N_undefined(data, stats, p2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param data any 
---@param p1 boolean 
---@param ped number 
function N_undefined(data, p1, ped) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param data any 
---@param stats const char 
---@param guid any 
---@param ped number 
function N_undefined(data, stats, guid, ped) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
---@param outGuid any 
---@param ped number 
function N_undefined(p0, outGuid, ped) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param guid any 
---@param p2 number | string 
---@param p3 any 
function N_undefined(inventoryId, guid, p2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param toggle boolean 
function SetUseMissionInventory(toggle) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function InventoryDisableMissionInventoryPickups() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param enable boolean 
---@param mirrorTransactions boolean 
function InventoryUseMissionInventory(enable, mirrorTransactions) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 boolean 
---@param p1 boolean 
---@param bCopySatchelItems boolean 
---@param bCopyEmotes boolean 
---@param bCopyHorse boolean 
---@param p5 boolean 
function InventoryCopyMpInventoryToMissionInventory(p0, p1, bCopySatchelItems, bCopyEmotes, bCopyHorse, p5) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param guid any 
---@param p1 boolean 
function InventoryCopyItemToMissionInventory(guid, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 boolean 
function N_undefined(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function InventoryUseSpBackup() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function InventoryIsPlayerInventoryMirroringTransactions() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param inventoryIdCloned number 
---@param p2 any 
---@param p3 any 
function InventoryCopyItemToInventory(inventoryId, inventoryIdCloned, p2, p3) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param ped number 
---@param p1 number 
function N_undefined(ped, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 any 
function SetItemPromptInfoRequest(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function N_undefined() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param data any 
function SetCarriableCarryActionPromptOverride(data) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
function InventoryEnableWeapons(inventoryId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param p1 any 
function InventoryDisableWeapons(inventoryId, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
function N_undefined(inventoryId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
function N_undefined(inventoryId) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param collectionSize number 
function InventoryCreateItemCollection2(collectionSize) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param inventoryId number 
---@param p1 number 
---@param size number 
function InventoryCreateSortedCollection(inventoryId, p1, size) end

