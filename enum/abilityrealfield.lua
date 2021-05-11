local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class AbilityRealField
local AbilityRealField = {
    ArfMissileArc = 0x616D6163, --ABILITY_RF_ARF_MISSILE_ARC
}

AbilityRealField = converter(Native.ConvertAbilityRealField, AbilityRealField)
return AbilityRealField
