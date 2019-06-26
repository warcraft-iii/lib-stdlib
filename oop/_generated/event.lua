local Native = require('lib.stdlib.native')
local Player = require('lib.stdlib.oop.player')
local Region = require('lib.stdlib.oop.region')
local Unit = require('lib.stdlib.oop.unit')
local Trackable = require('lib.stdlib.oop.trackable')
local Button = require('lib.stdlib.oop.button')
local Dialog = require('lib.stdlib.oop.dialog')
local Item = require('lib.stdlib.oop.item')
local Location = require('lib.stdlib.oop.location')
local Widget = require('lib.stdlib.oop.widget')
local Destructable = require('lib.stdlib.oop.destructable')
local Ability = require('lib.stdlib.oop.ability')
local Frame = require('lib.stdlib.oop.frame')

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
    return Player:fromUd(Native.GetWinningPlayer())
end

---<static> getTriggeringRegion
---@return Region
function Event:getTriggeringRegion()
    return Region:fromUd(Native.GetTriggeringRegion())
end

---<static> getEnteringUnit
---@return Unit
function Event:getEnteringUnit()
    return Unit:fromUd(Native.GetEnteringUnit())
end

---<static> getLeavingUnit
---@return Unit
function Event:getLeavingUnit()
    return Unit:fromUd(Native.GetLeavingUnit())
end

---<static> getTriggeringTrackable
---@return Trackable
function Event:getTriggeringTrackable()
    return Trackable:fromUd(Native.GetTriggeringTrackable())
end

---<static> getClickedButton
---@return Button
function Event:getClickedButton()
    return Button:fromUd(Native.GetClickedButton())
end

---<static> getClickedDialog
---@return Dialog
function Event:getClickedDialog()
    return Dialog:fromUd(Native.GetClickedDialog())
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
    return Player:fromUd(Native.GetTournamentFinishNowPlayer())
end

---<static> getSaveBasicFilename
---@return string
function Event:getSaveBasicFilename()
    return Native.GetSaveBasicFilename()
end

---<static> getTriggerPlayer
---@return Player
function Event:getTriggerPlayer()
    return Player:fromUd(Native.GetTriggerPlayer())
end

---<static> getLevelingUnit
---@return Unit
function Event:getLevelingUnit()
    return Unit:fromUd(Native.GetLevelingUnit())
end

---<static> getLearningUnit
---@return Unit
function Event:getLearningUnit()
    return Unit:fromUd(Native.GetLearningUnit())
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
    return Unit:fromUd(Native.GetRevivableUnit())
end

---<static> getRevivingUnit
---@return Unit
function Event:getRevivingUnit()
    return Unit:fromUd(Native.GetRevivingUnit())
end

---<static> getAttacker
---@return Unit
function Event:getAttacker()
    return Unit:fromUd(Native.GetAttacker())
end

---<static> getRescuer
---@return Unit
function Event:getRescuer()
    return Unit:fromUd(Native.GetRescuer())
end

---<static> getDyingUnit
---@return Unit
function Event:getDyingUnit()
    return Unit:fromUd(Native.GetDyingUnit())
end

---<static> getKillingUnit
---@return Unit
function Event:getKillingUnit()
    return Unit:fromUd(Native.GetKillingUnit())
end

---<static> getDecayingUnit
---@return Unit
function Event:getDecayingUnit()
    return Unit:fromUd(Native.GetDecayingUnit())
end

---<static> getConstructingStructure
---@return Unit
function Event:getConstructingStructure()
    return Unit:fromUd(Native.GetConstructingStructure())
end

---<static> getCancelledStructure
---@return Unit
function Event:getCancelledStructure()
    return Unit:fromUd(Native.GetCancelledStructure())
end

---<static> getConstructedStructure
---@return Unit
function Event:getConstructedStructure()
    return Unit:fromUd(Native.GetConstructedStructure())
end

---<static> getResearchingUnit
---@return Unit
function Event:getResearchingUnit()
    return Unit:fromUd(Native.GetResearchingUnit())
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
    return Unit:fromUd(Native.GetTrainedUnit())
end

---<static> getDetectedUnit
---@return Unit
function Event:getDetectedUnit()
    return Unit:fromUd(Native.GetDetectedUnit())
end

---<static> getSummoningUnit
---@return Unit
function Event:getSummoningUnit()
    return Unit:fromUd(Native.GetSummoningUnit())
end

---<static> getSummonedUnit
---@return Unit
function Event:getSummonedUnit()
    return Unit:fromUd(Native.GetSummonedUnit())
end

---<static> getTransportUnit
---@return Unit
function Event:getTransportUnit()
    return Unit:fromUd(Native.GetTransportUnit())
end

---<static> getLoadedUnit
---@return Unit
function Event:getLoadedUnit()
    return Unit:fromUd(Native.GetLoadedUnit())
end

---<static> getSellingUnit
---@return Unit
function Event:getSellingUnit()
    return Unit:fromUd(Native.GetSellingUnit())
end

---<static> getSoldUnit
---@return Unit
function Event:getSoldUnit()
    return Unit:fromUd(Native.GetSoldUnit())
end

---<static> getBuyingUnit
---@return Unit
function Event:getBuyingUnit()
    return Unit:fromUd(Native.GetBuyingUnit())
end

---<static> getSoldItem
---@return Item
function Event:getSoldItem()
    return Item:fromUd(Native.GetSoldItem())
end

---<static> getChangingUnit
---@return Unit
function Event:getChangingUnit()
    return Unit:fromUd(Native.GetChangingUnit())
end

---<static> getChangingUnitPrevOwner
---@return Player
function Event:getChangingUnitPrevOwner()
    return Player:fromUd(Native.GetChangingUnitPrevOwner())
end

---<static> getManipulatingUnit
---@return Unit
function Event:getManipulatingUnit()
    return Unit:fromUd(Native.GetManipulatingUnit())
end

---<static> getManipulatedItem
---@return Item
function Event:getManipulatedItem()
    return Item:fromUd(Native.GetManipulatedItem())
end

---<static> getOrderedUnit
---@return Unit
function Event:getOrderedUnit()
    return Unit:fromUd(Native.GetOrderedUnit())
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
    return Location:fromUd(Native.GetOrderPointLoc())
end

---<static> getOrderTarget
---@return Widget
function Event:getOrderTarget()
    return Widget:fromUd(Native.GetOrderTarget())
end

---<static> getOrderTargetDestructable
---@return Destructable
function Event:getOrderTargetDestructable()
    return Destructable:fromUd(Native.GetOrderTargetDestructable())
end

---<static> getOrderTargetItem
---@return Item
function Event:getOrderTargetItem()
    return Item:fromUd(Native.GetOrderTargetItem())
end

---<static> getOrderTargetUnit
---@return Unit
function Event:getOrderTargetUnit()
    return Unit:fromUd(Native.GetOrderTargetUnit())
end

---<static> getSpellAbilityUnit
---@return Unit
function Event:getSpellAbilityUnit()
    return Unit:fromUd(Native.GetSpellAbilityUnit())
end

---<static> getSpellAbilityId
---@return integer
function Event:getSpellAbilityId()
    return Native.GetSpellAbilityId()
end

---<static> getSpellAbility
---@return Ability
function Event:getSpellAbility()
    return Ability:fromUd(Native.GetSpellAbility())
end

---<static> getSpellTargetLoc
---@return Location
function Event:getSpellTargetLoc()
    return Location:fromUd(Native.GetSpellTargetLoc())
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
    return Destructable:fromUd(Native.GetSpellTargetDestructable())
end

---<static> getSpellTargetItem
---@return Item
function Event:getSpellTargetItem()
    return Item:fromUd(Native.GetSpellTargetItem())
end

---<static> getSpellTargetUnit
---@return Unit
function Event:getSpellTargetUnit()
    return Unit:fromUd(Native.GetSpellTargetUnit())
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
    return Unit:fromUd(Native.GetTriggerUnit())
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
    return Unit:fromUd(Native.GetEventDamageSource())
end

---<static> getEventDetectingPlayer
---@return Player
function Event:getEventDetectingPlayer()
    return Player:fromUd(Native.GetEventDetectingPlayer())
end

---<static> getEventTargetUnit
---@return Unit
function Event:getEventTargetUnit()
    return Unit:fromUd(Native.GetEventTargetUnit())
end

---<static> getTriggerWidget
---@return Widget
function Event:getTriggerWidget()
    return Widget:fromUd(Native.GetTriggerWidget())
end

---<static> getTriggerDestructable
---@return Destructable
function Event:getTriggerDestructable()
    return Destructable:fromUd(Native.GetTriggerDestructable())
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
    return Location:fromUd(Native.BlzGetTriggerPlayerMousePosition())
end

---<static> getTriggerPlayerMouseButton
---@return MouseButtonType
function Event:getTriggerPlayerMouseButton()
    return Native.BlzGetTriggerPlayerMouseButton()
end

---<static> getTriggerFrame
---@return Frame
function Event:getTriggerFrame()
    return Frame:fromUd(Native.BlzGetTriggerFrame())
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
