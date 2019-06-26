local Native = require('lib.stdlib.native')

---@class FrameEventType
local FrameEventType = {
    ControlClick = Native.ConvertFrameEventType(1), --FRAMEEVENT_CONTROL_CLICK
    MouseEnter = Native.ConvertFrameEventType(2), --FRAMEEVENT_MOUSE_ENTER
    MouseLeave = Native.ConvertFrameEventType(3), --FRAMEEVENT_MOUSE_LEAVE
    MouseUp = Native.ConvertFrameEventType(4), --FRAMEEVENT_MOUSE_UP
    MouseDown = Native.ConvertFrameEventType(5), --FRAMEEVENT_MOUSE_DOWN
    MouseWheel = Native.ConvertFrameEventType(6), --FRAMEEVENT_MOUSE_WHEEL
    CheckboxChecked = Native.ConvertFrameEventType(7), --FRAMEEVENT_CHECKBOX_CHECKED
    CheckboxUnchecked = Native.ConvertFrameEventType(8), --FRAMEEVENT_CHECKBOX_UNCHECKED
    EditboxTextChanged = Native.ConvertFrameEventType(9), --FRAMEEVENT_EDITBOX_TEXT_CHANGED
    PopupmenuItemChanged = Native.ConvertFrameEventType(10), --FRAMEEVENT_POPUPMENU_ITEM_CHANGED
    MouseDoubleclick = Native.ConvertFrameEventType(11), --FRAMEEVENT_MOUSE_DOUBLECLICK
    SpriteAnimUpdate = Native.ConvertFrameEventType(12), --FRAMEEVENT_SPRITE_ANIM_UPDATE
    SliderValueChanged = Native.ConvertFrameEventType(13), --FRAMEEVENT_SLIDER_VALUE_CHANGED
    DialogCancel = Native.ConvertFrameEventType(14), --FRAMEEVENT_DIALOG_CANCEL
    DialogAccept = Native.ConvertFrameEventType(15), --FRAMEEVENT_DIALOG_ACCEPT
    EditboxEnter = Native.ConvertFrameEventType(16), --FRAMEEVENT_EDITBOX_ENTER
}
return FrameEventType
