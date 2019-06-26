local Native = require('lib.stdlib.native')

---@class EffectType
local EffectType = {
    Effect = Native.ConvertEffectType(0), --EFFECT_TYPE_EFFECT
    Target = Native.ConvertEffectType(1), --EFFECT_TYPE_TARGET
    Caster = Native.ConvertEffectType(2), --EFFECT_TYPE_CASTER
    Special = Native.ConvertEffectType(3), --EFFECT_TYPE_SPECIAL
    AreaEffect = Native.ConvertEffectType(4), --EFFECT_TYPE_AREA_EFFECT
    Missile = Native.ConvertEffectType(5), --EFFECT_TYPE_MISSILE
    Lightning = Native.ConvertEffectType(6), --EFFECT_TYPE_LIGHTNING
}
return EffectType
