local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class UnitRealField
local UnitRealField = {
    StrengthPerLevel = 0x75737470, --UNIT_RF_STRENGTH_PER_LEVEL
    AgilityPerLevel = 0x75616770, --UNIT_RF_AGILITY_PER_LEVEL
    IntelligencePerLevel = 0x75696E70, --UNIT_RF_INTELLIGENCE_PER_LEVEL
    HitPointsRegenerationRate = 0x75687072, --UNIT_RF_HIT_POINTS_REGENERATION_RATE
    ManaRegeneration = 0x756D7072, --UNIT_RF_MANA_REGENERATION
    DeathTime = 0x7564746D, --UNIT_RF_DEATH_TIME
    FlyHeight = 0x75667968, --UNIT_RF_FLY_HEIGHT
    TurnRate = 0x756D7672, --UNIT_RF_TURN_RATE
    ElevationSampleRadius = 0x75657264, --UNIT_RF_ELEVATION_SAMPLE_RADIUS
    FogOfWarSampleRadius = 0x75667264, --UNIT_RF_FOG_OF_WAR_SAMPLE_RADIUS
    MaximumPitchAngleDegrees = 0x756D7870, --UNIT_RF_MAXIMUM_PITCH_ANGLE_DEGREES
    MaximumRollAngleDegrees = 0x756D7872, --UNIT_RF_MAXIMUM_ROLL_ANGLE_DEGREES
    ScalingValue = 0x75736361, --UNIT_RF_SCALING_VALUE
    AnimationRunSpeed = 0x7572756E, --UNIT_RF_ANIMATION_RUN_SPEED
    SelectionScale = 0x75737363, --UNIT_RF_SELECTION_SCALE
    SelectionCircleHeight = 0x75736C7A, --UNIT_RF_SELECTION_CIRCLE_HEIGHT
    ShadowImageHeight = 0x75736868, --UNIT_RF_SHADOW_IMAGE_HEIGHT
    ShadowImageWidth = 0x75736877, --UNIT_RF_SHADOW_IMAGE_WIDTH
    ShadowImageCenterX = 0x75736878, --UNIT_RF_SHADOW_IMAGE_CENTER_X
    ShadowImageCenterY = 0x75736879, --UNIT_RF_SHADOW_IMAGE_CENTER_Y
    AnimationWalkSpeed = 0x7577616C, --UNIT_RF_ANIMATION_WALK_SPEED
    Defense = 0x75646663, --UNIT_RF_DEFENSE
    SightRadius = 0x75736972, --UNIT_RF_SIGHT_RADIUS
    Priority = 0x75707269, --UNIT_RF_PRIORITY
    Speed = 0x756D7663, --UNIT_RF_SPEED
    OccluderHeight = 0x756F6363, --UNIT_RF_OCCLUDER_HEIGHT
    Hp = 0x75687063, --UNIT_RF_HP
    Mana = 0x756D7063, --UNIT_RF_MANA
    AcquisitionRange = 0x75616371, --UNIT_RF_ACQUISITION_RANGE
    CastBackSwing = 0x75636273, --UNIT_RF_CAST_BACK_SWING
    CastPoint = 0x75637074, --UNIT_RF_CAST_POINT
    MinimumAttackRange = 0x75616D6E, --UNIT_RF_MINIMUM_ATTACK_RANGE
}

UnitRealField = converter(Native.ConvertUnitRealField, UnitRealField)
return UnitRealField
