---@type Region
local Region = require('lib.stdlib.oop._generated._region')

---addCellAtVec
---@param vec Vector
---@return void
function Region:addCellAtVec(vec)
    return self:addCell(vec:getXY())
end

---clearCellAtVec
---@param vec Vector
---@return void
function Region:clearCellAtVec(vec)
    return self:addCell(vec:getXY())
end

---isVectorIn
---@param vec Vector
---@return boolean
function Region:isVectorIn(vec)
    return self:isPointIn(vec:getXY())
end

return Region
