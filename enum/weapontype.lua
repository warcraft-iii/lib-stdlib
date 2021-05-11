local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class WeaponType
local WeaponType = {
    Whoknows = 0, --WEAPON_TYPE_WHOKNOWS
    MetalLightChop = 1, --WEAPON_TYPE_METAL_LIGHT_CHOP
    MetalMediumChop = 2, --WEAPON_TYPE_METAL_MEDIUM_CHOP
    MetalHeavyChop = 3, --WEAPON_TYPE_METAL_HEAVY_CHOP
    MetalLightSlice = 4, --WEAPON_TYPE_METAL_LIGHT_SLICE
    MetalMediumSlice = 5, --WEAPON_TYPE_METAL_MEDIUM_SLICE
    MetalHeavySlice = 6, --WEAPON_TYPE_METAL_HEAVY_SLICE
    MetalMediumBash = 7, --WEAPON_TYPE_METAL_MEDIUM_BASH
    MetalHeavyBash = 8, --WEAPON_TYPE_METAL_HEAVY_BASH
    MetalMediumStab = 9, --WEAPON_TYPE_METAL_MEDIUM_STAB
    MetalHeavyStab = 10, --WEAPON_TYPE_METAL_HEAVY_STAB
    WoodLightSlice = 11, --WEAPON_TYPE_WOOD_LIGHT_SLICE
    WoodMediumSlice = 12, --WEAPON_TYPE_WOOD_MEDIUM_SLICE
    WoodHeavySlice = 13, --WEAPON_TYPE_WOOD_HEAVY_SLICE
    WoodLightBash = 14, --WEAPON_TYPE_WOOD_LIGHT_BASH
    WoodMediumBash = 15, --WEAPON_TYPE_WOOD_MEDIUM_BASH
    WoodHeavyBash = 16, --WEAPON_TYPE_WOOD_HEAVY_BASH
    WoodLightStab = 17, --WEAPON_TYPE_WOOD_LIGHT_STAB
    WoodMediumStab = 18, --WEAPON_TYPE_WOOD_MEDIUM_STAB
    ClawLightSlice = 19, --WEAPON_TYPE_CLAW_LIGHT_SLICE
    ClawMediumSlice = 20, --WEAPON_TYPE_CLAW_MEDIUM_SLICE
    ClawHeavySlice = 21, --WEAPON_TYPE_CLAW_HEAVY_SLICE
    AxeMediumChop = 22, --WEAPON_TYPE_AXE_MEDIUM_CHOP
    RockHeavyBash = 23, --WEAPON_TYPE_ROCK_HEAVY_BASH
}

WeaponType = converter(Native.ConvertWeaponType, WeaponType)
return WeaponType
