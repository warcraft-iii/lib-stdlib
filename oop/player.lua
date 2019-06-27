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

function Player:adjustGold(delta)
    return self:adjustState(PlayerState.ResourceGold, delta)
end

function Player:adjustLumber(delta)
    return self:adjustState(PlayerState.ResourceLumber, delta)
end

return Player
