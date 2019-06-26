local Native = require('lib.stdlib.native')

---@class UnitWeaponStringField
local UnitWeaponStringField = {
    AttackProjectileArt = Native.ConvertUnitWeaponStringField(0x7561316D), --UNIT_WEAPON_SF_ATTACK_PROJECTILE_ART
}
return UnitWeaponStringField
