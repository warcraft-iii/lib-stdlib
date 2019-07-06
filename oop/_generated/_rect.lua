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
--@debug@
    checkobject(self, Rect, 'destructor', 'self')
--@end-debug@
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

---moveTo
---@overload fun(vec: Vector): void
---@param centerX float
---@param centerY float
---@return void
function Rect:moveTo(centerX, centerY)
    if type(centerX) == 'table' then
        centerX, centerY = table.unpack(centerX)
    end
--@debug@
    checkobject(self, Rect, 'moveTo', 'self')
    checktype(centerX, 'float', 'moveTo', 1)
    checktype(centerY, 'float', 'moveTo', 2)
--@end-debug@
    return Native.MoveRectTo(getUd(self), centerX, centerY)
end

---getCenterX
---@return float
function Rect:getCenterX()
--@debug@
    checkobject(self, Rect, 'getCenterX', 'self')
--@end-debug@
    return Native.GetRectCenterX(getUd(self))
end

---getCenterY
---@return float
function Rect:getCenterY()
--@debug@
    checkobject(self, Rect, 'getCenterY', 'self')
--@end-debug@
    return Native.GetRectCenterY(getUd(self))
end

---getMinX
---@return float
function Rect:getMinX()
--@debug@
    checkobject(self, Rect, 'getMinX', 'self')
--@end-debug@
    return Native.GetRectMinX(getUd(self))
end

---getMinY
---@return float
function Rect:getMinY()
--@debug@
    checkobject(self, Rect, 'getMinY', 'self')
--@end-debug@
    return Native.GetRectMinY(getUd(self))
end

---getMaxX
---@return float
function Rect:getMaxX()
--@debug@
    checkobject(self, Rect, 'getMaxX', 'self')
--@end-debug@
    return Native.GetRectMaxX(getUd(self))
end

---getMaxY
---@return float
function Rect:getMaxY()
--@debug@
    checkobject(self, Rect, 'getMaxY', 'self')
--@end-debug@
    return Native.GetRectMaxY(getUd(self))
end

---enumDestructablesIn
---@param filter DestructableFilter
---@param actionFunc DestructableCallback
---@return void
function Rect:enumDestructablesIn(filter, actionFunc)
--@debug@
    checkobject(self, Rect, 'enumDestructablesIn', 'self')
    checktype(filter, 'function', 'enumDestructablesIn', 1)
    checktype(actionFunc, 'function', 'enumDestructablesIn', 2)
--@end-debug@
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
--@debug@
    checkobject(self, Rect, 'enumItemsIn', 'self')
    checktype(filter, 'function', 'enumItemsIn', 1)
    checktype(actionFunc, 'function', 'enumItemsIn', 2)
--@end-debug@
    filter = require('lib.stdlib.oop.filter'):createItemFilter(filter)
    actionFunc = require('lib.stdlib.oop.function'):createItemCallback(actionFunc)
    Native.EnumItemsInRect(getUd(self), getUd(filter), actionFunc)
    if filter then filter:delete() end
end

---addWeatherEffect
---@param effectID integer
---@return WeatherEffect
function Rect:addWeatherEffect(effectID)
--@debug@
    checkobject(self, Rect, 'addWeatherEffect', 'self')
    checktype(effectID, 'integer', 'addWeatherEffect', 1)
--@end-debug@
    return require('lib.stdlib.oop.weathereffect'):fromUd(Native.AddWeatherEffect(getUd(self), effectID))
end

---setDoodadAnimation
---@param doodadID integer
---@param animName string
---@param animRandom boolean
---@return void
function Rect:setDoodadAnimation(doodadID, animName, animRandom)
--@debug@
    checkobject(self, Rect, 'setDoodadAnimation', 'self')
    checktype(doodadID, 'integer', 'setDoodadAnimation', 1)
    checktype(animName, 'string', 'setDoodadAnimation', 2)
    checktype(animRandom, 'boolean', 'setDoodadAnimation', 3)
--@end-debug@
    return Native.SetDoodadAnimationRect(getUd(self), doodadID, animName, animRandom)
end

return Rect
