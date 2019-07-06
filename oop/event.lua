---@type Event
local Event = require('lib.stdlib.oop._generated._event')

---getTriggerRect
---@return Rect
function Event:getTriggerRect()
    return self:getTriggeringTrigger()._rect
end

return Event
