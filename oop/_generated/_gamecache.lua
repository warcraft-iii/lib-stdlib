local Native = require('lib.stdlib.native')

---@class GameCache : Agent
local GameCache = class('GameCache', require('lib.stdlib.oop.agent'))

---<static> create
---@param campaignFile string
---@return GameCache
function GameCache:create(campaignFile)
--@debug@
    checkclass(self, GameCache, 'create', 'self')
    checktype(campaignFile, 'string', 'create', 1)
--@end-debug@
    return GameCache:fromUd(Native.InitGameCache(campaignFile))
end

---save
---@return boolean
function GameCache:save()
--@debug@
    checkobject(self, GameCache, 'save', 'self')
--@end-debug@
    return Native.SaveGameCache(getUd(self))
end

---storeInteger
---@param missionKey string
---@param key string
---@param value integer
---@return void
function GameCache:storeInteger(missionKey, key, value)
--@debug@
    checkobject(self, GameCache, 'storeInteger', 'self')
    checktype(missionKey, 'string', 'storeInteger', 1)
    checktype(key, 'string', 'storeInteger', 2)
    checktype(value, 'integer', 'storeInteger', 3)
--@end-debug@
    return Native.StoreInteger(getUd(self), missionKey, key, value)
end

---storeReal
---@param missionKey string
---@param key string
---@param value float
---@return void
function GameCache:storeReal(missionKey, key, value)
--@debug@
    checkobject(self, GameCache, 'storeReal', 'self')
    checktype(missionKey, 'string', 'storeReal', 1)
    checktype(key, 'string', 'storeReal', 2)
    checktype(value, 'float', 'storeReal', 3)
--@end-debug@
    return Native.StoreReal(getUd(self), missionKey, key, value)
end

---storeBoolean
---@param missionKey string
---@param key string
---@param value boolean
---@return void
function GameCache:storeBoolean(missionKey, key, value)
--@debug@
    checkobject(self, GameCache, 'storeBoolean', 'self')
    checktype(missionKey, 'string', 'storeBoolean', 1)
    checktype(key, 'string', 'storeBoolean', 2)
    checktype(value, 'boolean', 'storeBoolean', 3)
--@end-debug@
    return Native.StoreBoolean(getUd(self), missionKey, key, value)
end

---storeUnit
---@param missionKey string
---@param key string
---@param unit Unit
---@return boolean
function GameCache:storeUnit(missionKey, key, unit)
--@debug@
    checkobject(self, GameCache, 'storeUnit', 'self')
    checktype(missionKey, 'string', 'storeUnit', 1)
    checktype(key, 'string', 'storeUnit', 2)
    checkobject(unit, require('lib.stdlib.oop.unit'), 'storeUnit', 3)
--@end-debug@
    return Native.StoreUnit(getUd(self), missionKey, key, getUd(unit))
end

---storeString
---@param missionKey string
---@param key string
---@param value string
---@return boolean
function GameCache:storeString(missionKey, key, value)
--@debug@
    checkobject(self, GameCache, 'storeString', 'self')
    checktype(missionKey, 'string', 'storeString', 1)
    checktype(key, 'string', 'storeString', 2)
    checktype(value, 'string', 'storeString', 3)
--@end-debug@
    return Native.StoreString(getUd(self), missionKey, key, value)
end

---syncStoredInteger
---@param missionKey string
---@param key string
---@return void
function GameCache:syncStoredInteger(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'syncStoredInteger', 'self')
    checktype(missionKey, 'string', 'syncStoredInteger', 1)
    checktype(key, 'string', 'syncStoredInteger', 2)
--@end-debug@
    return Native.SyncStoredInteger(getUd(self), missionKey, key)
end

---syncStoredReal
---@param missionKey string
---@param key string
---@return void
function GameCache:syncStoredReal(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'syncStoredReal', 'self')
    checktype(missionKey, 'string', 'syncStoredReal', 1)
    checktype(key, 'string', 'syncStoredReal', 2)
--@end-debug@
    return Native.SyncStoredReal(getUd(self), missionKey, key)
end

---syncStoredBoolean
---@param missionKey string
---@param key string
---@return void
function GameCache:syncStoredBoolean(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'syncStoredBoolean', 'self')
    checktype(missionKey, 'string', 'syncStoredBoolean', 1)
    checktype(key, 'string', 'syncStoredBoolean', 2)
--@end-debug@
    return Native.SyncStoredBoolean(getUd(self), missionKey, key)
end

---syncStoredUnit
---@param missionKey string
---@param key string
---@return void
function GameCache:syncStoredUnit(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'syncStoredUnit', 'self')
    checktype(missionKey, 'string', 'syncStoredUnit', 1)
    checktype(key, 'string', 'syncStoredUnit', 2)
--@end-debug@
    return Native.SyncStoredUnit(getUd(self), missionKey, key)
end

---syncStoredString
---@param missionKey string
---@param key string
---@return void
function GameCache:syncStoredString(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'syncStoredString', 'self')
    checktype(missionKey, 'string', 'syncStoredString', 1)
    checktype(key, 'string', 'syncStoredString', 2)
--@end-debug@
    return Native.SyncStoredString(getUd(self), missionKey, key)
end

---haveStoredInteger
---@param missionKey string
---@param key string
---@return boolean
function GameCache:haveStoredInteger(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'haveStoredInteger', 'self')
    checktype(missionKey, 'string', 'haveStoredInteger', 1)
    checktype(key, 'string', 'haveStoredInteger', 2)
--@end-debug@
    return Native.HaveStoredInteger(getUd(self), missionKey, key)
end

---haveStoredReal
---@param missionKey string
---@param key string
---@return boolean
function GameCache:haveStoredReal(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'haveStoredReal', 'self')
    checktype(missionKey, 'string', 'haveStoredReal', 1)
    checktype(key, 'string', 'haveStoredReal', 2)
--@end-debug@
    return Native.HaveStoredReal(getUd(self), missionKey, key)
end

---haveStoredBoolean
---@param missionKey string
---@param key string
---@return boolean
function GameCache:haveStoredBoolean(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'haveStoredBoolean', 'self')
    checktype(missionKey, 'string', 'haveStoredBoolean', 1)
    checktype(key, 'string', 'haveStoredBoolean', 2)
--@end-debug@
    return Native.HaveStoredBoolean(getUd(self), missionKey, key)
end

---haveStoredUnit
---@param missionKey string
---@param key string
---@return boolean
function GameCache:haveStoredUnit(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'haveStoredUnit', 'self')
    checktype(missionKey, 'string', 'haveStoredUnit', 1)
    checktype(key, 'string', 'haveStoredUnit', 2)
--@end-debug@
    return Native.HaveStoredUnit(getUd(self), missionKey, key)
end

---haveStoredString
---@param missionKey string
---@param key string
---@return boolean
function GameCache:haveStoredString(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'haveStoredString', 'self')
    checktype(missionKey, 'string', 'haveStoredString', 1)
    checktype(key, 'string', 'haveStoredString', 2)
--@end-debug@
    return Native.HaveStoredString(getUd(self), missionKey, key)
end

---flush
---@return void
function GameCache:flush()
--@debug@
    checkobject(self, GameCache, 'flush', 'self')
--@end-debug@
    return Native.FlushGameCache(getUd(self))
end

---flushStoredMission
---@param missionKey string
---@return void
function GameCache:flushStoredMission(missionKey)
--@debug@
    checkobject(self, GameCache, 'flushStoredMission', 'self')
    checktype(missionKey, 'string', 'flushStoredMission', 1)
--@end-debug@
    return Native.FlushStoredMission(getUd(self), missionKey)
end

---flushStoredInteger
---@param missionKey string
---@param key string
---@return void
function GameCache:flushStoredInteger(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'flushStoredInteger', 'self')
    checktype(missionKey, 'string', 'flushStoredInteger', 1)
    checktype(key, 'string', 'flushStoredInteger', 2)
--@end-debug@
    return Native.FlushStoredInteger(getUd(self), missionKey, key)
end

---flushStoredReal
---@param missionKey string
---@param key string
---@return void
function GameCache:flushStoredReal(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'flushStoredReal', 'self')
    checktype(missionKey, 'string', 'flushStoredReal', 1)
    checktype(key, 'string', 'flushStoredReal', 2)
--@end-debug@
    return Native.FlushStoredReal(getUd(self), missionKey, key)
end

---flushStoredBoolean
---@param missionKey string
---@param key string
---@return void
function GameCache:flushStoredBoolean(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'flushStoredBoolean', 'self')
    checktype(missionKey, 'string', 'flushStoredBoolean', 1)
    checktype(key, 'string', 'flushStoredBoolean', 2)
--@end-debug@
    return Native.FlushStoredBoolean(getUd(self), missionKey, key)
end

---flushStoredUnit
---@param missionKey string
---@param key string
---@return void
function GameCache:flushStoredUnit(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'flushStoredUnit', 'self')
    checktype(missionKey, 'string', 'flushStoredUnit', 1)
    checktype(key, 'string', 'flushStoredUnit', 2)
--@end-debug@
    return Native.FlushStoredUnit(getUd(self), missionKey, key)
end

---flushStoredString
---@param missionKey string
---@param key string
---@return void
function GameCache:flushStoredString(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'flushStoredString', 'self')
    checktype(missionKey, 'string', 'flushStoredString', 1)
    checktype(key, 'string', 'flushStoredString', 2)
--@end-debug@
    return Native.FlushStoredString(getUd(self), missionKey, key)
end

---getStoredInteger
---@param missionKey string
---@param key string
---@return integer
function GameCache:getStoredInteger(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'getStoredInteger', 'self')
    checktype(missionKey, 'string', 'getStoredInteger', 1)
    checktype(key, 'string', 'getStoredInteger', 2)
--@end-debug@
    return Native.GetStoredInteger(getUd(self), missionKey, key)
end

---getStoredReal
---@param missionKey string
---@param key string
---@return float
function GameCache:getStoredReal(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'getStoredReal', 'self')
    checktype(missionKey, 'string', 'getStoredReal', 1)
    checktype(key, 'string', 'getStoredReal', 2)
--@end-debug@
    return Native.GetStoredReal(getUd(self), missionKey, key)
end

---getStoredBoolean
---@param missionKey string
---@param key string
---@return boolean
function GameCache:getStoredBoolean(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'getStoredBoolean', 'self')
    checktype(missionKey, 'string', 'getStoredBoolean', 1)
    checktype(key, 'string', 'getStoredBoolean', 2)
--@end-debug@
    return Native.GetStoredBoolean(getUd(self), missionKey, key)
end

---getStoredString
---@param missionKey string
---@param key string
---@return string
function GameCache:getStoredString(missionKey, key)
--@debug@
    checkobject(self, GameCache, 'getStoredString', 'self')
    checktype(missionKey, 'string', 'getStoredString', 1)
    checktype(key, 'string', 'getStoredString', 2)
--@end-debug@
    return Native.GetStoredString(getUd(self), missionKey, key)
end

---restoreUnit
---@overload fun(missionKey: string, key: string, forWhichPlayer: Player, vec: Vector, facing: float): Unit
---@param missionKey string
---@param key string
---@param forWhichPlayer Player
---@param x float
---@param y float
---@param facing float
---@return Unit
function GameCache:restoreUnit(missionKey, key, forWhichPlayer, x, y, facing)
    if type(x) == 'table' then
        facing = y
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, GameCache, 'restoreUnit', 'self')
    checktype(missionKey, 'string', 'restoreUnit', 1)
    checktype(key, 'string', 'restoreUnit', 2)
    checkobject(forWhichPlayer, require('lib.stdlib.oop.player'), 'restoreUnit', 3)
    checktype(x, 'float', 'restoreUnit', 4)
    checktype(y, 'float', 'restoreUnit', 5)
    checktype(facing, 'float', 'restoreUnit', 6)
--@end-debug@
    return require('lib.stdlib.oop.unit'):fromUd(Native.RestoreUnit(getUd(self), missionKey, key, getUd(forWhichPlayer), x, y, facing))
end

return GameCache
