local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class EffectType
local EffectType = {
    Effect = 0, --EFFECT_TYPE_EFFECT
    Target = 1, --EFFECT_TYPE_TARGET
    Caster = 2, --EFFECT_TYPE_CASTER
    Special = 3, --EFFECT_TYPE_SPECIAL
    AreaEffect = 4, --EFFECT_TYPE_AREA_EFFECT
    Missile = 5, --EFFECT_TYPE_MISSILE
    Lightning = 6, --EFFECT_TYPE_LIGHTNING
}

EffectType = converter(Native.ConvertEffectType, EffectType)
return EffectType
