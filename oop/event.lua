---@type Event
local Event = require('lib.stdlib.oop._generated._event')
local Native = require('lib.stdlib.native')
local Vector = require('lib.stdlib.oop.vector')

---getTriggerRect
---@return Rect
function Event:getTriggerRect()
    return self:getTriggeringTrigger()._rect
end

function Event:getTriggerEventId()
    return Native.GetHandleId(Native.GetTriggerEventId())
end

local function checker(tbl, id)
    if tbl then
        for key, value in pairs(tbl) do
            if value == id then
                return true
            end
        end
    end
    return false
end

function Event:isPlayerUnitEvent()
    return checker(PlayerUnitEvent, self:getTriggerEventId())
end

function Event:isUnitEvent()
    return checker(UnitEvent, self:getTriggerEventId())
end

function Event:isPlayerEvent()
    return checker(PlayerEvent, self:getTriggerEventId())
end

function Event:getSpellTargetPos()
    return Vector:new(self:getSpellTargetX(), self:getSpellTargetY())
end

return Event
