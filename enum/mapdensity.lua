local Native = require('lib.stdlib.native')

---@class MapDensity
local MapDensity = {
    None = Native.ConvertMapDensity(0), --MAP_DENSITY_NONE
    Light = Native.ConvertMapDensity(1), --MAP_DENSITY_LIGHT
    Medium = Native.ConvertMapDensity(2), --MAP_DENSITY_MEDIUM
    Heavy = Native.ConvertMapDensity(3), --MAP_DENSITY_HEAVY
}
return MapDensity
