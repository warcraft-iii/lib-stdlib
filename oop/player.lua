---@type Player
local Player = require('lib.stdlib.oop._generated._player')
local PlayerState = require('lib.stdlib.enum.playerstate')
local Native = require('lib.stdlib.native.native')
local Group = require('lib.stdlib.oop.group')

---adjustState
---@param state PlayerState
---@param delta integer
---@return void
function Player:adjustState(state, delta)
    if delta > 0 then
        if state == PlayerState.ResourceGold then
            self:adjustState(PlayerState.GoldGathered, delta)
        elseif state == PlayerState.ResourceLumber then
            self:adjustState(PlayerState.LumberGathered, delta)
        end
    end
    return self:setState(state, self:getState(state) + delta)
end

---adjustGold
---@param delta integer
---@return void
function Player:adjustGold(delta)
    return self:adjustState(PlayerState.ResourceGold, delta)
end

---adjustLumber
---@param delta integer
---@return void
function Player:adjustLumber(delta)
    return self:adjustState(PlayerState.ResourceLumber, delta)
end

---iterateAll
---@return fun(): Player
function Player:iterateAll()
    return coroutine.wrap(function()
        for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
            coroutine.yield(Player:get(i))
        end
    end)
end

---getUnits
---@param filter UnitFilter
---@return Unit[]
function Player:getUnits(filter)
    local group = Group:create()
    group:enumUnitsOfPlayer(self, filter)
    local units = group:getUnits()
    group:delete()
    return units
end

---iterateUnits
---@param filter UnitFilter
---@return fun(): Unit
function Player:iterateUnits(filter)
    return vipairs(self:getUnits(filter))
end

---selectUnitSingle
---@param unit Unit
---@return void
function Player:selectUnitSingle(unit)
    if Player:getLocal() == self then
        Native.ClearSelection()
        unit:select(true)
    end
end

return Player
