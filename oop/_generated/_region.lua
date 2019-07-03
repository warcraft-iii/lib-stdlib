local Native = require('lib.stdlib.native')

---@class Region : Agent
local Region = class('Region', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Region:destructor()
    return Native.RemoveRegion(getUd(self))
end

---remove
---@deprecated
---@return void
function Region:remove()
--@debug@
    deprecated('remove', 'delete')
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
---@param x float
---@param y float
---@return void
function Region:addCell(x, y)
    return Native.RegionAddCell(getUd(self), x, y)
end

---addCellAtLoc
---@param loc Location
---@return void
function Region:addCellAtLoc(loc)
    return Native.RegionAddCellAtLoc(getUd(self), getUd(loc))
end

---clearCell
---@param x float
---@param y float
---@return void
function Region:clearCell(x, y)
    return Native.RegionClearCell(getUd(self), x, y)
end

---clearCellAtLoc
---@param loc Location
---@return void
function Region:clearCellAtLoc(loc)
    return Native.RegionClearCellAtLoc(getUd(self), getUd(loc))
end

---isUnitIn
---@param unit Unit
---@return boolean
function Region:isUnitIn(unit)
    return Native.IsUnitInRegion(getUd(self), getUd(unit))
end

---isPointIn
---@param x float
---@param y float
---@return boolean
function Region:isPointIn(x, y)
    return Native.IsPointInRegion(getUd(self), x, y)
end

---isLocationIn
---@param loc Location
---@return boolean
function Region:isLocationIn(loc)
    return Native.IsLocationInRegion(getUd(self), getUd(loc))
end

return Region
