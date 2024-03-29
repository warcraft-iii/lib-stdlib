local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class AbilityIntegerLevelField
local AbilityIntegerLevelField = {
    ManaCost = 0x616D6373, --ABILITY_ILF_MANA_COST
    NumberOfWaves = 0x48627A31, --ABILITY_ILF_NUMBER_OF_WAVES
    NumberOfShards = 0x48627A33, --ABILITY_ILF_NUMBER_OF_SHARDS
    NumberOfUnitsTeleported = 0x486D7431, --ABILITY_ILF_NUMBER_OF_UNITS_TELEPORTED
    SummonedUnitCountHwe2 = 0x48776532, --ABILITY_ILF_SUMMONED_UNIT_COUNT_HWE2
    NumberOfImages = 0x4F6D6931, --ABILITY_ILF_NUMBER_OF_IMAGES
    NumberOfCorpsesRaisedUan1 = 0x55616E31, --ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_UAN1
    MorphingFlags = 0x456D6532, --ABILITY_ILF_MORPHING_FLAGS
    StrengthBonusNrg5 = 0x4E726735, --ABILITY_ILF_STRENGTH_BONUS_NRG5
    DefenseBonusNrg6 = 0x4E726736, --ABILITY_ILF_DEFENSE_BONUS_NRG6
    NumberOfTargetsHit = 0x4F636C32, --ABILITY_ILF_NUMBER_OF_TARGETS_HIT
    DetectionTypeOfs1 = 0x4F667331, --ABILITY_ILF_DETECTION_TYPE_OFS1
    NumberOfSummonedUnitsOsf2 = 0x4F736632, --ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_OSF2
    NumberOfSummonedUnitsEfn1 = 0x45666E31, --ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_EFN1
    NumberOfCorpsesRaisedHre1 = 0x48726531, --ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_HRE1
    StackFlags = 0x48636134, --ABILITY_ILF_STACK_FLAGS
    MinimumNumberOfUnits = 0x4E647032, --ABILITY_ILF_MINIMUM_NUMBER_OF_UNITS
    MaximumNumberOfUnitsNdp3 = 0x4E647033, --ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_NDP3
    NumberOfUnitsCreatedNrc2 = 0x4E726332, --ABILITY_ILF_NUMBER_OF_UNITS_CREATED_NRC2
    ShieldLife = 0x416D7333, --ABILITY_ILF_SHIELD_LIFE
    ManaLossAms4 = 0x416D7334, --ABILITY_ILF_MANA_LOSS_AMS4
    GoldPerIntervalBgm1 = 0x42676D31, --ABILITY_ILF_GOLD_PER_INTERVAL_BGM1
    MaxNumberOfMiners = 0x42676D33, --ABILITY_ILF_MAX_NUMBER_OF_MINERS
    CargoCapacity = 0x43617231, --ABILITY_ILF_CARGO_CAPACITY
    MaximumCreepLevelDev3 = 0x44657633, --ABILITY_ILF_MAXIMUM_CREEP_LEVEL_DEV3
    MaxCreepLevelDev1 = 0x44657631, --ABILITY_ILF_MAX_CREEP_LEVEL_DEV1
    GoldPerIntervalEgm1 = 0x45676D31, --ABILITY_ILF_GOLD_PER_INTERVAL_EGM1
    DefenseReduction = 0x46616531, --ABILITY_ILF_DEFENSE_REDUCTION
    DetectionTypeFla1 = 0x466C6131, --ABILITY_ILF_DETECTION_TYPE_FLA1
    FlareCount = 0x466C6133, --ABILITY_ILF_FLARE_COUNT
    MaxGold = 0x476C6431, --ABILITY_ILF_MAX_GOLD
    MiningCapacity = 0x476C6433, --ABILITY_ILF_MINING_CAPACITY
    MaximumNumberOfCorpsesGyd1 = 0x47796431, --ABILITY_ILF_MAXIMUM_NUMBER_OF_CORPSES_GYD1
    DamageToTree = 0x48617231, --ABILITY_ILF_DAMAGE_TO_TREE
    LumberCapacity = 0x48617232, --ABILITY_ILF_LUMBER_CAPACITY
    GoldCapacity = 0x48617233, --ABILITY_ILF_GOLD_CAPACITY
    DefenseIncreaseInf2 = 0x496E6632, --ABILITY_ILF_DEFENSE_INCREASE_INF2
    InteractionType = 0x4E657532, --ABILITY_ILF_INTERACTION_TYPE
    GoldCostNdt1 = 0x4E647431, --ABILITY_ILF_GOLD_COST_NDT1
    LumberCostNdt2 = 0x4E647432, --ABILITY_ILF_LUMBER_COST_NDT2
    DetectionTypeNdt3 = 0x4E647433, --ABILITY_ILF_DETECTION_TYPE_NDT3
    StackingTypePoi4 = 0x506F6934, --ABILITY_ILF_STACKING_TYPE_POI4
    StackingTypePoa5 = 0x506F6135, --ABILITY_ILF_STACKING_TYPE_POA5
    MaximumCreepLevelPly1 = 0x506C7931, --ABILITY_ILF_MAXIMUM_CREEP_LEVEL_PLY1
    MaximumCreepLevelPos1 = 0x506F7331, --ABILITY_ILF_MAXIMUM_CREEP_LEVEL_POS1
    MovementUpdateFrequencyPrg1 = 0x50726731, --ABILITY_ILF_MOVEMENT_UPDATE_FREQUENCY_PRG1
    AttackUpdateFrequencyPrg2 = 0x50726732, --ABILITY_ILF_ATTACK_UPDATE_FREQUENCY_PRG2
    ManaLossPrg6 = 0x50726736, --ABILITY_ILF_MANA_LOSS_PRG6
    UnitsSummonedTypeOne = 0x52616931, --ABILITY_ILF_UNITS_SUMMONED_TYPE_ONE
    UnitsSummonedTypeTwo = 0x52616932, --ABILITY_ILF_UNITS_SUMMONED_TYPE_TWO
    MaxUnitsSummoned = 0x55636235, --ABILITY_ILF_MAX_UNITS_SUMMONED
    AllowWhenFullRej3 = 0x52656A33, --ABILITY_ILF_ALLOW_WHEN_FULL_REJ3
    MaximumUnitsChargedToCaster = 0x52706235, --ABILITY_ILF_MAXIMUM_UNITS_CHARGED_TO_CASTER
    MaximumUnitsAffected = 0x52706236, --ABILITY_ILF_MAXIMUM_UNITS_AFFECTED
    DefenseIncreaseRoa2 = 0x526F6132, --ABILITY_ILF_DEFENSE_INCREASE_ROA2
    MaxUnitsRoa7 = 0x526F6137, --ABILITY_ILF_MAX_UNITS_ROA7
    RootedWeapons = 0x526F6F31, --ABILITY_ILF_ROOTED_WEAPONS
    UprootedWeapons = 0x526F6F32, --ABILITY_ILF_UPROOTED_WEAPONS
    UprootedDefenseType = 0x526F6F34, --ABILITY_ILF_UPROOTED_DEFENSE_TYPE
    AccumulationStep = 0x53616C32, --ABILITY_ILF_ACCUMULATION_STEP
    NumberOfOwls = 0x45736E34, --ABILITY_ILF_NUMBER_OF_OWLS
    StackingTypeSpo4 = 0x53706F34, --ABILITY_ILF_STACKING_TYPE_SPO4
    NumberOfUnits = 0x536F6431, --ABILITY_ILF_NUMBER_OF_UNITS
    SpiderCapacity = 0x53706131, --ABILITY_ILF_SPIDER_CAPACITY
    IntervalsBeforeChangingTrees = 0x57686132, --ABILITY_ILF_INTERVALS_BEFORE_CHANGING_TREES
    AgilityBonus = 0x49616769, --ABILITY_ILF_AGILITY_BONUS
    IntelligenceBonus = 0x49696E74, --ABILITY_ILF_INTELLIGENCE_BONUS
    StrengthBonusIstr = 0x49737472, --ABILITY_ILF_STRENGTH_BONUS_ISTR
    AttackBonus = 0x49617474, --ABILITY_ILF_ATTACK_BONUS
    DefenseBonusIdef = 0x49646566, --ABILITY_ILF_DEFENSE_BONUS_IDEF
    Summon1Amount = 0x49736E31, --ABILITY_ILF_SUMMON_1_AMOUNT
    Summon2Amount = 0x49736E32, --ABILITY_ILF_SUMMON_2_AMOUNT
    ExperienceGained = 0x49787067, --ABILITY_ILF_EXPERIENCE_GAINED
    HitPointsGainedIhpg = 0x49687067, --ABILITY_ILF_HIT_POINTS_GAINED_IHPG
    ManaPointsGainedImpg = 0x496D7067, --ABILITY_ILF_MANA_POINTS_GAINED_IMPG
    HitPointsGainedIhp2 = 0x49687032, --ABILITY_ILF_HIT_POINTS_GAINED_IHP2
    ManaPointsGainedImp2 = 0x496D7032, --ABILITY_ILF_MANA_POINTS_GAINED_IMP2
    DamageBonusDice = 0x49646963, --ABILITY_ILF_DAMAGE_BONUS_DICE
    ArmorPenaltyIarp = 0x49617270, --ABILITY_ILF_ARMOR_PENALTY_IARP
    EnabledAttackIndexIob5 = 0x496F6235, --ABILITY_ILF_ENABLED_ATTACK_INDEX_IOB5
    LevelsGained = 0x496C6576, --ABILITY_ILF_LEVELS_GAINED
    MaxLifeGained = 0x496C6966, --ABILITY_ILF_MAX_LIFE_GAINED
    MaxManaGained = 0x496D616E, --ABILITY_ILF_MAX_MANA_GAINED
    GoldGiven = 0x49676F6C, --ABILITY_ILF_GOLD_GIVEN
    LumberGiven = 0x496C756D, --ABILITY_ILF_LUMBER_GIVEN
    DetectionTypeIfa1 = 0x49666131, --ABILITY_ILF_DETECTION_TYPE_IFA1
    MaximumCreepLevelIcre = 0x49637265, --ABILITY_ILF_MAXIMUM_CREEP_LEVEL_ICRE
    MovementSpeedBonus = 0x496D7662, --ABILITY_ILF_MOVEMENT_SPEED_BONUS
    HitPointsRegeneratedPerSecond = 0x49687072, --ABILITY_ILF_HIT_POINTS_REGENERATED_PER_SECOND
    SightRangeBonus = 0x49736962, --ABILITY_ILF_SIGHT_RANGE_BONUS
    DamagePerDuration = 0x49636664, --ABILITY_ILF_DAMAGE_PER_DURATION
    ManaUsedPerSecond = 0x4963666D, --ABILITY_ILF_MANA_USED_PER_SECOND
    ExtraManaRequired = 0x49636678, --ABILITY_ILF_EXTRA_MANA_REQUIRED
    DetectionRadiusIdet = 0x49646574, --ABILITY_ILF_DETECTION_RADIUS_IDET
    ManaLossPerUnitIdim = 0x4964696D, --ABILITY_ILF_MANA_LOSS_PER_UNIT_IDIM
    DamageToSummonedUnitsIdid = 0x49646964, --ABILITY_ILF_DAMAGE_TO_SUMMONED_UNITS_IDID
    MaximumNumberOfUnitsIrec = 0x49726563, --ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_IREC
    DelayAfterDeathSeconds = 0x49726364, --ABILITY_ILF_DELAY_AFTER_DEATH_SECONDS
    RestoredLife = 0x69726332, --ABILITY_ILF_RESTORED_LIFE
    RestoredMana1ForCurrent = 0x69726333, --ABILITY_ILF_RESTORED_MANA__1_FOR_CURRENT
    HitPointsRestored = 0x49687073, --ABILITY_ILF_HIT_POINTS_RESTORED
    ManaPointsRestored = 0x496D7073, --ABILITY_ILF_MANA_POINTS_RESTORED
    MaximumNumberOfUnitsItpm = 0x4974706D, --ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_ITPM
    NumberOfCorpsesRaisedCad1 = 0x43616431, --ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_CAD1
    TerrainDeformationDurationMs = 0x57727333, --ABILITY_ILF_TERRAIN_DEFORMATION_DURATION_MS
    MaximumUnits = 0x55647331, --ABILITY_ILF_MAXIMUM_UNITS
    DetectionTypeDet1 = 0x44657431, --ABILITY_ILF_DETECTION_TYPE_DET1
    GoldCostPerStructure = 0x4E737031, --ABILITY_ILF_GOLD_COST_PER_STRUCTURE
    LumberCostPerUse = 0x4E737032, --ABILITY_ILF_LUMBER_COST_PER_USE
    DetectionTypeNsp3 = 0x4E737033, --ABILITY_ILF_DETECTION_TYPE_NSP3
    NumberOfSwarmUnits = 0x556C7331, --ABILITY_ILF_NUMBER_OF_SWARM_UNITS
    MaxSwarmUnitsPerTarget = 0x556C7333, --ABILITY_ILF_MAX_SWARM_UNITS_PER_TARGET
    NumberOfSummonedUnitsNba2 = 0x4E626132, --ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_NBA2
    MaximumCreepLevelNch1 = 0x4E636831, --ABILITY_ILF_MAXIMUM_CREEP_LEVEL_NCH1
    AttacksPrevented = 0x4E736931, --ABILITY_ILF_ATTACKS_PREVENTED
    MaximumNumberOfTargetsEfk3 = 0x45666B33, --ABILITY_ILF_MAXIMUM_NUMBER_OF_TARGETS_EFK3
    NumberOfSummonedUnitsEsv1 = 0x45737631, --ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_ESV1
    MaximumNumberOfCorpsesExh1 = 0x65786831, --ABILITY_ILF_MAXIMUM_NUMBER_OF_CORPSES_EXH1
    ItemCapacity = 0x696E7631, --ABILITY_ILF_ITEM_CAPACITY
    MaximumNumberOfTargetsSpl2 = 0x73706C32, --ABILITY_ILF_MAXIMUM_NUMBER_OF_TARGETS_SPL2
    AllowWhenFullIrl3 = 0x69726C33, --ABILITY_ILF_ALLOW_WHEN_FULL_IRL3
    MaximumDispelledUnits = 0x69646333, --ABILITY_ILF_MAXIMUM_DISPELLED_UNITS
    NumberOfLures = 0x696D6F31, --ABILITY_ILF_NUMBER_OF_LURES
    NewTimeOfDayHour = 0x69637431, --ABILITY_ILF_NEW_TIME_OF_DAY_HOUR
    NewTimeOfDayMinute = 0x69637432, --ABILITY_ILF_NEW_TIME_OF_DAY_MINUTE
    NumberOfUnitsCreatedMec1 = 0x6D656331, --ABILITY_ILF_NUMBER_OF_UNITS_CREATED_MEC1
    MinimumSpells = 0x73706233, --ABILITY_ILF_MINIMUM_SPELLS
    MaximumSpells = 0x73706234, --ABILITY_ILF_MAXIMUM_SPELLS
    DisabledAttackIndex = 0x67726133, --ABILITY_ILF_DISABLED_ATTACK_INDEX
    EnabledAttackIndexGra4 = 0x67726134, --ABILITY_ILF_ENABLED_ATTACK_INDEX_GRA4
    MaximumAttacks = 0x67726135, --ABILITY_ILF_MAXIMUM_ATTACKS
    BuildingTypesAllowedNpr1 = 0x4E707231, --ABILITY_ILF_BUILDING_TYPES_ALLOWED_NPR1
    BuildingTypesAllowedNsa1 = 0x4E736131, --ABILITY_ILF_BUILDING_TYPES_ALLOWED_NSA1
    AttackModification = 0x49616131, --ABILITY_ILF_ATTACK_MODIFICATION
    SummonedUnitCountNpa5 = 0x4E706135, --ABILITY_ILF_SUMMONED_UNIT_COUNT_NPA5
    UpgradeLevels = 0x49676C31, --ABILITY_ILF_UPGRADE_LEVELS
    NumberOfSummonedUnitsNdo2 = 0x4E646F32, --ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_NDO2
    BeastsPerSecond = 0x4E737431, --ABILITY_ILF_BEASTS_PER_SECOND
    TargetType = 0x4E636C32, --ABILITY_ILF_TARGET_TYPE
    Options = 0x4E636C33, --ABILITY_ILF_OPTIONS
    ArmorPenaltyNab3 = 0x4E616233, --ABILITY_ILF_ARMOR_PENALTY_NAB3
    WaveCountNhs6 = 0x4E687336, --ABILITY_ILF_WAVE_COUNT_NHS6
    MaxCreepLevelNtm3 = 0x4E746D33, --ABILITY_ILF_MAX_CREEP_LEVEL_NTM3
    MissileCount = 0x4E637333, --ABILITY_ILF_MISSILE_COUNT
    SplitAttackCount = 0x4E6C6D33, --ABILITY_ILF_SPLIT_ATTACK_COUNT
    GenerationCount = 0x4E6C6D36, --ABILITY_ILF_GENERATION_COUNT
    RockRingCount = 0x4E766331, --ABILITY_ILF_ROCK_RING_COUNT
    WaveCountNvc2 = 0x4E766332, --ABILITY_ILF_WAVE_COUNT_NVC2
    PreferHostilesTau1 = 0x54617531, --ABILITY_ILF_PREFER_HOSTILES_TAU1
    PreferFriendliesTau2 = 0x54617532, --ABILITY_ILF_PREFER_FRIENDLIES_TAU2
    MaxUnitsTau3 = 0x54617533, --ABILITY_ILF_MAX_UNITS_TAU3
    NumberOfPulses = 0x54617534, --ABILITY_ILF_NUMBER_OF_PULSES
    SummonedUnitTypeHwe1 = 0x48776531, --ABILITY_ILF_SUMMONED_UNIT_TYPE_HWE1
    SummonedUnitUin4 = 0x55696E34, --ABILITY_ILF_SUMMONED_UNIT_UIN4
    SummonedUnitOsf1 = 0x4F736631, --ABILITY_ILF_SUMMONED_UNIT_OSF1
    SummonedUnitTypeEfnu = 0x45666E75, --ABILITY_ILF_SUMMONED_UNIT_TYPE_EFNU
    SummonedUnitTypeNbau = 0x4E626175, --ABILITY_ILF_SUMMONED_UNIT_TYPE_NBAU
    SummonedUnitTypeNtou = 0x4E746F75, --ABILITY_ILF_SUMMONED_UNIT_TYPE_NTOU
    SummonedUnitTypeEsvu = 0x45737675, --ABILITY_ILF_SUMMONED_UNIT_TYPE_ESVU
    SummonedUnitTypes = 0x4E656631, --ABILITY_ILF_SUMMONED_UNIT_TYPES
    SummonedUnitTypeNdou = 0x4E646F75, --ABILITY_ILF_SUMMONED_UNIT_TYPE_NDOU
    AlternateFormUnitEmeu = 0x456D6575, --ABILITY_ILF_ALTERNATE_FORM_UNIT_EMEU
    PlagueWardUnitType = 0x41706C75, --ABILITY_ILF_PLAGUE_WARD_UNIT_TYPE
    AllowedUnitTypeBtl1 = 0x42746C31, --ABILITY_ILF_ALLOWED_UNIT_TYPE_BTL1
    NewUnitType = 0x43686131, --ABILITY_ILF_NEW_UNIT_TYPE
    ResultingUnitTypeEnt1 = 0x656E7431, --ABILITY_ILF_RESULTING_UNIT_TYPE_ENT1
    CorpseUnitType = 0x47796475, --ABILITY_ILF_CORPSE_UNIT_TYPE
    AllowedUnitTypeLoa1 = 0x4C6F6131, --ABILITY_ILF_ALLOWED_UNIT_TYPE_LOA1
    UnitTypeForLimitCheck = 0x52616975, --ABILITY_ILF_UNIT_TYPE_FOR_LIMIT_CHECK
    WardUnitTypeStau = 0x53746175, --ABILITY_ILF_WARD_UNIT_TYPE_STAU
    EffectAbility = 0x496F6275, --ABILITY_ILF_EFFECT_ABILITY
    ConversionUnit = 0x4E646332, --ABILITY_ILF_CONVERSION_UNIT
    UnitToPreserve = 0x4E736C31, --ABILITY_ILF_UNIT_TO_PRESERVE
    UnitTypeAllowed = 0x43686C31, --ABILITY_ILF_UNIT_TYPE_ALLOWED
    SwarmUnitType = 0x556C7375, --ABILITY_ILF_SWARM_UNIT_TYPE
    ResultingUnitTypeCoau = 0x636F6175, --ABILITY_ILF_RESULTING_UNIT_TYPE_COAU
    UnitTypeExhu = 0x65786875, --ABILITY_ILF_UNIT_TYPE_EXHU
    WardUnitTypeHwdu = 0x68776475, --ABILITY_ILF_WARD_UNIT_TYPE_HWDU
    LureUnitType = 0x696D6F75, --ABILITY_ILF_LURE_UNIT_TYPE
    UnitTypeIpmu = 0x69706D75, --ABILITY_ILF_UNIT_TYPE_IPMU
    FactoryUnitId = 0x4E737975, --ABILITY_ILF_FACTORY_UNIT_ID
    SpawnUnitIdNfyu = 0x4E667975, --ABILITY_ILF_SPAWN_UNIT_ID_NFYU
    DestructibleId = 0x4E766375, --ABILITY_ILF_DESTRUCTIBLE_ID
    UpgradeType = 0x49676C75, --ABILITY_ILF_UPGRADE_TYPE
}

AbilityIntegerLevelField = converter(Native.ConvertAbilityIntegerLevelField, AbilityIntegerLevelField)
return AbilityIntegerLevelField
