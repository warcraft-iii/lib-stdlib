local Trigger =  require('lib.stdlib.oop._generated.trigger')
local Player = require('lib.stdlib.oop.player')

---registerAllPlayersUnitEvent
---@param playerUnitEvent PlayerUnitEvent
function Trigger:registerAllPlayersUnitEvent(playerUnitEvent)
    for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
        self:registerPlayerUnitEvent(Player:get(i), playerUnitEvent)
    end
end

return Trigger
