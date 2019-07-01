local Unit = require('lib.stdlib.oop._generated._unit')

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

return Unit
