local Native = require('lib.stdlib.native')

---@class FramePointType
local FramePointType = {
    Topleft = Native.ConvertFramePointType(0), --FRAMEPOINT_TOPLEFT
    Top = Native.ConvertFramePointType(1), --FRAMEPOINT_TOP
    Topright = Native.ConvertFramePointType(2), --FRAMEPOINT_TOPRIGHT
    Left = Native.ConvertFramePointType(3), --FRAMEPOINT_LEFT
    Center = Native.ConvertFramePointType(4), --FRAMEPOINT_CENTER
    Right = Native.ConvertFramePointType(5), --FRAMEPOINT_RIGHT
    Bottomleft = Native.ConvertFramePointType(6), --FRAMEPOINT_BOTTOMLEFT
    Bottom = Native.ConvertFramePointType(7), --FRAMEPOINT_BOTTOM
    Bottomright = Native.ConvertFramePointType(8), --FRAMEPOINT_BOTTOMRIGHT
}
return FramePointType
