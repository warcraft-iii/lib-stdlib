local Native = require('lib.stdlib.native')

---@class Force : Agent
local Force = class('Force', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Force:destructor()
    return Native.DestroyForce(getUd(self))
end

---<static> create
---@return Force
function Force:create()
    return Force:fromUd(Native.CreateForce())
end

---addPlayer
---@param player Player
---@return void
function Force:addPlayer(player)
    return Native.ForceAddPlayer(getUd(self), getUd(player))
end

---removePlayer
---@param player Player
---@return void
function Force:removePlayer(player)
    return Native.ForceRemovePlayer(getUd(self), getUd(player))
end

---hasPlayer
---@param player Player
---@return boolean
function Force:hasPlayer(player)
    return Native.BlzForceHasPlayer(getUd(self), getUd(player))
end

---clear
---@return void
function Force:clear()
    return Native.ForceClear(getUd(self))
end

---enumPlayers
---@param filter PlayerFilter
---@return void
function Force:enumPlayers(filter)
    filter = require('lib.stdlib.oop.filter'):createPlayerFilter(filter)
    Native.ForceEnumPlayers(getUd(self), filter)
    if filter then filter:destroy() end
end

---enumPlayersCounted
---@param countLimit integer
---@param filter PlayerFilter
---@return void
function Force:enumPlayersCounted(countLimit, filter)
    filter = require('lib.stdlib.oop.filter'):createPlayerFilter(filter)
    Native.ForceEnumPlayersCounted(getUd(self), filter, countLimit)
    if filter then filter:destroy() end
end

---enumAllies
---@param player Player
---@param filter PlayerFilter
---@return void
function Force:enumAllies(player, filter)
    filter = require('lib.stdlib.oop.filter'):createPlayerFilter(filter)
    Native.ForceEnumAllies(getUd(self), getUd(player), filter)
    if filter then filter:destroy() end
end

---enumEnemies
---@param player Player
---@param filter PlayerFilter
---@return void
function Force:enumEnemies(player, filter)
    filter = require('lib.stdlib.oop.filter'):createPlayerFilter(filter)
    Native.ForceEnumEnemies(getUd(self), getUd(player), filter)
    if filter then filter:destroy() end
end

---forEach
---@param callback PlayerCallback
---@return void
function Force:forEach(callback)
    callback = require('lib.stdlib.oop.function'):createPlayerCallback(callback)
    return Native.ForForce(getUd(self), callback)
end

return Force
