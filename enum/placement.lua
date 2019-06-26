local Native = require('lib.stdlib.native')

---@class Placement
local Placement = {
    Random = Native.ConvertPlacement(0), --MAP_PLACEMENT_RANDOM
    Fixed = Native.ConvertPlacement(1), --MAP_PLACEMENT_FIXED
    UseMapSettings = Native.ConvertPlacement(2), --MAP_PLACEMENT_USE_MAP_SETTINGS
    TeamsTogether = Native.ConvertPlacement(3), --MAP_PLACEMENT_TEAMS_TOGETHER
}
return Placement
