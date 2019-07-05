---@type Rect
local Rect = require('lib.stdlib.oop._generated._rect')

---<static> fromVec
---@param min Vector
---@param max Vector
---@return Rect
function Rect:fromVec(min, max)
    return Rect:create(min:getX(), min:getY(), max:getX(), max:getY())
end

---setFromVec
---@param min Vector
---@param max Vector
---@return void
function Rect:setFromVec(min, max)
    return self:set(min:getX(), min:getY(), max:getX(), max:getY())
end

---moveToVec
---@param center Vector
---@return void
function Rect:moveToVec(center)
    return self:moveTo(center:getXY())
end

return Rect
