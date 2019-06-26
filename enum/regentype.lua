local Native = require('lib.stdlib.native')

---@class RegenType
local RegenType = {
    None = Native.ConvertRegenType(0), --REGENERATION_TYPE_NONE
    Always = Native.ConvertRegenType(1), --REGENERATION_TYPE_ALWAYS
    Blight = Native.ConvertRegenType(2), --REGENERATION_TYPE_BLIGHT
    Day = Native.ConvertRegenType(3), --REGENERATION_TYPE_DAY
    Night = Native.ConvertRegenType(4), --REGENERATION_TYPE_NIGHT
}
return RegenType
