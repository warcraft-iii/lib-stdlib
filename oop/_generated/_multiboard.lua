local Native = require('lib.stdlib.native')

---@class MultiBoard : Agent
local MultiBoard = class('MultiBoard', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function MultiBoard:destructor()
    return Native.DestroyMultiboard(getUd(self))
end

---destroy
---@deprecated
---@return void
function MultiBoard:destroy()
--@debug@
    deprecated('destroy', 'delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@return MultiBoard
function MultiBoard:create()
    return MultiBoard:fromUd(Native.CreateMultiboard())
end

---display
---@param show boolean
---@return void
function MultiBoard:display(show)
    return Native.MultiboardDisplay(getUd(self), show)
end

---isDisplayed
---@return boolean
function MultiBoard:isDisplayed()
    return Native.IsMultiboardDisplayed(getUd(self))
end

---minimize
---@param minimize boolean
---@return void
function MultiBoard:minimize(minimize)
    return Native.MultiboardMinimize(getUd(self), minimize)
end

---isMinimized
---@return boolean
function MultiBoard:isMinimized()
    return Native.IsMultiboardMinimized(getUd(self))
end

---clear
---@return void
function MultiBoard:clear()
    return Native.MultiboardClear(getUd(self))
end

---setTitleText
---@param label string
---@return void
function MultiBoard:setTitleText(label)
    return Native.MultiboardSetTitleText(getUd(self), label)
end

---getTitleText
---@return string
function MultiBoard:getTitleText()
    return Native.MultiboardGetTitleText(getUd(self))
end

---setTitleTextColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function MultiBoard:setTitleTextColor(red, green, blue, alpha)
    return Native.MultiboardSetTitleTextColor(getUd(self), red, green, blue, alpha)
end

---getRowCount
---@return integer
function MultiBoard:getRowCount()
    return Native.MultiboardGetRowCount(getUd(self))
end

---getColumnCount
---@return integer
function MultiBoard:getColumnCount()
    return Native.MultiboardGetColumnCount(getUd(self))
end

---setColumnCount
---@param count integer
---@return void
function MultiBoard:setColumnCount(count)
    return Native.MultiboardSetColumnCount(getUd(self), count)
end

---setRowCount
---@param count integer
---@return void
function MultiBoard:setRowCount(count)
    return Native.MultiboardSetRowCount(getUd(self), count)
end

---setItemsStyle
---@param showValues boolean
---@param showIcons boolean
---@return void
function MultiBoard:setItemsStyle(showValues, showIcons)
    return Native.MultiboardSetItemsStyle(getUd(self), showValues, showIcons)
end

---setItemsValue
---@param value string
---@return void
function MultiBoard:setItemsValue(value)
    return Native.MultiboardSetItemsValue(getUd(self), value)
end

---setItemsValueColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function MultiBoard:setItemsValueColor(red, green, blue, alpha)
    return Native.MultiboardSetItemsValueColor(getUd(self), red, green, blue, alpha)
end

---setItemsWidth
---@param width float
---@return void
function MultiBoard:setItemsWidth(width)
    return Native.MultiboardSetItemsWidth(getUd(self), width)
end

---setItemsIcon
---@param iconPath string
---@return void
function MultiBoard:setItemsIcon(iconPath)
    return Native.MultiboardSetItemsIcon(getUd(self), iconPath)
end

---getItem
---@param row integer
---@param column integer
---@return MultiBoardItem
function MultiBoard:getItem(row, column)
    return require('lib.stdlib.oop.multiboarditem'):fromUd(Native.MultiboardGetItem(getUd(self), row, column))
end

return MultiBoard
