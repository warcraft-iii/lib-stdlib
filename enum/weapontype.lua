local Native = require('lib.stdlib.native')

---@class WeaponType
local WeaponType = {
    Whoknows = Native.ConvertWeaponType(0), --WEAPON_TYPE_WHOKNOWS
    MetalLightChop = Native.ConvertWeaponType(1), --WEAPON_TYPE_METAL_LIGHT_CHOP
    MetalMediumChop = Native.ConvertWeaponType(2), --WEAPON_TYPE_METAL_MEDIUM_CHOP
    MetalHeavyChop = Native.ConvertWeaponType(3), --WEAPON_TYPE_METAL_HEAVY_CHOP
    MetalLightSlice = Native.ConvertWeaponType(4), --WEAPON_TYPE_METAL_LIGHT_SLICE
    MetalMediumSlice = Native.ConvertWeaponType(5), --WEAPON_TYPE_METAL_MEDIUM_SLICE
    MetalHeavySlice = Native.ConvertWeaponType(6), --WEAPON_TYPE_METAL_HEAVY_SLICE
    MetalMediumBash = Native.ConvertWeaponType(7), --WEAPON_TYPE_METAL_MEDIUM_BASH
    MetalHeavyBash = Native.ConvertWeaponType(8), --WEAPON_TYPE_METAL_HEAVY_BASH
    MetalMediumStab = Native.ConvertWeaponType(9), --WEAPON_TYPE_METAL_MEDIUM_STAB
    MetalHeavyStab = Native.ConvertWeaponType(10), --WEAPON_TYPE_METAL_HEAVY_STAB
    WoodLightSlice = Native.ConvertWeaponType(11), --WEAPON_TYPE_WOOD_LIGHT_SLICE
    WoodMediumSlice = Native.ConvertWeaponType(12), --WEAPON_TYPE_WOOD_MEDIUM_SLICE
    WoodHeavySlice = Native.ConvertWeaponType(13), --WEAPON_TYPE_WOOD_HEAVY_SLICE
    WoodLightBash = Native.ConvertWeaponType(14), --WEAPON_TYPE_WOOD_LIGHT_BASH
    WoodMediumBash = Native.ConvertWeaponType(15), --WEAPON_TYPE_WOOD_MEDIUM_BASH
    WoodHeavyBash = Native.ConvertWeaponType(16), --WEAPON_TYPE_WOOD_HEAVY_BASH
    WoodLightStab = Native.ConvertWeaponType(17), --WEAPON_TYPE_WOOD_LIGHT_STAB
    WoodMediumStab = Native.ConvertWeaponType(18), --WEAPON_TYPE_WOOD_MEDIUM_STAB
    ClawLightSlice = Native.ConvertWeaponType(19), --WEAPON_TYPE_CLAW_LIGHT_SLICE
    ClawMediumSlice = Native.ConvertWeaponType(20), --WEAPON_TYPE_CLAW_MEDIUM_SLICE
    ClawHeavySlice = Native.ConvertWeaponType(21), --WEAPON_TYPE_CLAW_HEAVY_SLICE
    AxeMediumChop = Native.ConvertWeaponType(22), --WEAPON_TYPE_AXE_MEDIUM_CHOP
    RockHeavyBash = Native.ConvertWeaponType(23), --WEAPON_TYPE_ROCK_HEAVY_BASH
}
return WeaponType
