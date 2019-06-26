local Native = require('lib.stdlib.native')

---@class UnitWeaponIntegerField
local UnitWeaponIntegerField = {
    DamageNumberOfDice = Native.ConvertUnitWeaponIntegerField(0x75613164), --UNIT_WEAPON_IF_ATTACK_DAMAGE_NUMBER_OF_DICE
    DamageBase = Native.ConvertUnitWeaponIntegerField(0x75613162), --UNIT_WEAPON_IF_ATTACK_DAMAGE_BASE
    DamageSidesPerDie = Native.ConvertUnitWeaponIntegerField(0x75613173), --UNIT_WEAPON_IF_ATTACK_DAMAGE_SIDES_PER_DIE
    MaximumNumberOfTargets = Native.ConvertUnitWeaponIntegerField(0x75746331), --UNIT_WEAPON_IF_ATTACK_MAXIMUM_NUMBER_OF_TARGETS
    AttackType = Native.ConvertUnitWeaponIntegerField(0x75613174), --UNIT_WEAPON_IF_ATTACK_ATTACK_TYPE
    WeaponSound = Native.ConvertUnitWeaponIntegerField(0x75637331), --UNIT_WEAPON_IF_ATTACK_WEAPON_SOUND
    AreaOfEffectTargets = Native.ConvertUnitWeaponIntegerField(0x75613170), --UNIT_WEAPON_IF_ATTACK_AREA_OF_EFFECT_TARGETS
    TargetsAllowed = Native.ConvertUnitWeaponIntegerField(0x75613167), --UNIT_WEAPON_IF_ATTACK_TARGETS_ALLOWED
}
return UnitWeaponIntegerField
