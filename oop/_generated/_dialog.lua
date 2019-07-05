local Native = require('lib.stdlib.native')

---@class Dialog : Agent
local Dialog = class('Dialog', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Dialog:destructor()
--@debug@
    checkobject(self, Dialog, 'destructor', 'self')
--@end-debug@
    return Native.DialogDestroy(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function Dialog:destroy()
--@debug@
    deprecated('Dialog.destroy', 'Dialog.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@return Dialog
function Dialog:create()
    return Dialog:fromUd(Native.DialogCreate())
end

---clear
---@return void
function Dialog:clear()
--@debug@
    checkobject(self, Dialog, 'clear', 'self')
--@end-debug@
    return Native.DialogClear(getUd(self))
end

---setMessage
---@param messageText string
---@return void
function Dialog:setMessage(messageText)
--@debug@
    checkobject(self, Dialog, 'setMessage', 'self')
    checktype(messageText, 'string', 'setMessage', 1)
--@end-debug@
    return Native.DialogSetMessage(getUd(self), messageText)
end

---addButton
---@param buttonText string
---@param hotkey integer
---@return Button
function Dialog:addButton(buttonText, hotkey)
--@debug@
    checkobject(self, Dialog, 'addButton', 'self')
    checktype(buttonText, 'string', 'addButton', 1)
    checktype(hotkey, 'integer', 'addButton', 2)
--@end-debug@
    return require('lib.stdlib.oop.button'):fromUd(Native.DialogAddButton(getUd(self), buttonText, hotkey))
end

---addQuitButton
---@param doScoreScreen boolean
---@param buttonText string
---@param hotkey integer
---@return Button
function Dialog:addQuitButton(doScoreScreen, buttonText, hotkey)
--@debug@
    checkobject(self, Dialog, 'addQuitButton', 'self')
    checktype(doScoreScreen, 'boolean', 'addQuitButton', 1)
    checktype(buttonText, 'string', 'addQuitButton', 2)
    checktype(hotkey, 'integer', 'addQuitButton', 3)
--@end-debug@
    return require('lib.stdlib.oop.button'):fromUd(Native.DialogAddQuitButton(getUd(self), doScoreScreen, buttonText, hotkey))
end

return Dialog
