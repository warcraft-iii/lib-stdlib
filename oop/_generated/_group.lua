local Native = require('lib.stdlib.native')

---@class Group : Agent
local Group = class('Group', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Group:destructor()
    return Native.DestroyGroup(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function Group:destroy()
--@debug@
    deprecated('Group.destroy', 'Group.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@return Group
function Group:create()
    return Group:fromUd(Native.CreateGroup())
end

---addUnit
---@param unit Unit
---@return boolean
function Group:addUnit(unit)
    return Native.GroupAddUnit(getUd(self), getUd(unit))
end

---removeUnit
---@param unit Unit
---@return boolean
function Group:removeUnit(unit)
    return Native.GroupRemoveUnit(getUd(self), getUd(unit))
end

---addGroup
---@param addGroup Group
---@return integer
function Group:addGroup(addGroup)
    return Native.BlzGroupAddGroupFast(getUd(self), getUd(addGroup))
end

---removeGroup
---@param removeGroup Group
---@return integer
function Group:removeGroup(removeGroup)
    return Native.BlzGroupRemoveGroupFast(getUd(self), getUd(removeGroup))
end

---clear
---@return void
function Group:clear()
    return Native.GroupClear(getUd(self))
end

---getSize
---@return integer
function Group:getSize()
    return Native.BlzGroupGetSize(getUd(self))
end

---unitAt
---@param index integer
---@return Unit
function Group:unitAt(index)
    return require('lib.stdlib.oop.unit'):fromUd(Native.BlzGroupUnitAt(getUd(self), index))
end

---enumUnitsOfType
---@param unitname string
---@param filter UnitFilter
---@return void
function Group:enumUnitsOfType(unitname, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsOfType(getUd(self), unitname, getUd(filter))
    if filter then filter:delete() end
end

---enumUnitsOfPlayer
---@param player Player
---@param filter UnitFilter
---@return void
function Group:enumUnitsOfPlayer(player, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsOfPlayer(getUd(self), getUd(player), getUd(filter))
    if filter then filter:delete() end
end

---enumUnitsOfTypeCounted
---@param unitname string
---@param countLimit integer
---@param filter UnitFilter
---@return void
function Group:enumUnitsOfTypeCounted(unitname, countLimit, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsOfTypeCounted(getUd(self), unitname, getUd(filter), countLimit)
    if filter then filter:delete() end
end

---enumUnitsInRect
---@param r Rect
---@param filter UnitFilter
---@return void
function Group:enumUnitsInRect(r, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsInRect(getUd(self), getUd(r), getUd(filter))
    if filter then filter:delete() end
end

---enumUnitsInRectCounted
---@param r Rect
---@param countLimit integer
---@param filter UnitFilter
---@return void
function Group:enumUnitsInRectCounted(r, countLimit, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsInRectCounted(getUd(self), getUd(r), getUd(filter), countLimit)
    if filter then filter:delete() end
end

---enumUnitsInRange
---@overload fun(vec: Vector2, radius: float, filter: UnitFilter): void
---@param x float
---@param y float
---@param radius float
---@param filter UnitFilter
---@return void
function Group:enumUnitsInRange(x, y, radius, filter)
    if type(x) == 'table' then
        radius, filter = y, radius
        x, y = table.unpack(x)
    end
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsInRange(getUd(self), x, y, radius, getUd(filter))
    if filter then filter:delete() end
end

---enumUnitsInRangeCounted
---@overload fun(vec: Vector2, radius: float, countLimit: integer, filter: UnitFilter): void
---@param x float
---@param y float
---@param radius float
---@param countLimit integer
---@param filter UnitFilter
---@return void
function Group:enumUnitsInRangeCounted(x, y, radius, countLimit, filter)
    if type(x) == 'table' then
        radius, countLimit, filter = y, radius, countLimit
        x, y = table.unpack(x)
    end
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsInRangeCounted(getUd(self), x, y, radius, getUd(filter), countLimit)
    if filter then filter:delete() end
end

---enumUnitsSelected
---@param player Player
---@param filter UnitFilter
---@return void
function Group:enumUnitsSelected(player, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsSelected(getUd(self), getUd(player), getUd(filter))
    if filter then filter:delete() end
end

---immediateOrder
---@param order integer
---@return boolean
function Group:immediateOrder(order)
    return Native.GroupImmediateOrderById(getUd(self), order)
end

---pointOrder
---@overload fun(order: integer, vec: Vector2): boolean
---@param order integer
---@param x float
---@param y float
---@return boolean
function Group:pointOrder(order, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
    return Native.GroupPointOrderById(getUd(self), order, x, y)
end

---targetOrder
---@param order integer
---@param targetWidget Widget
---@return boolean
function Group:targetOrder(order, targetWidget)
    return Native.GroupTargetOrderById(getUd(self), order, getUd(targetWidget))
end

---forEach
---@param callback UnitCallback
---@return void
function Group:forEach(callback)
    callback = require('lib.stdlib.oop.function'):createUnitCallback(callback)
    return Native.ForGroup(getUd(self), callback)
end

---firstOf
---@return Unit
function Group:firstOf()
    return require('lib.stdlib.oop.unit'):fromUd(Native.FirstOfGroup(getUd(self)))
end

return Group
