---@type Event
local Event = require('lib.stdlib.oop._generated._event')
local Native = require('lib.stdlib.native.init')

---getTriggerRect
---@return Rect
function Event:getTriggerRect()
    return Trigger:fromUd(Native.GetTriggeringTrigger()).rect
end

return Event
