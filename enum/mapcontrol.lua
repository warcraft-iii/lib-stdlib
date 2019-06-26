local Native = require('lib.stdlib.native')

---@class MapControl
local MapControl = {
    User = Native.ConvertMapControl(0), --MAP_CONTROL_USER
    Computer = Native.ConvertMapControl(1), --MAP_CONTROL_COMPUTER
    Rescuable = Native.ConvertMapControl(2), --MAP_CONTROL_RESCUABLE
    Neutral = Native.ConvertMapControl(3), --MAP_CONTROL_NEUTRAL
    Creep = Native.ConvertMapControl(4), --MAP_CONTROL_CREEP
    None = Native.ConvertMapControl(5), --MAP_CONTROL_NONE
}
return MapControl
