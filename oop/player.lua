local Player = require('lib.stdlib.oop._generated._player')
local PlayerState = require('lib.stdlib.enum.playerstate')

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

return Player
