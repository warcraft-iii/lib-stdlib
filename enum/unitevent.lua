local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class UnitEvent
local UnitEvent = {
    Damaged = 52, --EVENT_UNIT_DAMAGED
    Damaging = 314, --EVENT_UNIT_DAMAGING
    Death = 53, --EVENT_UNIT_DEATH
    Decay = 54, --EVENT_UNIT_DECAY
    Detected = 55, --EVENT_UNIT_DETECTED
    Hidden = 56, --EVENT_UNIT_HIDDEN
    Selected = 57, --EVENT_UNIT_SELECTED
    Deselected = 58, --EVENT_UNIT_DESELECTED
    StateLimit = 59, --EVENT_UNIT_STATE_LIMIT
    AcquiredTarget = 60, --EVENT_UNIT_ACQUIRED_TARGET
    TargetInRange = 61, --EVENT_UNIT_TARGET_IN_RANGE
    Attacked = 62, --EVENT_UNIT_ATTACKED
    Rescued = 63, --EVENT_UNIT_RESCUED
    ConstructCancel = 64, --EVENT_UNIT_CONSTRUCT_CANCEL
    ConstructFinish = 65, --EVENT_UNIT_CONSTRUCT_FINISH
    UpgradeStart = 66, --EVENT_UNIT_UPGRADE_START
    UpgradeCancel = 67, --EVENT_UNIT_UPGRADE_CANCEL
    UpgradeFinish = 68, --EVENT_UNIT_UPGRADE_FINISH
    TrainStart = 69, --EVENT_UNIT_TRAIN_START
    TrainCancel = 70, --EVENT_UNIT_TRAIN_CANCEL
    TrainFinish = 71, --EVENT_UNIT_TRAIN_FINISH
    ResearchStart = 72, --EVENT_UNIT_RESEARCH_START
    ResearchCancel = 73, --EVENT_UNIT_RESEARCH_CANCEL
    ResearchFinish = 74, --EVENT_UNIT_RESEARCH_FINISH
    IssuedOrder = 75, --EVENT_UNIT_ISSUED_ORDER
    IssuedPointOrder = 76, --EVENT_UNIT_ISSUED_POINT_ORDER
    IssuedTargetOrder = 77, --EVENT_UNIT_ISSUED_TARGET_ORDER
    HeroLevel = 78, --EVENT_UNIT_HERO_LEVEL
    HeroSkill = 79, --EVENT_UNIT_HERO_SKILL
    HeroRevivable = 80, --EVENT_UNIT_HERO_REVIVABLE
    HeroReviveStart = 81, --EVENT_UNIT_HERO_REVIVE_START
    HeroReviveCancel = 82, --EVENT_UNIT_HERO_REVIVE_CANCEL
    HeroReviveFinish = 83, --EVENT_UNIT_HERO_REVIVE_FINISH
    Summon = 84, --EVENT_UNIT_SUMMON
    DropItem = 85, --EVENT_UNIT_DROP_ITEM
    PickupItem = 86, --EVENT_UNIT_PICKUP_ITEM
    UseItem = 87, --EVENT_UNIT_USE_ITEM
    Loaded = 88, --EVENT_UNIT_LOADED
    Sell = 286, --EVENT_UNIT_SELL
    ChangeOwner = 287, --EVENT_UNIT_CHANGE_OWNER
    SellItem = 288, --EVENT_UNIT_SELL_ITEM
    SpellChannel = 289, --EVENT_UNIT_SPELL_CHANNEL
    SpellCast = 290, --EVENT_UNIT_SPELL_CAST
    SpellEffect = 291, --EVENT_UNIT_SPELL_EFFECT
    SpellFinish = 292, --EVENT_UNIT_SPELL_FINISH
    SpellEndcast = 293, --EVENT_UNIT_SPELL_ENDCAST
    PawnItem = 294, --EVENT_UNIT_PAWN_ITEM
    StackItem = 318, --EVENT_UNIT_STACK_ITEM
}

UnitEvent = converter(Native.ConvertUnitEvent, UnitEvent)
return UnitEvent
