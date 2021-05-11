local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class FrameEventType
local FrameEventType = {
    ControlClick = 1, --FRAMEEVENT_CONTROL_CLICK
    MouseEnter = 2, --FRAMEEVENT_MOUSE_ENTER
    MouseLeave = 3, --FRAMEEVENT_MOUSE_LEAVE
    MouseUp = 4, --FRAMEEVENT_MOUSE_UP
    MouseDown = 5, --FRAMEEVENT_MOUSE_DOWN
    MouseWheel = 6, --FRAMEEVENT_MOUSE_WHEEL
    CheckboxChecked = 7, --FRAMEEVENT_CHECKBOX_CHECKED
    CheckboxUnchecked = 8, --FRAMEEVENT_CHECKBOX_UNCHECKED
    EditboxTextChanged = 9, --FRAMEEVENT_EDITBOX_TEXT_CHANGED
    PopupmenuItemChanged = 10, --FRAMEEVENT_POPUPMENU_ITEM_CHANGED
    MouseDoubleclick = 11, --FRAMEEVENT_MOUSE_DOUBLECLICK
    SpriteAnimUpdate = 12, --FRAMEEVENT_SPRITE_ANIM_UPDATE
    SliderValueChanged = 13, --FRAMEEVENT_SLIDER_VALUE_CHANGED
    DialogCancel = 14, --FRAMEEVENT_DIALOG_CANCEL
    DialogAccept = 15, --FRAMEEVENT_DIALOG_ACCEPT
    EditboxEnter = 16, --FRAMEEVENT_EDITBOX_ENTER
}

FrameEventType = converter(Native.ConvertFrameEventType, FrameEventType)
return FrameEventType
