local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class Placement
local Placement = {
    Random = 0, --MAP_PLACEMENT_RANDOM
    Fixed = 1, --MAP_PLACEMENT_FIXED
    UseMapSettings = 2, --MAP_PLACEMENT_USE_MAP_SETTINGS
    TeamsTogether = 3, --MAP_PLACEMENT_TEAMS_TOGETHER
}

Placement = converter(Native.ConvertPlacement, Placement)
return Placement
