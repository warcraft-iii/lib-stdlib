local Native = require('lib.stdlib.native')

---@class Region : Agent
local Region = class('Region', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Region:destructor()
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
    return Native.RegionAddRect(getUd(self), getUd(r))
end

---clearRect
---@param r Rect
---@return void
function Region:clearRect(r)
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
    return Native.RegionClearCell(getUd(self), x, y)
end

---isUnitIn
---@param unit Unit
---@return boolean
function Region:isUnitIn(unit)
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
    return Native.IsPointInRegion(getUd(self), x, y)
end

return Region
