local Native = require('lib.stdlib.native')

---@class LeaderBoard : Agent
local LeaderBoard = class('LeaderBoard', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function LeaderBoard:destructor()
--@debug@
    checkobject(self, LeaderBoard, 'destructor', 'self')
--@end-debug@
    return Native.DestroyLeaderboard(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function LeaderBoard:destroy()
--@debug@
    deprecated('LeaderBoard.destroy', 'LeaderBoard.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@return LeaderBoard
function LeaderBoard:create()
    return LeaderBoard:fromUd(Native.CreateLeaderboard())
end

---display
---@param show boolean
---@return void
function LeaderBoard:display(show)
--@debug@
    checkobject(self, LeaderBoard, 'display', 'self')
    checktype(show, 'boolean', 'display', 1)
--@end-debug@
    return Native.LeaderboardDisplay(getUd(self), show)
end

---isDisplayed
---@return boolean
function LeaderBoard:isDisplayed()
--@debug@
    checkobject(self, LeaderBoard, 'isDisplayed', 'self')
--@end-debug@
    return Native.IsLeaderboardDisplayed(getUd(self))
end

---getItemCount
---@return integer
function LeaderBoard:getItemCount()
--@debug@
    checkobject(self, LeaderBoard, 'getItemCount', 'self')
--@end-debug@
    return Native.LeaderboardGetItemCount(getUd(self))
end

---setSizeByItemCount
---@param count integer
---@return void
function LeaderBoard:setSizeByItemCount(count)
--@debug@
    checkobject(self, LeaderBoard, 'setSizeByItemCount', 'self')
    checktype(count, 'integer', 'setSizeByItemCount', 1)
--@end-debug@
    return Native.LeaderboardSetSizeByItemCount(getUd(self), count)
end

---addItem
---@param label string
---@param value integer
---@param p Player
---@return void
function LeaderBoard:addItem(label, value, p)
--@debug@
    checkobject(self, LeaderBoard, 'addItem', 'self')
    checktype(label, 'string', 'addItem', 1)
    checktype(value, 'integer', 'addItem', 2)
    checkobject(p, require('lib.stdlib.oop.player'), 'addItem', 3)
--@end-debug@
    return Native.LeaderboardAddItem(getUd(self), label, value, getUd(p))
end

---removeItem
---@param index integer
---@return void
function LeaderBoard:removeItem(index)
--@debug@
    checkobject(self, LeaderBoard, 'removeItem', 'self')
    checktype(index, 'integer', 'removeItem', 1)
--@end-debug@
    return Native.LeaderboardRemoveItem(getUd(self), index)
end

---removePlayerItem
---@param p Player
---@return void
function LeaderBoard:removePlayerItem(p)
--@debug@
    checkobject(self, LeaderBoard, 'removePlayerItem', 'self')
    checkobject(p, require('lib.stdlib.oop.player'), 'removePlayerItem', 1)
--@end-debug@
    return Native.LeaderboardRemovePlayerItem(getUd(self), getUd(p))
end

---clear
---@return void
function LeaderBoard:clear()
--@debug@
    checkobject(self, LeaderBoard, 'clear', 'self')
--@end-debug@
    return Native.LeaderboardClear(getUd(self))
end

---sortItemsByValue
---@param ascending boolean
---@return void
function LeaderBoard:sortItemsByValue(ascending)
--@debug@
    checkobject(self, LeaderBoard, 'sortItemsByValue', 'self')
    checktype(ascending, 'boolean', 'sortItemsByValue', 1)
--@end-debug@
    return Native.LeaderboardSortItemsByValue(getUd(self), ascending)
end

---sortItemsByPlayer
---@param ascending boolean
---@return void
function LeaderBoard:sortItemsByPlayer(ascending)
--@debug@
    checkobject(self, LeaderBoard, 'sortItemsByPlayer', 'self')
    checktype(ascending, 'boolean', 'sortItemsByPlayer', 1)
--@end-debug@
    return Native.LeaderboardSortItemsByPlayer(getUd(self), ascending)
end

---sortItemsByLabel
---@param ascending boolean
---@return void
function LeaderBoard:sortItemsByLabel(ascending)
--@debug@
    checkobject(self, LeaderBoard, 'sortItemsByLabel', 'self')
    checktype(ascending, 'boolean', 'sortItemsByLabel', 1)
--@end-debug@
    return Native.LeaderboardSortItemsByLabel(getUd(self), ascending)
end

---hasPlayerItem
---@param p Player
---@return boolean
function LeaderBoard:hasPlayerItem(p)
--@debug@
    checkobject(self, LeaderBoard, 'hasPlayerItem', 'self')
    checkobject(p, require('lib.stdlib.oop.player'), 'hasPlayerItem', 1)
--@end-debug@
    return Native.LeaderboardHasPlayerItem(getUd(self), getUd(p))
end

---getPlayerIndex
---@param p Player
---@return integer
function LeaderBoard:getPlayerIndex(p)
--@debug@
    checkobject(self, LeaderBoard, 'getPlayerIndex', 'self')
    checkobject(p, require('lib.stdlib.oop.player'), 'getPlayerIndex', 1)
--@end-debug@
    return Native.LeaderboardGetPlayerIndex(getUd(self), getUd(p))
end

---setLabel
---@param label string
---@return void
function LeaderBoard:setLabel(label)
--@debug@
    checkobject(self, LeaderBoard, 'setLabel', 'self')
    checktype(label, 'string', 'setLabel', 1)
--@end-debug@
    return Native.LeaderboardSetLabel(getUd(self), label)
end

---getLabelText
---@return string
function LeaderBoard:getLabelText()
--@debug@
    checkobject(self, LeaderBoard, 'getLabelText', 'self')
--@end-debug@
    return Native.LeaderboardGetLabelText(getUd(self))
end

---setLabelColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function LeaderBoard:setLabelColor(red, green, blue, alpha)
--@debug@
    checkobject(self, LeaderBoard, 'setLabelColor', 'self')
    checktype(red, 'integer', 'setLabelColor', 1)
    checktype(green, 'integer', 'setLabelColor', 2)
    checktype(blue, 'integer', 'setLabelColor', 3)
    checktype(alpha, 'integer', 'setLabelColor', 4)
--@end-debug@
    return Native.LeaderboardSetLabelColor(getUd(self), red, green, blue, alpha)
end

---setValueColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function LeaderBoard:setValueColor(red, green, blue, alpha)
--@debug@
    checkobject(self, LeaderBoard, 'setValueColor', 'self')
    checktype(red, 'integer', 'setValueColor', 1)
    checktype(green, 'integer', 'setValueColor', 2)
    checktype(blue, 'integer', 'setValueColor', 3)
    checktype(alpha, 'integer', 'setValueColor', 4)
--@end-debug@
    return Native.LeaderboardSetValueColor(getUd(self), red, green, blue, alpha)
end

---setStyle
---@param showLabel boolean
---@param showNames boolean
---@param showValues boolean
---@param showIcons boolean
---@return void
function LeaderBoard:setStyle(showLabel, showNames, showValues, showIcons)
--@debug@
    checkobject(self, LeaderBoard, 'setStyle', 'self')
    checktype(showLabel, 'boolean', 'setStyle', 1)
    checktype(showNames, 'boolean', 'setStyle', 2)
    checktype(showValues, 'boolean', 'setStyle', 3)
    checktype(showIcons, 'boolean', 'setStyle', 4)
--@end-debug@
    return Native.LeaderboardSetStyle(getUd(self), showLabel, showNames, showValues, showIcons)
end

---setItemValue
---@param item integer
---@param val integer
---@return void
function LeaderBoard:setItemValue(item, val)
--@debug@
    checkobject(self, LeaderBoard, 'setItemValue', 'self')
    checktype(item, 'integer', 'setItemValue', 1)
    checktype(val, 'integer', 'setItemValue', 2)
--@end-debug@
    return Native.LeaderboardSetItemValue(getUd(self), item, val)
end

---setItemLabel
---@param item integer
---@param val string
---@return void
function LeaderBoard:setItemLabel(item, val)
--@debug@
    checkobject(self, LeaderBoard, 'setItemLabel', 'self')
    checktype(item, 'integer', 'setItemLabel', 1)
    checktype(val, 'string', 'setItemLabel', 2)
--@end-debug@
    return Native.LeaderboardSetItemLabel(getUd(self), item, val)
end

---setItemStyle
---@param item integer
---@param showLabel boolean
---@param showValue boolean
---@param showIcon boolean
---@return void
function LeaderBoard:setItemStyle(item, showLabel, showValue, showIcon)
--@debug@
    checkobject(self, LeaderBoard, 'setItemStyle', 'self')
    checktype(item, 'integer', 'setItemStyle', 1)
    checktype(showLabel, 'boolean', 'setItemStyle', 2)
    checktype(showValue, 'boolean', 'setItemStyle', 3)
    checktype(showIcon, 'boolean', 'setItemStyle', 4)
--@end-debug@
    return Native.LeaderboardSetItemStyle(getUd(self), item, showLabel, showValue, showIcon)
end

---setItemLabelColor
---@param item integer
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function LeaderBoard:setItemLabelColor(item, red, green, blue, alpha)
--@debug@
    checkobject(self, LeaderBoard, 'setItemLabelColor', 'self')
    checktype(item, 'integer', 'setItemLabelColor', 1)
    checktype(red, 'integer', 'setItemLabelColor', 2)
    checktype(green, 'integer', 'setItemLabelColor', 3)
    checktype(blue, 'integer', 'setItemLabelColor', 4)
    checktype(alpha, 'integer', 'setItemLabelColor', 5)
--@end-debug@
    return Native.LeaderboardSetItemLabelColor(getUd(self), item, red, green, blue, alpha)
end

---setItemValueColor
---@param item integer
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function LeaderBoard:setItemValueColor(item, red, green, blue, alpha)
--@debug@
    checkobject(self, LeaderBoard, 'setItemValueColor', 'self')
    checktype(item, 'integer', 'setItemValueColor', 1)
    checktype(red, 'integer', 'setItemValueColor', 2)
    checktype(green, 'integer', 'setItemValueColor', 3)
    checktype(blue, 'integer', 'setItemValueColor', 4)
    checktype(alpha, 'integer', 'setItemValueColor', 5)
--@end-debug@
    return Native.LeaderboardSetItemValueColor(getUd(self), item, red, green, blue, alpha)
end

return LeaderBoard
