local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class SoundType
local SoundType = {
    Effect = 0, --SOUND_TYPE_EFFECT
    EffectLooped = 1, --SOUND_TYPE_EFFECT_LOOPED
}

SoundType = converter(Native.ConvertSoundType, SoundType)
return SoundType
