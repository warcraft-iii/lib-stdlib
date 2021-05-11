local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class UnitWeaponIntegerField
local UnitWeaponIntegerField = {
    DamageNumberOfDice = 0x75613164, --UNIT_WEAPON_IF_ATTACK_DAMAGE_NUMBER_OF_DICE
    DamageBase = 0x75613162, --UNIT_WEAPON_IF_ATTACK_DAMAGE_BASE
    DamageSidesPerDie = 0x75613173, --UNIT_WEAPON_IF_ATTACK_DAMAGE_SIDES_PER_DIE
    MaximumNumberOfTargets = 0x75746331, --UNIT_WEAPON_IF_ATTACK_MAXIMUM_NUMBER_OF_TARGETS
    AttackType = 0x75613174, --UNIT_WEAPON_IF_ATTACK_ATTACK_TYPE
    WeaponSound = 0x75637331, --UNIT_WEAPON_IF_ATTACK_WEAPON_SOUND
    AreaOfEffectTargets = 0x75613170, --UNIT_WEAPON_IF_ATTACK_AREA_OF_EFFECT_TARGETS
    TargetsAllowed = 0x75613167, --UNIT_WEAPON_IF_ATTACK_TARGETS_ALLOWED
}

UnitWeaponIntegerField = converter(Native.ConvertUnitWeaponIntegerField, UnitWeaponIntegerField)
return UnitWeaponIntegerField
