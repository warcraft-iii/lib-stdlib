local Native = require('lib.stdlib.native')

---@class TextAlignType
local TextAlignType = {
    Top = Native.ConvertTextAlignType(0), --TEXT_JUSTIFY_TOP
    Middle = Native.ConvertTextAlignType(1), --TEXT_JUSTIFY_MIDDLE
    Bottom = Native.ConvertTextAlignType(2), --TEXT_JUSTIFY_BOTTOM
    Left = Native.ConvertTextAlignType(3), --TEXT_JUSTIFY_LEFT
    Center = Native.ConvertTextAlignType(4), --TEXT_JUSTIFY_CENTER
    Right = Native.ConvertTextAlignType(5), --TEXT_JUSTIFY_RIGHT
}
return TextAlignType
