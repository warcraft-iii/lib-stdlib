local Native = require('lib.stdlib.native')

---@class UnitRealField
local UnitRealField = {
    StrengthPerLevel = Native.ConvertUnitRealField(0x75737470), --UNIT_RF_STRENGTH_PER_LEVEL
    AgilityPerLevel = Native.ConvertUnitRealField(0x75616770), --UNIT_RF_AGILITY_PER_LEVEL
    IntelligencePerLevel = Native.ConvertUnitRealField(0x75696E70), --UNIT_RF_INTELLIGENCE_PER_LEVEL
    HitPointsRegenerationRate = Native.ConvertUnitRealField(0x75687072), --UNIT_RF_HIT_POINTS_REGENERATION_RATE
    ManaRegeneration = Native.ConvertUnitRealField(0x756D7072), --UNIT_RF_MANA_REGENERATION
    DeathTime = Native.ConvertUnitRealField(0x7564746D), --UNIT_RF_DEATH_TIME
    FlyHeight = Native.ConvertUnitRealField(0x75667968), --UNIT_RF_FLY_HEIGHT
    TurnRate = Native.ConvertUnitRealField(0x756D7672), --UNIT_RF_TURN_RATE
    ElevationSampleRadius = Native.ConvertUnitRealField(0x75657264), --UNIT_RF_ELEVATION_SAMPLE_RADIUS
    FogOfWarSampleRadius = Native.ConvertUnitRealField(0x75667264), --UNIT_RF_FOG_OF_WAR_SAMPLE_RADIUS
    MaximumPitchAngleDegrees = Native.ConvertUnitRealField(0x756D7870), --UNIT_RF_MAXIMUM_PITCH_ANGLE_DEGREES
    MaximumRollAngleDegrees = Native.ConvertUnitRealField(0x756D7872), --UNIT_RF_MAXIMUM_ROLL_ANGLE_DEGREES
    ScalingValue = Native.ConvertUnitRealField(0x75736361), --UNIT_RF_SCALING_VALUE
    AnimationRunSpeed = Native.ConvertUnitRealField(0x7572756E), --UNIT_RF_ANIMATION_RUN_SPEED
    SelectionScale = Native.ConvertUnitRealField(0x75737363), --UNIT_RF_SELECTION_SCALE
    SelectionCircleHeight = Native.ConvertUnitRealField(0x75736C7A), --UNIT_RF_SELECTION_CIRCLE_HEIGHT
    ShadowImageHeight = Native.ConvertUnitRealField(0x75736868), --UNIT_RF_SHADOW_IMAGE_HEIGHT
    ShadowImageWidth = Native.ConvertUnitRealField(0x75736877), --UNIT_RF_SHADOW_IMAGE_WIDTH
    ShadowImageCenterX = Native.ConvertUnitRealField(0x75736878), --UNIT_RF_SHADOW_IMAGE_CENTER_X
    ShadowImageCenterY = Native.ConvertUnitRealField(0x75736879), --UNIT_RF_SHADOW_IMAGE_CENTER_Y
    AnimationWalkSpeed = Native.ConvertUnitRealField(0x7577616C), --UNIT_RF_ANIMATION_WALK_SPEED
    Defense = Native.ConvertUnitRealField(0x75646663), --UNIT_RF_DEFENSE
    SightRadius = Native.ConvertUnitRealField(0x75736972), --UNIT_RF_SIGHT_RADIUS
    Priority = Native.ConvertUnitRealField(0x75707269), --UNIT_RF_PRIORITY
    Speed = Native.ConvertUnitRealField(0x756D7663), --UNIT_RF_SPEED
    OccluderHeight = Native.ConvertUnitRealField(0x756F6363), --UNIT_RF_OCCLUDER_HEIGHT
    Hp = Native.ConvertUnitRealField(0x75687063), --UNIT_RF_HP
    Mana = Native.ConvertUnitRealField(0x756D7063), --UNIT_RF_MANA
    AcquisitionRange = Native.ConvertUnitRealField(0x75616371), --UNIT_RF_ACQUISITION_RANGE
    CastBackSwing = Native.ConvertUnitRealField(0x75636273), --UNIT_RF_CAST_BACK_SWING
    CastPoint = Native.ConvertUnitRealField(0x75637074), --UNIT_RF_CAST_POINT
    MinimumAttackRange = Native.ConvertUnitRealField(0x75616D6E), --UNIT_RF_MINIMUM_ATTACK_RANGE
}
return UnitRealField
