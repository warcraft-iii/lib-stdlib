local Native = require('lib.stdlib.native')

---@class ArmorType
local ArmorType = {
    Whoknows = Native.ConvertArmorType(0), --ARMOR_TYPE_WHOKNOWS
    Flesh = Native.ConvertArmorType(1), --ARMOR_TYPE_FLESH
    Metal = Native.ConvertArmorType(2), --ARMOR_TYPE_METAL
    Wood = Native.ConvertArmorType(3), --ARMOR_TYPE_WOOD
    Ethreal = Native.ConvertArmorType(4), --ARMOR_TYPE_ETHREAL
    Stone = Native.ConvertArmorType(5), --ARMOR_TYPE_STONE
}
return ArmorType
