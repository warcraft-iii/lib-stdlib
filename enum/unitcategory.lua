local Native = require('lib.stdlib.native')

---@class UnitCategory
local UnitCategory = {
    Giant = Native.ConvertUnitCategory(1), --UNIT_CATEGORY_GIANT
    Undead = Native.ConvertUnitCategory(2), --UNIT_CATEGORY_UNDEAD
    Summoned = Native.ConvertUnitCategory(4), --UNIT_CATEGORY_SUMMONED
    Mechanical = Native.ConvertUnitCategory(8), --UNIT_CATEGORY_MECHANICAL
    Peon = Native.ConvertUnitCategory(16), --UNIT_CATEGORY_PEON
    Sapper = Native.ConvertUnitCategory(32), --UNIT_CATEGORY_SAPPER
    Townhall = Native.ConvertUnitCategory(64), --UNIT_CATEGORY_TOWNHALL
    Ancient = Native.ConvertUnitCategory(128), --UNIT_CATEGORY_ANCIENT
    Neutral = Native.ConvertUnitCategory(256), --UNIT_CATEGORY_NEUTRAL
    Ward = Native.ConvertUnitCategory(512), --UNIT_CATEGORY_WARD
    Standon = Native.ConvertUnitCategory(1024), --UNIT_CATEGORY_STANDON
    Tauren = Native.ConvertUnitCategory(2048), --UNIT_CATEGORY_TAUREN
}
return UnitCategory
