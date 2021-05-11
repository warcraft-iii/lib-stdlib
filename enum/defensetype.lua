local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class DefenseType
local DefenseType = {
    Light = 0, --DEFENSE_TYPE_LIGHT
    Medium = 1, --DEFENSE_TYPE_MEDIUM
    Large = 2, --DEFENSE_TYPE_LARGE
    Fort = 3, --DEFENSE_TYPE_FORT
    Normal = 4, --DEFENSE_TYPE_NORMAL
    Hero = 5, --DEFENSE_TYPE_HERO
    Divine = 6, --DEFENSE_TYPE_DIVINE
    None = 7, --DEFENSE_TYPE_NONE
}

DefenseType = converter(Native.ConvertDefenseType, DefenseType)
return DefenseType
