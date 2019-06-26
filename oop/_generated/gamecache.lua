local Native = require('lib.stdlib.native')
local Unit = require('lib.stdlib.oop.unit')

---@class GameCache : Agent
local GameCache = class('GameCache', require('lib.stdlib.oop.agent'))

---<static> create
---@param campaignFile string
---@return GameCache
function GameCache:create(campaignFile)
    return GameCache:fromUd(Native.InitGameCache(campaignFile))
end

---save
---@return boolean
function GameCache:save()
    return Native.SaveGameCache(getUd(self))
end

---storeInteger
---@param missionKey string
---@param key string
---@param value integer
---@return void
function GameCache:storeInteger(missionKey, key, value)
    return Native.StoreInteger(getUd(self), missionKey, key, value)
end

---storeReal
---@param missionKey string
---@param key string
---@param value float
---@return void
function GameCache:storeReal(missionKey, key, value)
    return Native.StoreReal(getUd(self), missionKey, key, value)
end

---storeBoolean
---@param missionKey string
---@param key string
---@param value boolean
---@return void
function GameCache:storeBoolean(missionKey, key, value)
    return Native.StoreBoolean(getUd(self), missionKey, key, value)
end

---storeUnit
---@param missionKey string
---@param key string
---@param unit Unit
---@return boolean
function GameCache:storeUnit(missionKey, key, unit)
    return Native.StoreUnit(getUd(self), missionKey, key, getUd(unit))
end

---storeString
---@param missionKey string
---@param key string
---@param value string
---@return boolean
function GameCache:storeString(missionKey, key, value)
    return Native.StoreString(getUd(self), missionKey, key, value)
end

---syncStoredInteger
---@param missionKey string
---@param key string
---@return void
function GameCache:syncStoredInteger(missionKey, key)
    return Native.SyncStoredInteger(getUd(self), missionKey, key)
end

---syncStoredReal
---@param missionKey string
---@param key string
---@return void
function GameCache:syncStoredReal(missionKey, key)
    return Native.SyncStoredReal(getUd(self), missionKey, key)
end

---syncStoredBoolean
---@param missionKey string
---@param key string
---@return void
function GameCache:syncStoredBoolean(missionKey, key)
    return Native.SyncStoredBoolean(getUd(self), missionKey, key)
end

---syncStoredUnit
---@param missionKey string
---@param key string
---@return void
function GameCache:syncStoredUnit(missionKey, key)
    return Native.SyncStoredUnit(getUd(self), missionKey, key)
end

---syncStoredString
---@param missionKey string
---@param key string
---@return void
function GameCache:syncStoredString(missionKey, key)
    return Native.SyncStoredString(getUd(self), missionKey, key)
end

---haveStoredInteger
---@param missionKey string
---@param key string
---@return boolean
function GameCache:haveStoredInteger(missionKey, key)
    return Native.HaveStoredInteger(getUd(self), missionKey, key)
end

---haveStoredReal
---@param missionKey string
---@param key string
---@return boolean
function GameCache:haveStoredReal(missionKey, key)
    return Native.HaveStoredReal(getUd(self), missionKey, key)
end

---haveStoredBoolean
---@param missionKey string
---@param key string
---@return boolean
function GameCache:haveStoredBoolean(missionKey, key)
    return Native.HaveStoredBoolean(getUd(self), missionKey, key)
end

---haveStoredUnit
---@param missionKey string
---@param key string
---@return boolean
function GameCache:haveStoredUnit(missionKey, key)
    return Native.HaveStoredUnit(getUd(self), missionKey, key)
end

---haveStoredString
---@param missionKey string
---@param key string
---@return boolean
function GameCache:haveStoredString(missionKey, key)
    return Native.HaveStoredString(getUd(self), missionKey, key)
end

---flush
---@return void
function GameCache:flush()
    return Native.FlushGameCache(getUd(self))
end

---flushStoredMission
---@param missionKey string
---@return void
function GameCache:flushStoredMission(missionKey)
    return Native.FlushStoredMission(getUd(self), missionKey)
end

---flushStoredInteger
---@param missionKey string
---@param key string
---@return void
function GameCache:flushStoredInteger(missionKey, key)
    return Native.FlushStoredInteger(getUd(self), missionKey, key)
end

---flushStoredReal
---@param missionKey string
---@param key string
---@return void
function GameCache:flushStoredReal(missionKey, key)
    return Native.FlushStoredReal(getUd(self), missionKey, key)
end

---flushStoredBoolean
---@param missionKey string
---@param key string
---@return void
function GameCache:flushStoredBoolean(missionKey, key)
    return Native.FlushStoredBoolean(getUd(self), missionKey, key)
end

---flushStoredUnit
---@param missionKey string
---@param key string
---@return void
function GameCache:flushStoredUnit(missionKey, key)
    return Native.FlushStoredUnit(getUd(self), missionKey, key)
end

---flushStoredString
---@param missionKey string
---@param key string
---@return void
function GameCache:flushStoredString(missionKey, key)
    return Native.FlushStoredString(getUd(self), missionKey, key)
end

---getStoredInteger
---@param missionKey string
---@param key string
---@return integer
function GameCache:getStoredInteger(missionKey, key)
    return Native.GetStoredInteger(getUd(self), missionKey, key)
end

---getStoredReal
---@param missionKey string
---@param key string
---@return float
function GameCache:getStoredReal(missionKey, key)
    return Native.GetStoredReal(getUd(self), missionKey, key)
end

---getStoredBoolean
---@param missionKey string
---@param key string
---@return boolean
function GameCache:getStoredBoolean(missionKey, key)
    return Native.GetStoredBoolean(getUd(self), missionKey, key)
end

---getStoredString
---@param missionKey string
---@param key string
---@return string
function GameCache:getStoredString(missionKey, key)
    return Native.GetStoredString(getUd(self), missionKey, key)
end

---restoreUnit
---@param missionKey string
---@param key string
---@param forWhichPlayer Player
---@param x float
---@param y float
---@param facing float
---@return Unit
function GameCache:restoreUnit(missionKey, key, forWhichPlayer, x, y, facing)
    return Unit:fromUd(Native.RestoreUnit(getUd(self), missionKey, key, getUd(forWhichPlayer), x, y, facing))
end

return GameCache
