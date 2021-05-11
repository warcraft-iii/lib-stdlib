local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class UnitCategory
local UnitCategory = {
    Giant = 1, --UNIT_CATEGORY_GIANT
    Undead = 2, --UNIT_CATEGORY_UNDEAD
    Summoned = 4, --UNIT_CATEGORY_SUMMONED
    Mechanical = 8, --UNIT_CATEGORY_MECHANICAL
    Peon = 16, --UNIT_CATEGORY_PEON
    Sapper = 32, --UNIT_CATEGORY_SAPPER
    Townhall = 64, --UNIT_CATEGORY_TOWNHALL
    Ancient = 128, --UNIT_CATEGORY_ANCIENT
    Neutral = 256, --UNIT_CATEGORY_NEUTRAL
    Ward = 512, --UNIT_CATEGORY_WARD
    Standon = 1024, --UNIT_CATEGORY_STANDON
    Tauren = 2048, --UNIT_CATEGORY_TAUREN
}

UnitCategory = converter(Native.ConvertUnitCategory, UnitCategory)
return UnitCategory
