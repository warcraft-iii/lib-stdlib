local Native = require('lib.stdlib.native')

---@class DefenseType
local DefenseType = {
    Light = Native.ConvertDefenseType(0), --DEFENSE_TYPE_LIGHT
    Medium = Native.ConvertDefenseType(1), --DEFENSE_TYPE_MEDIUM
    Large = Native.ConvertDefenseType(2), --DEFENSE_TYPE_LARGE
    Fort = Native.ConvertDefenseType(3), --DEFENSE_TYPE_FORT
    Normal = Native.ConvertDefenseType(4), --DEFENSE_TYPE_NORMAL
    Hero = Native.ConvertDefenseType(5), --DEFENSE_TYPE_HERO
    Divine = Native.ConvertDefenseType(6), --DEFENSE_TYPE_DIVINE
    None = Native.ConvertDefenseType(7), --DEFENSE_TYPE_NONE
}
return DefenseType
