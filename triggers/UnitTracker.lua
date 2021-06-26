--- Unit Tracker
local Observer = require('stdlib.utils.observer')
local ID = require('stdlib.objediting.stdlibids')
local Native = require('stdlib.native')
local Order = require('stdlib.enum.order')

---UnitTracker
--- Provides event API for units entering and leaving the map.
--- The event will also fire for preplaced units on the map.
--- NOTE: Any move applied to a unit as response to an enter event
--- will fire the enter event again.
---
---@class UnitTracker
local UnitTracker = Observer:new()

function UnitTracker:init()
    self.trigger = Trigger:create()

    ---@type Units[]
    self.tempUnits = {}
    self.unitCount = 0

    for _, p in ipairs(Player:all()) do
        p:setAbilityAvailable(ID.Abilities.UnitEnterLeaveDectect, false)
    end

    Timer:after(0, function()

        local worldRect = Native.GetWorldBounds()

        -- enter
        local trigger = Trigger:create()
        trigger:registerEnterRect(worldRect)
        trigger:addCondition(function()
            local u = Event:getEnteringUnit()
            self:prepare(u)
            self:push(u)
            self.trigger:evaluate()
            self:pop()
        end)

        -- leave
        trigger = Trigger:create()
        trigger:registerAllPlayersUnitEvent(PlayerUnitEvent.UnitIssuedOrder)
        trigger:addAction(function()
            local u = Event:getTriggerUnit()
            if u:getAbilityLevel(ID.Abilities.UnitEnterLeaveDectect) == 0 and Event:getIssuedOrder() == Order.undefend then
                self:push(u)
                self.trigger:execute()
                self:pop()
            end
        end)

        -- Process preplaced units
        local g = Group:create()
        g:enumUnitsInRect(worldRect)
        for _, u in ipairs(g:getUnits()) do
            self:prepare(u)
        end
        g:clear()
        g:destroy()

    end)
end

---@param u Unit
function UnitTracker:prepare(u)
    u:addAbility(ID.Abilities.UnitEnterLeaveDectect)
    u:makeAbilityPermanent(true, ID.Abilities.UnitEnterLeaveDectect)
end

---@param u Unit
function UnitTracker:push(u)
    table.insert(self.tempUnits, u)
    self.unitCount = self.unitCount + 1
end

function UnitTracker:pop()
    self.unitCount = self.unitCount - 1
end

function UnitTracker:getUnit()
    return self.tempUnits[self.unitCount - 1]
end

---@param c fun()
function UnitTracker:enter(c)
    self.trigger:addCondition(c)
end

function UnitTracker:leave(c)
    self.trigger:addAction(c)
end

UnitTracker:init()

return UnitTracker
