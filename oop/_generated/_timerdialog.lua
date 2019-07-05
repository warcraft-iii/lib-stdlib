local Native = require('lib.stdlib.native')

---@class TimerDialog : Agent
local TimerDialog = class('TimerDialog', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function TimerDialog:destructor()
--@debug@
    checkobject(self, TimerDialog, 'destructor', 'self')
--@end-debug@
    return Native.DestroyTimerDialog(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function TimerDialog:destroy()
--@debug@
    deprecated('TimerDialog.destroy', 'TimerDialog.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@param t Timer
---@return TimerDialog
function TimerDialog:create(t)
--@debug@
    checkclass(self, TimerDialog, 'create', 'self')
    checkobject(t, require('lib.stdlib.oop.timer'), 'create', 1)
--@end-debug@
    return TimerDialog:fromUd(Native.CreateTimerDialog(getUd(t)))
end

---setTitle
---@param title string
---@return void
function TimerDialog:setTitle(title)
--@debug@
    checkobject(self, TimerDialog, 'setTitle', 'self')
    checktype(title, 'string', 'setTitle', 1)
--@end-debug@
    return Native.TimerDialogSetTitle(getUd(self), title)
end

---setTitleColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function TimerDialog:setTitleColor(red, green, blue, alpha)
--@debug@
    checkobject(self, TimerDialog, 'setTitleColor', 'self')
    checktype(red, 'integer', 'setTitleColor', 1)
    checktype(green, 'integer', 'setTitleColor', 2)
    checktype(blue, 'integer', 'setTitleColor', 3)
    checktype(alpha, 'integer', 'setTitleColor', 4)
--@end-debug@
    return Native.TimerDialogSetTitleColor(getUd(self), red, green, blue, alpha)
end

---setTimeColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function TimerDialog:setTimeColor(red, green, blue, alpha)
--@debug@
    checkobject(self, TimerDialog, 'setTimeColor', 'self')
    checktype(red, 'integer', 'setTimeColor', 1)
    checktype(green, 'integer', 'setTimeColor', 2)
    checktype(blue, 'integer', 'setTimeColor', 3)
    checktype(alpha, 'integer', 'setTimeColor', 4)
--@end-debug@
    return Native.TimerDialogSetTimeColor(getUd(self), red, green, blue, alpha)
end

---setSpeed
---@param speedMultFactor float
---@return void
function TimerDialog:setSpeed(speedMultFactor)
--@debug@
    checkobject(self, TimerDialog, 'setSpeed', 'self')
    checktype(speedMultFactor, 'float', 'setSpeed', 1)
--@end-debug@
    return Native.TimerDialogSetSpeed(getUd(self), speedMultFactor)
end

---display
---@param display boolean
---@return void
function TimerDialog:display(display)
--@debug@
    checkobject(self, TimerDialog, 'display', 'self')
    checktype(display, 'boolean', 'display', 1)
--@end-debug@
    return Native.TimerDialogDisplay(getUd(self), display)
end

---isDisplayed
---@return boolean
function TimerDialog:isDisplayed()
--@debug@
    checkobject(self, TimerDialog, 'isDisplayed', 'self')
--@end-debug@
    return Native.IsTimerDialogDisplayed(getUd(self))
end

---setRealTimeRemaining
---@param timeRemaining float
---@return void
function TimerDialog:setRealTimeRemaining(timeRemaining)
--@debug@
    checkobject(self, TimerDialog, 'setRealTimeRemaining', 'self')
    checktype(timeRemaining, 'float', 'setRealTimeRemaining', 1)
--@end-debug@
    return Native.TimerDialogSetRealTimeRemaining(getUd(self), timeRemaining)
end

return TimerDialog
