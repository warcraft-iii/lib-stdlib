local Native = require('lib.stdlib.native')

---@class PathingFlag
local PathingFlag = {
    Unwalkable = Native.ConvertPathingFlag(2), --PATHING_FLAG_UNWALKABLE
    Unflyable = Native.ConvertPathingFlag(4), --PATHING_FLAG_UNFLYABLE
    Unbuildable = Native.ConvertPathingFlag(8), --PATHING_FLAG_UNBUILDABLE
    Unpeonharvest = Native.ConvertPathingFlag(16), --PATHING_FLAG_UNPEONHARVEST
    Blighted = Native.ConvertPathingFlag(32), --PATHING_FLAG_BLIGHTED
    Unfloatable = Native.ConvertPathingFlag(64), --PATHING_FLAG_UNFLOATABLE
    Unamphibious = Native.ConvertPathingFlag(128), --PATHING_FLAG_UNAMPHIBIOUS
    Unitemplacable = Native.ConvertPathingFlag(256), --PATHING_FLAG_UNITEMPLACABLE
}
return PathingFlag
