local Native = require('lib.stdlib.native')

---@class Timer : Agent
local Timer = class('Timer', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Timer:destructor()
--@debug@
    checkobject(self, Timer, 'destructor', 'self')
--@end-debug@
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
--@debug@
    checkobject(self, Timer, 'getElapsed', 'self')
--@end-debug@
    return Native.TimerGetElapsed(getUd(self))
end

---getRemaining
---@return float
function Timer:getRemaining()
--@debug@
    checkobject(self, Timer, 'getRemaining', 'self')
--@end-debug@
    return Native.TimerGetRemaining(getUd(self))
end

---getTimeout
---@return float
function Timer:getTimeout()
--@debug@
    checkobject(self, Timer, 'getTimeout', 'self')
--@end-debug@
    return Native.TimerGetTimeout(getUd(self))
end

---pause
---@return void
function Timer:pause()
--@debug@
    checkobject(self, Timer, 'pause', 'self')
--@end-debug@
    return Native.PauseTimer(getUd(self))
end

---resume
---@return void
function Timer:resume()
--@debug@
    checkobject(self, Timer, 'resume', 'self')
--@end-debug@
    return Native.ResumeTimer(getUd(self))
end

return Timer
