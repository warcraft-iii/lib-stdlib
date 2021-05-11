local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class UnitWeaponRealField
local UnitWeaponRealField = {
    BackswingPoint = 0x75627331, --UNIT_WEAPON_RF_ATTACK_BACKSWING_POINT
    DamagePoint = 0x75647031, --UNIT_WEAPON_RF_ATTACK_DAMAGE_POINT
    BaseCooldown = 0x75613163, --UNIT_WEAPON_RF_ATTACK_BASE_COOLDOWN
    DamageLossFactor = 0x75646C31, --UNIT_WEAPON_RF_ATTACK_DAMAGE_LOSS_FACTOR
    DamageFactorMedium = 0x75686431, --UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_MEDIUM
    DamageFactorSmall = 0x75716431, --UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_SMALL
    DamageSpillDistance = 0x75736431, --UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_DISTANCE
    DamageSpillRadius = 0x75737231, --UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_RADIUS
    ProjectileSpeed = 0x7561317A, --UNIT_WEAPON_RF_ATTACK_PROJECTILE_SPEED
    ProjectileArc = 0x756D6131, --UNIT_WEAPON_RF_ATTACK_PROJECTILE_ARC
    AreaOfEffectFullDamage = 0x75613166, --UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_FULL_DAMAGE
    AreaOfEffectMediumDamage = 0x75613168, --UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_MEDIUM_DAMAGE
    AreaOfEffectSmallDamage = 0x75613171, --UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_SMALL_DAMAGE
    Range = 0x75613172, --UNIT_WEAPON_RF_ATTACK_RANGE
}

UnitWeaponRealField = converter(Native.ConvertUnitWeaponRealField, UnitWeaponRealField)
return UnitWeaponRealField
