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

return Group
