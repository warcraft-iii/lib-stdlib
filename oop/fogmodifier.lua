---@type FogModifier
local FogModifier = require('lib.stdlib.oop._generated._fogmodifier')

---<static> createRadiusVec
---@param forWhichPlayer Player
---@param state FogState
---@param center Vector
---@param radius float
---@param useSharedVision boolean
---@param afterUnits boolean
---@return FogModifier
function FogModifier:createRadiusVec(forWhichPlayer, state, center, radius, useSharedVision, afterUnits)
    return self:createRadius(forWhichPlayer, state, center:getX(), center:getY(), radius, useSharedVision, afterUnits)
end

return FogModifier
