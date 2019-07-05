local Native = require('lib.stdlib.native')

---@class MultiBoardItem : Agent
local MultiBoardItem = class('MultiBoardItem', require('lib.stdlib.oop.agent'))

---release
---@return void
function MultiBoardItem:release()
--@debug@
    checkobject(self, MultiBoardItem, 'release', 'self')
--@end-debug@
    return Native.MultiboardReleaseItem(getUd(self))
end

---setStyle
---@param showValue boolean
---@param showIcon boolean
---@return void
function MultiBoardItem:setStyle(showValue, showIcon)
--@debug@
    checkobject(self, MultiBoardItem, 'setStyle', 'self')
    checktype(showValue, 'boolean', 'setStyle', 1)
    checktype(showIcon, 'boolean', 'setStyle', 2)
--@end-debug@
    return Native.MultiboardSetItemStyle(getUd(self), showValue, showIcon)
end

---setValue
---@param val string
---@return void
function MultiBoardItem:setValue(val)
--@debug@
    checkobject(self, MultiBoardItem, 'setValue', 'self')
    checktype(val, 'string', 'setValue', 1)
--@end-debug@
    return Native.MultiboardSetItemValue(getUd(self), val)
end

---setValueColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function MultiBoardItem:setValueColor(red, green, blue, alpha)
--@debug@
    checkobject(self, MultiBoardItem, 'setValueColor', 'self')
    checktype(red, 'integer', 'setValueColor', 1)
    checktype(green, 'integer', 'setValueColor', 2)
    checktype(blue, 'integer', 'setValueColor', 3)
    checktype(alpha, 'integer', 'setValueColor', 4)
--@end-debug@
    return Native.MultiboardSetItemValueColor(getUd(self), red, green, blue, alpha)
end

---setWidth
---@param width float
---@return void
function MultiBoardItem:setWidth(width)
--@debug@
    checkobject(self, MultiBoardItem, 'setWidth', 'self')
    checktype(width, 'float', 'setWidth', 1)
--@end-debug@
    return Native.MultiboardSetItemWidth(getUd(self), width)
end

---setIcon
---@param iconFileName string
---@return void
function MultiBoardItem:setIcon(iconFileName)
--@debug@
    checkobject(self, MultiBoardItem, 'setIcon', 'self')
    checktype(iconFileName, 'string', 'setIcon', 1)
--@end-debug@
    return Native.MultiboardSetItemIcon(getUd(self), iconFileName)
end

return MultiBoardItem
