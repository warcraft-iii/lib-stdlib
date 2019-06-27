local Native = require('lib.stdlib.native')

---@class Widget : Agent
local Widget = class('Widget', require('lib.stdlib.oop.agent'))

---getLife
---@return float
function Widget:getLife()
    return Native.GetWidgetLife(getUd(self))
end

---setLife
---@param life float
---@return void
function Widget:setLife(life)
    return Native.SetWidgetLife(getUd(self), life)
end

---getX
---@return float
function Widget:getX()
    return Native.GetWidgetX(getUd(self))
end

---getY
---@return float
function Widget:getY()
    return Native.GetWidgetY(getUd(self))
end

---addIndicator
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Widget:addIndicator(red, green, blue, alpha)
    return Native.AddIndicator(getUd(self), red, green, blue, alpha)
end

return Widget
