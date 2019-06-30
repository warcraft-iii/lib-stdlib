local Native = require('lib.stdlib.native')

---@class Event : Agent
local Event = class('Event', require('lib.stdlib.oop.agent'))

---<static> getEventGameState
---@return GameState
function Event:getEventGameState()
    return Native.GetEventGameState()
end

---<static> getWinningPlayer
---@return Player
function Event:getWinningPlayer()
    return require('lib.stdlib.oop.player'):fromUd(Native.GetWinningPlayer())
end

---<static> getTriggeringRegion
---@return Region
function Event:getTriggeringRegion()
    return require('lib.stdlib.oop.region'):fromUd(Native.GetTriggeringRegion())
end

---<static> getEnteringUnit
---@return Unit
function Event:getEnteringUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetEnteringUnit())
end

---<static> getLeavingUnit
---@return Unit
function Event:getLeavingUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetLeavingUnit())
end

---<static> getTriggeringTrackable
---@return Trackable
function Event:getTriggeringTrackable()
    return require('lib.stdlib.oop.trackable'):fromUd(Native.GetTriggeringTrackable())
end

---<static> getClickedButton
---@return Button
function Event:getClickedButton()
    return require('lib.stdlib.oop.button'):fromUd(Native.GetClickedButton())
end

---<static> getClickedDialog
---@return Dialog
function Event:getClickedDialog()
    return require('lib.stdlib.oop.dialog'):fromUd(Native.GetClickedDialog())
end

---<static> getTournamentFinishSoonTimeRemaining
---@return float
function Event:getTournamentFinishSoonTimeRemaining()
    return Native.GetTournamentFinishSoonTimeRemaining()
end

---<static> getTournamentFinishNowRule
---@return integer
function Event:getTournamentFinishNowRule()
    return Native.GetTournamentFinishNowRule()
end

---<static> getTournamentFinishNowPlayer
---@return Player
function Event:getTournamentFinishNowPlayer()
    return require('lib.stdlib.oop.player'):fromUd(Native.GetTournamentFinishNowPlayer())
end

---<static> getSaveBasicFilename
---@return string
function Event:getSaveBasicFilename()
    return Native.GetSaveBasicFilename()
end

---<static> getTriggerPlayer
---@return Player
function Event:getTriggerPlayer()
    return require('lib.stdlib.oop.player'):fromUd(Native.GetTriggerPlayer())
end

---<static> getLevelingUnit
---@return Unit
function Event:getLevelingUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetLevelingUnit())
end

---<static> getLearningUnit
---@return Unit
function Event:getLearningUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetLearningUnit())
end

---<static> getLearnedSkill
---@return integer
function Event:getLearnedSkill()
    return Native.GetLearnedSkill()
end

---<static> getLearnedSkillLevel
---@return integer
function Event:getLearnedSkillLevel()
    return Native.GetLearnedSkillLevel()
end

---<static> getRevivableUnit
---@return Unit
function Event:getRevivableUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetRevivableUnit())
end

---<static> getRevivingUnit
---@return Unit
function Event:getRevivingUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetRevivingUnit())
end

---<static> getAttacker
---@return Unit
function Event:getAttacker()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetAttacker())
end

---<static> getRescuer
---@return Unit
function Event:getRescuer()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetRescuer())
end

---<static> getDyingUnit
---@return Unit
function Event:getDyingUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetDyingUnit())
end

---<static> getKillingUnit
---@return Unit
function Event:getKillingUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetKillingUnit())
end

---<static> getDecayingUnit
---@return Unit
function Event:getDecayingUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetDecayingUnit())
end

---<static> getConstructingStructure
---@return Unit
function Event:getConstructingStructure()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetConstructingStructure())
end

---<static> getCancelledStructure
---@return Unit
function Event:getCancelledStructure()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetCancelledStructure())
end

---<static> getConstructedStructure
---@return Unit
function Event:getConstructedStructure()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetConstructedStructure())
end

---<static> getResearchingUnit
---@return Unit
function Event:getResearchingUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetResearchingUnit())
end

---<static> getResearched
---@return integer
function Event:getResearched()
    return Native.GetResearched()
end

---<static> getTrainedUnitType
---@return integer
function Event:getTrainedUnitType()
    return Native.GetTrainedUnitType()
end

---<static> getTrainedUnit
---@return Unit
function Event:getTrainedUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetTrainedUnit())
end

---<static> getDetectedUnit
---@return Unit
function Event:getDetectedUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetDetectedUnit())
end

---<static> getSummoningUnit
---@return Unit
function Event:getSummoningUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetSummoningUnit())
end

---<static> getSummonedUnit
---@return Unit
function Event:getSummonedUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetSummonedUnit())
end

---<static> getTransportUnit
---@return Unit
function Event:getTransportUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetTransportUnit())
end

---<static> getLoadedUnit
---@return Unit
function Event:getLoadedUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetLoadedUnit())
end

---<static> getSellingUnit
---@return Unit
function Event:getSellingUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetSellingUnit())
end

---<static> getSoldUnit
---@return Unit
function Event:getSoldUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetSoldUnit())
end

---<static> getBuyingUnit
---@return Unit
function Event:getBuyingUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetBuyingUnit())
end

---<static> getSoldItem
---@return Item
function Event:getSoldItem()
    return require('lib.stdlib.oop.item'):fromUd(Native.GetSoldItem())
end

---<static> getChangingUnit
---@return Unit
function Event:getChangingUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetChangingUnit())
end

---<static> getChangingUnitPrevOwner
---@return Player
function Event:getChangingUnitPrevOwner()
    return require('lib.stdlib.oop.player'):fromUd(Native.GetChangingUnitPrevOwner())
end

---<static> getManipulatingUnit
---@return Unit
function Event:getManipulatingUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetManipulatingUnit())
end

---<static> getManipulatedItem
---@return Item
function Event:getManipulatedItem()
    return require('lib.stdlib.oop.item'):fromUd(Native.GetManipulatedItem())
end

---<static> getOrderedUnit
---@return Unit
function Event:getOrderedUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetOrderedUnit())
end

---<static> getIssuedOrderId
---@return integer
function Event:getIssuedOrderId()
    return Native.GetIssuedOrderId()
end

---<static> getOrderPointX
---@return float
function Event:getOrderPointX()
    return Native.GetOrderPointX()
end

---<static> getOrderPointY
---@return float
function Event:getOrderPointY()
    return Native.GetOrderPointY()
end

---<static> getOrderPointLoc
---@return Location
function Event:getOrderPointLoc()
    return require('lib.stdlib.oop.location'):fromUd(Native.GetOrderPointLoc())
end

---<static> getOrderTarget
---@return Widget
function Event:getOrderTarget()
    return require('lib.stdlib.oop.widget'):fromUd(Native.GetOrderTarget())
end

---<static> getOrderTargetDestructable
---@return Destructable
function Event:getOrderTargetDestructable()
    return require('lib.stdlib.oop.destructable'):fromUd(Native.GetOrderTargetDestructable())
end

---<static> getOrderTargetItem
---@return Item
function Event:getOrderTargetItem()
    return require('lib.stdlib.oop.item'):fromUd(Native.GetOrderTargetItem())
end

---<static> getOrderTargetUnit
---@return Unit
function Event:getOrderTargetUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetOrderTargetUnit())
end

---<static> getSpellAbilityUnit
---@return Unit
function Event:getSpellAbilityUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetSpellAbilityUnit())
end

---<static> getSpellAbilityId
---@return integer
function Event:getSpellAbilityId()
    return Native.GetSpellAbilityId()
end

---<static> getSpellAbility
---@return Ability
function Event:getSpellAbility()
    return require('lib.stdlib.oop.ability'):fromUd(Native.GetSpellAbility())
end

---<static> getSpellTargetLoc
---@return Location
function Event:getSpellTargetLoc()
    return require('lib.stdlib.oop.location'):fromUd(Native.GetSpellTargetLoc())
end

---<static> getSpellTargetX
---@return float
function Event:getSpellTargetX()
    return Native.GetSpellTargetX()
end

---<static> getSpellTargetY
---@return float
function Event:getSpellTargetY()
    return Native.GetSpellTargetY()
end

---<static> getSpellTargetDestructable
---@return Destructable
function Event:getSpellTargetDestructable()
    return require('lib.stdlib.oop.destructable'):fromUd(Native.GetSpellTargetDestructable())
end

---<static> getSpellTargetItem
---@return Item
function Event:getSpellTargetItem()
    return require('lib.stdlib.oop.item'):fromUd(Native.GetSpellTargetItem())
end

---<static> getSpellTargetUnit
---@return Unit
function Event:getSpellTargetUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetSpellTargetUnit())
end

---<static> getEventPlayerState
---@return PlayerState
function Event:getEventPlayerState()
    return Native.GetEventPlayerState()
end

---<static> getEventPlayerChatString
---@return string
function Event:getEventPlayerChatString()
    return Native.GetEventPlayerChatString()
end

---<static> getEventPlayerChatStringMatched
---@return string
function Event:getEventPlayerChatStringMatched()
    return Native.GetEventPlayerChatStringMatched()
end

---<static> getTriggerUnit
---@return Unit
function Event:getTriggerUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetTriggerUnit())
end

---<static> getEventUnitState
---@return UnitState
function Event:getEventUnitState()
    return Native.GetEventUnitState()
end

---<static> getEventDamage
---@return float
function Event:getEventDamage()
    return Native.GetEventDamage()
end

---<static> getEventDamageSource
---@return Unit
function Event:getEventDamageSource()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetEventDamageSource())
end

---<static> getEventDetectingPlayer
---@return Player
function Event:getEventDetectingPlayer()
    return require('lib.stdlib.oop.player'):fromUd(Native.GetEventDetectingPlayer())
end

---<static> getEventTargetUnit
---@return Unit
function Event:getEventTargetUnit()
    return require('lib.stdlib.oop.unit'):fromUd(Native.GetEventTargetUnit())
end

---<static> getTriggerWidget
---@return Widget
function Event:getTriggerWidget()
    return require('lib.stdlib.oop.widget'):fromUd(Native.GetTriggerWidget())
end

---<static> getTriggerDestructable
---@return Destructable
function Event:getTriggerDestructable()
    return require('lib.stdlib.oop.destructable'):fromUd(Native.GetTriggerDestructable())
end

---<static> getTriggerPlayerMouseX
---@return float
function Event:getTriggerPlayerMouseX()
    return Native.BlzGetTriggerPlayerMouseX()
end

---<static> getTriggerPlayerMouseY
---@return float
function Event:getTriggerPlayerMouseY()
    return Native.BlzGetTriggerPlayerMouseY()
end

---<static> getTriggerPlayerMousePosition
---@return Location
function Event:getTriggerPlayerMousePosition()
    return require('lib.stdlib.oop.location'):fromUd(Native.BlzGetTriggerPlayerMousePosition())
end

---<static> getTriggerPlayerMouseButton
---@return MouseButtonType
function Event:getTriggerPlayerMouseButton()
    return Native.BlzGetTriggerPlayerMouseButton()
end

---<static> getTriggerFrame
---@return Frame
function Event:getTriggerFrame()
    return require('lib.stdlib.oop.frame'):fromUd(Native.BlzGetTriggerFrame())
end

---<static> getTriggerFrameEvent
---@return FrameEventType
function Event:getTriggerFrameEvent()
    return Native.BlzGetTriggerFrameEvent()
end

---<static> getTriggerFrameValue
---@return float
function Event:getTriggerFrameValue()
    return Native.BlzGetTriggerFrameValue()
end

---<static> getTriggerFrameText
---@return string
function Event:getTriggerFrameText()
    return Native.BlzGetTriggerFrameText()
end

---<static> getTriggerSyncPrefix
---@return string
function Event:getTriggerSyncPrefix()
    return Native.BlzGetTriggerSyncPrefix()
end

---<static> getTriggerSyncData
---@return string
function Event:getTriggerSyncData()
    return Native.BlzGetTriggerSyncData()
end

---<static> getTriggerPlayerKey
---@return OsKeyType
function Event:getTriggerPlayerKey()
    return Native.BlzGetTriggerPlayerKey()
end

---<static> getTriggerPlayerMetaKey
---@return integer
function Event:getTriggerPlayerMetaKey()
    return Native.BlzGetTriggerPlayerMetaKey()
end

---<static> getTriggerPlayerIsKeyDown
---@return boolean
function Event:getTriggerPlayerIsKeyDown()
    return Native.BlzGetTriggerPlayerIsKeyDown()
end

return Event
