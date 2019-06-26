local Native = require('lib.stdlib.native')

---@class DialogEvent
local DialogEvent = {
    ButtonClick = Native.ConvertDialogEvent(90), --EVENT_DIALOG_BUTTON_CLICK
    Click = Native.ConvertDialogEvent(91), --EVENT_DIALOG_CLICK
}
return DialogEvent
