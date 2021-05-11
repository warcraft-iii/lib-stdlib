local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class AttackType
local AttackType = {
    Normal = 0, --ATTACK_TYPE_NORMAL
    Melee = 1, --ATTACK_TYPE_MELEE
    Pierce = 2, --ATTACK_TYPE_PIERCE
    Siege = 3, --ATTACK_TYPE_SIEGE
    Magic = 4, --ATTACK_TYPE_MAGIC
    Chaos = 5, --ATTACK_TYPE_CHAOS
    Hero = 6, --ATTACK_TYPE_HERO
}

AttackType = converter(Native.ConvertAttackType, AttackType)
return AttackType
