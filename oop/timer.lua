---@type Timer
local Timer = require('lib.stdlib.oop._generated._timer')
local Native = require('lib.stdlib.native')
local ActionMap = {}

local _destructor = Timer.destructor
function Timer:destructor()
    local ud = getUd(self)
    if ud then
        ActionMap[ud] = nil
    end
    _destructor(self)
end

function Timer:cache(func)
    local ud = getUd(self)
    if ud then
        ActionMap[ud] = func
    end
end

---<static> after
---@param duration number
---@param func function
---@return Timer
function Timer:after(duration, func)
    local timer = Timer:create()
    self:cache(func)
    Native.TimerStart(timer:getUd(), duration, false, function()
        func()
        timer:delete()
    end)
    return timer
end

---start
---@param duration number
---@param func function
---@param periodic boolean
function Timer:start(duration, func, periodic)
    if periodic == nil then
        if self.periodic == nil then
            periodic = true
        else
            periodic = self.periodic
        end
    end
    self.periodic = periodic
    self:cache(func)
    Native.TimerStart(getUd(self), duration, periodic, func)
end

---setPeriodic
---@param periodic boolean
function Timer:setPeriodic(periodic)
    self.periodic = periodic
end

---isPeriodic
---@return boolean
function Timer:isPeriodic()
    return self.periodic
end

return Timer
