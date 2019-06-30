local Native = require('lib.stdlib.native')

---@class Trigger : Agent
local Trigger = class('Trigger', require('lib.stdlib.oop.agent'))

---<static> create
---@return Trigger
function Trigger:create()
    return Trigger:fromUd(Native.CreateTrigger())
end

---<static> sleepAction
---@param timeout float
---@return void
function Trigger:sleepAction(timeout)
    return Native.TriggerSleepAction(timeout)
end

---<static> waitForSound
---@param s Sound
---@param offset float
---@return void
function Trigger:waitForSound(s, offset)
    return Native.TriggerWaitForSound(getUd(s), offset)
end

---<static> syncStart
---@return void
function Trigger:syncStart()
    return Native.TriggerSyncStart()
end

---<static> syncReady
---@return void
function Trigger:syncReady()
    return Native.TriggerSyncReady()
end

---destroy
---@return void
function Trigger:destroy()
    return Native.DestroyTrigger(getUd(self))
end

---reset
---@return void
function Trigger:reset()
    return Native.ResetTrigger(getUd(self))
end

---enable
---@return void
function Trigger:enable()
    return Native.EnableTrigger(getUd(self))
end

---disable
---@return void
function Trigger:disable()
    return Native.DisableTrigger(getUd(self))
end

---isEnabled
---@return boolean
function Trigger:isEnabled()
    return Native.IsTriggerEnabled(getUd(self))
end

---waitOnSleeps
---@param flag boolean
---@return void
function Trigger:waitOnSleeps(flag)
    return Native.TriggerWaitOnSleeps(getUd(self), flag)
end

---isWaitOnSleeps
---@return boolean
function Trigger:isWaitOnSleeps()
    return Native.IsTriggerWaitOnSleeps(getUd(self))
end

---getEvalCount
---@return integer
function Trigger:getEvalCount()
    return Native.GetTriggerEvalCount(getUd(self))
end

---getExecCount
---@return integer
function Trigger:getExecCount()
    return Native.GetTriggerExecCount(getUd(self))
end

---registerVariableEvent
---@param varName string
---@param opcode LimitOp
---@param limitval float
---@return Event
function Trigger:registerVariableEvent(varName, opcode, limitval)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterVariableEvent(getUd(self), varName, opcode, limitval))
end

---registerTimerEvent
---@param timeout float
---@param periodic boolean
---@return Event
function Trigger:registerTimerEvent(timeout, periodic)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterTimerEvent(getUd(self), timeout, periodic))
end

---registerTimerExpireEvent
---@param t Timer
---@return Event
function Trigger:registerTimerExpireEvent(t)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterTimerExpireEvent(getUd(self), getUd(t)))
end

---registerGameStateEvent
---@param state GameState
---@param opcode LimitOp
---@param limitval float
---@return Event
function Trigger:registerGameStateEvent(state, opcode, limitval)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterGameStateEvent(getUd(self), state, opcode, limitval))
end

---registerDialogEvent
---@param dialog Dialog
---@return Event
function Trigger:registerDialogEvent(dialog)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterDialogEvent(getUd(self), getUd(dialog)))
end

---registerDialogButtonEvent
---@param button Button
---@return Event
function Trigger:registerDialogButtonEvent(button)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterDialogButtonEvent(getUd(self), getUd(button)))
end

---registerGameEvent
---@param gameEvent GameEvent
---@return Event
function Trigger:registerGameEvent(gameEvent)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterGameEvent(getUd(self), gameEvent))
end

---registerEnterRegion
---@param region Region
---@param filter BoolExpr
---@return Event
function Trigger:registerEnterRegion(region, filter)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterEnterRegion(getUd(self), getUd(region), getUd(filter)))
end

---registerLeaveRegion
---@param region Region
---@param filter BoolExpr
---@return Event
function Trigger:registerLeaveRegion(region, filter)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterLeaveRegion(getUd(self), getUd(region), getUd(filter)))
end

---registerTrackableHitEvent
---@param t Trackable
---@return Event
function Trigger:registerTrackableHitEvent(t)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterTrackableHitEvent(getUd(self), getUd(t)))
end

---registerTrackableTrackEvent
---@param t Trackable
---@return Event
function Trigger:registerTrackableTrackEvent(t)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterTrackableTrackEvent(getUd(self), getUd(t)))
end

---registerPlayerEvent
---@param player Player
---@param playerEvent PlayerEvent
---@return Event
function Trigger:registerPlayerEvent(player, playerEvent)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterPlayerEvent(getUd(self), getUd(player), playerEvent))
end

---registerPlayerUnitEvent
---@param player Player
---@param playerUnitEvent PlayerUnitEvent
---@param filter BoolExpr
---@return Event
function Trigger:registerPlayerUnitEvent(player, playerUnitEvent, filter)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterPlayerUnitEvent(getUd(self), getUd(player), playerUnitEvent, getUd(filter)))
end

---registerPlayerAllianceChange
---@param player Player
---@param alliance AllianceType
---@return Event
function Trigger:registerPlayerAllianceChange(player, alliance)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterPlayerAllianceChange(getUd(self), getUd(player), alliance))
end

---registerPlayerStateEvent
---@param player Player
---@param state PlayerState
---@param opcode LimitOp
---@param limitval float
---@return Event
function Trigger:registerPlayerStateEvent(player, state, opcode, limitval)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterPlayerStateEvent(getUd(self), getUd(player), state, opcode, limitval))
end

---registerPlayerChatEvent
---@param player Player
---@param chatMessageToDetect string
---@param exactMatchOnly boolean
---@return Event
function Trigger:registerPlayerChatEvent(player, chatMessageToDetect, exactMatchOnly)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterPlayerChatEvent(getUd(self), getUd(player), chatMessageToDetect, exactMatchOnly))
end

---registerDeathEvent
---@param widget Widget
---@return Event
function Trigger:registerDeathEvent(widget)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterDeathEvent(getUd(self), getUd(widget)))
end

---registerUnitStateEvent
---@param unit Unit
---@param state UnitState
---@param opcode LimitOp
---@param limitval float
---@return Event
function Trigger:registerUnitStateEvent(unit, state, opcode, limitval)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterUnitStateEvent(getUd(self), getUd(unit), state, opcode, limitval))
end

---registerUnitEvent
---@param unit Unit
---@param event UnitEvent
---@return Event
function Trigger:registerUnitEvent(unit, event)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterUnitEvent(getUd(self), getUd(unit), event))
end

---registerFilterUnitEvent
---@param unit Unit
---@param event UnitEvent
---@param filter BoolExpr
---@return Event
function Trigger:registerFilterUnitEvent(unit, event, filter)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterFilterUnitEvent(getUd(self), getUd(unit), event, getUd(filter)))
end

---registerUnitInRange
---@param unit Unit
---@param range float
---@param filter BoolExpr
---@return Event
function Trigger:registerUnitInRange(unit, range, filter)
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterUnitInRange(getUd(self), getUd(unit), range, getUd(filter)))
end

---addCondition
---@param condition function
---@return TriggerCondition
function Trigger:addCondition(condition)
    condition = Native.Condition(condition)
    return require('lib.stdlib.oop.triggercondition'):fromUd(Native.TriggerAddCondition(getUd(self), condition))
end

---removeCondition
---@param condition TriggerCondition
---@return void
function Trigger:removeCondition(condition)
    return Native.TriggerRemoveCondition(getUd(self), getUd(condition))
end

---clearConditions
---@return void
function Trigger:clearConditions()
    return Native.TriggerClearConditions(getUd(self))
end

---addAction
---@param actionFunc function
---@return TriggerAction
function Trigger:addAction(actionFunc)
    return Native.TriggerAddAction(getUd(self), actionFunc)
end

---removeAction
---@param action TriggerAction
---@return void
function Trigger:removeAction(action)
    return Native.TriggerRemoveAction(getUd(self), action)
end

---clearActions
---@return void
function Trigger:clearActions()
    return Native.TriggerClearActions(getUd(self))
end

---evaluate
---@return boolean
function Trigger:evaluate()
    return Native.TriggerEvaluate(getUd(self))
end

---execute
---@return void
function Trigger:execute()
    return Native.TriggerExecute(getUd(self))
end

---executeWait
---@return void
function Trigger:executeWait()
    return Native.TriggerExecuteWait(getUd(self))
end

---registerFrameEvent
---@param frame Frame
---@param eventId FrameEventType
---@return Event
function Trigger:registerFrameEvent(frame, eventId)
    return require('lib.stdlib.oop.event'):fromUd(Native.BlzTriggerRegisterFrameEvent(getUd(self), getUd(frame), eventId))
end

---registerPlayerSyncEvent
---@param player Player
---@param prefix string
---@param fromServer boolean
---@return Event
function Trigger:registerPlayerSyncEvent(player, prefix, fromServer)
    return require('lib.stdlib.oop.event'):fromUd(Native.BlzTriggerRegisterPlayerSyncEvent(getUd(self), getUd(player), prefix, fromServer))
end

---registerPlayerKeyEvent
---@param player Player
---@param key OsKeyType
---@param metaKey integer
---@param keyDown boolean
---@return Event
function Trigger:registerPlayerKeyEvent(player, key, metaKey, keyDown)
    return require('lib.stdlib.oop.event'):fromUd(Native.BlzTriggerRegisterPlayerKeyEvent(getUd(self), getUd(player), key, metaKey, keyDown))
end

return Trigger
