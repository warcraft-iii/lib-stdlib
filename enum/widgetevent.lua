local Native = require('lib.stdlib.native')

---@class WidgetEvent
local WidgetEvent = {
    Death = Native.ConvertWidgetEvent(89), --EVENT_WIDGET_DEATH
}
return WidgetEvent
