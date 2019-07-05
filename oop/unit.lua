---@type Unit
local Unit = require('lib.stdlib.oop._generated._unit')
local UnitState = require('lib.stdlib.enum.unitstate')

---<static> createAtVec
---@param id Player
---@param unitid integer
---@param vec Vector
---@param face float
---@return Unit
function Unit:createAtVec(id, unitid, vec, face)
    return self:create(id, unitid, vec:getX(), vec:getY(), face)
end

---<static> createAtVecByName
---@param id Player
---@param unitname string
---@param vec Vector
---@param face float
---@return Unit
function Unit:createAtVecByName(id, unitname, vec, face)
    return self:createByName(id, unitname, vec:getX(), vec:getY(), face)
end

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

---setPositionVec
---@param vec Vector
---@return void
function Unit:setPositionVec(vec)
    return self:setPosition(vec:getXY())
end

---<**_DEPRECATED_**>getOwningPlayer
---@return Player
function Unit:getOwningPlayer()
    -- @debug@
    deprecated('getOwningPlayer', 'getOwner')
    -- @end-debug@
    return self:getOwner()
end

---reviveHeroVec
---@param vec Vector
---@param doEyecandy boolean
---@return boolean
function Unit:reviveHeroVec(vec, doEyecandy)
    return self:reviveHero(vec:getX(), vec:getY(), doEyecandy)
end

---isInRangeVec
---@param vec Vector
---@param distance float
---@return boolean
function Unit:isInRangeVec(vec, distance)
    return self:isInRangeXY(vec:getX(), vec:getY(), distance)
end

---issuePointOrderVec
---@param order integer
---@param vec Vector
---@return boolean
function Unit:issuePointOrderVec(order, vec)
    return self:issuePointOrder(order, vec:getXY())
end

return Unit
