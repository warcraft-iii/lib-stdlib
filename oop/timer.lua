---@type Timer
local Timer = require('lib.stdlib.oop._generated._timer')
local Native = require('lib.stdlib.native')

---<static> after
---@param duration number
---@param func function
---@return Timer
function Timer:after(duration, func)
    local timer = Timer:create()
    Native.TimerStart(timer:getUd(), duration, false, function()
        func()
        timer:delete()
    end)
    return timer
end

---start
---@param duration number
---@param func function
function Timer:start(duration, func)
    Native.TimerStart(getUd(self), duration, true, func)
end

return Timer
