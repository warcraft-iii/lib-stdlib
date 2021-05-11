local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class DialogEvent
local DialogEvent = {
    ButtonClick = 90, --EVENT_DIALOG_BUTTON_CLICK
    Click = 91, --EVENT_DIALOG_CLICK
}

DialogEvent = converter(Native.ConvertDialogEvent, DialogEvent)
return DialogEvent
