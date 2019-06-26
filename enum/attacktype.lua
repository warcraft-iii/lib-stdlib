local Native = require('lib.stdlib.native')

---@class AttackType
local AttackType = {
    Normal = Native.ConvertAttackType(0), --ATTACK_TYPE_NORMAL
    Melee = Native.ConvertAttackType(1), --ATTACK_TYPE_MELEE
    Pierce = Native.ConvertAttackType(2), --ATTACK_TYPE_PIERCE
    Siege = Native.ConvertAttackType(3), --ATTACK_TYPE_SIEGE
    Magic = Native.ConvertAttackType(4), --ATTACK_TYPE_MAGIC
    Chaos = Native.ConvertAttackType(5), --ATTACK_TYPE_CHAOS
    Hero = Native.ConvertAttackType(6), --ATTACK_TYPE_HERO
}
return AttackType
