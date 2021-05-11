local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class UnitType
local UnitType = {
    Hero = 0, --UNIT_TYPE_HERO
    Dead = 1, --UNIT_TYPE_DEAD
    Structure = 2, --UNIT_TYPE_STRUCTURE
    Flying = 3, --UNIT_TYPE_FLYING
    Ground = 4, --UNIT_TYPE_GROUND
    AttacksFlying = 5, --UNIT_TYPE_ATTACKS_FLYING
    AttacksGround = 6, --UNIT_TYPE_ATTACKS_GROUND
    MeleeAttacker = 7, --UNIT_TYPE_MELEE_ATTACKER
    RangedAttacker = 8, --UNIT_TYPE_RANGED_ATTACKER
    Giant = 9, --UNIT_TYPE_GIANT
    Summoned = 10, --UNIT_TYPE_SUMMONED
    Stunned = 11, --UNIT_TYPE_STUNNED
    Plagued = 12, --UNIT_TYPE_PLAGUED
    Snared = 13, --UNIT_TYPE_SNARED
    Undead = 14, --UNIT_TYPE_UNDEAD
    Mechanical = 15, --UNIT_TYPE_MECHANICAL
    Peon = 16, --UNIT_TYPE_PEON
    Sapper = 17, --UNIT_TYPE_SAPPER
    Townhall = 18, --UNIT_TYPE_TOWNHALL
    Ancient = 19, --UNIT_TYPE_ANCIENT
    Tauren = 20, --UNIT_TYPE_TAUREN
    Poisoned = 21, --UNIT_TYPE_POISONED
    Polymorphed = 22, --UNIT_TYPE_POLYMORPHED
    Sleeping = 23, --UNIT_TYPE_SLEEPING
    Resistant = 24, --UNIT_TYPE_RESISTANT
    Ethereal = 25, --UNIT_TYPE_ETHEREAL
    MagicImmune = 26, --UNIT_TYPE_MAGIC_IMMUNE
}

UnitType = converter(Native.ConvertUnitType, UnitType)
return UnitType
