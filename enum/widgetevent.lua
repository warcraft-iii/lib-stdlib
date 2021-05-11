local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class WidgetEvent
local WidgetEvent = {
    Death = 89, --EVENT_WIDGET_DEATH
}

WidgetEvent = converter(Native.ConvertWidgetEvent, WidgetEvent)
return WidgetEvent
