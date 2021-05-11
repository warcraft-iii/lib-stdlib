local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class ArmorType
local ArmorType = {
    Whoknows = 0, --ARMOR_TYPE_WHOKNOWS
    Flesh = 1, --ARMOR_TYPE_FLESH
    Metal = 2, --ARMOR_TYPE_METAL
    Wood = 3, --ARMOR_TYPE_WOOD
    Ethreal = 4, --ARMOR_TYPE_ETHREAL
    Stone = 5, --ARMOR_TYPE_STONE
}

ArmorType = converter(Native.ConvertArmorType, ArmorType)
return ArmorType
