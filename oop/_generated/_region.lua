local Native = require('lib.stdlib.native')

---@class Region : Agent
local Region = class('Region', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Region:destructor()
--@debug@
    checkobject(self, Region, 'destructor', 'self')
--@end-debug@
    return Native.RemoveRegion(getUd(self))
end

---<**_DEPRECATED_**> remove
---@return void
function Region:remove()
--@debug@
    deprecated('Region.remove', 'Region.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@return Region
function Region:create()
    return Region:fromUd(Native.CreateRegion())
end

---addRect
---@param r Rect
---@return void
function Region:addRect(r)
--@debug@
    checkobject(self, Region, 'addRect', 'self')
    checkobject(r, require('lib.stdlib.oop.rect'), 'addRect', 1)
--@end-debug@
    return Native.RegionAddRect(getUd(self), getUd(r))
end

---clearRect
---@param r Rect
---@return void
function Region:clearRect(r)
--@debug@
    checkobject(self, Region, 'clearRect', 'self')
    checkobject(r, require('lib.stdlib.oop.rect'), 'clearRect', 1)
--@end-debug@
    return Native.RegionClearRect(getUd(self), getUd(r))
end

---addCell
---@overload fun(vec: Vector2): void
---@param x float
---@param y float
---@return void
function Region:addCell(x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Region, 'addCell', 'self')
    checktype(x, 'float', 'addCell', 1)
    checktype(y, 'float', 'addCell', 2)
--@end-debug@
    return Native.RegionAddCell(getUd(self), x, y)
end

---clearCell
---@overload fun(vec: Vector2): void
---@param x float
---@param y float
---@return void
function Region:clearCell(x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Region, 'clearCell', 'self')
    checktype(x, 'float', 'clearCell', 1)
    checktype(y, 'float', 'clearCell', 2)
--@end-debug@
    return Native.RegionClearCell(getUd(self), x, y)
end

---isUnitIn
---@param unit Unit
---@return boolean
function Region:isUnitIn(unit)
--@debug@
    checkobject(self, Region, 'isUnitIn', 'self')
    checkobject(unit, require('lib.stdlib.oop.unit'), 'isUnitIn', 1)
--@end-debug@
    return Native.IsUnitInRegion(getUd(self), getUd(unit))
end

---isPointIn
---@overload fun(vec: Vector2): boolean
---@param x float
---@param y float
---@return boolean
function Region:isPointIn(x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Region, 'isPointIn', 'self')
    checktype(x, 'float', 'isPointIn', 1)
    checktype(y, 'float', 'isPointIn', 2)
--@end-debug@
    return Native.IsPointInRegion(getUd(self), x, y)
end

return Region
