local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class UnitWeaponBooleanField
local UnitWeaponBooleanField = {
    ShowUi = 0x75777531, --UNIT_WEAPON_BF_ATTACK_SHOW_UI
    SEnabled = 0x7561656E, --UNIT_WEAPON_BF_ATTACKS_ENABLED
    ProjectileHomingEnabled = 0x756D6831, --UNIT_WEAPON_BF_ATTACK_PROJECTILE_HOMING_ENABLED
}

UnitWeaponBooleanField = converter(Native.ConvertUnitWeaponBooleanField, UnitWeaponBooleanField)
return UnitWeaponBooleanField
