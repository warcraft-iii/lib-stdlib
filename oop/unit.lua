---@type Unit
local Unit = require('lib.stdlib.oop._generated._unit')
local Vector = require('lib.stdlib.oop.vector')

---isDead
---@return boolean
function Unit:isDead()
    return self:getState(UnitState.Life) <= 0
end

---isAlive
---@return boolean
function Unit:isAlive()
    return not self:isDead()
end

---replace
---@param id integer
---@param method ReplaceUnitStateMethod
---@return Unit
function Unit:replace(id, method)
    return Unit:fromUd(ReplaceUnitBJ(getUd(self), id, method))
end

---pause
---@return void
function Unit:pause()
    return self:setPaused(true)
end

---resume
---@return void
function Unit:resume()
    return self:setPaused(false)
end

---show
---@return void
function Unit:show()
    return self:setShown(true)
end

---hide
---@return void
function Unit:hide()
    return self:setShown(false)
end

---<**_DEPRECATED_**>getOwningPlayer
---@return Player
function Unit:getOwningPlayer()
    -- @debug@
    deprecated('getOwningPlayer', 'getOwner')
    -- @end-debug@
    return self:getOwner()
end

---getPos
---@return Vector
function Unit:getPos()
    return Vector:new(self:getX(), self:getY())
end

return Unit
