---@type Rect
local Rect = require('lib.stdlib.oop._generated._rect')

---<static> create
---@overload fun(min: Vector, max: Vector): Rect
---@param minx float
---@param miny float
---@param maxx float
---@param maxy float
---@return Rect
function Rect:create(minx, miny, maxx, maxy)
    if type(minx) == 'table' and type(miny) == 'table' then
        maxx, maxy = table.unpack(miny)
        minx, miny = table.unpack(minx)
    end
    -- @debug@
    checkclass(self, Rect, 'create', 'self')
    checktype(minx, 'float', 'create', 1)
    checktype(miny, 'float', 'create', 2)
    checktype(maxx, 'float', 'create', 3)
    checktype(maxy, 'float', 'create', 4)
    -- @end-debug@
    return Rect:fromUd(Native.Rect(minx, miny, maxx, maxy))
end

---set
---@overload fun(min: Vector, max: Vector): void
---@param minx float
---@param miny float
---@param maxx float
---@param maxy float
---@return void
function Rect:set(minx, miny, maxx, maxy)
    if type(minx) == 'table' and type(miny) == 'table' then
        maxx, maxy = table.unpack(miny)
        minx, miny = table.unpack(minx)
    end
    -- @debug@
    checkobject(self, Rect, 'set', 'self')
    checktype(minx, 'float', 'set', 1)
    checktype(miny, 'float', 'set', 2)
    checktype(maxx, 'float', 'set', 3)
    checktype(maxy, 'float', 'set', 4)
    -- @end-debug@
    return Native.SetRect(getUd(self), minx, miny, maxx, maxy)
end

return Rect
