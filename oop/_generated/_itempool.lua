local Native = require('lib.stdlib.native')

---@class ItemPool : Handle
local ItemPool = class('ItemPool', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function ItemPool:destructor()
    return Native.DestroyItemPool(getUd(self))
end

--@remove@

---destroy
---@deprecated
---@return void
function ItemPool:destroy() end

--@end-remove@

ItemPool.destroy = ItemPool.delete


---<static> create
---@return ItemPool
function ItemPool:create()
    return ItemPool:fromUd(Native.CreateItemPool())
end

---addItemType
---@param itemId integer
---@param weight float
---@return void
function ItemPool:addItemType(itemId, weight)
    return Native.ItemPoolAddItemType(getUd(self), itemId, weight)
end

---removeItemType
---@param itemId integer
---@return void
function ItemPool:removeItemType(itemId)
    return Native.ItemPoolRemoveItemType(getUd(self), itemId)
end

---placeRandomItem
---@param x float
---@param y float
---@return Item
function ItemPool:placeRandomItem(x, y)
    return require('lib.stdlib.oop.item'):fromUd(Native.PlaceRandomItem(getUd(self), x, y))
end

return ItemPool
