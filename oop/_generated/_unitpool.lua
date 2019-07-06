local Native = require('lib.stdlib.native')

---@class UnitPool : Handle
local UnitPool = class('UnitPool', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function UnitPool:destructor()
--@debug@
    checkobject(self, UnitPool, 'destructor', 'self')
--@end-debug@
    return Native.DestroyUnitPool(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function UnitPool:destroy()
--@debug@
    deprecated('UnitPool.destroy', 'UnitPool.delete')
--@end-debug@
    return self:delete()
end

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
--@debug@
    checkobject(self, UnitPool, 'addUnitType', 'self')
    checktype(unitId, 'integer', 'addUnitType', 1)
    checktype(weight, 'float', 'addUnitType', 2)
--@end-debug@
    return Native.UnitPoolAddUnitType(getUd(self), unitId, weight)
end

---removeUnitType
---@param unitId integer
---@return void
function UnitPool:removeUnitType(unitId)
--@debug@
    checkobject(self, UnitPool, 'removeUnitType', 'self')
    checktype(unitId, 'integer', 'removeUnitType', 1)
--@end-debug@
    return Native.UnitPoolRemoveUnitType(getUd(self), unitId)
end

---placeRandomUnit
---@overload fun(forWhichPlayer: Player, vec: Vector, facing: float): Unit
---@param forWhichPlayer Player
---@param x float
---@param y float
---@param facing float
---@return Unit
function UnitPool:placeRandomUnit(forWhichPlayer, x, y, facing)
    if type(x) == 'table' then
        facing = y
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, UnitPool, 'placeRandomUnit', 'self')
    checkobject(forWhichPlayer, require('lib.stdlib.oop.player'), 'placeRandomUnit', 1)
    checktype(x, 'float', 'placeRandomUnit', 2)
    checktype(y, 'float', 'placeRandomUnit', 3)
    checktype(facing, 'float', 'placeRandomUnit', 4)
--@end-debug@
    return require('lib.stdlib.oop.unit'):fromUd(Native.PlaceRandomUnit(getUd(self), getUd(forWhichPlayer), x, y, facing))
end

return UnitPool
