local Native = require('lib.stdlib.native')

---@class Rect : Agent
local Rect = class('Rect', require('lib.stdlib.oop.agent'))

---- compact same name native function
setmetatable(Rect, table.merge(getmetatable(Rect), {__call = function(_, ...)
    return Native.Rect(...)
end}))

---destructor
---@return void
function Rect:destructor()
    return Native.RemoveRect(getUd(self))
end

---<**_DEPRECATED_**> remove
---@return void
function Rect:remove()
--@debug@
    deprecated('Rect.remove', 'Rect.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@param minx float
---@param miny float
---@param maxx float
---@param maxy float
---@return Rect
function Rect:create(minx, miny, maxx, maxy)
    return Rect:fromUd(Native.Rect(minx, miny, maxx, maxy))
end

---set
---@param minx float
---@param miny float
---@param maxx float
---@param maxy float
---@return void
function Rect:set(minx, miny, maxx, maxy)
    return Native.SetRect(getUd(self), minx, miny, maxx, maxy)
end

---moveTo
---@overload fun(vec: Vector2): void
---@param centerX float
---@param centerY float
---@return void
function Rect:moveTo(centerX, centerY)
    if type(centerX) == 'table' then
        centerX, centerY = table.unpack(centerX)
    end
    return Native.MoveRectTo(getUd(self), centerX, centerY)
end

---getCenterX
---@return float
function Rect:getCenterX()
    return Native.GetRectCenterX(getUd(self))
end

---getCenterY
---@return float
function Rect:getCenterY()
    return Native.GetRectCenterY(getUd(self))
end

---getMinX
---@return float
function Rect:getMinX()
    return Native.GetRectMinX(getUd(self))
end

---getMinY
---@return float
function Rect:getMinY()
    return Native.GetRectMinY(getUd(self))
end

---getMaxX
---@return float
function Rect:getMaxX()
    return Native.GetRectMaxX(getUd(self))
end

---getMaxY
---@return float
function Rect:getMaxY()
    return Native.GetRectMaxY(getUd(self))
end

---enumDestructablesIn
---@param filter DestructableFilter
---@param actionFunc DestructableCallback
---@return void
function Rect:enumDestructablesIn(filter, actionFunc)
    filter = require('lib.stdlib.oop.filter'):createDestructableFilter(filter)
    actionFunc = require('lib.stdlib.oop.function'):createDestructableCallback(actionFunc)
    Native.EnumDestructablesInRect(getUd(self), getUd(filter), actionFunc)
    if filter then filter:delete() end
end

---enumItemsIn
---@param filter ItemFilter
---@param actionFunc ItemCallback
---@return void
function Rect:enumItemsIn(filter, actionFunc)
    filter = require('lib.stdlib.oop.filter'):createItemFilter(filter)
    actionFunc = require('lib.stdlib.oop.function'):createItemCallback(actionFunc)
    Native.EnumItemsInRect(getUd(self), getUd(filter), actionFunc)
    if filter then filter:delete() end
end

---addWeatherEffect
---@param effectID integer
---@return WeatherEffect
function Rect:addWeatherEffect(effectID)
    return require('lib.stdlib.oop.weathereffect'):fromUd(Native.AddWeatherEffect(getUd(self), effectID))
end

---setDoodadAnimation
---@param doodadID integer
---@param animName string
---@param animRandom boolean
---@return void
function Rect:setDoodadAnimation(doodadID, animName, animRandom)
    return Native.SetDoodadAnimationRect(getUd(self), doodadID, animName, animRandom)
end

return Rect
