local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class FramePointType
local FramePointType = {
    Topleft = 0, --FRAMEPOINT_TOPLEFT
    Top = 1, --FRAMEPOINT_TOP
    Topright = 2, --FRAMEPOINT_TOPRIGHT
    Left = 3, --FRAMEPOINT_LEFT
    Center = 4, --FRAMEPOINT_CENTER
    Right = 5, --FRAMEPOINT_RIGHT
    Bottomleft = 6, --FRAMEPOINT_BOTTOMLEFT
    Bottom = 7, --FRAMEPOINT_BOTTOM
    Bottomright = 8, --FRAMEPOINT_BOTTOMRIGHT
}

FramePointType = converter(Native.ConvertFramePointType, FramePointType)
return FramePointType
