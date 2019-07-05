local Native = require('lib.stdlib.native')

---@class Widget : Agent
local Widget = class('Widget', require('lib.stdlib.oop.agent'))

---getLife
---@return float
function Widget:getLife()
--@debug@
    checkobject(self, Widget, 'getLife', 'self')
--@end-debug@
    return Native.GetWidgetLife(getUd(self))
end

---setLife
---@param life float
---@return void
function Widget:setLife(life)
--@debug@
    checkobject(self, Widget, 'setLife', 'self')
    checktype(life, 'float', 'setLife', 1)
--@end-debug@
    return Native.SetWidgetLife(getUd(self), life)
end

---getX
---@return float
function Widget:getX()
--@debug@
    checkobject(self, Widget, 'getX', 'self')
--@end-debug@
    return Native.GetWidgetX(getUd(self))
end

---getY
---@return float
function Widget:getY()
--@debug@
    checkobject(self, Widget, 'getY', 'self')
--@end-debug@
    return Native.GetWidgetY(getUd(self))
end

---addIndicator
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Widget:addIndicator(red, green, blue, alpha)
--@debug@
    checkobject(self, Widget, 'addIndicator', 'self')
    checktype(red, 'integer', 'addIndicator', 1)
    checktype(green, 'integer', 'addIndicator', 2)
    checktype(blue, 'integer', 'addIndicator', 3)
    checktype(alpha, 'integer', 'addIndicator', 4)
--@end-debug@
    return Native.AddIndicator(getUd(self), red, green, blue, alpha)
end

return Widget
