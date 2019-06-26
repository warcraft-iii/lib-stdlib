local Native = require('lib.stdlib.native')

---@class PathingType
local PathingType = {
    Any = Native.ConvertPathingType(0), --PATHING_TYPE_ANY
    Walkability = Native.ConvertPathingType(1), --PATHING_TYPE_WALKABILITY
    Flyability = Native.ConvertPathingType(2), --PATHING_TYPE_FLYABILITY
    Buildability = Native.ConvertPathingType(3), --PATHING_TYPE_BUILDABILITY
    Peonharvestpathing = Native.ConvertPathingType(4), --PATHING_TYPE_PEONHARVESTPATHING
    Blightpathing = Native.ConvertPathingType(5), --PATHING_TYPE_BLIGHTPATHING
    Floatability = Native.ConvertPathingType(6), --PATHING_TYPE_FLOATABILITY
    Amphibiouspathing = Native.ConvertPathingType(7), --PATHING_TYPE_AMPHIBIOUSPATHING
}
return PathingType
