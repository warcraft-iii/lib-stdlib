local Native = require('lib.stdlib.native')

---@class UnitWeaponBooleanField
local UnitWeaponBooleanField = {
    ShowUi = Native.ConvertUnitWeaponBooleanField(0x75777531), --UNIT_WEAPON_BF_ATTACK_SHOW_UI
    SEnabled = Native.ConvertUnitWeaponBooleanField(0x7561656E), --UNIT_WEAPON_BF_ATTACKS_ENABLED
    ProjectileHomingEnabled = Native.ConvertUnitWeaponBooleanField(0x756D6831), --UNIT_WEAPON_BF_ATTACK_PROJECTILE_HOMING_ENABLED
}
return UnitWeaponBooleanField
