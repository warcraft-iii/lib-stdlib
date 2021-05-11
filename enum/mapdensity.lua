local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class MapDensity
local MapDensity = {
    None = 0, --MAP_DENSITY_NONE
    Light = 1, --MAP_DENSITY_LIGHT
    Medium = 2, --MAP_DENSITY_MEDIUM
    Heavy = 3, --MAP_DENSITY_HEAVY
}

MapDensity = converter(Native.ConvertMapDensity, MapDensity)
return MapDensity
