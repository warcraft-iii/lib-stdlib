local Native = require('lib.stdlib.native')

---@class TimerDialog : Agent
local TimerDialog = class('TimerDialog', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function TimerDialog:destructor()
    return Native.DestroyTimerDialog(getUd(self))
end

---destroy
---@deprecated
---@return void
function TimerDialog:destroy()
--@debug@
    deprecated('destroy', 'delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@param t Timer
---@return TimerDialog
function TimerDialog:create(t)
    return TimerDialog:fromUd(Native.CreateTimerDialog(getUd(t)))
end

---setTitle
---@param title string
---@return void
function TimerDialog:setTitle(title)
    return Native.TimerDialogSetTitle(getUd(self), title)
end

---setTitleColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function TimerDialog:setTitleColor(red, green, blue, alpha)
    return Native.TimerDialogSetTitleColor(getUd(self), red, green, blue, alpha)
end

---setTimeColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function TimerDialog:setTimeColor(red, green, blue, alpha)
    return Native.TimerDialogSetTimeColor(getUd(self), red, green, blue, alpha)
end

---setSpeed
---@param speedMultFactor float
---@return void
function TimerDialog:setSpeed(speedMultFactor)
    return Native.TimerDialogSetSpeed(getUd(self), speedMultFactor)
end

---display
---@param display boolean
---@return void
function TimerDialog:display(display)
    return Native.TimerDialogDisplay(getUd(self), display)
end

---isDisplayed
---@return boolean
function TimerDialog:isDisplayed()
    return Native.IsTimerDialogDisplayed(getUd(self))
end

---setRealTimeRemaining
---@param timeRemaining float
---@return void
function TimerDialog:setRealTimeRemaining(timeRemaining)
    return Native.TimerDialogSetRealTimeRemaining(getUd(self), timeRemaining)
end

return TimerDialog
