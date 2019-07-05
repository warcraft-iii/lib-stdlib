---@type Group
local Group = require('lib.stdlib.oop._generated._group')

---getUnits
---@return Unit[]
function Group:getUnits()
    local units = {}
    self:forEach(function(unit)
        table.insert(units, unit)
    end)
    return units
end

---enumUnitsInRangeOfVec
---@param vec Vector
---@param radius float
---@param filter UnitFilter
function Group:enumUnitsInRangeOfVec(vec, radius, filter)
    return self:enumUnitsInRange(vec:getX(), vec:getY(), radius, filter)
end

---enumUnitsInRangeOfVecCounted
---@param vec Vector
---@param radius float
---@param countLimit integer
---@param filter UnitFilter
---@return void
function Group:enumUnitsInRangeOfVecCounted(vec, radius, countLimit, filter)
    return self:enumUnitsInRangeCounted(vec:getX(), vec:getY(), radius, countLimit, filter)
end

---pointOrderVec
---@param order string
---@param vec Vector
---@return boolean
function Group:pointOrderVec(order, vec)
    return self:pointOrder(order, vec:getXY())
end

return Group
