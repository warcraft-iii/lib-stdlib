local Native = require('lib.stdlib.native')

---@class UnitPool : Handle
local UnitPool = class('UnitPool', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function UnitPool:destructor()
    return Native.DestroyUnitPool(getUd(self))
end

--@remove@

---destroy
---@deprecated
---@return void
function UnitPool:destroy() end

--@end-remove@

UnitPool.destroy = UnitPool.delete


---<static> create
---@return UnitPool
function UnitPool:create()
    return UnitPool:fromUd(Native.CreateUnitPool())
end

---addUnitType
---@param unitId integer
---@param weight float
---@return void
function UnitPool:addUnitType(unitId, weight)
    return Native.UnitPoolAddUnitType(getUd(self), unitId, weight)
end

---removeUnitType
---@param unitId integer
---@return void
function UnitPool:removeUnitType(unitId)
    return Native.UnitPoolRemoveUnitType(getUd(self), unitId)
end

---placeRandomUnit
---@param forWhichPlayer Player
---@param x float
---@param y float
---@param facing float
---@return Unit
function UnitPool:placeRandomUnit(forWhichPlayer, x, y, facing)
    return require('lib.stdlib.oop.unit'):fromUd(Native.PlaceRandomUnit(getUd(self), getUd(forWhichPlayer), x, y, facing))
end

return UnitPool
