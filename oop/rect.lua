---@type Rect
local Rect = require('lib.stdlib.oop._generated._rect')
local Vector = require('lib.stdlib.oop.vector')
local Native = require('lib.stdlib.native.native')

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

---@type Rect
local _worldBound = Rect:fromUd(Native.GetWorldBounds())

---<static> getWorldBounds
---@return Rect
function Rect:getWorldBounds()
    return _worldBound
end

---getWorldBoundMax
---@return Vector
function Rect:getWorldBoundMax()
    return Vector:new(_worldBound:getMaxX(), _worldBound:getMaxY())
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

---getCenter
---@return Vector
function Rect:getCenter()
    local x = self:getCenterX()
    local y = self:getCenterY()
    return Vector:new(x, y)
end

---toCameraBounds
---@return x1, y1, x2, y2, x3, y3, x4, y4 float
function Rect:toCameraBounds()
    return self:getMinX() + Native.GetCameraMargin(CAMERA_MARGIN_LEFT),
           self:getMinY() + Native.GetCameraMargin(CAMERA_MARGIN_BOTTOM),
           self:getMaxX() - Native.GetCameraMargin(CAMERA_MARGIN_RIGHT),
           self:getMinY() - Native.GetCameraMargin(CAMERA_MARGIN_TOP),
           self:getMinX() + Native.GetCameraMargin(CAMERA_MARGIN_LEFT),
           self:getMaxY() - Native.GetCameraMargin(CAMERA_MARGIN_TOP),
           self:getMaxX() - Native.GetCameraMargin(CAMERA_MARGIN_RIGHT),
           self:getMaxY() + Native.GetCameraMargin(CAMERA_MARGIN_BOTTOM)
end

---@param me Rect
function Rect.meta.__tostring(me)
    return string.format('%s,%s;%s,%s', me:getMinX(), me:getMinY(), me:getMaxX(), me:getMaxY())
end

return Rect
