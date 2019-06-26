local Native = require('lib.stdlib.native')

---@class MoveType
local MoveType = {
    Unknown = Native.ConvertMoveType(0), --MOVE_TYPE_UNKNOWN
    Foot = Native.ConvertMoveType(1), --MOVE_TYPE_FOOT
    Fly = Native.ConvertMoveType(2), --MOVE_TYPE_FLY
    Horse = Native.ConvertMoveType(4), --MOVE_TYPE_HORSE
    Hover = Native.ConvertMoveType(8), --MOVE_TYPE_HOVER
    Float = Native.ConvertMoveType(16), --MOVE_TYPE_FLOAT
    Amphibious = Native.ConvertMoveType(32), --MOVE_TYPE_AMPHIBIOUS
    Unbuildable = Native.ConvertMoveType(64), --MOVE_TYPE_UNBUILDABLE
}
return MoveType
