local Observer = require('stdlib.utils.observer')
local UnitTracker = require('stdlib.triggers.UnitTracker')

---DamageDetection
--- Listen to any damage event that happens on the map.
--- Example:
---
---DamageDetection:add(function()
---    print("Damage Event with dmg: " .. Event:getEventDamage())
---end)
---
---@class DamageDetection
local DamageDetection = Observer:new()

function DamageDetection:init()
    self.SWAP_TIMEOUT = 600
    self.current = Trigger:create()
    ---@type Trigger
    self.toDestroy = nil
    ---@type function[]
    self.callback = {}

    UnitTracker:enter(function()
        self:push(UnitTracker:getUnit())
    end)

    local timer = Timer:create()
    timer:start(self.SWAP_TIMEOUT, function()
        self:swap()
    end)

end

---@param u Unit
function DamageDetection:push(u)
    self.current:registerUnitEvent(u, UnitEvent.Damaged)
end

--- Cleanup
function DamageDetection:swap()
    local e = self.current:isEnabled()
    self.current:disable()

    if self.toDestroy then
        self.toDestroy:destroy()
    end

    self.toDestroy = self.current
    self.current = Trigger:create()

    if not e then
        self.current:disable()
    end

    for _, p in ipairs(Player:all()) do
        p:getUnits(function(u)
            self:push(u)
            return false
        end)
    end

    for _, c in ipairs(self.callback) do
        self.current:addCondition(c)
    end
end

---@param c function
function DamageDetection:add(c)
    self.current:addCondition(c)
    table.insert(self.callback, c)
end

function DamageDetection:disable()
    self.current:disable()
end

function DamageDetection:enable()
    self.current:enable()
end

DamageDetection:init()

return DamageDetection
