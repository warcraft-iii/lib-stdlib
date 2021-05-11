local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class PathingFlag
local PathingFlag = {
    Unwalkable = 2, --PATHING_FLAG_UNWALKABLE
    Unflyable = 4, --PATHING_FLAG_UNFLYABLE
    Unbuildable = 8, --PATHING_FLAG_UNBUILDABLE
    Unpeonharvest = 16, --PATHING_FLAG_UNPEONHARVEST
    Blighted = 32, --PATHING_FLAG_BLIGHTED
    Unfloatable = 64, --PATHING_FLAG_UNFLOATABLE
    Unamphibious = 128, --PATHING_FLAG_UNAMPHIBIOUS
    Unitemplacable = 256, --PATHING_FLAG_UNITEMPLACABLE
}

PathingFlag = converter(Native.ConvertPathingFlag, PathingFlag)
return PathingFlag
