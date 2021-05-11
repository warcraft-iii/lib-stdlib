local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class RegenType
local RegenType = {
    None = 0, --REGENERATION_TYPE_NONE
    Always = 1, --REGENERATION_TYPE_ALWAYS
    Blight = 2, --REGENERATION_TYPE_BLIGHT
    Day = 3, --REGENERATION_TYPE_DAY
    Night = 4, --REGENERATION_TYPE_NIGHT
}

RegenType = converter(Native.ConvertRegenType, RegenType)
return RegenType
