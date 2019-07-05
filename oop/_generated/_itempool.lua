local Native = require('lib.stdlib.native')

---@class ItemPool : Handle
local ItemPool = class('ItemPool', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function ItemPool:destructor()
--@debug@
    checkobject(self, ItemPool, 'destructor', 'self')
--@end-debug@
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
--@debug@
    checkobject(self, ItemPool, 'addItemType', 'self')
    checktype(itemId, 'integer', 'addItemType', 1)
    checktype(weight, 'float', 'addItemType', 2)
--@end-debug@
    return Native.ItemPoolAddItemType(getUd(self), itemId, weight)
end

---removeItemType
---@param itemId integer
---@return void
function ItemPool:removeItemType(itemId)
--@debug@
    checkobject(self, ItemPool, 'removeItemType', 'self')
    checktype(itemId, 'integer', 'removeItemType', 1)
--@end-debug@
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
--@debug@
    checkobject(self, ItemPool, 'placeRandomItem', 'self')
    checktype(x, 'float', 'placeRandomItem', 1)
    checktype(y, 'float', 'placeRandomItem', 2)
--@end-debug@
    return require('lib.stdlib.oop.item'):fromUd(Native.PlaceRandomItem(getUd(self), x, y))
end

return ItemPool
