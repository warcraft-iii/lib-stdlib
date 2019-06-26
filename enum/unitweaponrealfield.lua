local Native = require('lib.stdlib.native')

---@class UnitWeaponRealField
local UnitWeaponRealField = {
    BackswingPoint = Native.ConvertUnitWeaponRealField(0x75627331), --UNIT_WEAPON_RF_ATTACK_BACKSWING_POINT
    DamagePoint = Native.ConvertUnitWeaponRealField(0x75647031), --UNIT_WEAPON_RF_ATTACK_DAMAGE_POINT
    BaseCooldown = Native.ConvertUnitWeaponRealField(0x75613163), --UNIT_WEAPON_RF_ATTACK_BASE_COOLDOWN
    DamageLossFactor = Native.ConvertUnitWeaponRealField(0x75646C31), --UNIT_WEAPON_RF_ATTACK_DAMAGE_LOSS_FACTOR
    DamageFactorMedium = Native.ConvertUnitWeaponRealField(0x75686431), --UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_MEDIUM
    DamageFactorSmall = Native.ConvertUnitWeaponRealField(0x75716431), --UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_SMALL
    DamageSpillDistance = Native.ConvertUnitWeaponRealField(0x75736431), --UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_DISTANCE
    DamageSpillRadius = Native.ConvertUnitWeaponRealField(0x75737231), --UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_RADIUS
    ProjectileSpeed = Native.ConvertUnitWeaponRealField(0x7561317A), --UNIT_WEAPON_RF_ATTACK_PROJECTILE_SPEED
    ProjectileArc = Native.ConvertUnitWeaponRealField(0x756D6131), --UNIT_WEAPON_RF_ATTACK_PROJECTILE_ARC
    AreaOfEffectFullDamage = Native.ConvertUnitWeaponRealField(0x75613166), --UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_FULL_DAMAGE
    AreaOfEffectMediumDamage = Native.ConvertUnitWeaponRealField(0x75613168), --UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_MEDIUM_DAMAGE
    AreaOfEffectSmallDamage = Native.ConvertUnitWeaponRealField(0x75613171), --UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_SMALL_DAMAGE
    Range = Native.ConvertUnitWeaponRealField(0x75613172), --UNIT_WEAPON_RF_ATTACK_RANGE
}
return UnitWeaponRealField
