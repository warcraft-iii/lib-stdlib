local Native = require('lib.stdlib.native')

---@class MultiBoardItem : Agent
local MultiBoardItem = class('MultiBoardItem', require('lib.stdlib.oop.agent'))

---release
---@return void
function MultiBoardItem:release()
    return Native.MultiboardReleaseItem(getUd(self))
end

---setStyle
---@param showValue boolean
---@param showIcon boolean
---@return void
function MultiBoardItem:setStyle(showValue, showIcon)
    return Native.MultiboardSetItemStyle(getUd(self), showValue, showIcon)
end

---setValue
---@param val string
---@return void
function MultiBoardItem:setValue(val)
    return Native.MultiboardSetItemValue(getUd(self), val)
end

---setValueColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function MultiBoardItem:setValueColor(red, green, blue, alpha)
    return Native.MultiboardSetItemValueColor(getUd(self), red, green, blue, alpha)
end

---setWidth
---@param width float
---@return void
function MultiBoardItem:setWidth(width)
    return Native.MultiboardSetItemWidth(getUd(self), width)
end

---setIcon
---@param iconFileName string
---@return void
function MultiBoardItem:setIcon(iconFileName)
    return Native.MultiboardSetItemIcon(getUd(self), iconFileName)
end

return MultiBoardItem
