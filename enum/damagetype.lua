local Native = require('lib.stdlib.native')

---@class DamageType
local DamageType = {
    Unknown = Native.ConvertDamageType(0), --DAMAGE_TYPE_UNKNOWN
    Normal = Native.ConvertDamageType(4), --DAMAGE_TYPE_NORMAL
    Enhanced = Native.ConvertDamageType(5), --DAMAGE_TYPE_ENHANCED
    Fire = Native.ConvertDamageType(8), --DAMAGE_TYPE_FIRE
    Cold = Native.ConvertDamageType(9), --DAMAGE_TYPE_COLD
    Lightning = Native.ConvertDamageType(10), --DAMAGE_TYPE_LIGHTNING
    Poison = Native.ConvertDamageType(11), --DAMAGE_TYPE_POISON
    Disease = Native.ConvertDamageType(12), --DAMAGE_TYPE_DISEASE
    Divine = Native.ConvertDamageType(13), --DAMAGE_TYPE_DIVINE
    Magic = Native.ConvertDamageType(14), --DAMAGE_TYPE_MAGIC
    Sonic = Native.ConvertDamageType(15), --DAMAGE_TYPE_SONIC
    Acid = Native.ConvertDamageType(16), --DAMAGE_TYPE_ACID
    Force = Native.ConvertDamageType(17), --DAMAGE_TYPE_FORCE
    Death = Native.ConvertDamageType(18), --DAMAGE_TYPE_DEATH
    Mind = Native.ConvertDamageType(19), --DAMAGE_TYPE_MIND
    Plant = Native.ConvertDamageType(20), --DAMAGE_TYPE_PLANT
    Defensive = Native.ConvertDamageType(21), --DAMAGE_TYPE_DEFENSIVE
    Demolition = Native.ConvertDamageType(22), --DAMAGE_TYPE_DEMOLITION
    SlowPoison = Native.ConvertDamageType(23), --DAMAGE_TYPE_SLOW_POISON
    SpiritLink = Native.ConvertDamageType(24), --DAMAGE_TYPE_SPIRIT_LINK
    ShadowStrike = Native.ConvertDamageType(25), --DAMAGE_TYPE_SHADOW_STRIKE
    Universal = Native.ConvertDamageType(26), --DAMAGE_TYPE_UNIVERSAL
}
return DamageType
