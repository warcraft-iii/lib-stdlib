local Native = require('lib.stdlib.native')

---@class UnitBooleanField
local UnitBooleanField = {
    Raisable = Native.ConvertUnitBooleanField(0x75726169), --UNIT_BF_RAISABLE
    Decayable = Native.ConvertUnitBooleanField(0x75646563), --UNIT_BF_DECAYABLE
    IsABuilding = Native.ConvertUnitBooleanField(0x75626467), --UNIT_BF_IS_A_BUILDING
    UseExtendedLineOfSight = Native.ConvertUnitBooleanField(0x756C6F73), --UNIT_BF_USE_EXTENDED_LINE_OF_SIGHT
    NeutralBuildingShowsMinimapIcon = Native.ConvertUnitBooleanField(0x756E626D), --UNIT_BF_NEUTRAL_BUILDING_SHOWS_MINIMAP_ICON
    HeroHideHeroInterfaceIcon = Native.ConvertUnitBooleanField(0x75686862), --UNIT_BF_HERO_HIDE_HERO_INTERFACE_ICON
    HeroHideHeroMinimapDisplay = Native.ConvertUnitBooleanField(0x7568686D), --UNIT_BF_HERO_HIDE_HERO_MINIMAP_DISPLAY
    HeroHideHeroDeathMessage = Native.ConvertUnitBooleanField(0x75686864), --UNIT_BF_HERO_HIDE_HERO_DEATH_MESSAGE
    HideMinimapDisplay = Native.ConvertUnitBooleanField(0x75686F6D), --UNIT_BF_HIDE_MINIMAP_DISPLAY
    ScaleProjectiles = Native.ConvertUnitBooleanField(0x75736362), --UNIT_BF_SCALE_PROJECTILES
    SelectionCircleOnWater = Native.ConvertUnitBooleanField(0x75736577), --UNIT_BF_SELECTION_CIRCLE_ON_WATER
    HasWaterShadow = Native.ConvertUnitBooleanField(0x75736872), --UNIT_BF_HAS_WATER_SHADOW
}
return UnitBooleanField
