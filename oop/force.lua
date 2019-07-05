---@type Force
local Force = require('lib.stdlib.oop._generated._force')

---size
---@return integer
function Force:size()
    local count = 0
    self:forEach(function()
        count = count + 1
    end)
    return count
end

---@type Force
local ALL_PLAYERS
do
    if bj_FORCE_ALL_PLAYERS then
        ALL_PLAYERS = Force:fromUd(bj_FORCE_ALL_PLAYERS)
    else
        ALL_PLAYERS = Force:create()
        ALL_PLAYERS:enumPlayers()
    end
end

---<static> allPlayers
---@return Force
function Force:allPlayers()
    return ALL_PLAYERS
end

---getPlayers
---@return Player[]
function Force:getPlayers()
    local players = {}
    self:forEach(function(player)
        table.insert(players, player)
    end)
    return players
end

---iteratePlayers
---@return fun(): Player
function Force:iteratePlayers()
    return vipairs(self:getPlayers())
end

return Force
