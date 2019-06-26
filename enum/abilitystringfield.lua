local Native = require('lib.stdlib.native')

---@class AbilityStringField
local AbilityStringField = {
    Name = Native.ConvertAbilityStringField(0x616E616D), --ABILITY_SF_NAME
    IconActivated = Native.ConvertAbilityStringField(0x61756172), --ABILITY_SF_ICON_ACTIVATED
    IconResearch = Native.ConvertAbilityStringField(0x61726172), --ABILITY_SF_ICON_RESEARCH
    EffectSound = Native.ConvertAbilityStringField(0x61656673), --ABILITY_SF_EFFECT_SOUND
    EffectSoundLooping = Native.ConvertAbilityStringField(0x6165666C), --ABILITY_SF_EFFECT_SOUND_LOOPING
}
return AbilityStringField
