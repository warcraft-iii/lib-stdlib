local Native = require('lib.stdlib.native')

---@class Group : Agent
local Group = class('Group', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Group:destructor()
    return Native.DestroyGroup(getUd(self))
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
    Native.GroupEnumUnitsOfType(getUd(self), unitname, filter)
    if filter then filter:destroy() end
end

---enumUnitsOfPlayer
---@param player Player
---@param filter UnitFilter
---@return void
function Group:enumUnitsOfPlayer(player, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsOfPlayer(getUd(self), getUd(player), filter)
    if filter then filter:destroy() end
end

---enumUnitsOfTypeCounted
---@param unitname string
---@param countLimit integer
---@param filter UnitFilter
---@return void
function Group:enumUnitsOfTypeCounted(unitname, countLimit, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsOfTypeCounted(getUd(self), unitname, filter, countLimit)
    if filter then filter:destroy() end
end

---enumUnitsInRect
---@param r Rect
---@param filter UnitFilter
---@return void
function Group:enumUnitsInRect(r, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsInRect(getUd(self), getUd(r), filter)
    if filter then filter:destroy() end
end

---enumUnitsInRectCounted
---@param r Rect
---@param countLimit integer
---@param filter UnitFilter
---@return void
function Group:enumUnitsInRectCounted(r, countLimit, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsInRectCounted(getUd(self), getUd(r), filter, countLimit)
    if filter then filter:destroy() end
end

---enumUnitsInRange
---@param x float
---@param y float
---@param radius float
---@param filter UnitFilter
---@return void
function Group:enumUnitsInRange(x, y, radius, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsInRange(getUd(self), x, y, radius, filter)
    if filter then filter:destroy() end
end

---enumUnitsInRangeOfLoc
---@param loc Location
---@param radius float
---@param filter UnitFilter
---@return void
function Group:enumUnitsInRangeOfLoc(loc, radius, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsInRangeOfLoc(getUd(self), getUd(loc), radius, filter)
    if filter then filter:destroy() end
end

---enumUnitsInRangeCounted
---@param x float
---@param y float
---@param radius float
---@param countLimit integer
---@param filter UnitFilter
---@return void
function Group:enumUnitsInRangeCounted(x, y, radius, countLimit, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsInRangeCounted(getUd(self), x, y, radius, filter, countLimit)
    if filter then filter:destroy() end
end

---enumUnitsInRangeOfLocCounted
---@param loc Location
---@param radius float
---@param countLimit integer
---@param filter UnitFilter
---@return void
function Group:enumUnitsInRangeOfLocCounted(loc, radius, countLimit, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsInRangeOfLocCounted(getUd(self), getUd(loc), radius, filter, countLimit)
    if filter then filter:destroy() end
end

---enumUnitsSelected
---@param player Player
---@param filter UnitFilter
---@return void
function Group:enumUnitsSelected(player, filter)
    filter = require('lib.stdlib.oop.filter'):createUnitFilter(filter)
    Native.GroupEnumUnitsSelected(getUd(self), getUd(player), filter)
    if filter then filter:destroy() end
end

---immediateOrder
---@param order string
---@return boolean
function Group:immediateOrder(order)
    return Native.GroupImmediateOrder(getUd(self), order)
end

---immediateOrderById
---@param order integer
---@return boolean
function Group:immediateOrderById(order)
    return Native.GroupImmediateOrderById(getUd(self), order)
end

---pointOrder
---@param order string
---@param x float
---@param y float
---@return boolean
function Group:pointOrder(order, x, y)
    return Native.GroupPointOrder(getUd(self), order, x, y)
end

---pointOrderLoc
---@param order string
---@param loc Location
---@return boolean
function Group:pointOrderLoc(order, loc)
    return Native.GroupPointOrderLoc(getUd(self), order, getUd(loc))
end

---pointOrderById
---@param order integer
---@param x float
---@param y float
---@return boolean
function Group:pointOrderById(order, x, y)
    return Native.GroupPointOrderById(getUd(self), order, x, y)
end

---pointOrderByIdLoc
---@param order integer
---@param loc Location
---@return boolean
function Group:pointOrderByIdLoc(order, loc)
    return Native.GroupPointOrderByIdLoc(getUd(self), order, getUd(loc))
end

---targetOrder
---@param order string
---@param targetWidget Widget
---@return boolean
function Group:targetOrder(order, targetWidget)
    return Native.GroupTargetOrder(getUd(self), order, getUd(targetWidget))
end

---targetOrderById
---@param order integer
---@param targetWidget Widget
---@return boolean
function Group:targetOrderById(order, targetWidget)
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
