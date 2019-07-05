local Native = require('lib.stdlib.native')

---@class MultiBoard : Agent
local MultiBoard = class('MultiBoard', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function MultiBoard:destructor()
--@debug@
    checkobject(self, MultiBoard, 'destructor', 'self')
--@end-debug@
    return Native.DestroyMultiboard(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function MultiBoard:destroy()
--@debug@
    deprecated('MultiBoard.destroy', 'MultiBoard.delete')
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
--@debug@
    checkobject(self, MultiBoard, 'display', 'self')
    checktype(show, 'boolean', 'display', 1)
--@end-debug@
    return Native.MultiboardDisplay(getUd(self), show)
end

---isDisplayed
---@return boolean
function MultiBoard:isDisplayed()
--@debug@
    checkobject(self, MultiBoard, 'isDisplayed', 'self')
--@end-debug@
    return Native.IsMultiboardDisplayed(getUd(self))
end

---minimize
---@param minimize boolean
---@return void
function MultiBoard:minimize(minimize)
--@debug@
    checkobject(self, MultiBoard, 'minimize', 'self')
    checktype(minimize, 'boolean', 'minimize', 1)
--@end-debug@
    return Native.MultiboardMinimize(getUd(self), minimize)
end

---isMinimized
---@return boolean
function MultiBoard:isMinimized()
--@debug@
    checkobject(self, MultiBoard, 'isMinimized', 'self')
--@end-debug@
    return Native.IsMultiboardMinimized(getUd(self))
end

---clear
---@return void
function MultiBoard:clear()
--@debug@
    checkobject(self, MultiBoard, 'clear', 'self')
--@end-debug@
    return Native.MultiboardClear(getUd(self))
end

---setTitleText
---@param label string
---@return void
function MultiBoard:setTitleText(label)
--@debug@
    checkobject(self, MultiBoard, 'setTitleText', 'self')
    checktype(label, 'string', 'setTitleText', 1)
--@end-debug@
    return Native.MultiboardSetTitleText(getUd(self), label)
end

---getTitleText
---@return string
function MultiBoard:getTitleText()
--@debug@
    checkobject(self, MultiBoard, 'getTitleText', 'self')
--@end-debug@
    return Native.MultiboardGetTitleText(getUd(self))
end

---setTitleTextColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function MultiBoard:setTitleTextColor(red, green, blue, alpha)
--@debug@
    checkobject(self, MultiBoard, 'setTitleTextColor', 'self')
    checktype(red, 'integer', 'setTitleTextColor', 1)
    checktype(green, 'integer', 'setTitleTextColor', 2)
    checktype(blue, 'integer', 'setTitleTextColor', 3)
    checktype(alpha, 'integer', 'setTitleTextColor', 4)
--@end-debug@
    return Native.MultiboardSetTitleTextColor(getUd(self), red, green, blue, alpha)
end

---getRowCount
---@return integer
function MultiBoard:getRowCount()
--@debug@
    checkobject(self, MultiBoard, 'getRowCount', 'self')
--@end-debug@
    return Native.MultiboardGetRowCount(getUd(self))
end

---getColumnCount
---@return integer
function MultiBoard:getColumnCount()
--@debug@
    checkobject(self, MultiBoard, 'getColumnCount', 'self')
--@end-debug@
    return Native.MultiboardGetColumnCount(getUd(self))
end

---setColumnCount
---@param count integer
---@return void
function MultiBoard:setColumnCount(count)
--@debug@
    checkobject(self, MultiBoard, 'setColumnCount', 'self')
    checktype(count, 'integer', 'setColumnCount', 1)
--@end-debug@
    return Native.MultiboardSetColumnCount(getUd(self), count)
end

---setRowCount
---@param count integer
---@return void
function MultiBoard:setRowCount(count)
--@debug@
    checkobject(self, MultiBoard, 'setRowCount', 'self')
    checktype(count, 'integer', 'setRowCount', 1)
--@end-debug@
    return Native.MultiboardSetRowCount(getUd(self), count)
end

---setItemsStyle
---@param showValues boolean
---@param showIcons boolean
---@return void
function MultiBoard:setItemsStyle(showValues, showIcons)
--@debug@
    checkobject(self, MultiBoard, 'setItemsStyle', 'self')
    checktype(showValues, 'boolean', 'setItemsStyle', 1)
    checktype(showIcons, 'boolean', 'setItemsStyle', 2)
--@end-debug@
    return Native.MultiboardSetItemsStyle(getUd(self), showValues, showIcons)
end

---setItemsValue
---@param value string
---@return void
function MultiBoard:setItemsValue(value)
--@debug@
    checkobject(self, MultiBoard, 'setItemsValue', 'self')
    checktype(value, 'string', 'setItemsValue', 1)
--@end-debug@
    return Native.MultiboardSetItemsValue(getUd(self), value)
end

---setItemsValueColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function MultiBoard:setItemsValueColor(red, green, blue, alpha)
--@debug@
    checkobject(self, MultiBoard, 'setItemsValueColor', 'self')
    checktype(red, 'integer', 'setItemsValueColor', 1)
    checktype(green, 'integer', 'setItemsValueColor', 2)
    checktype(blue, 'integer', 'setItemsValueColor', 3)
    checktype(alpha, 'integer', 'setItemsValueColor', 4)
--@end-debug@
    return Native.MultiboardSetItemsValueColor(getUd(self), red, green, blue, alpha)
end

---setItemsWidth
---@param width float
---@return void
function MultiBoard:setItemsWidth(width)
--@debug@
    checkobject(self, MultiBoard, 'setItemsWidth', 'self')
    checktype(width, 'float', 'setItemsWidth', 1)
--@end-debug@
    return Native.MultiboardSetItemsWidth(getUd(self), width)
end

---setItemsIcon
---@param iconPath string
---@return void
function MultiBoard:setItemsIcon(iconPath)
--@debug@
    checkobject(self, MultiBoard, 'setItemsIcon', 'self')
    checktype(iconPath, 'string', 'setItemsIcon', 1)
--@end-debug@
    return Native.MultiboardSetItemsIcon(getUd(self), iconPath)
end

---getItem
---@param row integer
---@param column integer
---@return MultiBoardItem
function MultiBoard:getItem(row, column)
--@debug@
    checkobject(self, MultiBoard, 'getItem', 'self')
    checktype(row, 'integer', 'getItem', 1)
    checktype(column, 'integer', 'getItem', 2)
--@end-debug@
    return require('lib.stdlib.oop.multiboarditem'):fromUd(Native.MultiboardGetItem(getUd(self), row, column))
end

return MultiBoard
