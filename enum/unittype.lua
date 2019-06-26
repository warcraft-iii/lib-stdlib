local Native = require('lib.stdlib.native')

---@class UnitType
local UnitType = {
    Hero = Native.ConvertUnitType(0), --UNIT_TYPE_HERO
    Dead = Native.ConvertUnitType(1), --UNIT_TYPE_DEAD
    Structure = Native.ConvertUnitType(2), --UNIT_TYPE_STRUCTURE
    Flying = Native.ConvertUnitType(3), --UNIT_TYPE_FLYING
    Ground = Native.ConvertUnitType(4), --UNIT_TYPE_GROUND
    AttacksFlying = Native.ConvertUnitType(5), --UNIT_TYPE_ATTACKS_FLYING
    AttacksGround = Native.ConvertUnitType(6), --UNIT_TYPE_ATTACKS_GROUND
    MeleeAttacker = Native.ConvertUnitType(7), --UNIT_TYPE_MELEE_ATTACKER
    RangedAttacker = Native.ConvertUnitType(8), --UNIT_TYPE_RANGED_ATTACKER
    Giant = Native.ConvertUnitType(9), --UNIT_TYPE_GIANT
    Summoned = Native.ConvertUnitType(10), --UNIT_TYPE_SUMMONED
    Stunned = Native.ConvertUnitType(11), --UNIT_TYPE_STUNNED
    Plagued = Native.ConvertUnitType(12), --UNIT_TYPE_PLAGUED
    Snared = Native.ConvertUnitType(13), --UNIT_TYPE_SNARED
    Undead = Native.ConvertUnitType(14), --UNIT_TYPE_UNDEAD
    Mechanical = Native.ConvertUnitType(15), --UNIT_TYPE_MECHANICAL
    Peon = Native.ConvertUnitType(16), --UNIT_TYPE_PEON
    Sapper = Native.ConvertUnitType(17), --UNIT_TYPE_SAPPER
    Townhall = Native.ConvertUnitType(18), --UNIT_TYPE_TOWNHALL
    Ancient = Native.ConvertUnitType(19), --UNIT_TYPE_ANCIENT
    Tauren = Native.ConvertUnitType(20), --UNIT_TYPE_TAUREN
    Poisoned = Native.ConvertUnitType(21), --UNIT_TYPE_POISONED
    Polymorphed = Native.ConvertUnitType(22), --UNIT_TYPE_POLYMORPHED
    Sleeping = Native.ConvertUnitType(23), --UNIT_TYPE_SLEEPING
    Resistant = Native.ConvertUnitType(24), --UNIT_TYPE_RESISTANT
    Ethereal = Native.ConvertUnitType(25), --UNIT_TYPE_ETHEREAL
    MagicImmune = Native.ConvertUnitType(26), --UNIT_TYPE_MAGIC_IMMUNE
}
return UnitType
