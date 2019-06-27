local Native = require('lib.stdlib.native')
local QuestItem = require('lib.stdlib.oop.questitem')

---@class Quest : Agent
local Quest = class('Quest', require('lib.stdlib.oop.agent'))

---<static> create
---@return Quest
function Quest:create()
    return Quest:fromUd(Native.CreateQuest())
end

---destroy
---@return void
function Quest:destroy()
    return Native.DestroyQuest(getUd(self))
end

---setTitle
---@param title string
---@return void
function Quest:setTitle(title)
    return Native.QuestSetTitle(getUd(self), title)
end

---setDescription
---@param description string
---@return void
function Quest:setDescription(description)
    return Native.QuestSetDescription(getUd(self), description)
end

---setIconPath
---@param iconPath string
---@return void
function Quest:setIconPath(iconPath)
    return Native.QuestSetIconPath(getUd(self), iconPath)
end

---setRequired
---@param required boolean
---@return void
function Quest:setRequired(required)
    return Native.QuestSetRequired(getUd(self), required)
end

---setCompleted
---@param completed boolean
---@return void
function Quest:setCompleted(completed)
    return Native.QuestSetCompleted(getUd(self), completed)
end

---setDiscovered
---@param discovered boolean
---@return void
function Quest:setDiscovered(discovered)
    return Native.QuestSetDiscovered(getUd(self), discovered)
end

---setFailed
---@param failed boolean
---@return void
function Quest:setFailed(failed)
    return Native.QuestSetFailed(getUd(self), failed)
end

---setEnabled
---@param enabled boolean
---@return void
function Quest:setEnabled(enabled)
    return Native.QuestSetEnabled(getUd(self), enabled)
end

---isRequired
---@return boolean
function Quest:isRequired()
    return Native.IsQuestRequired(getUd(self))
end

---isCompleted
---@return boolean
function Quest:isCompleted()
    return Native.IsQuestCompleted(getUd(self))
end

---isDiscovered
---@return boolean
function Quest:isDiscovered()
    return Native.IsQuestDiscovered(getUd(self))
end

---isFailed
---@return boolean
function Quest:isFailed()
    return Native.IsQuestFailed(getUd(self))
end

---isEnabled
---@return boolean
function Quest:isEnabled()
    return Native.IsQuestEnabled(getUd(self))
end

---createItem
---@return QuestItem
function Quest:createItem()
    return QuestItem:fromUd(Native.QuestCreateItem(getUd(self)))
end

return Quest
