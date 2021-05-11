local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class MoveType
local MoveType = {
    Unknown = 0, --MOVE_TYPE_UNKNOWN
    Foot = 1, --MOVE_TYPE_FOOT
    Fly = 2, --MOVE_TYPE_FLY
    Horse = 4, --MOVE_TYPE_HORSE
    Hover = 8, --MOVE_TYPE_HOVER
    Float = 16, --MOVE_TYPE_FLOAT
    Amphibious = 32, --MOVE_TYPE_AMPHIBIOUS
    Unbuildable = 64, --MOVE_TYPE_UNBUILDABLE
}

MoveType = converter(Native.ConvertMoveType, MoveType)
return MoveType
