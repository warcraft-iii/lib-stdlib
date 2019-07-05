local Native = require('lib.stdlib.native')

---@class Force : Agent
local Force = class('Force', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Force:destructor()
--@debug@
    checkobject(self, Force, 'destructor', 'self')
--@end-debug@
    return Native.DestroyForce(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function Force:destroy()
--@debug@
    deprecated('Force.destroy', 'Force.delete')
--@end-debug@
    return self:delete()
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
--@debug@
    checkobject(self, Force, 'addPlayer', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'addPlayer', 1)
--@end-debug@
    return Native.ForceAddPlayer(getUd(self), getUd(player))
end

---removePlayer
---@param player Player
---@return void
function Force:removePlayer(player)
--@debug@
    checkobject(self, Force, 'removePlayer', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'removePlayer', 1)
--@end-debug@
    return Native.ForceRemovePlayer(getUd(self), getUd(player))
end

---hasPlayer
---@param player Player
---@return boolean
function Force:hasPlayer(player)
--@debug@
    checkobject(self, Force, 'hasPlayer', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'hasPlayer', 1)
--@end-debug@
    return Native.BlzForceHasPlayer(getUd(self), getUd(player))
end

---clear
---@return void
function Force:clear()
--@debug@
    checkobject(self, Force, 'clear', 'self')
--@end-debug@
    return Native.ForceClear(getUd(self))
end

---enumPlayers
---@param filter PlayerFilter
---@return void
function Force:enumPlayers(filter)
--@debug@
    checkobject(self, Force, 'enumPlayers', 'self')
    checktype(filter, 'function', 'enumPlayers', 1)
--@end-debug@
    filter = require('lib.stdlib.oop.filter'):createPlayerFilter(filter)
    Native.ForceEnumPlayers(getUd(self), getUd(filter))
    if filter then filter:delete() end
end

---enumPlayersCounted
---@param countLimit integer
---@param filter PlayerFilter
---@return void
function Force:enumPlayersCounted(countLimit, filter)
--@debug@
    checkobject(self, Force, 'enumPlayersCounted', 'self')
    checktype(countLimit, 'integer', 'enumPlayersCounted', 1)
    checktype(filter, 'function', 'enumPlayersCounted', 2)
--@end-debug@
    filter = require('lib.stdlib.oop.filter'):createPlayerFilter(filter)
    Native.ForceEnumPlayersCounted(getUd(self), getUd(filter), countLimit)
    if filter then filter:delete() end
end

---enumAllies
---@param player Player
---@param filter PlayerFilter
---@return void
function Force:enumAllies(player, filter)
--@debug@
    checkobject(self, Force, 'enumAllies', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'enumAllies', 1)
    checktype(filter, 'function', 'enumAllies', 2)
--@end-debug@
    filter = require('lib.stdlib.oop.filter'):createPlayerFilter(filter)
    Native.ForceEnumAllies(getUd(self), getUd(player), getUd(filter))
    if filter then filter:delete() end
end

---enumEnemies
---@param player Player
---@param filter PlayerFilter
---@return void
function Force:enumEnemies(player, filter)
--@debug@
    checkobject(self, Force, 'enumEnemies', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'enumEnemies', 1)
    checktype(filter, 'function', 'enumEnemies', 2)
--@end-debug@
    filter = require('lib.stdlib.oop.filter'):createPlayerFilter(filter)
    Native.ForceEnumEnemies(getUd(self), getUd(player), getUd(filter))
    if filter then filter:delete() end
end

---forEach
---@param callback PlayerCallback
---@return void
function Force:forEach(callback)
--@debug@
    checkobject(self, Force, 'forEach', 'self')
    checktype(callback, 'function', 'forEach', 1)
--@end-debug@
    callback = require('lib.stdlib.oop.function'):createPlayerCallback(callback)
    return Native.ForForce(getUd(self), callback)
end

return Force
