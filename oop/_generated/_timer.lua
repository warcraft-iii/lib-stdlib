local Native = require('lib.stdlib.native')

---@class Timer : Agent
local Timer = class('Timer', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Timer:destructor()
    return Native.DestroyTimer(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function Timer:destroy()
--@debug@
    deprecated('Timer.destroy', 'Timer.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@return Timer
function Timer:create()
    return Timer:fromUd(Native.CreateTimer())
end

---getElapsed
---@return float
function Timer:getElapsed()
    return Native.TimerGetElapsed(getUd(self))
end

---getRemaining
---@return float
function Timer:getRemaining()
    return Native.TimerGetRemaining(getUd(self))
end

---getTimeout
---@return float
function Timer:getTimeout()
    return Native.TimerGetTimeout(getUd(self))
end

---pause
---@return void
function Timer:pause()
    return Native.PauseTimer(getUd(self))
end

---resume
---@return void
function Timer:resume()
    return Native.ResumeTimer(getUd(self))
end

return Timer
