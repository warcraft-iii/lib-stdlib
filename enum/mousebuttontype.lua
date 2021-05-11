local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class MouseButtonType
local MouseButtonType = {
    Left = 1, --MOUSE_BUTTON_TYPE_LEFT
    Middle = 2, --MOUSE_BUTTON_TYPE_MIDDLE
    Right = 3, --MOUSE_BUTTON_TYPE_RIGHT
}

MouseButtonType = converter(Native.ConvertMouseButtonType, MouseButtonType)
return MouseButtonType
