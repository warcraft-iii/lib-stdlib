local Observer = require('stdlib.utils.observer')

---@class TriggerRegister
local TriggerRegister = Observer:new()

function TriggerRegister:init()
    ---@type table<integer, Trigger>
    self.triggers = {}

    ---@type table<integer, function[]>
    self.idCallbackMap = setmetatable({}, {
        __index = function(tbl, key)
            tbl[key] = {}
            return tbl[key]
        end,
    })
end

---@param id integer
---@param callback fun(t: Trigger)
---@param p Player|nil
function TriggerRegister:getTrigger(id, callback, p)
    local key = tostring(id) .. tostring(p)
    if not self.triggers[key] then
        self.triggers[key] = Trigger:create()
        callback(self.triggers[key])
    end
    return self.triggers[key]
end

---@param event PlayerUnitEvent
---@param filter BoolExpr
---@param condition function
---@param action function
---@return function canceller
function TriggerRegister:registerPlayerUnitEvent(event, action, condition, filter)

    local trigger = self:getTrigger(event, function(t)
        t:registerAllPlayersUnitEvent(event, filter)
    end)

    if condition then
        trigger:addCondition(condition)
    end

    if action then
        trigger:addAction(action)
    end

    return function()
        if condition then
            trigger:removeCondition(condition)
        end

        if action then
            trigger:removeAction(action)
        end
    end
end

---@param event PlayerUnitEvent
---@param condition function
---@param p Player
---@return function canceller
function TriggerRegister:registerPlayerUnitEventForPlayer(event, condition, p)
    local trigger = self:getTrigger(event, function(t)
        t:registerPlayerUnitEvent(p, event)
    end, p)
    trigger:addCondition(condition)

    return function()
        if condition then
            trigger:removeCondition(condition)
        end
    end
end

---@param event PlayerEvent
---@param condition function
---@param action function
---@return function canceller
function TriggerRegister:registerPlayerEvent(event, condition, action)
    local trigger = self:getTrigger(event, function(t)
        t:registerAllPlayersEvent(event)
    end)
    if condition then
        trigger:addCondition(condition)
    end
    if action then
        trigger:addAction(action)
    end

    return function()
        if condition then
            trigger:removeCondition(condition)
        end

        if action then
            trigger:removeAction(action)
        end
    end
end

---@param abil string|integer
---@param onUse fun(event: Event)
function TriggerRegister:registerSpellEffectEvent(abil, onCast)

    if not self.triggerSpellEffect then
        self.triggerSpellEffect = Trigger:create()
        self.triggerSpellEffect:registerAllPlayersUnitEvent(PlayerUnitEvent.UnitSpellEffect)
        self.triggerSpellEffect:addAction(function()
            local tbl = self.idCallbackMap[Event:getSpellAbilityId()]
            for _, cb in ipairs(tbl) do
                cb(Event)
            end
        end)
    end

    local tbl = self.idCallbackMap[FourCC(abil)]
    table.insert(tbl, onCast)

    return function()
        for index, value in ipairs(tbl) do
            if value == onCast then
                table.remove(tbl, index)
                break
            end
        end
    end

end

---@param itemId string|integer
---@param onUse fun(event: Event)
function TriggerRegister:registerUseItemEvent(itemId, onUse)

    if not self.triggerUseItem then
        self.triggerUseItem = Trigger:create()
        self.triggerUseItem:registerAllPlayersUnitEvent(PlayerUnitEvent.UnitUseItem)
        self.triggerUseItem:addAction(function()
            local tbl = self.idCallbackMap[Event:getManipulatedItem():getTypeId()]
            for _, cb in ipairs(tbl) do
                cb(Event)
            end
        end)
    end

    local tbl = self.idCallbackMap[FourCC(itemId)]
    table.insert(tbl, onUse)

    return function()
        for index, value in ipairs(tbl) do
            if value == onUse then
                table.remove(tbl, index)
                break
            end
        end
    end

end

TriggerRegister:init()

return TriggerRegister
