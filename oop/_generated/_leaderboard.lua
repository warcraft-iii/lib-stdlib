local Native = require('lib.stdlib.native')

---@class LeaderBoard : Agent
local LeaderBoard = class('LeaderBoard', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function LeaderBoard:destructor()
    return Native.DestroyLeaderboard(getUd(self))
end

--@remove@

---destroy
---@deprecated
---@return void
function LeaderBoard:destroy() end

--@end-remove@

LeaderBoard.destroy = LeaderBoard.delete


---<static> create
---@return LeaderBoard
function LeaderBoard:create()
    return LeaderBoard:fromUd(Native.CreateLeaderboard())
end

---display
---@param show boolean
---@return void
function LeaderBoard:display(show)
    return Native.LeaderboardDisplay(getUd(self), show)
end

---isDisplayed
---@return boolean
function LeaderBoard:isDisplayed()
    return Native.IsLeaderboardDisplayed(getUd(self))
end

---getItemCount
---@return integer
function LeaderBoard:getItemCount()
    return Native.LeaderboardGetItemCount(getUd(self))
end

---setSizeByItemCount
---@param count integer
---@return void
function LeaderBoard:setSizeByItemCount(count)
    return Native.LeaderboardSetSizeByItemCount(getUd(self), count)
end

---addItem
---@param label string
---@param value integer
---@param p Player
---@return void
function LeaderBoard:addItem(label, value, p)
    return Native.LeaderboardAddItem(getUd(self), label, value, getUd(p))
end

---removeItem
---@param index integer
---@return void
function LeaderBoard:removeItem(index)
    return Native.LeaderboardRemoveItem(getUd(self), index)
end

---removePlayerItem
---@param p Player
---@return void
function LeaderBoard:removePlayerItem(p)
    return Native.LeaderboardRemovePlayerItem(getUd(self), getUd(p))
end

---clear
---@return void
function LeaderBoard:clear()
    return Native.LeaderboardClear(getUd(self))
end

---sortItemsByValue
---@param ascending boolean
---@return void
function LeaderBoard:sortItemsByValue(ascending)
    return Native.LeaderboardSortItemsByValue(getUd(self), ascending)
end

---sortItemsByPlayer
---@param ascending boolean
---@return void
function LeaderBoard:sortItemsByPlayer(ascending)
    return Native.LeaderboardSortItemsByPlayer(getUd(self), ascending)
end

---sortItemsByLabel
---@param ascending boolean
---@return void
function LeaderBoard:sortItemsByLabel(ascending)
    return Native.LeaderboardSortItemsByLabel(getUd(self), ascending)
end

---hasPlayerItem
---@param p Player
---@return boolean
function LeaderBoard:hasPlayerItem(p)
    return Native.LeaderboardHasPlayerItem(getUd(self), getUd(p))
end

---getPlayerIndex
---@param p Player
---@return integer
function LeaderBoard:getPlayerIndex(p)
    return Native.LeaderboardGetPlayerIndex(getUd(self), getUd(p))
end

---setLabel
---@param label string
---@return void
function LeaderBoard:setLabel(label)
    return Native.LeaderboardSetLabel(getUd(self), label)
end

---getLabelText
---@return string
function LeaderBoard:getLabelText()
    return Native.LeaderboardGetLabelText(getUd(self))
end

---setLabelColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function LeaderBoard:setLabelColor(red, green, blue, alpha)
    return Native.LeaderboardSetLabelColor(getUd(self), red, green, blue, alpha)
end

---setValueColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function LeaderBoard:setValueColor(red, green, blue, alpha)
    return Native.LeaderboardSetValueColor(getUd(self), red, green, blue, alpha)
end

---setStyle
---@param showLabel boolean
---@param showNames boolean
---@param showValues boolean
---@param showIcons boolean
---@return void
function LeaderBoard:setStyle(showLabel, showNames, showValues, showIcons)
    return Native.LeaderboardSetStyle(getUd(self), showLabel, showNames, showValues, showIcons)
end

---setItemValue
---@param item integer
---@param val integer
---@return void
function LeaderBoard:setItemValue(item, val)
    return Native.LeaderboardSetItemValue(getUd(self), item, val)
end

---setItemLabel
---@param item integer
---@param val string
---@return void
function LeaderBoard:setItemLabel(item, val)
    return Native.LeaderboardSetItemLabel(getUd(self), item, val)
end

---setItemStyle
---@param item integer
---@param showLabel boolean
---@param showValue boolean
---@param showIcon boolean
---@return void
function LeaderBoard:setItemStyle(item, showLabel, showValue, showIcon)
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
    return Native.LeaderboardSetItemValueColor(getUd(self), item, red, green, blue, alpha)
end

return LeaderBoard
