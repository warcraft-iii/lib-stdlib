local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class UnitIntegerField
local UnitIntegerField = {
    DefenseType = 0x75647479, --UNIT_IF_DEFENSE_TYPE
    ArmorType = 0x7561726D, --UNIT_IF_ARMOR_TYPE
    LoopingFadeInRate = 0x756C6669, --UNIT_IF_LOOPING_FADE_IN_RATE
    LoopingFadeOutRate = 0x756C666F, --UNIT_IF_LOOPING_FADE_OUT_RATE
    Agility = 0x75616763, --UNIT_IF_AGILITY
    Intelligence = 0x75696E63, --UNIT_IF_INTELLIGENCE
    Strength = 0x75737463, --UNIT_IF_STRENGTH
    AgilityPermanent = 0x7561676D, --UNIT_IF_AGILITY_PERMANENT
    IntelligencePermanent = 0x75696E6D, --UNIT_IF_INTELLIGENCE_PERMANENT
    StrengthPermanent = 0x7573746D, --UNIT_IF_STRENGTH_PERMANENT
    AgilityWithBonus = 0x75616762, --UNIT_IF_AGILITY_WITH_BONUS
    IntelligenceWithBonus = 0x75696E62, --UNIT_IF_INTELLIGENCE_WITH_BONUS
    StrengthWithBonus = 0x75737462, --UNIT_IF_STRENGTH_WITH_BONUS
    GoldBountyAwardedNumberOfDice = 0x75626469, --UNIT_IF_GOLD_BOUNTY_AWARDED_NUMBER_OF_DICE
    GoldBountyAwardedBase = 0x75626261, --UNIT_IF_GOLD_BOUNTY_AWARDED_BASE
    GoldBountyAwardedSidesPerDie = 0x75627369, --UNIT_IF_GOLD_BOUNTY_AWARDED_SIDES_PER_DIE
    LumberBountyAwardedNumberOfDice = 0x756C6264, --UNIT_IF_LUMBER_BOUNTY_AWARDED_NUMBER_OF_DICE
    LumberBountyAwardedBase = 0x756C6261, --UNIT_IF_LUMBER_BOUNTY_AWARDED_BASE
    LumberBountyAwardedSidesPerDie = 0x756C6273, --UNIT_IF_LUMBER_BOUNTY_AWARDED_SIDES_PER_DIE
    Level = 0x756C6576, --UNIT_IF_LEVEL
    FormationRank = 0x75666F72, --UNIT_IF_FORMATION_RANK
    OrientationInterpolation = 0x756F7269, --UNIT_IF_ORIENTATION_INTERPOLATION
    ElevationSamplePoints = 0x75657074, --UNIT_IF_ELEVATION_SAMPLE_POINTS
    TintingColorRed = 0x75636C72, --UNIT_IF_TINTING_COLOR_RED
    TintingColorGreen = 0x75636C67, --UNIT_IF_TINTING_COLOR_GREEN
    TintingColorBlue = 0x75636C62, --UNIT_IF_TINTING_COLOR_BLUE
    TintingColorAlpha = 0x7563616C, --UNIT_IF_TINTING_COLOR_ALPHA
    MoveType = 0x756D7674, --UNIT_IF_MOVE_TYPE
    TargetedAs = 0x75746172, --UNIT_IF_TARGETED_AS
    UnitClassification = 0x75747970, --UNIT_IF_UNIT_CLASSIFICATION
    HitPointsRegenerationType = 0x75687274, --UNIT_IF_HIT_POINTS_REGENERATION_TYPE
    PlacementPreventedBy = 0x75706172, --UNIT_IF_PLACEMENT_PREVENTED_BY
    PrimaryAttribute = 0x75707261, --UNIT_IF_PRIMARY_ATTRIBUTE
}

UnitIntegerField = converter(Native.ConvertUnitIntegerField, UnitIntegerField)
return UnitIntegerField
