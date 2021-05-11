local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class PathingType
local PathingType = {
    Any = 0, --PATHING_TYPE_ANY
    Walkability = 1, --PATHING_TYPE_WALKABILITY
    Flyability = 2, --PATHING_TYPE_FLYABILITY
    Buildability = 3, --PATHING_TYPE_BUILDABILITY
    Peonharvestpathing = 4, --PATHING_TYPE_PEONHARVESTPATHING
    Blightpathing = 5, --PATHING_TYPE_BLIGHTPATHING
    Floatability = 6, --PATHING_TYPE_FLOATABILITY
    Amphibiouspathing = 7, --PATHING_TYPE_AMPHIBIOUSPATHING
}

PathingType = converter(Native.ConvertPathingType, PathingType)
return PathingType
