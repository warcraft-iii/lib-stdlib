local Native = require('lib.stdlib.native')

---@class Location : Agent
local Location = class('Location', require('lib.stdlib.oop.agent'))

---- compact same name native function
setmetatable(Location, table.merge(getmetatable(Location), {__call = function(_, ...)
    return Native.Location(...)
end}))

---destructor
---@return void
function Location:destructor()
    return Native.RemoveLocation(getUd(self))
end

---remove
---@deprecated
---@return void
function Location:remove()
--@debug@
    deprecated('remove', 'delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@param x float
---@param y float
---@return Location
function Location:create(x, y)
    return Location:fromUd(Native.Location(x, y))
end

---move
---@param x float
---@param y float
---@return void
function Location:move(x, y)
    return Native.MoveLocation(getUd(self), x, y)
end

---getX
---@return float
function Location:getX()
    return Native.GetLocationX(getUd(self))
end

---getY
---@return float
function Location:getY()
    return Native.GetLocationY(getUd(self))
end

---getZ
---@return float
function Location:getZ()
    return Native.GetLocationZ(getUd(self))
end

---isVisibleToPlayer
---@param player Player
---@return boolean
function Location:isVisibleToPlayer(player)
    return Native.IsLocationVisibleToPlayer(getUd(self), getUd(player))
end

---isFoggedToPlayer
---@param player Player
---@return boolean
function Location:isFoggedToPlayer(player)
    return Native.IsLocationFoggedToPlayer(getUd(self), getUd(player))
end

---isMaskedToPlayer
---@param player Player
---@return boolean
function Location:isMaskedToPlayer(player)
    return Native.IsLocationMaskedToPlayer(getUd(self), getUd(player))
end

return Location
