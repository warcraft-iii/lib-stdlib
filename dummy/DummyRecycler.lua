--- Dummy Recycler
local Observer = require('stdlib.utils.observer')
local ID = require('stdlib.objediting.stdlibids')
local Player = require('stdlib.oop.player')
local Unit = require('stdlib.oop.unit')
local Vector = require('stdlib.oop.vector')
local Angle = require('stdlib.math.Angle')
local Timer = require('stdlib.oop.timer')

---@class DummyRecycler
---@field private angleQueues Unit[][]
local DummyRecycler = Observer:new()

---@param pos Vector
---@param owher Player
---@param facing Angle
local function createDummy(pos, owner, facing)
    local u = Unit:create(owner, DummyRecycler.DUMMY_UNIT_ID, pos, facing:degrees())
    u:addAbility(FourCC('Amrf'))
    u:removeAbility(FourCC('Amrf'))
    u:addAbility(DummyRecycler.ROOT_ENABLER)
    u:removeAbility(DummyRecycler.ROOT_ENABLER)
    u:setPosition(pos)
    u:setFacing(facing:degrees())
    return u
end

function DummyRecycler:init()
    -- Id of the dummy unit
    self.DUMMY_UNIT_ID = ID.Units.DummyUnit

    --[[ Id of the root ability
    it makes unit:
    1. not need to turn when spell or attack
    2. can't move or turn by order like a building
    3. but you can still set it's postion with code
    4. the effect remains even if this ability is removed
    --]]
    self.ROOT_ENABLER = ID.Abilities.RootEnabler

    self.DISABLE_AUTO_ACQUIRE_ATTACK_TARGETS_ABILITY_ID = ID.Abilities.DisableAutoAcquireAttackTargets

    self.DifferentAngles = 8
    self.AngleDegree = 360 / self.DifferentAngles
    self.SavedUnitsPreAngle = 6

    self.angleQueues = {}
    self.boundMax = Rect:getWorldBoundMax()

    for i = 1, self.DifferentAngles do
        self.angleQueues[i] = {}
        local facting = Angle:new(i * self.AngleDegree)
        for j = 1, self.SavedUnitsPreAngle do
            local dummy = createDummy(self.boundMax - Vector:new(16, 16), Player:getNeutralPassive(), facting)
            table.insert(self.angleQueues[i], dummy)
        end
    end
end

---@param pos Vector
---@param a Angle
---@return Unit
function DummyRecycler:get(pos, a)
    local angleIndex = math.floor((a:degrees() % 360 / self.AngleDegree) + 0.5) % self.DifferentAngles
    local tbl = self.angleQueues[angleIndex]
    if tbl and #tbl > 0 then
        local u = tbl[1]
        table.remove(tbl, 1)
        u:setPosition(pos)
        u:setPaused(false)
        return u
    end
    return createDummy(pos, Player:getNeutralPassive(), a)
end

---@param u Unit
function DummyRecycler:recycle(u)
    local smallest = 1
    for i = 1, self.DifferentAngles do
        if #self.angleQueues[smallest] > #self.angleQueues[i] then
            smallest = i
        end
    end

    if #self.angleQueues[smallest] >= self.SavedUnitsPreAngle then
        u:delete()
    else
        table.insert(self.angleQueues[smallest], u)
        u:setPosition(self.boundMax - Vector:new(16, 16))
        u:setPaused(true)
        u:setFacing(Angle:fromDeg(smallest * self.AngleDegree):degrees())
        u:setScale(1, 1, 1)
        u:setVertexColor(255, 255, 255, 255)
    end
end

---delayRecycle
---@param u Unit
---@param delay float
function DummyRecycler:delayRecycle(u, delay)
    Timer:after(delay, function()
        self:recycle(u)
    end)
end

DummyRecycler:init()

return DummyRecycler
