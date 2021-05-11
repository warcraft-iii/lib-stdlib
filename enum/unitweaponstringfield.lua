local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class UnitWeaponStringField
local UnitWeaponStringField = {
    AttackProjectileArt = 0x7561316D, --UNIT_WEAPON_SF_ATTACK_PROJECTILE_ART
}

UnitWeaponStringField = converter(Native.ConvertUnitWeaponStringField, UnitWeaponStringField)
return UnitWeaponStringField
