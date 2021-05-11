local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class MapControl
local MapControl = {
    User = 0, --MAP_CONTROL_USER
    Computer = 1, --MAP_CONTROL_COMPUTER
    Rescuable = 2, --MAP_CONTROL_RESCUABLE
    Neutral = 3, --MAP_CONTROL_NEUTRAL
    Creep = 4, --MAP_CONTROL_CREEP
    None = 5, --MAP_CONTROL_NONE
}

MapControl = converter(Native.ConvertMapControl, MapControl)
return MapControl
