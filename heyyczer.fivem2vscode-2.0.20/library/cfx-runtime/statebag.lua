---@meta

---@class StateBag
---@field set fun(self, key: string, value: any, replicated?: boolean)
---@field [string] any

---@class StateBagProvider
---@field state StateBag
---@field __data number

---@class StateBag
GlobalState = {}

---@param entity Entity
---@return StateBagProvider
function Entity(entity) end

---@param player Player
---@return StateBagProvider
function Player(player) end
