local Native = require('lib.stdlib.native')
local Button = require('lib.stdlib.oop.button')

---@class Dialog : Agent
local Dialog = class('Dialog', require('lib.stdlib.oop.agent'))

---<static> create
---@return Dialog
function Dialog:create()
    return Dialog:fromUd(Native.DialogCreate())
end

---destroy
---@return void
function Dialog:destroy()
    return Native.DialogDestroy(getUd(self))
end

---clear
---@return void
function Dialog:clear()
    return Native.DialogClear(getUd(self))
end

---setMessage
---@param messageText string
---@return void
function Dialog:setMessage(messageText)
    return Native.DialogSetMessage(getUd(self), messageText)
end

---addButton
---@param buttonText string
---@param hotkey integer
---@return Button
function Dialog:addButton(buttonText, hotkey)
    return Button:fromUd(Native.DialogAddButton(getUd(self), buttonText, hotkey))
end

---addQuitButton
---@param doScoreScreen boolean
---@param buttonText string
---@param hotkey integer
---@return Button
function Dialog:addQuitButton(doScoreScreen, buttonText, hotkey)
    return Button:fromUd(Native.DialogAddQuitButton(getUd(self), doScoreScreen, buttonText, hotkey))
end

return Dialog
