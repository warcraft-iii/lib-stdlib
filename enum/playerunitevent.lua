local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class PlayerUnitEvent
local PlayerUnitEvent = {
    UnitAttacked = 18, --EVENT_PLAYER_UNIT_ATTACKED
    UnitRescued = 19, --EVENT_PLAYER_UNIT_RESCUED
    UnitDeath = 20, --EVENT_PLAYER_UNIT_DEATH
    UnitDecay = 21, --EVENT_PLAYER_UNIT_DECAY
    UnitDetected = 22, --EVENT_PLAYER_UNIT_DETECTED
    UnitHidden = 23, --EVENT_PLAYER_UNIT_HIDDEN
    UnitSelected = 24, --EVENT_PLAYER_UNIT_SELECTED
    UnitDeselected = 25, --EVENT_PLAYER_UNIT_DESELECTED
    UnitConstructStart = 26, --EVENT_PLAYER_UNIT_CONSTRUCT_START
    UnitConstructCancel = 27, --EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL
    UnitConstructFinish = 28, --EVENT_PLAYER_UNIT_CONSTRUCT_FINISH
    UnitUpgradeStart = 29, --EVENT_PLAYER_UNIT_UPGRADE_START
    UnitUpgradeCancel = 30, --EVENT_PLAYER_UNIT_UPGRADE_CANCEL
    UnitUpgradeFinish = 31, --EVENT_PLAYER_UNIT_UPGRADE_FINISH
    UnitTrainStart = 32, --EVENT_PLAYER_UNIT_TRAIN_START
    UnitTrainCancel = 33, --EVENT_PLAYER_UNIT_TRAIN_CANCEL
    UnitTrainFinish = 34, --EVENT_PLAYER_UNIT_TRAIN_FINISH
    UnitResearchStart = 35, --EVENT_PLAYER_UNIT_RESEARCH_START
    UnitResearchCancel = 36, --EVENT_PLAYER_UNIT_RESEARCH_CANCEL
    UnitResearchFinish = 37, --EVENT_PLAYER_UNIT_RESEARCH_FINISH
    UnitIssuedOrder = 38, --EVENT_PLAYER_UNIT_ISSUED_ORDER
    UnitIssuedPointOrder = 39, --EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER
    UnitIssuedTargetOrder = 40, --EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER
    UnitIssuedUnitOrder = 40, --EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER
    HeroLevel = 41, --EVENT_PLAYER_HERO_LEVEL
    HeroSkill = 42, --EVENT_PLAYER_HERO_SKILL
    HeroRevivable = 43, --EVENT_PLAYER_HERO_REVIVABLE
    HeroReviveStart = 44, --EVENT_PLAYER_HERO_REVIVE_START
    HeroReviveCancel = 45, --EVENT_PLAYER_HERO_REVIVE_CANCEL
    HeroReviveFinish = 46, --EVENT_PLAYER_HERO_REVIVE_FINISH
    UnitSummon = 47, --EVENT_PLAYER_UNIT_SUMMON
    UnitDropItem = 48, --EVENT_PLAYER_UNIT_DROP_ITEM
    UnitPickupItem = 49, --EVENT_PLAYER_UNIT_PICKUP_ITEM
    UnitUseItem = 50, --EVENT_PLAYER_UNIT_USE_ITEM
    UnitLoaded = 51, --EVENT_PLAYER_UNIT_LOADED
    UnitDamaged = 308, --EVENT_PLAYER_UNIT_DAMAGED
    UnitDamaging = 315, --EVENT_PLAYER_UNIT_DAMAGING
    UnitSell = 269, --EVENT_PLAYER_UNIT_SELL
    UnitChangeOwner = 270, --EVENT_PLAYER_UNIT_CHANGE_OWNER
    UnitSellItem = 271, --EVENT_PLAYER_UNIT_SELL_ITEM
    UnitSpellChannel = 272, --EVENT_PLAYER_UNIT_SPELL_CHANNEL
    UnitSpellCast = 273, --EVENT_PLAYER_UNIT_SPELL_CAST
    UnitSpellEffect = 274, --EVENT_PLAYER_UNIT_SPELL_EFFECT
    UnitSpellFinish = 275, --EVENT_PLAYER_UNIT_SPELL_FINISH
    UnitSpellEndcast = 276, --EVENT_PLAYER_UNIT_SPELL_ENDCAST
    UnitPawnItem = 277, --EVENT_PLAYER_UNIT_PAWN_ITEM
    UnitStackItem = 319, --EVENT_PLAYER_UNIT_STACK_ITEM
}

PlayerUnitEvent = converter(Native.ConvertPlayerUnitEvent, PlayerUnitEvent)
return PlayerUnitEvent
