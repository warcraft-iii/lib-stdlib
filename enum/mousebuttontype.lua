local Native = require('lib.stdlib.native')

---@class MouseButtonType
local MouseButtonType = {
    Left = Native.ConvertMouseButtonType(1), --MOUSE_BUTTON_TYPE_LEFT
    Middle = Native.ConvertMouseButtonType(2), --MOUSE_BUTTON_TYPE_MIDDLE
    Right = Native.ConvertMouseButtonType(3), --MOUSE_BUTTON_TYPE_RIGHT
}
return MouseButtonType
