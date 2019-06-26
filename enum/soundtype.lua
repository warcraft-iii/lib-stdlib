local Native = require('lib.stdlib.native')

---@class SoundType
local SoundType = {
    Effect = Native.ConvertSoundType(0), --SOUND_TYPE_EFFECT
    EffectLooped = Native.ConvertSoundType(1), --SOUND_TYPE_EFFECT_LOOPED
}
return SoundType
