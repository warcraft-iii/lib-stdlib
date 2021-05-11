local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class AbilityStringField
local AbilityStringField = {
    Name = 0x616E616D, --ABILITY_SF_NAME
    IconActivated = 0x61756172, --ABILITY_SF_ICON_ACTIVATED
    IconResearch = 0x61726172, --ABILITY_SF_ICON_RESEARCH
    EffectSound = 0x61656673, --ABILITY_SF_EFFECT_SOUND
    EffectSoundLooping = 0x6165666C, --ABILITY_SF_EFFECT_SOUND_LOOPING
}

AbilityStringField = converter(Native.ConvertAbilityStringField, AbilityStringField)
return AbilityStringField
