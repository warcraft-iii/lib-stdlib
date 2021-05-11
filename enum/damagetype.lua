local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class DamageType
local DamageType = {
    Unknown = 0, --DAMAGE_TYPE_UNKNOWN
    Normal = 4, --DAMAGE_TYPE_NORMAL
    Enhanced = 5, --DAMAGE_TYPE_ENHANCED
    Fire = 8, --DAMAGE_TYPE_FIRE
    Cold = 9, --DAMAGE_TYPE_COLD
    Lightning = 10, --DAMAGE_TYPE_LIGHTNING
    Poison = 11, --DAMAGE_TYPE_POISON
    Disease = 12, --DAMAGE_TYPE_DISEASE
    Divine = 13, --DAMAGE_TYPE_DIVINE
    Magic = 14, --DAMAGE_TYPE_MAGIC
    Sonic = 15, --DAMAGE_TYPE_SONIC
    Acid = 16, --DAMAGE_TYPE_ACID
    Force = 17, --DAMAGE_TYPE_FORCE
    Death = 18, --DAMAGE_TYPE_DEATH
    Mind = 19, --DAMAGE_TYPE_MIND
    Plant = 20, --DAMAGE_TYPE_PLANT
    Defensive = 21, --DAMAGE_TYPE_DEFENSIVE
    Demolition = 22, --DAMAGE_TYPE_DEMOLITION
    SlowPoison = 23, --DAMAGE_TYPE_SLOW_POISON
    SpiritLink = 24, --DAMAGE_TYPE_SPIRIT_LINK
    ShadowStrike = 25, --DAMAGE_TYPE_SHADOW_STRIKE
    Universal = 26, --DAMAGE_TYPE_UNIVERSAL
}

DamageType = converter(Native.ConvertDamageType, DamageType)
return DamageType
