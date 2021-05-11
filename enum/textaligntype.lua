local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class TextAlignType
local TextAlignType = {
    Top = 0, --TEXT_JUSTIFY_TOP
    Middle = 1, --TEXT_JUSTIFY_MIDDLE
    Bottom = 2, --TEXT_JUSTIFY_BOTTOM
    Left = 3, --TEXT_JUSTIFY_LEFT
    Center = 4, --TEXT_JUSTIFY_CENTER
    Right = 5, --TEXT_JUSTIFY_RIGHT
}

TextAlignType = converter(Native.ConvertTextAlignType, TextAlignType)
return TextAlignType
