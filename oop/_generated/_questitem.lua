local Native = require('lib.stdlib.native')

---@class QuestItem : Agent
local QuestItem = class('QuestItem', require('lib.stdlib.oop.agent'))

---setDescription
---@param description string
---@return void
function QuestItem:setDescription(description)
    return Native.QuestItemSetDescription(getUd(self), description)
end

---setCompleted
---@param completed boolean
---@return void
function QuestItem:setCompleted(completed)
    return Native.QuestItemSetCompleted(getUd(self), completed)
end

---isCompleted
---@return boolean
function QuestItem:isCompleted()
    return Native.IsQuestItemCompleted(getUd(self))
end

return QuestItem
