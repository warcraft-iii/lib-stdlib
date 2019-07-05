local Native = require('lib.stdlib.native')

---@class Hashtable : Agent
local Hashtable = class('Hashtable', require('lib.stdlib.oop.agent'))

---<static> create
---@return Hashtable
function Hashtable:create()
    return Hashtable:fromUd(Native.InitHashtable())
end

---saveInteger
---@param parentKey integer
---@param childKey integer
---@param value integer
---@return void
function Hashtable:saveInteger(parentKey, childKey, value)
--@debug@
    checkobject(self, Hashtable, 'saveInteger', 'self')
    checktype(parentKey, 'integer', 'saveInteger', 1)
    checktype(childKey, 'integer', 'saveInteger', 2)
    checktype(value, 'integer', 'saveInteger', 3)
--@end-debug@
    return Native.SaveInteger(getUd(self), parentKey, childKey, value)
end

---saveReal
---@param parentKey integer
---@param childKey integer
---@param value float
---@return void
function Hashtable:saveReal(parentKey, childKey, value)
--@debug@
    checkobject(self, Hashtable, 'saveReal', 'self')
    checktype(parentKey, 'integer', 'saveReal', 1)
    checktype(childKey, 'integer', 'saveReal', 2)
    checktype(value, 'float', 'saveReal', 3)
--@end-debug@
    return Native.SaveReal(getUd(self), parentKey, childKey, value)
end

---saveBoolean
---@param parentKey integer
---@param childKey integer
---@param value boolean
---@return void
function Hashtable:saveBoolean(parentKey, childKey, value)
--@debug@
    checkobject(self, Hashtable, 'saveBoolean', 'self')
    checktype(parentKey, 'integer', 'saveBoolean', 1)
    checktype(childKey, 'integer', 'saveBoolean', 2)
    checktype(value, 'boolean', 'saveBoolean', 3)
--@end-debug@
    return Native.SaveBoolean(getUd(self), parentKey, childKey, value)
end

---saveStr
---@param parentKey integer
---@param childKey integer
---@param value string
---@return boolean
function Hashtable:saveStr(parentKey, childKey, value)
--@debug@
    checkobject(self, Hashtable, 'saveStr', 'self')
    checktype(parentKey, 'integer', 'saveStr', 1)
    checktype(childKey, 'integer', 'saveStr', 2)
    checktype(value, 'string', 'saveStr', 3)
--@end-debug@
    return Native.SaveStr(getUd(self), parentKey, childKey, value)
end

---savePlayerHandle
---@param parentKey integer
---@param childKey integer
---@param player Player
---@return boolean
function Hashtable:savePlayerHandle(parentKey, childKey, player)
--@debug@
    checkobject(self, Hashtable, 'savePlayerHandle', 'self')
    checktype(parentKey, 'integer', 'savePlayerHandle', 1)
    checktype(childKey, 'integer', 'savePlayerHandle', 2)
    checkobject(player, require('lib.stdlib.oop.player'), 'savePlayerHandle', 3)
--@end-debug@
    return Native.SavePlayerHandle(getUd(self), parentKey, childKey, getUd(player))
end

---saveWidgetHandle
---@param parentKey integer
---@param childKey integer
---@param widget Widget
---@return boolean
function Hashtable:saveWidgetHandle(parentKey, childKey, widget)
--@debug@
    checkobject(self, Hashtable, 'saveWidgetHandle', 'self')
    checktype(parentKey, 'integer', 'saveWidgetHandle', 1)
    checktype(childKey, 'integer', 'saveWidgetHandle', 2)
    checkobject(widget, require('lib.stdlib.oop.widget'), 'saveWidgetHandle', 3)
--@end-debug@
    return Native.SaveWidgetHandle(getUd(self), parentKey, childKey, getUd(widget))
end

---saveDestructableHandle
---@param parentKey integer
---@param childKey integer
---@param destructable Destructable
---@return boolean
function Hashtable:saveDestructableHandle(parentKey, childKey, destructable)
--@debug@
    checkobject(self, Hashtable, 'saveDestructableHandle', 'self')
    checktype(parentKey, 'integer', 'saveDestructableHandle', 1)
    checktype(childKey, 'integer', 'saveDestructableHandle', 2)
    checkobject(destructable, require('lib.stdlib.oop.destructable'), 'saveDestructableHandle', 3)
--@end-debug@
    return Native.SaveDestructableHandle(getUd(self), parentKey, childKey, getUd(destructable))
end

---saveItemHandle
---@param parentKey integer
---@param childKey integer
---@param item Item
---@return boolean
function Hashtable:saveItemHandle(parentKey, childKey, item)
--@debug@
    checkobject(self, Hashtable, 'saveItemHandle', 'self')
    checktype(parentKey, 'integer', 'saveItemHandle', 1)
    checktype(childKey, 'integer', 'saveItemHandle', 2)
    checkobject(item, require('lib.stdlib.oop.item'), 'saveItemHandle', 3)
--@end-debug@
    return Native.SaveItemHandle(getUd(self), parentKey, childKey, getUd(item))
end

---saveUnitHandle
---@param parentKey integer
---@param childKey integer
---@param unit Unit
---@return boolean
function Hashtable:saveUnitHandle(parentKey, childKey, unit)
--@debug@
    checkobject(self, Hashtable, 'saveUnitHandle', 'self')
    checktype(parentKey, 'integer', 'saveUnitHandle', 1)
    checktype(childKey, 'integer', 'saveUnitHandle', 2)
    checkobject(unit, require('lib.stdlib.oop.unit'), 'saveUnitHandle', 3)
--@end-debug@
    return Native.SaveUnitHandle(getUd(self), parentKey, childKey, getUd(unit))
end

---saveAbilityHandle
---@param parentKey integer
---@param childKey integer
---@param ability Ability
---@return boolean
function Hashtable:saveAbilityHandle(parentKey, childKey, ability)
--@debug@
    checkobject(self, Hashtable, 'saveAbilityHandle', 'self')
    checktype(parentKey, 'integer', 'saveAbilityHandle', 1)
    checktype(childKey, 'integer', 'saveAbilityHandle', 2)
    checkobject(ability, require('lib.stdlib.oop.ability'), 'saveAbilityHandle', 3)
--@end-debug@
    return Native.SaveAbilityHandle(getUd(self), parentKey, childKey, getUd(ability))
end

---saveTimerHandle
---@param parentKey integer
---@param childKey integer
---@param timer Timer
---@return boolean
function Hashtable:saveTimerHandle(parentKey, childKey, timer)
--@debug@
    checkobject(self, Hashtable, 'saveTimerHandle', 'self')
    checktype(parentKey, 'integer', 'saveTimerHandle', 1)
    checktype(childKey, 'integer', 'saveTimerHandle', 2)
    checkobject(timer, require('lib.stdlib.oop.timer'), 'saveTimerHandle', 3)
--@end-debug@
    return Native.SaveTimerHandle(getUd(self), parentKey, childKey, getUd(timer))
end

---saveTriggerHandle
---@param parentKey integer
---@param childKey integer
---@param trigger Trigger
---@return boolean
function Hashtable:saveTriggerHandle(parentKey, childKey, trigger)
--@debug@
    checkobject(self, Hashtable, 'saveTriggerHandle', 'self')
    checktype(parentKey, 'integer', 'saveTriggerHandle', 1)
    checktype(childKey, 'integer', 'saveTriggerHandle', 2)
    checkobject(trigger, require('lib.stdlib.oop.trigger'), 'saveTriggerHandle', 3)
--@end-debug@
    return Native.SaveTriggerHandle(getUd(self), parentKey, childKey, getUd(trigger))
end

---saveTriggerConditionHandle
---@param parentKey integer
---@param childKey integer
---@param triggercondition TriggerCondition
---@return boolean
function Hashtable:saveTriggerConditionHandle(parentKey, childKey, triggercondition)
--@debug@
    checkobject(self, Hashtable, 'saveTriggerConditionHandle', 'self')
    checktype(parentKey, 'integer', 'saveTriggerConditionHandle', 1)
    checktype(childKey, 'integer', 'saveTriggerConditionHandle', 2)
    checkobject(triggercondition, require('lib.stdlib.oop.triggercondition'), 'saveTriggerConditionHandle', 3)
--@end-debug@
    return Native.SaveTriggerConditionHandle(getUd(self), parentKey, childKey, getUd(triggercondition))
end

---saveTriggerActionHandle
---@param parentKey integer
---@param childKey integer
---@param triggeraction TriggerAction
---@return boolean
function Hashtable:saveTriggerActionHandle(parentKey, childKey, triggeraction)
--@debug@
    checkobject(self, Hashtable, 'saveTriggerActionHandle', 'self')
    checktype(parentKey, 'integer', 'saveTriggerActionHandle', 1)
    checktype(childKey, 'integer', 'saveTriggerActionHandle', 2)
    checkuserdata(triggeraction, 'triggeraction', 'saveTriggerActionHandle', 3)
--@end-debug@
    return Native.SaveTriggerActionHandle(getUd(self), parentKey, childKey, triggeraction)
end

---saveTriggerEventHandle
---@param parentKey integer
---@param childKey integer
---@param event Event
---@return boolean
function Hashtable:saveTriggerEventHandle(parentKey, childKey, event)
--@debug@
    checkobject(self, Hashtable, 'saveTriggerEventHandle', 'self')
    checktype(parentKey, 'integer', 'saveTriggerEventHandle', 1)
    checktype(childKey, 'integer', 'saveTriggerEventHandle', 2)
    checkobject(event, require('lib.stdlib.oop.event'), 'saveTriggerEventHandle', 3)
--@end-debug@
    return Native.SaveTriggerEventHandle(getUd(self), parentKey, childKey, getUd(event))
end

---saveForceHandle
---@param parentKey integer
---@param childKey integer
---@param force Force
---@return boolean
function Hashtable:saveForceHandle(parentKey, childKey, force)
--@debug@
    checkobject(self, Hashtable, 'saveForceHandle', 'self')
    checktype(parentKey, 'integer', 'saveForceHandle', 1)
    checktype(childKey, 'integer', 'saveForceHandle', 2)
    checkobject(force, require('lib.stdlib.oop.force'), 'saveForceHandle', 3)
--@end-debug@
    return Native.SaveForceHandle(getUd(self), parentKey, childKey, getUd(force))
end

---saveGroupHandle
---@param parentKey integer
---@param childKey integer
---@param group Group
---@return boolean
function Hashtable:saveGroupHandle(parentKey, childKey, group)
--@debug@
    checkobject(self, Hashtable, 'saveGroupHandle', 'self')
    checktype(parentKey, 'integer', 'saveGroupHandle', 1)
    checktype(childKey, 'integer', 'saveGroupHandle', 2)
    checkobject(group, require('lib.stdlib.oop.group'), 'saveGroupHandle', 3)
--@end-debug@
    return Native.SaveGroupHandle(getUd(self), parentKey, childKey, getUd(group))
end

---saveRectHandle
---@param parentKey integer
---@param childKey integer
---@param rect Rect
---@return boolean
function Hashtable:saveRectHandle(parentKey, childKey, rect)
--@debug@
    checkobject(self, Hashtable, 'saveRectHandle', 'self')
    checktype(parentKey, 'integer', 'saveRectHandle', 1)
    checktype(childKey, 'integer', 'saveRectHandle', 2)
    checkobject(rect, require('lib.stdlib.oop.rect'), 'saveRectHandle', 3)
--@end-debug@
    return Native.SaveRectHandle(getUd(self), parentKey, childKey, getUd(rect))
end

---saveBooleanExprHandle
---@param parentKey integer
---@param childKey integer
---@param boolexpr BoolExpr
---@return boolean
function Hashtable:saveBooleanExprHandle(parentKey, childKey, boolexpr)
--@debug@
    checkobject(self, Hashtable, 'saveBooleanExprHandle', 'self')
    checktype(parentKey, 'integer', 'saveBooleanExprHandle', 1)
    checktype(childKey, 'integer', 'saveBooleanExprHandle', 2)
    checkobject(boolexpr, require('lib.stdlib.oop.boolexpr'), 'saveBooleanExprHandle', 3)
--@end-debug@
    return Native.SaveBooleanExprHandle(getUd(self), parentKey, childKey, getUd(boolexpr))
end

---saveSoundHandle
---@param parentKey integer
---@param childKey integer
---@param sound Sound
---@return boolean
function Hashtable:saveSoundHandle(parentKey, childKey, sound)
--@debug@
    checkobject(self, Hashtable, 'saveSoundHandle', 'self')
    checktype(parentKey, 'integer', 'saveSoundHandle', 1)
    checktype(childKey, 'integer', 'saveSoundHandle', 2)
    checkobject(sound, require('lib.stdlib.oop.sound'), 'saveSoundHandle', 3)
--@end-debug@
    return Native.SaveSoundHandle(getUd(self), parentKey, childKey, getUd(sound))
end

---saveEffectHandle
---@param parentKey integer
---@param childKey integer
---@param effect Effect
---@return boolean
function Hashtable:saveEffectHandle(parentKey, childKey, effect)
--@debug@
    checkobject(self, Hashtable, 'saveEffectHandle', 'self')
    checktype(parentKey, 'integer', 'saveEffectHandle', 1)
    checktype(childKey, 'integer', 'saveEffectHandle', 2)
    checkobject(effect, require('lib.stdlib.oop.effect'), 'saveEffectHandle', 3)
--@end-debug@
    return Native.SaveEffectHandle(getUd(self), parentKey, childKey, getUd(effect))
end

---saveUnitPoolHandle
---@param parentKey integer
---@param childKey integer
---@param unitpool UnitPool
---@return boolean
function Hashtable:saveUnitPoolHandle(parentKey, childKey, unitpool)
--@debug@
    checkobject(self, Hashtable, 'saveUnitPoolHandle', 'self')
    checktype(parentKey, 'integer', 'saveUnitPoolHandle', 1)
    checktype(childKey, 'integer', 'saveUnitPoolHandle', 2)
    checkobject(unitpool, require('lib.stdlib.oop.unitpool'), 'saveUnitPoolHandle', 3)
--@end-debug@
    return Native.SaveUnitPoolHandle(getUd(self), parentKey, childKey, getUd(unitpool))
end

---saveItemPoolHandle
---@param parentKey integer
---@param childKey integer
---@param itempool ItemPool
---@return boolean
function Hashtable:saveItemPoolHandle(parentKey, childKey, itempool)
--@debug@
    checkobject(self, Hashtable, 'saveItemPoolHandle', 'self')
    checktype(parentKey, 'integer', 'saveItemPoolHandle', 1)
    checktype(childKey, 'integer', 'saveItemPoolHandle', 2)
    checkobject(itempool, require('lib.stdlib.oop.itempool'), 'saveItemPoolHandle', 3)
--@end-debug@
    return Native.SaveItemPoolHandle(getUd(self), parentKey, childKey, getUd(itempool))
end

---saveQuestHandle
---@param parentKey integer
---@param childKey integer
---@param quest Quest
---@return boolean
function Hashtable:saveQuestHandle(parentKey, childKey, quest)
--@debug@
    checkobject(self, Hashtable, 'saveQuestHandle', 'self')
    checktype(parentKey, 'integer', 'saveQuestHandle', 1)
    checktype(childKey, 'integer', 'saveQuestHandle', 2)
    checkobject(quest, require('lib.stdlib.oop.quest'), 'saveQuestHandle', 3)
--@end-debug@
    return Native.SaveQuestHandle(getUd(self), parentKey, childKey, getUd(quest))
end

---saveQuestItemHandle
---@param parentKey integer
---@param childKey integer
---@param questitem QuestItem
---@return boolean
function Hashtable:saveQuestItemHandle(parentKey, childKey, questitem)
--@debug@
    checkobject(self, Hashtable, 'saveQuestItemHandle', 'self')
    checktype(parentKey, 'integer', 'saveQuestItemHandle', 1)
    checktype(childKey, 'integer', 'saveQuestItemHandle', 2)
    checkobject(questitem, require('lib.stdlib.oop.questitem'), 'saveQuestItemHandle', 3)
--@end-debug@
    return Native.SaveQuestItemHandle(getUd(self), parentKey, childKey, getUd(questitem))
end

---saveDefeatConditionHandle
---@param parentKey integer
---@param childKey integer
---@param defeatcondition DefeatCondition
---@return boolean
function Hashtable:saveDefeatConditionHandle(parentKey, childKey, defeatcondition)
--@debug@
    checkobject(self, Hashtable, 'saveDefeatConditionHandle', 'self')
    checktype(parentKey, 'integer', 'saveDefeatConditionHandle', 1)
    checktype(childKey, 'integer', 'saveDefeatConditionHandle', 2)
    checkobject(defeatcondition, require('lib.stdlib.oop.defeatcondition'), 'saveDefeatConditionHandle', 3)
--@end-debug@
    return Native.SaveDefeatConditionHandle(getUd(self), parentKey, childKey, getUd(defeatcondition))
end

---saveTimerDialogHandle
---@param parentKey integer
---@param childKey integer
---@param timerdialog TimerDialog
---@return boolean
function Hashtable:saveTimerDialogHandle(parentKey, childKey, timerdialog)
--@debug@
    checkobject(self, Hashtable, 'saveTimerDialogHandle', 'self')
    checktype(parentKey, 'integer', 'saveTimerDialogHandle', 1)
    checktype(childKey, 'integer', 'saveTimerDialogHandle', 2)
    checkobject(timerdialog, require('lib.stdlib.oop.timerdialog'), 'saveTimerDialogHandle', 3)
--@end-debug@
    return Native.SaveTimerDialogHandle(getUd(self), parentKey, childKey, getUd(timerdialog))
end

---saveLeaderboardHandle
---@param parentKey integer
---@param childKey integer
---@param leaderboard LeaderBoard
---@return boolean
function Hashtable:saveLeaderboardHandle(parentKey, childKey, leaderboard)
--@debug@
    checkobject(self, Hashtable, 'saveLeaderboardHandle', 'self')
    checktype(parentKey, 'integer', 'saveLeaderboardHandle', 1)
    checktype(childKey, 'integer', 'saveLeaderboardHandle', 2)
    checkobject(leaderboard, require('lib.stdlib.oop.leaderboard'), 'saveLeaderboardHandle', 3)
--@end-debug@
    return Native.SaveLeaderboardHandle(getUd(self), parentKey, childKey, getUd(leaderboard))
end

---saveMultiboardHandle
---@param parentKey integer
---@param childKey integer
---@param multiboard MultiBoard
---@return boolean
function Hashtable:saveMultiboardHandle(parentKey, childKey, multiboard)
--@debug@
    checkobject(self, Hashtable, 'saveMultiboardHandle', 'self')
    checktype(parentKey, 'integer', 'saveMultiboardHandle', 1)
    checktype(childKey, 'integer', 'saveMultiboardHandle', 2)
    checkobject(multiboard, require('lib.stdlib.oop.multiboard'), 'saveMultiboardHandle', 3)
--@end-debug@
    return Native.SaveMultiboardHandle(getUd(self), parentKey, childKey, getUd(multiboard))
end

---saveMultiboardItemHandle
---@param parentKey integer
---@param childKey integer
---@param multiboarditem MultiBoardItem
---@return boolean
function Hashtable:saveMultiboardItemHandle(parentKey, childKey, multiboarditem)
--@debug@
    checkobject(self, Hashtable, 'saveMultiboardItemHandle', 'self')
    checktype(parentKey, 'integer', 'saveMultiboardItemHandle', 1)
    checktype(childKey, 'integer', 'saveMultiboardItemHandle', 2)
    checkobject(multiboarditem, require('lib.stdlib.oop.multiboarditem'), 'saveMultiboardItemHandle', 3)
--@end-debug@
    return Native.SaveMultiboardItemHandle(getUd(self), parentKey, childKey, getUd(multiboarditem))
end

---saveTrackableHandle
---@param parentKey integer
---@param childKey integer
---@param trackable Trackable
---@return boolean
function Hashtable:saveTrackableHandle(parentKey, childKey, trackable)
--@debug@
    checkobject(self, Hashtable, 'saveTrackableHandle', 'self')
    checktype(parentKey, 'integer', 'saveTrackableHandle', 1)
    checktype(childKey, 'integer', 'saveTrackableHandle', 2)
    checkobject(trackable, require('lib.stdlib.oop.trackable'), 'saveTrackableHandle', 3)
--@end-debug@
    return Native.SaveTrackableHandle(getUd(self), parentKey, childKey, getUd(trackable))
end

---saveDialogHandle
---@param parentKey integer
---@param childKey integer
---@param dialog Dialog
---@return boolean
function Hashtable:saveDialogHandle(parentKey, childKey, dialog)
--@debug@
    checkobject(self, Hashtable, 'saveDialogHandle', 'self')
    checktype(parentKey, 'integer', 'saveDialogHandle', 1)
    checktype(childKey, 'integer', 'saveDialogHandle', 2)
    checkobject(dialog, require('lib.stdlib.oop.dialog'), 'saveDialogHandle', 3)
--@end-debug@
    return Native.SaveDialogHandle(getUd(self), parentKey, childKey, getUd(dialog))
end

---saveButtonHandle
---@param parentKey integer
---@param childKey integer
---@param button Button
---@return boolean
function Hashtable:saveButtonHandle(parentKey, childKey, button)
--@debug@
    checkobject(self, Hashtable, 'saveButtonHandle', 'self')
    checktype(parentKey, 'integer', 'saveButtonHandle', 1)
    checktype(childKey, 'integer', 'saveButtonHandle', 2)
    checkobject(button, require('lib.stdlib.oop.button'), 'saveButtonHandle', 3)
--@end-debug@
    return Native.SaveButtonHandle(getUd(self), parentKey, childKey, getUd(button))
end

---saveTextTagHandle
---@param parentKey integer
---@param childKey integer
---@param texttag TextTag
---@return boolean
function Hashtable:saveTextTagHandle(parentKey, childKey, texttag)
--@debug@
    checkobject(self, Hashtable, 'saveTextTagHandle', 'self')
    checktype(parentKey, 'integer', 'saveTextTagHandle', 1)
    checktype(childKey, 'integer', 'saveTextTagHandle', 2)
    checkobject(texttag, require('lib.stdlib.oop.texttag'), 'saveTextTagHandle', 3)
--@end-debug@
    return Native.SaveTextTagHandle(getUd(self), parentKey, childKey, getUd(texttag))
end

---saveLightningHandle
---@param parentKey integer
---@param childKey integer
---@param lightning Lightning
---@return boolean
function Hashtable:saveLightningHandle(parentKey, childKey, lightning)
--@debug@
    checkobject(self, Hashtable, 'saveLightningHandle', 'self')
    checktype(parentKey, 'integer', 'saveLightningHandle', 1)
    checktype(childKey, 'integer', 'saveLightningHandle', 2)
    checkobject(lightning, require('lib.stdlib.oop.lightning'), 'saveLightningHandle', 3)
--@end-debug@
    return Native.SaveLightningHandle(getUd(self), parentKey, childKey, getUd(lightning))
end

---saveImageHandle
---@param parentKey integer
---@param childKey integer
---@param image Image
---@return boolean
function Hashtable:saveImageHandle(parentKey, childKey, image)
--@debug@
    checkobject(self, Hashtable, 'saveImageHandle', 'self')
    checktype(parentKey, 'integer', 'saveImageHandle', 1)
    checktype(childKey, 'integer', 'saveImageHandle', 2)
    checkobject(image, require('lib.stdlib.oop.image'), 'saveImageHandle', 3)
--@end-debug@
    return Native.SaveImageHandle(getUd(self), parentKey, childKey, getUd(image))
end

---saveUbersplatHandle
---@param parentKey integer
---@param childKey integer
---@param ubersplat Ubersplat
---@return boolean
function Hashtable:saveUbersplatHandle(parentKey, childKey, ubersplat)
--@debug@
    checkobject(self, Hashtable, 'saveUbersplatHandle', 'self')
    checktype(parentKey, 'integer', 'saveUbersplatHandle', 1)
    checktype(childKey, 'integer', 'saveUbersplatHandle', 2)
    checkobject(ubersplat, require('lib.stdlib.oop.ubersplat'), 'saveUbersplatHandle', 3)
--@end-debug@
    return Native.SaveUbersplatHandle(getUd(self), parentKey, childKey, getUd(ubersplat))
end

---saveRegionHandle
---@param parentKey integer
---@param childKey integer
---@param region Region
---@return boolean
function Hashtable:saveRegionHandle(parentKey, childKey, region)
--@debug@
    checkobject(self, Hashtable, 'saveRegionHandle', 'self')
    checktype(parentKey, 'integer', 'saveRegionHandle', 1)
    checktype(childKey, 'integer', 'saveRegionHandle', 2)
    checkobject(region, require('lib.stdlib.oop.region'), 'saveRegionHandle', 3)
--@end-debug@
    return Native.SaveRegionHandle(getUd(self), parentKey, childKey, getUd(region))
end

---saveFogStateHandle
---@param parentKey integer
---@param childKey integer
---@param fogState FogState
---@return boolean
function Hashtable:saveFogStateHandle(parentKey, childKey, fogState)
--@debug@
    checkobject(self, Hashtable, 'saveFogStateHandle', 'self')
    checktype(parentKey, 'integer', 'saveFogStateHandle', 1)
    checktype(childKey, 'integer', 'saveFogStateHandle', 2)
    checkuserdata(fogState, 'fogstate', 'saveFogStateHandle', 3)
--@end-debug@
    return Native.SaveFogStateHandle(getUd(self), parentKey, childKey, fogState)
end

---saveFogModifierHandle
---@param parentKey integer
---@param childKey integer
---@param fogModifier FogModifier
---@return boolean
function Hashtable:saveFogModifierHandle(parentKey, childKey, fogModifier)
--@debug@
    checkobject(self, Hashtable, 'saveFogModifierHandle', 'self')
    checktype(parentKey, 'integer', 'saveFogModifierHandle', 1)
    checktype(childKey, 'integer', 'saveFogModifierHandle', 2)
    checkobject(fogModifier, require('lib.stdlib.oop.fogmodifier'), 'saveFogModifierHandle', 3)
--@end-debug@
    return Native.SaveFogModifierHandle(getUd(self), parentKey, childKey, getUd(fogModifier))
end

---saveAgentHandle
---@param parentKey integer
---@param childKey integer
---@param agent Agent
---@return boolean
function Hashtable:saveAgentHandle(parentKey, childKey, agent)
--@debug@
    checkobject(self, Hashtable, 'saveAgentHandle', 'self')
    checktype(parentKey, 'integer', 'saveAgentHandle', 1)
    checktype(childKey, 'integer', 'saveAgentHandle', 2)
    checkobject(agent, require('lib.stdlib.oop.agent'), 'saveAgentHandle', 3)
--@end-debug@
    return Native.SaveAgentHandle(getUd(self), parentKey, childKey, getUd(agent))
end

---saveHashtableHandle
---@param parentKey integer
---@param childKey integer
---@param hashtable Hashtable
---@return boolean
function Hashtable:saveHashtableHandle(parentKey, childKey, hashtable)
--@debug@
    checkobject(self, Hashtable, 'saveHashtableHandle', 'self')
    checktype(parentKey, 'integer', 'saveHashtableHandle', 1)
    checktype(childKey, 'integer', 'saveHashtableHandle', 2)
    checkobject(hashtable, require('lib.stdlib.oop.hashtable'), 'saveHashtableHandle', 3)
--@end-debug@
    return Native.SaveHashtableHandle(getUd(self), parentKey, childKey, getUd(hashtable))
end

---saveFrameHandle
---@param parentKey integer
---@param childKey integer
---@param frameHandle Frame
---@return boolean
function Hashtable:saveFrameHandle(parentKey, childKey, frameHandle)
--@debug@
    checkobject(self, Hashtable, 'saveFrameHandle', 'self')
    checktype(parentKey, 'integer', 'saveFrameHandle', 1)
    checktype(childKey, 'integer', 'saveFrameHandle', 2)
    checkobject(frameHandle, require('lib.stdlib.oop.frame'), 'saveFrameHandle', 3)
--@end-debug@
    return Native.SaveFrameHandle(getUd(self), parentKey, childKey, getUd(frameHandle))
end

---loadInteger
---@param parentKey integer
---@param childKey integer
---@return integer
function Hashtable:loadInteger(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadInteger', 'self')
    checktype(parentKey, 'integer', 'loadInteger', 1)
    checktype(childKey, 'integer', 'loadInteger', 2)
--@end-debug@
    return Native.LoadInteger(getUd(self), parentKey, childKey)
end

---loadReal
---@param parentKey integer
---@param childKey integer
---@return float
function Hashtable:loadReal(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadReal', 'self')
    checktype(parentKey, 'integer', 'loadReal', 1)
    checktype(childKey, 'integer', 'loadReal', 2)
--@end-debug@
    return Native.LoadReal(getUd(self), parentKey, childKey)
end

---loadBoolean
---@param parentKey integer
---@param childKey integer
---@return boolean
function Hashtable:loadBoolean(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadBoolean', 'self')
    checktype(parentKey, 'integer', 'loadBoolean', 1)
    checktype(childKey, 'integer', 'loadBoolean', 2)
--@end-debug@
    return Native.LoadBoolean(getUd(self), parentKey, childKey)
end

---loadStr
---@param parentKey integer
---@param childKey integer
---@return string
function Hashtable:loadStr(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadStr', 'self')
    checktype(parentKey, 'integer', 'loadStr', 1)
    checktype(childKey, 'integer', 'loadStr', 2)
--@end-debug@
    return Native.LoadStr(getUd(self), parentKey, childKey)
end

---loadPlayerHandle
---@param parentKey integer
---@param childKey integer
---@return Player
function Hashtable:loadPlayerHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadPlayerHandle', 'self')
    checktype(parentKey, 'integer', 'loadPlayerHandle', 1)
    checktype(childKey, 'integer', 'loadPlayerHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.player'):fromUd(Native.LoadPlayerHandle(getUd(self), parentKey, childKey))
end

---loadWidgetHandle
---@param parentKey integer
---@param childKey integer
---@return Widget
function Hashtable:loadWidgetHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadWidgetHandle', 'self')
    checktype(parentKey, 'integer', 'loadWidgetHandle', 1)
    checktype(childKey, 'integer', 'loadWidgetHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.widget'):fromUd(Native.LoadWidgetHandle(getUd(self), parentKey, childKey))
end

---loadDestructableHandle
---@param parentKey integer
---@param childKey integer
---@return Destructable
function Hashtable:loadDestructableHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadDestructableHandle', 'self')
    checktype(parentKey, 'integer', 'loadDestructableHandle', 1)
    checktype(childKey, 'integer', 'loadDestructableHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.destructable'):fromUd(Native.LoadDestructableHandle(getUd(self), parentKey, childKey))
end

---loadItemHandle
---@param parentKey integer
---@param childKey integer
---@return Item
function Hashtable:loadItemHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadItemHandle', 'self')
    checktype(parentKey, 'integer', 'loadItemHandle', 1)
    checktype(childKey, 'integer', 'loadItemHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.item'):fromUd(Native.LoadItemHandle(getUd(self), parentKey, childKey))
end

---loadUnitHandle
---@param parentKey integer
---@param childKey integer
---@return Unit
function Hashtable:loadUnitHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadUnitHandle', 'self')
    checktype(parentKey, 'integer', 'loadUnitHandle', 1)
    checktype(childKey, 'integer', 'loadUnitHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.unit'):fromUd(Native.LoadUnitHandle(getUd(self), parentKey, childKey))
end

---loadAbilityHandle
---@param parentKey integer
---@param childKey integer
---@return Ability
function Hashtable:loadAbilityHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadAbilityHandle', 'self')
    checktype(parentKey, 'integer', 'loadAbilityHandle', 1)
    checktype(childKey, 'integer', 'loadAbilityHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.ability'):fromUd(Native.LoadAbilityHandle(getUd(self), parentKey, childKey))
end

---loadTimerHandle
---@param parentKey integer
---@param childKey integer
---@return Timer
function Hashtable:loadTimerHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadTimerHandle', 'self')
    checktype(parentKey, 'integer', 'loadTimerHandle', 1)
    checktype(childKey, 'integer', 'loadTimerHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.timer'):fromUd(Native.LoadTimerHandle(getUd(self), parentKey, childKey))
end

---loadTriggerHandle
---@param parentKey integer
---@param childKey integer
---@return Trigger
function Hashtable:loadTriggerHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadTriggerHandle', 'self')
    checktype(parentKey, 'integer', 'loadTriggerHandle', 1)
    checktype(childKey, 'integer', 'loadTriggerHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.trigger'):fromUd(Native.LoadTriggerHandle(getUd(self), parentKey, childKey))
end

---loadTriggerConditionHandle
---@param parentKey integer
---@param childKey integer
---@return TriggerCondition
function Hashtable:loadTriggerConditionHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadTriggerConditionHandle', 'self')
    checktype(parentKey, 'integer', 'loadTriggerConditionHandle', 1)
    checktype(childKey, 'integer', 'loadTriggerConditionHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.triggercondition'):fromUd(Native.LoadTriggerConditionHandle(getUd(self), parentKey, childKey))
end

---loadTriggerActionHandle
---@param parentKey integer
---@param childKey integer
---@return TriggerAction
function Hashtable:loadTriggerActionHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadTriggerActionHandle', 'self')
    checktype(parentKey, 'integer', 'loadTriggerActionHandle', 1)
    checktype(childKey, 'integer', 'loadTriggerActionHandle', 2)
--@end-debug@
    return Native.LoadTriggerActionHandle(getUd(self), parentKey, childKey)
end

---loadTriggerEventHandle
---@param parentKey integer
---@param childKey integer
---@return Event
function Hashtable:loadTriggerEventHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadTriggerEventHandle', 'self')
    checktype(parentKey, 'integer', 'loadTriggerEventHandle', 1)
    checktype(childKey, 'integer', 'loadTriggerEventHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.event'):fromUd(Native.LoadTriggerEventHandle(getUd(self), parentKey, childKey))
end

---loadForceHandle
---@param parentKey integer
---@param childKey integer
---@return Force
function Hashtable:loadForceHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadForceHandle', 'self')
    checktype(parentKey, 'integer', 'loadForceHandle', 1)
    checktype(childKey, 'integer', 'loadForceHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.force'):fromUd(Native.LoadForceHandle(getUd(self), parentKey, childKey))
end

---loadGroupHandle
---@param parentKey integer
---@param childKey integer
---@return Group
function Hashtable:loadGroupHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadGroupHandle', 'self')
    checktype(parentKey, 'integer', 'loadGroupHandle', 1)
    checktype(childKey, 'integer', 'loadGroupHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.group'):fromUd(Native.LoadGroupHandle(getUd(self), parentKey, childKey))
end

---loadLocationHandle
---@param parentKey integer
---@param childKey integer
---@return Location
function Hashtable:loadLocationHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadLocationHandle', 'self')
    checktype(parentKey, 'integer', 'loadLocationHandle', 1)
    checktype(childKey, 'integer', 'loadLocationHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.location'):fromUd(Native.LoadLocationHandle(getUd(self), parentKey, childKey))
end

---loadRectHandle
---@param parentKey integer
---@param childKey integer
---@return Rect
function Hashtable:loadRectHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadRectHandle', 'self')
    checktype(parentKey, 'integer', 'loadRectHandle', 1)
    checktype(childKey, 'integer', 'loadRectHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.rect'):fromUd(Native.LoadRectHandle(getUd(self), parentKey, childKey))
end

---loadBooleanExprHandle
---@param parentKey integer
---@param childKey integer
---@return BoolExpr
function Hashtable:loadBooleanExprHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadBooleanExprHandle', 'self')
    checktype(parentKey, 'integer', 'loadBooleanExprHandle', 1)
    checktype(childKey, 'integer', 'loadBooleanExprHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.boolexpr'):fromUd(Native.LoadBooleanExprHandle(getUd(self), parentKey, childKey))
end

---loadSoundHandle
---@param parentKey integer
---@param childKey integer
---@return Sound
function Hashtable:loadSoundHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadSoundHandle', 'self')
    checktype(parentKey, 'integer', 'loadSoundHandle', 1)
    checktype(childKey, 'integer', 'loadSoundHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.sound'):fromUd(Native.LoadSoundHandle(getUd(self), parentKey, childKey))
end

---loadEffectHandle
---@param parentKey integer
---@param childKey integer
---@return Effect
function Hashtable:loadEffectHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadEffectHandle', 'self')
    checktype(parentKey, 'integer', 'loadEffectHandle', 1)
    checktype(childKey, 'integer', 'loadEffectHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.effect'):fromUd(Native.LoadEffectHandle(getUd(self), parentKey, childKey))
end

---loadUnitPoolHandle
---@param parentKey integer
---@param childKey integer
---@return UnitPool
function Hashtable:loadUnitPoolHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadUnitPoolHandle', 'self')
    checktype(parentKey, 'integer', 'loadUnitPoolHandle', 1)
    checktype(childKey, 'integer', 'loadUnitPoolHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.unitpool'):fromUd(Native.LoadUnitPoolHandle(getUd(self), parentKey, childKey))
end

---loadItemPoolHandle
---@param parentKey integer
---@param childKey integer
---@return ItemPool
function Hashtable:loadItemPoolHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadItemPoolHandle', 'self')
    checktype(parentKey, 'integer', 'loadItemPoolHandle', 1)
    checktype(childKey, 'integer', 'loadItemPoolHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.itempool'):fromUd(Native.LoadItemPoolHandle(getUd(self), parentKey, childKey))
end

---loadQuestHandle
---@param parentKey integer
---@param childKey integer
---@return Quest
function Hashtable:loadQuestHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadQuestHandle', 'self')
    checktype(parentKey, 'integer', 'loadQuestHandle', 1)
    checktype(childKey, 'integer', 'loadQuestHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.quest'):fromUd(Native.LoadQuestHandle(getUd(self), parentKey, childKey))
end

---loadQuestItemHandle
---@param parentKey integer
---@param childKey integer
---@return QuestItem
function Hashtable:loadQuestItemHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadQuestItemHandle', 'self')
    checktype(parentKey, 'integer', 'loadQuestItemHandle', 1)
    checktype(childKey, 'integer', 'loadQuestItemHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.questitem'):fromUd(Native.LoadQuestItemHandle(getUd(self), parentKey, childKey))
end

---loadDefeatConditionHandle
---@param parentKey integer
---@param childKey integer
---@return DefeatCondition
function Hashtable:loadDefeatConditionHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadDefeatConditionHandle', 'self')
    checktype(parentKey, 'integer', 'loadDefeatConditionHandle', 1)
    checktype(childKey, 'integer', 'loadDefeatConditionHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.defeatcondition'):fromUd(Native.LoadDefeatConditionHandle(getUd(self), parentKey, childKey))
end

---loadTimerDialogHandle
---@param parentKey integer
---@param childKey integer
---@return TimerDialog
function Hashtable:loadTimerDialogHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadTimerDialogHandle', 'self')
    checktype(parentKey, 'integer', 'loadTimerDialogHandle', 1)
    checktype(childKey, 'integer', 'loadTimerDialogHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.timerdialog'):fromUd(Native.LoadTimerDialogHandle(getUd(self), parentKey, childKey))
end

---loadLeaderboardHandle
---@param parentKey integer
---@param childKey integer
---@return LeaderBoard
function Hashtable:loadLeaderboardHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadLeaderboardHandle', 'self')
    checktype(parentKey, 'integer', 'loadLeaderboardHandle', 1)
    checktype(childKey, 'integer', 'loadLeaderboardHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.leaderboard'):fromUd(Native.LoadLeaderboardHandle(getUd(self), parentKey, childKey))
end

---loadMultiboardHandle
---@param parentKey integer
---@param childKey integer
---@return MultiBoard
function Hashtable:loadMultiboardHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadMultiboardHandle', 'self')
    checktype(parentKey, 'integer', 'loadMultiboardHandle', 1)
    checktype(childKey, 'integer', 'loadMultiboardHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.multiboard'):fromUd(Native.LoadMultiboardHandle(getUd(self), parentKey, childKey))
end

---loadMultiboardItemHandle
---@param parentKey integer
---@param childKey integer
---@return MultiBoardItem
function Hashtable:loadMultiboardItemHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadMultiboardItemHandle', 'self')
    checktype(parentKey, 'integer', 'loadMultiboardItemHandle', 1)
    checktype(childKey, 'integer', 'loadMultiboardItemHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.multiboarditem'):fromUd(Native.LoadMultiboardItemHandle(getUd(self), parentKey, childKey))
end

---loadTrackableHandle
---@param parentKey integer
---@param childKey integer
---@return Trackable
function Hashtable:loadTrackableHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadTrackableHandle', 'self')
    checktype(parentKey, 'integer', 'loadTrackableHandle', 1)
    checktype(childKey, 'integer', 'loadTrackableHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.trackable'):fromUd(Native.LoadTrackableHandle(getUd(self), parentKey, childKey))
end

---loadDialogHandle
---@param parentKey integer
---@param childKey integer
---@return Dialog
function Hashtable:loadDialogHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadDialogHandle', 'self')
    checktype(parentKey, 'integer', 'loadDialogHandle', 1)
    checktype(childKey, 'integer', 'loadDialogHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.dialog'):fromUd(Native.LoadDialogHandle(getUd(self), parentKey, childKey))
end

---loadButtonHandle
---@param parentKey integer
---@param childKey integer
---@return Button
function Hashtable:loadButtonHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadButtonHandle', 'self')
    checktype(parentKey, 'integer', 'loadButtonHandle', 1)
    checktype(childKey, 'integer', 'loadButtonHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.button'):fromUd(Native.LoadButtonHandle(getUd(self), parentKey, childKey))
end

---loadTextTagHandle
---@param parentKey integer
---@param childKey integer
---@return TextTag
function Hashtable:loadTextTagHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadTextTagHandle', 'self')
    checktype(parentKey, 'integer', 'loadTextTagHandle', 1)
    checktype(childKey, 'integer', 'loadTextTagHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.texttag'):fromUd(Native.LoadTextTagHandle(getUd(self), parentKey, childKey))
end

---loadLightningHandle
---@param parentKey integer
---@param childKey integer
---@return Lightning
function Hashtable:loadLightningHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadLightningHandle', 'self')
    checktype(parentKey, 'integer', 'loadLightningHandle', 1)
    checktype(childKey, 'integer', 'loadLightningHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.lightning'):fromUd(Native.LoadLightningHandle(getUd(self), parentKey, childKey))
end

---loadImageHandle
---@param parentKey integer
---@param childKey integer
---@return Image
function Hashtable:loadImageHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadImageHandle', 'self')
    checktype(parentKey, 'integer', 'loadImageHandle', 1)
    checktype(childKey, 'integer', 'loadImageHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.image'):fromUd(Native.LoadImageHandle(getUd(self), parentKey, childKey))
end

---loadUbersplatHandle
---@param parentKey integer
---@param childKey integer
---@return Ubersplat
function Hashtable:loadUbersplatHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadUbersplatHandle', 'self')
    checktype(parentKey, 'integer', 'loadUbersplatHandle', 1)
    checktype(childKey, 'integer', 'loadUbersplatHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.ubersplat'):fromUd(Native.LoadUbersplatHandle(getUd(self), parentKey, childKey))
end

---loadRegionHandle
---@param parentKey integer
---@param childKey integer
---@return Region
function Hashtable:loadRegionHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadRegionHandle', 'self')
    checktype(parentKey, 'integer', 'loadRegionHandle', 1)
    checktype(childKey, 'integer', 'loadRegionHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.region'):fromUd(Native.LoadRegionHandle(getUd(self), parentKey, childKey))
end

---loadFogStateHandle
---@param parentKey integer
---@param childKey integer
---@return FogState
function Hashtable:loadFogStateHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadFogStateHandle', 'self')
    checktype(parentKey, 'integer', 'loadFogStateHandle', 1)
    checktype(childKey, 'integer', 'loadFogStateHandle', 2)
--@end-debug@
    return Native.LoadFogStateHandle(getUd(self), parentKey, childKey)
end

---loadFogModifierHandle
---@param parentKey integer
---@param childKey integer
---@return FogModifier
function Hashtable:loadFogModifierHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadFogModifierHandle', 'self')
    checktype(parentKey, 'integer', 'loadFogModifierHandle', 1)
    checktype(childKey, 'integer', 'loadFogModifierHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.fogmodifier'):fromUd(Native.LoadFogModifierHandle(getUd(self), parentKey, childKey))
end

---loadHandle
---@param parentKey integer
---@param childKey integer
---@return Hashtable
function Hashtable:loadHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadHandle', 'self')
    checktype(parentKey, 'integer', 'loadHandle', 1)
    checktype(childKey, 'integer', 'loadHandle', 2)
--@end-debug@
    return Hashtable:fromUd(Native.LoadHashtableHandle(getUd(self), parentKey, childKey))
end

---loadFrameHandle
---@param parentKey integer
---@param childKey integer
---@return Frame
function Hashtable:loadFrameHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'loadFrameHandle', 'self')
    checktype(parentKey, 'integer', 'loadFrameHandle', 1)
    checktype(childKey, 'integer', 'loadFrameHandle', 2)
--@end-debug@
    return require('lib.stdlib.oop.frame'):fromUd(Native.LoadFrameHandle(getUd(self), parentKey, childKey))
end

---haveSavedInteger
---@param parentKey integer
---@param childKey integer
---@return boolean
function Hashtable:haveSavedInteger(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'haveSavedInteger', 'self')
    checktype(parentKey, 'integer', 'haveSavedInteger', 1)
    checktype(childKey, 'integer', 'haveSavedInteger', 2)
--@end-debug@
    return Native.HaveSavedInteger(getUd(self), parentKey, childKey)
end

---haveSavedReal
---@param parentKey integer
---@param childKey integer
---@return boolean
function Hashtable:haveSavedReal(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'haveSavedReal', 'self')
    checktype(parentKey, 'integer', 'haveSavedReal', 1)
    checktype(childKey, 'integer', 'haveSavedReal', 2)
--@end-debug@
    return Native.HaveSavedReal(getUd(self), parentKey, childKey)
end

---haveSavedBoolean
---@param parentKey integer
---@param childKey integer
---@return boolean
function Hashtable:haveSavedBoolean(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'haveSavedBoolean', 'self')
    checktype(parentKey, 'integer', 'haveSavedBoolean', 1)
    checktype(childKey, 'integer', 'haveSavedBoolean', 2)
--@end-debug@
    return Native.HaveSavedBoolean(getUd(self), parentKey, childKey)
end

---haveSavedString
---@param parentKey integer
---@param childKey integer
---@return boolean
function Hashtable:haveSavedString(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'haveSavedString', 'self')
    checktype(parentKey, 'integer', 'haveSavedString', 1)
    checktype(childKey, 'integer', 'haveSavedString', 2)
--@end-debug@
    return Native.HaveSavedString(getUd(self), parentKey, childKey)
end

---haveSavedHandle
---@param parentKey integer
---@param childKey integer
---@return boolean
function Hashtable:haveSavedHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'haveSavedHandle', 'self')
    checktype(parentKey, 'integer', 'haveSavedHandle', 1)
    checktype(childKey, 'integer', 'haveSavedHandle', 2)
--@end-debug@
    return Native.HaveSavedHandle(getUd(self), parentKey, childKey)
end

---removeSavedInteger
---@param parentKey integer
---@param childKey integer
---@return void
function Hashtable:removeSavedInteger(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'removeSavedInteger', 'self')
    checktype(parentKey, 'integer', 'removeSavedInteger', 1)
    checktype(childKey, 'integer', 'removeSavedInteger', 2)
--@end-debug@
    return Native.RemoveSavedInteger(getUd(self), parentKey, childKey)
end

---removeSavedReal
---@param parentKey integer
---@param childKey integer
---@return void
function Hashtable:removeSavedReal(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'removeSavedReal', 'self')
    checktype(parentKey, 'integer', 'removeSavedReal', 1)
    checktype(childKey, 'integer', 'removeSavedReal', 2)
--@end-debug@
    return Native.RemoveSavedReal(getUd(self), parentKey, childKey)
end

---removeSavedBoolean
---@param parentKey integer
---@param childKey integer
---@return void
function Hashtable:removeSavedBoolean(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'removeSavedBoolean', 'self')
    checktype(parentKey, 'integer', 'removeSavedBoolean', 1)
    checktype(childKey, 'integer', 'removeSavedBoolean', 2)
--@end-debug@
    return Native.RemoveSavedBoolean(getUd(self), parentKey, childKey)
end

---removeSavedString
---@param parentKey integer
---@param childKey integer
---@return void
function Hashtable:removeSavedString(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'removeSavedString', 'self')
    checktype(parentKey, 'integer', 'removeSavedString', 1)
    checktype(childKey, 'integer', 'removeSavedString', 2)
--@end-debug@
    return Native.RemoveSavedString(getUd(self), parentKey, childKey)
end

---removeSavedHandle
---@param parentKey integer
---@param childKey integer
---@return void
function Hashtable:removeSavedHandle(parentKey, childKey)
--@debug@
    checkobject(self, Hashtable, 'removeSavedHandle', 'self')
    checktype(parentKey, 'integer', 'removeSavedHandle', 1)
    checktype(childKey, 'integer', 'removeSavedHandle', 2)
--@end-debug@
    return Native.RemoveSavedHandle(getUd(self), parentKey, childKey)
end

---flushParent
---@return void
function Hashtable:flushParent()
--@debug@
    checkobject(self, Hashtable, 'flushParent', 'self')
--@end-debug@
    return Native.FlushParentHashtable(getUd(self))
end

---flushChild
---@param parentKey integer
---@return void
function Hashtable:flushChild(parentKey)
--@debug@
    checkobject(self, Hashtable, 'flushChild', 'self')
    checktype(parentKey, 'integer', 'flushChild', 1)
--@end-debug@
    return Native.FlushChildHashtable(getUd(self), parentKey)
end

return Hashtable
