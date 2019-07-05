local Native = require('lib.stdlib.native')

---@class ItemPool : Handle
local ItemPool = class('ItemPool', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function ItemPool:destructor()
    return Native.DestroyItemPool(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function ItemPool:destroy()
--@debug@
    deprecated('ItemPool.destroy', 'ItemPool.delete')
--@end-debug@
    return self:delete()
end

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
---@overload fun(vec: Vector2): Item
---@param x float
---@param y float
---@return Item
function ItemPool:placeRandomItem(x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
    return require('lib.stdlib.oop.item'):fromUd(Native.PlaceRandomItem(getUd(self), x, y))
end

return ItemPool
