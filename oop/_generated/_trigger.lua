local Native = require('lib.stdlib.native')

---@class Trigger : Agent
local Trigger = class('Trigger', require('lib.stdlib.oop.agent'))
local ActionMap = {}

---destructor
---@return void
function Trigger:destructor()
--@debug@
    checkobject(self, Trigger, 'destructor', 'self')
--@end-debug@
    ActionMap[getUd(self)] = nil
    return Native.DestroyTrigger(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function Trigger:destroy()
--@debug@
    deprecated('Trigger.destroy', 'Trigger.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@return Trigger
function Trigger:create()
    return Trigger:fromUd(Native.CreateTrigger())
end

---<static> sleepAction
---@param timeout float
---@return void
function Trigger:sleepAction(timeout)
--@debug@
    checkclass(self, Trigger, 'sleepAction', 'self')
    checktype(timeout, 'float', 'sleepAction', 1)
--@end-debug@
    return Native.TriggerSleepAction(timeout)
end

---<static> waitForSound
---@param s Sound
---@param offset float
---@return void
function Trigger:waitForSound(s, offset)
--@debug@
    checkclass(self, Trigger, 'waitForSound', 'self')
    checkobject(s, require('lib.stdlib.oop.sound'), 'waitForSound', 1)
    checktype(offset, 'float', 'waitForSound', 2)
--@end-debug@
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

---reset
---@return void
function Trigger:reset()
--@debug@
    checkobject(self, Trigger, 'reset', 'self')
--@end-debug@
    return Native.ResetTrigger(getUd(self))
end

---enable
---@return void
function Trigger:enable()
--@debug@
    checkobject(self, Trigger, 'enable', 'self')
--@end-debug@
    return Native.EnableTrigger(getUd(self))
end

---disable
---@return void
function Trigger:disable()
--@debug@
    checkobject(self, Trigger, 'disable', 'self')
--@end-debug@
    return Native.DisableTrigger(getUd(self))
end

---isEnabled
---@return boolean
function Trigger:isEnabled()
--@debug@
    checkobject(self, Trigger, 'isEnabled', 'self')
--@end-debug@
    return Native.IsTriggerEnabled(getUd(self))
end

---waitOnSleeps
---@param flag boolean
---@return void
function Trigger:waitOnSleeps(flag)
--@debug@
    checkobject(self, Trigger, 'waitOnSleeps', 'self')
    checktype(flag, 'boolean', 'waitOnSleeps', 1)
--@end-debug@
    return Native.TriggerWaitOnSleeps(getUd(self), flag)
end

---isWaitOnSleeps
---@return boolean
function Trigger:isWaitOnSleeps()
--@debug@
    checkobject(self, Trigger, 'isWaitOnSleeps', 'self')
--@end-debug@
    return Native.IsTriggerWaitOnSleeps(getUd(self))
end

---getEvalCount
---@return integer
function Trigger:getEvalCount()
--@debug@
    checkobject(self, Trigger, 'getEvalCount', 'self')
--@end-debug@
    return Native.GetTriggerEvalCount(getUd(self))
end

---getExecCount
---@return integer
function Trigger:getExecCount()
--@debug@
    checkobject(self, Trigger, 'getExecCount', 'self')
--@end-debug@
    return Native.GetTriggerExecCount(getUd(self))
end

---registerVariableEvent
---@param varName string
---@param opcode LimitOp
---@param limitval float
---@return Event
function Trigger:registerVariableEvent(varName, opcode, limitval)
--@debug@
    checkobject(self, Trigger, 'registerVariableEvent', 'self')
    checktype(varName, 'string', 'registerVariableEvent', 1)
    checkuserdata(opcode, 'limitop', 'registerVariableEvent', 2)
    checktype(limitval, 'float', 'registerVariableEvent', 3)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterVariableEvent(getUd(self), varName, opcode, limitval))
end

---registerTimerEvent
---@param timeout float
---@param periodic boolean
---@return Event
function Trigger:registerTimerEvent(timeout, periodic)
--@debug@
    checkobject(self, Trigger, 'registerTimerEvent', 'self')
    checktype(timeout, 'float', 'registerTimerEvent', 1)
    checktype(periodic, 'boolean', 'registerTimerEvent', 2)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterTimerEvent(getUd(self), timeout, periodic))
end

---registerTimerExpireEvent
---@param t Timer
---@return Event
function Trigger:registerTimerExpireEvent(t)
--@debug@
    checkobject(self, Trigger, 'registerTimerExpireEvent', 'self')
    checkobject(t, require('lib.stdlib.oop.timer'), 'registerTimerExpireEvent', 1)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterTimerExpireEvent(getUd(self), getUd(t)))
end

---registerGameStateEvent
---@param state GameState
---@param opcode LimitOp
---@param limitval float
---@return Event
function Trigger:registerGameStateEvent(state, opcode, limitval)
--@debug@
    checkobject(self, Trigger, 'registerGameStateEvent', 'self')
    checkuserdata(state, 'gamestate', 'registerGameStateEvent', 1)
    checkuserdata(opcode, 'limitop', 'registerGameStateEvent', 2)
    checktype(limitval, 'float', 'registerGameStateEvent', 3)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterGameStateEvent(getUd(self), state, opcode, limitval))
end

---registerDialogEvent
---@param dialog Dialog
---@return Event
function Trigger:registerDialogEvent(dialog)
--@debug@
    checkobject(self, Trigger, 'registerDialogEvent', 'self')
    checkobject(dialog, require('lib.stdlib.oop.dialog'), 'registerDialogEvent', 1)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterDialogEvent(getUd(self), getUd(dialog)))
end

---registerDialogButtonEvent
---@param button Button
---@return Event
function Trigger:registerDialogButtonEvent(button)
--@debug@
    checkobject(self, Trigger, 'registerDialogButtonEvent', 'self')
    checkobject(button, require('lib.stdlib.oop.button'), 'registerDialogButtonEvent', 1)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterDialogButtonEvent(getUd(self), getUd(button)))
end

---registerGameEvent
---@param gameEvent GameEvent
---@return Event
function Trigger:registerGameEvent(gameEvent)
--@debug@
    checkobject(self, Trigger, 'registerGameEvent', 'self')
    checkuserdata(gameEvent, 'gameevent', 'registerGameEvent', 1)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterGameEvent(getUd(self), gameEvent))
end

---registerEnterRegion
---@param region Region
---@param filter BoolExpr
---@return Event
function Trigger:registerEnterRegion(region, filter)
--@debug@
    checkobject(self, Trigger, 'registerEnterRegion', 'self')
    checkobject(region, require('lib.stdlib.oop.region'), 'registerEnterRegion', 1)
    checkobject(filter, require('lib.stdlib.oop.boolexpr'), 'registerEnterRegion', 2)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterEnterRegion(getUd(self), getUd(region), getUd(filter)))
end

---registerLeaveRegion
---@param region Region
---@param filter BoolExpr
---@return Event
function Trigger:registerLeaveRegion(region, filter)
--@debug@
    checkobject(self, Trigger, 'registerLeaveRegion', 'self')
    checkobject(region, require('lib.stdlib.oop.region'), 'registerLeaveRegion', 1)
    checkobject(filter, require('lib.stdlib.oop.boolexpr'), 'registerLeaveRegion', 2)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterLeaveRegion(getUd(self), getUd(region), getUd(filter)))
end

---registerTrackableHitEvent
---@param t Trackable
---@return Event
function Trigger:registerTrackableHitEvent(t)
--@debug@
    checkobject(self, Trigger, 'registerTrackableHitEvent', 'self')
    checkobject(t, require('lib.stdlib.oop.trackable'), 'registerTrackableHitEvent', 1)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterTrackableHitEvent(getUd(self), getUd(t)))
end

---registerTrackableTrackEvent
---@param t Trackable
---@return Event
function Trigger:registerTrackableTrackEvent(t)
--@debug@
    checkobject(self, Trigger, 'registerTrackableTrackEvent', 'self')
    checkobject(t, require('lib.stdlib.oop.trackable'), 'registerTrackableTrackEvent', 1)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterTrackableTrackEvent(getUd(self), getUd(t)))
end

---registerCommandEvent
---@param ability integer
---@param order string
---@return Event
function Trigger:registerCommandEvent(ability, order)
--@debug@
    checkobject(self, Trigger, 'registerCommandEvent', 'self')
    checktype(ability, 'integer', 'registerCommandEvent', 1)
    checktype(order, 'string', 'registerCommandEvent', 2)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterCommandEvent(getUd(self), ability, order))
end

---registerUpgradeCommandEvent
---@param upgrade integer
---@return Event
function Trigger:registerUpgradeCommandEvent(upgrade)
--@debug@
    checkobject(self, Trigger, 'registerUpgradeCommandEvent', 'self')
    checktype(upgrade, 'integer', 'registerUpgradeCommandEvent', 1)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterUpgradeCommandEvent(getUd(self), upgrade))
end

---registerPlayerEvent
---@param player Player
---@param playerEvent PlayerEvent
---@return Event
function Trigger:registerPlayerEvent(player, playerEvent)
--@debug@
    checkobject(self, Trigger, 'registerPlayerEvent', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'registerPlayerEvent', 1)
    checkuserdata(playerEvent, 'playerevent', 'registerPlayerEvent', 2)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterPlayerEvent(getUd(self), getUd(player), playerEvent))
end

---registerPlayerUnitEvent
---@param player Player
---@param playerUnitEvent PlayerUnitEvent
---@param filter BoolExpr
---@return Event
function Trigger:registerPlayerUnitEvent(player, playerUnitEvent, filter)
--@debug@
    checkobject(self, Trigger, 'registerPlayerUnitEvent', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'registerPlayerUnitEvent', 1)
    checkuserdata(playerUnitEvent, 'playerunitevent', 'registerPlayerUnitEvent', 2)
    checkobject(filter, require('lib.stdlib.oop.boolexpr'), 'registerPlayerUnitEvent', 3)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterPlayerUnitEvent(getUd(self), getUd(player), playerUnitEvent, getUd(filter)))
end

---registerPlayerAllianceChange
---@param player Player
---@param alliance AllianceType
---@return Event
function Trigger:registerPlayerAllianceChange(player, alliance)
--@debug@
    checkobject(self, Trigger, 'registerPlayerAllianceChange', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'registerPlayerAllianceChange', 1)
    checkuserdata(alliance, 'alliancetype', 'registerPlayerAllianceChange', 2)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterPlayerAllianceChange(getUd(self), getUd(player), alliance))
end

---registerPlayerStateEvent
---@param player Player
---@param state PlayerState
---@param opcode LimitOp
---@param limitval float
---@return Event
function Trigger:registerPlayerStateEvent(player, state, opcode, limitval)
--@debug@
    checkobject(self, Trigger, 'registerPlayerStateEvent', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'registerPlayerStateEvent', 1)
    checkuserdata(state, 'playerstate', 'registerPlayerStateEvent', 2)
    checkuserdata(opcode, 'limitop', 'registerPlayerStateEvent', 3)
    checktype(limitval, 'float', 'registerPlayerStateEvent', 4)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterPlayerStateEvent(getUd(self), getUd(player), state, opcode, limitval))
end

---registerPlayerChatEvent
---@param player Player
---@param chatMessageToDetect string
---@param exactMatchOnly boolean
---@return Event
function Trigger:registerPlayerChatEvent(player, chatMessageToDetect, exactMatchOnly)
--@debug@
    checkobject(self, Trigger, 'registerPlayerChatEvent', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'registerPlayerChatEvent', 1)
    checktype(chatMessageToDetect, 'string', 'registerPlayerChatEvent', 2)
    checktype(exactMatchOnly, 'boolean', 'registerPlayerChatEvent', 3)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterPlayerChatEvent(getUd(self), getUd(player), chatMessageToDetect, exactMatchOnly))
end

---registerDeathEvent
---@param widget Widget
---@return Event
function Trigger:registerDeathEvent(widget)
--@debug@
    checkobject(self, Trigger, 'registerDeathEvent', 'self')
    checkobject(widget, require('lib.stdlib.oop.widget'), 'registerDeathEvent', 1)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterDeathEvent(getUd(self), getUd(widget)))
end

---registerUnitStateEvent
---@param unit Unit
---@param state UnitState
---@param opcode LimitOp
---@param limitval float
---@return Event
function Trigger:registerUnitStateEvent(unit, state, opcode, limitval)
--@debug@
    checkobject(self, Trigger, 'registerUnitStateEvent', 'self')
    checkobject(unit, require('lib.stdlib.oop.unit'), 'registerUnitStateEvent', 1)
    checkuserdata(state, 'unitstate', 'registerUnitStateEvent', 2)
    checkuserdata(opcode, 'limitop', 'registerUnitStateEvent', 3)
    checktype(limitval, 'float', 'registerUnitStateEvent', 4)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterUnitStateEvent(getUd(self), getUd(unit), state, opcode, limitval))
end

---registerUnitEvent
---@param unit Unit
---@param event UnitEvent
---@return Event
function Trigger:registerUnitEvent(unit, event)
--@debug@
    checkobject(self, Trigger, 'registerUnitEvent', 'self')
    checkobject(unit, require('lib.stdlib.oop.unit'), 'registerUnitEvent', 1)
    checkuserdata(event, 'unitevent', 'registerUnitEvent', 2)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterUnitEvent(getUd(self), getUd(unit), event))
end

---registerFilterUnitEvent
---@param unit Unit
---@param event UnitEvent
---@param filter BoolExpr
---@return Event
function Trigger:registerFilterUnitEvent(unit, event, filter)
--@debug@
    checkobject(self, Trigger, 'registerFilterUnitEvent', 'self')
    checkobject(unit, require('lib.stdlib.oop.unit'), 'registerFilterUnitEvent', 1)
    checkuserdata(event, 'unitevent', 'registerFilterUnitEvent', 2)
    checkobject(filter, require('lib.stdlib.oop.boolexpr'), 'registerFilterUnitEvent', 3)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterFilterUnitEvent(getUd(self), getUd(unit), event, getUd(filter)))
end

---registerUnitInRange
---@param unit Unit
---@param range float
---@param filter BoolExpr
---@return Event
function Trigger:registerUnitInRange(unit, range, filter)
--@debug@
    checkobject(self, Trigger, 'registerUnitInRange', 'self')
    checkobject(unit, require('lib.stdlib.oop.unit'), 'registerUnitInRange', 1)
    checktype(range, 'float', 'registerUnitInRange', 2)
    checkobject(filter, require('lib.stdlib.oop.boolexpr'), 'registerUnitInRange', 3)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.TriggerRegisterUnitInRange(getUd(self), getUd(unit), range, getUd(filter)))
end

---addCondition
---@param condition function
---@return TriggerCondition
function Trigger:addCondition(condition)
--@debug@
    checkobject(self, Trigger, 'addCondition', 'self')
    checktype(condition, 'function', 'addCondition', 1)
--@end-debug@
    condition = Native.Condition(condition)
    return require('lib.stdlib.oop.triggercondition'):fromUd(Native.TriggerAddCondition(getUd(self), condition))
end

---removeCondition
---@param condition TriggerCondition
---@return void
function Trigger:removeCondition(condition)
--@debug@
    checkobject(self, Trigger, 'removeCondition', 'self')
    checkobject(condition, require('lib.stdlib.oop.triggercondition'), 'removeCondition', 1)
--@end-debug@
    return Native.TriggerRemoveCondition(getUd(self), getUd(condition))
end

---clearConditions
---@return void
function Trigger:clearConditions()
--@debug@
    checkobject(self, Trigger, 'clearConditions', 'self')
--@end-debug@
    return Native.TriggerClearConditions(getUd(self))
end

---addAction
---@param actionFunc function
---@return TriggerAction
function Trigger:addAction(actionFunc)
--@debug@
    checkobject(self, Trigger, 'addAction', 'self')
    checktype(actionFunc, 'function', 'addAction', 1)
--@end-debug@
    ActionMap[getUd(self)] = ActionMap[getUd(self)] or {}
    ActionMap[getUd(self)][actionFunc] = actionFunc
    return Native.TriggerAddAction(getUd(self), actionFunc)
end

---removeAction
---@param action TriggerAction
---@return void
function Trigger:removeAction(action)
--@debug@
    checkobject(self, Trigger, 'removeAction', 'self')
    checkuserdata(action, 'triggeraction', 'removeAction', 1)
--@end-debug@
    if ActionMap[getUd(self)] then
        ActionMap[getUd(self)][action] = nil
    end
    return Native.TriggerRemoveAction(getUd(self), action)
end

---clearActions
---@return void
function Trigger:clearActions()
--@debug@
    checkobject(self, Trigger, 'clearActions', 'self')
--@end-debug@
    ActionMap[getUd(self)] = nil
    return Native.TriggerClearActions(getUd(self))
end

---evaluate
---@return boolean
function Trigger:evaluate()
--@debug@
    checkobject(self, Trigger, 'evaluate', 'self')
--@end-debug@
    return Native.TriggerEvaluate(getUd(self))
end

---execute
---@return void
function Trigger:execute()
--@debug@
    checkobject(self, Trigger, 'execute', 'self')
--@end-debug@
    return Native.TriggerExecute(getUd(self))
end

---executeWait
---@return void
function Trigger:executeWait()
--@debug@
    checkobject(self, Trigger, 'executeWait', 'self')
--@end-debug@
    return Native.TriggerExecuteWait(getUd(self))
end

---registerFrameEvent
---@param frame Frame
---@param eventId FrameEventType
---@return Event
function Trigger:registerFrameEvent(frame, eventId)
--@debug@
    checkobject(self, Trigger, 'registerFrameEvent', 'self')
    checkobject(frame, require('lib.stdlib.oop.frame'), 'registerFrameEvent', 1)
    checkuserdata(eventId, 'frameeventtype', 'registerFrameEvent', 2)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.BlzTriggerRegisterFrameEvent(getUd(self), getUd(frame), eventId))
end

---registerPlayerSyncEvent
---@param player Player
---@param prefix string
---@param fromServer boolean
---@return Event
function Trigger:registerPlayerSyncEvent(player, prefix, fromServer)
--@debug@
    checkobject(self, Trigger, 'registerPlayerSyncEvent', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'registerPlayerSyncEvent', 1)
    checktype(prefix, 'string', 'registerPlayerSyncEvent', 2)
    checktype(fromServer, 'boolean', 'registerPlayerSyncEvent', 3)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.BlzTriggerRegisterPlayerSyncEvent(getUd(self), getUd(player), prefix, fromServer))
end

---registerPlayerKeyEvent
---@param player Player
---@param key OsKeyType
---@param metaKey integer
---@param keyDown boolean
---@return Event
function Trigger:registerPlayerKeyEvent(player, key, metaKey, keyDown)
--@debug@
    checkobject(self, Trigger, 'registerPlayerKeyEvent', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'registerPlayerKeyEvent', 1)
    checkuserdata(key, 'oskeytype', 'registerPlayerKeyEvent', 2)
    checktype(metaKey, 'integer', 'registerPlayerKeyEvent', 3)
    checktype(keyDown, 'boolean', 'registerPlayerKeyEvent', 4)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.BlzTriggerRegisterPlayerKeyEvent(getUd(self), getUd(player), key, metaKey, keyDown))
end

return Trigger
