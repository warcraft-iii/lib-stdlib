local Native = require('lib.stdlib.native')

---@class FogModifier : Agent
local FogModifier = class('FogModifier', require('lib.stdlib.oop.agent'))

---<static> createRect
---@param forWhichPlayer Player
---@param state FogState
---@param where Rect
---@param useSharedVision boolean
---@param afterUnits boolean
---@return FogModifier
function FogModifier:createRect(forWhichPlayer, state, where, useSharedVision, afterUnits)
    return FogModifier:fromUd(Native.CreateFogModifierRect(getUd(forWhichPlayer), state, getUd(where), useSharedVision, afterUnits))
end

---<static> createRadius
---@param forWhichPlayer Player
---@param state FogState
---@param centerx float
---@param centerY float
---@param radius float
---@param useSharedVision boolean
---@param afterUnits boolean
---@return FogModifier
function FogModifier:createRadius(forWhichPlayer, state, centerx, centerY, radius, useSharedVision, afterUnits)
    return FogModifier:fromUd(Native.CreateFogModifierRadius(getUd(forWhichPlayer), state, centerx, centerY, radius, useSharedVision, afterUnits))
end

---<static> createRadiusLoc
---@param forWhichPlayer Player
---@param state FogState
---@param center Location
---@param radius float
---@param useSharedVision boolean
---@param afterUnits boolean
---@return FogModifier
function FogModifier:createRadiusLoc(forWhichPlayer, state, center, radius, useSharedVision, afterUnits)
    return FogModifier:fromUd(Native.CreateFogModifierRadiusLoc(getUd(forWhichPlayer), state, getUd(center), radius, useSharedVision, afterUnits))
end

---destroy
---@return void
function FogModifier:destroy()
    return Native.DestroyFogModifier(getUd(self))
end

---start
---@return void
function FogModifier:start()
    return Native.FogModifierStart(getUd(self))
end

---stop
---@return void
function FogModifier:stop()
    return Native.FogModifierStop(getUd(self))
end

return FogModifier
