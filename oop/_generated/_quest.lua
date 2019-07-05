local Native = require('lib.stdlib.native')

---@class Quest : Agent
local Quest = class('Quest', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Quest:destructor()
--@debug@
    checkobject(self, Quest, 'destructor', 'self')
--@end-debug@
    return Native.DestroyQuest(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function Quest:destroy()
--@debug@
    deprecated('Quest.destroy', 'Quest.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@return Quest
function Quest:create()
    return Quest:fromUd(Native.CreateQuest())
end

---setTitle
---@param title string
---@return void
function Quest:setTitle(title)
--@debug@
    checkobject(self, Quest, 'setTitle', 'self')
    checktype(title, 'string', 'setTitle', 1)
--@end-debug@
    return Native.QuestSetTitle(getUd(self), title)
end

---setDescription
---@param description string
---@return void
function Quest:setDescription(description)
--@debug@
    checkobject(self, Quest, 'setDescription', 'self')
    checktype(description, 'string', 'setDescription', 1)
--@end-debug@
    return Native.QuestSetDescription(getUd(self), description)
end

---setIconPath
---@param iconPath string
---@return void
function Quest:setIconPath(iconPath)
--@debug@
    checkobject(self, Quest, 'setIconPath', 'self')
    checktype(iconPath, 'string', 'setIconPath', 1)
--@end-debug@
    return Native.QuestSetIconPath(getUd(self), iconPath)
end

---setRequired
---@param required boolean
---@return void
function Quest:setRequired(required)
--@debug@
    checkobject(self, Quest, 'setRequired', 'self')
    checktype(required, 'boolean', 'setRequired', 1)
--@end-debug@
    return Native.QuestSetRequired(getUd(self), required)
end

---setCompleted
---@param completed boolean
---@return void
function Quest:setCompleted(completed)
--@debug@
    checkobject(self, Quest, 'setCompleted', 'self')
    checktype(completed, 'boolean', 'setCompleted', 1)
--@end-debug@
    return Native.QuestSetCompleted(getUd(self), completed)
end

---setDiscovered
---@param discovered boolean
---@return void
function Quest:setDiscovered(discovered)
--@debug@
    checkobject(self, Quest, 'setDiscovered', 'self')
    checktype(discovered, 'boolean', 'setDiscovered', 1)
--@end-debug@
    return Native.QuestSetDiscovered(getUd(self), discovered)
end

---setFailed
---@param failed boolean
---@return void
function Quest:setFailed(failed)
--@debug@
    checkobject(self, Quest, 'setFailed', 'self')
    checktype(failed, 'boolean', 'setFailed', 1)
--@end-debug@
    return Native.QuestSetFailed(getUd(self), failed)
end

---setEnabled
---@param enabled boolean
---@return void
function Quest:setEnabled(enabled)
--@debug@
    checkobject(self, Quest, 'setEnabled', 'self')
    checktype(enabled, 'boolean', 'setEnabled', 1)
--@end-debug@
    return Native.QuestSetEnabled(getUd(self), enabled)
end

---isRequired
---@return boolean
function Quest:isRequired()
--@debug@
    checkobject(self, Quest, 'isRequired', 'self')
--@end-debug@
    return Native.IsQuestRequired(getUd(self))
end

---isCompleted
---@return boolean
function Quest:isCompleted()
--@debug@
    checkobject(self, Quest, 'isCompleted', 'self')
--@end-debug@
    return Native.IsQuestCompleted(getUd(self))
end

---isDiscovered
---@return boolean
function Quest:isDiscovered()
--@debug@
    checkobject(self, Quest, 'isDiscovered', 'self')
--@end-debug@
    return Native.IsQuestDiscovered(getUd(self))
end

---isFailed
---@return boolean
function Quest:isFailed()
--@debug@
    checkobject(self, Quest, 'isFailed', 'self')
--@end-debug@
    return Native.IsQuestFailed(getUd(self))
end

---isEnabled
---@return boolean
function Quest:isEnabled()
--@debug@
    checkobject(self, Quest, 'isEnabled', 'self')
--@end-debug@
    return Native.IsQuestEnabled(getUd(self))
end

---createItem
---@return QuestItem
function Quest:createItem()
--@debug@
    checkobject(self, Quest, 'createItem', 'self')
--@end-debug@
    return require('lib.stdlib.oop.questitem'):fromUd(Native.QuestCreateItem(getUd(self)))
end

return Quest
