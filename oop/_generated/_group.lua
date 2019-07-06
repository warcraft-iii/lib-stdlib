local Native = require('lib.stdlib.native')

---@class Group : Agent
local Group = class('Group', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Group:destructor()
--@debug@
    checkobject(self, Group, 'destructor', 'self')
--@end-debug@
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
--@debug@
    checkobject(self, Group, 'addUnit', 'self')
    checkobject(unit, require('lib.stdlib.oop.unit'), 'addUnit', 1)
--@end-debug@
    return Native.GroupAddUnit(getUd(self), getUd(unit))
end

---removeUnit
---@param unit Unit
---@return boolean
function Group:removeUnit(unit)
--@debug@
    checkobject(self, Group, 'removeUnit', 'self')
    checkobject(unit, require('lib.stdlib.oop.unit'), 'removeUnit', 1)
--@end-debug@
    return Native.GroupRemoveUnit(getUd(self), getUd(unit))
end

---addGroup
---@param addGroup Group
---@return integer
function Group:addGroup(addGroup)
--@debug@
    checkobject(self, Group, 'addGroup', 'self')
    checkobject(addGroup, require('lib.stdlib.oop.group'), 'addGroup', 1)
--@end-debug@
    return Native.BlzGroupAddGroupFast(getUd(self), getUd(addGroup))
end

---removeGroup
---@param removeGroup Group
---@return integer
function Group:removeGroup(removeGroup)
--@debug@
    checkobject(self, Group, 'removeGroup', 'self')
    checkobject(removeGroup, require('lib.stdlib.oop.group'), 'removeGroup', 1)
--@end-debug@
    return Native.BlzGroupRemoveGroupFast(getUd(self), getUd(removeGroup))
end

---clear
---@return void
function Group:clear()
--@debug@
    checkobject(self, Group, 'clear', 'self')
--@end-debug@
    return Native.GroupClear(getUd(self))
end

---getSize
---@return integer
function Group:getSize()
--@debug@
    checkobject(self, Group, 'getSize', 'self')
--@end-debug@
    return Native.BlzGroupGetSize(getUd(self))
end

---unitAt
---@param index integer
---@return Unit
function Group:unitAt(index)
--@debug@
    checkobject(self, Group, 'unitAt', 'self')
    checktype(index, 'integer', 'unitAt', 1)
--@end-debug@
    return require('lib.stdlib.oop.unit'):fromUd(Native.BlzGroupUnitAt(getUd(self), index))
end

---enumUnitsOfType
---@param unitname string
---@param filter UnitFilter
---@return void
function Group:enumUnitsOfType(unitname, filter)
--@debug@
    checkobject(self, Group, 'enumUnitsOfType', 'self')
    checktype(unitname, 'string', 'enumUnitsOfType', 1)
    checktype(filter, 'function', 'enumUnitsOfType', 2)
--@end-debug@
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsOfType(getUd(self), unitname, getUd(filter))
    if filter then filter:delete() end
end

---enumUnitsOfPlayer
---@param player Player
---@param filter UnitFilter
---@return void
function Group:enumUnitsOfPlayer(player, filter)
--@debug@
    checkobject(self, Group, 'enumUnitsOfPlayer', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'enumUnitsOfPlayer', 1)
    checktype(filter, 'function', 'enumUnitsOfPlayer', 2)
--@end-debug@
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
--@debug@
    checkobject(self, Group, 'enumUnitsOfTypeCounted', 'self')
    checktype(unitname, 'string', 'enumUnitsOfTypeCounted', 1)
    checktype(countLimit, 'integer', 'enumUnitsOfTypeCounted', 2)
    checktype(filter, 'function', 'enumUnitsOfTypeCounted', 3)
--@end-debug@
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsOfTypeCounted(getUd(self), unitname, getUd(filter), countLimit)
    if filter then filter:delete() end
end

---enumUnitsInRect
---@param r Rect
---@param filter UnitFilter
---@return void
function Group:enumUnitsInRect(r, filter)
--@debug@
    checkobject(self, Group, 'enumUnitsInRect', 'self')
    checkobject(r, require('lib.stdlib.oop.rect'), 'enumUnitsInRect', 1)
    checktype(filter, 'function', 'enumUnitsInRect', 2)
--@end-debug@
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
--@debug@
    checkobject(self, Group, 'enumUnitsInRectCounted', 'self')
    checkobject(r, require('lib.stdlib.oop.rect'), 'enumUnitsInRectCounted', 1)
    checktype(countLimit, 'integer', 'enumUnitsInRectCounted', 2)
    checktype(filter, 'function', 'enumUnitsInRectCounted', 3)
--@end-debug@
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsInRectCounted(getUd(self), getUd(r), getUd(filter), countLimit)
    if filter then filter:delete() end
end

---enumUnitsInRange
---@overload fun(vec: Vector, radius: float, filter: UnitFilter): void
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
--@debug@
    checkobject(self, Group, 'enumUnitsInRange', 'self')
    checktype(x, 'float', 'enumUnitsInRange', 1)
    checktype(y, 'float', 'enumUnitsInRange', 2)
    checktype(radius, 'float', 'enumUnitsInRange', 3)
    checktype(filter, 'function', 'enumUnitsInRange', 4)
--@end-debug@
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsInRange(getUd(self), x, y, radius, getUd(filter))
    if filter then filter:delete() end
end

---enumUnitsInRangeCounted
---@overload fun(vec: Vector, radius: float, countLimit: integer, filter: UnitFilter): void
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
--@debug@
    checkobject(self, Group, 'enumUnitsInRangeCounted', 'self')
    checktype(x, 'float', 'enumUnitsInRangeCounted', 1)
    checktype(y, 'float', 'enumUnitsInRangeCounted', 2)
    checktype(radius, 'float', 'enumUnitsInRangeCounted', 3)
    checktype(countLimit, 'integer', 'enumUnitsInRangeCounted', 4)
    checktype(filter, 'function', 'enumUnitsInRangeCounted', 5)
--@end-debug@
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsInRangeCounted(getUd(self), x, y, radius, getUd(filter), countLimit)
    if filter then filter:delete() end
end

---enumUnitsSelected
---@param player Player
---@param filter UnitFilter
---@return void
function Group:enumUnitsSelected(player, filter)
--@debug@
    checkobject(self, Group, 'enumUnitsSelected', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'enumUnitsSelected', 1)
    checktype(filter, 'function', 'enumUnitsSelected', 2)
--@end-debug@
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsSelected(getUd(self), getUd(player), getUd(filter))
    if filter then filter:delete() end
end

---immediateOrder
---@param order integer
---@return boolean
function Group:immediateOrder(order)
--@debug@
    checkobject(self, Group, 'immediateOrder', 'self')
    checktype(order, 'integer', 'immediateOrder', 1)
--@end-debug@
    return Native.GroupImmediateOrderById(getUd(self), order)
end

---pointOrder
---@overload fun(order: integer, vec: Vector): boolean
---@param order integer
---@param x float
---@param y float
---@return boolean
function Group:pointOrder(order, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Group, 'pointOrder', 'self')
    checktype(order, 'integer', 'pointOrder', 1)
    checktype(x, 'float', 'pointOrder', 2)
    checktype(y, 'float', 'pointOrder', 3)
--@end-debug@
    return Native.GroupPointOrderById(getUd(self), order, x, y)
end

---targetOrder
---@param order integer
---@param targetWidget Widget
---@return boolean
function Group:targetOrder(order, targetWidget)
--@debug@
    checkobject(self, Group, 'targetOrder', 'self')
    checktype(order, 'integer', 'targetOrder', 1)
    checkobject(targetWidget, require('lib.stdlib.oop.widget'), 'targetOrder', 2)
--@end-debug@
    return Native.GroupTargetOrderById(getUd(self), order, getUd(targetWidget))
end

---forEach
---@param callback UnitCallback
---@return void
function Group:forEach(callback)
--@debug@
    checkobject(self, Group, 'forEach', 'self')
    checktype(callback, 'function', 'forEach', 1)
--@end-debug@
    callback = require('lib.stdlib.oop.function'):createUnitCallback(callback)
    return Native.ForGroup(getUd(self), callback)
end

---firstOf
---@return Unit
function Group:firstOf()
--@debug@
    checkobject(self, Group, 'firstOf', 'self')
--@end-debug@
    return require('lib.stdlib.oop.unit'):fromUd(Native.FirstOfGroup(getUd(self)))
end

return Group
