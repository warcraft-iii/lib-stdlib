local Native = require('lib.stdlib.native')

---@class QuestItem : Agent
local QuestItem = class('QuestItem', require('lib.stdlib.oop.agent'))

---setDescription
---@param description string
---@return void
function QuestItem:setDescription(description)
--@debug@
    checkobject(self, QuestItem, 'setDescription', 'self')
    checktype(description, 'string', 'setDescription', 1)
--@end-debug@
    return Native.QuestItemSetDescription(getUd(self), description)
end

---setCompleted
---@param completed boolean
---@return void
function QuestItem:setCompleted(completed)
--@debug@
    checkobject(self, QuestItem, 'setCompleted', 'self')
    checktype(completed, 'boolean', 'setCompleted', 1)
--@end-debug@
    return Native.QuestItemSetCompleted(getUd(self), completed)
end

---isCompleted
---@return boolean
function QuestItem:isCompleted()
--@debug@
    checkobject(self, QuestItem, 'isCompleted', 'self')
--@end-debug@
    return Native.IsQuestItemCompleted(getUd(self))
end

return QuestItem
