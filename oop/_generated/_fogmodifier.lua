local Native = require('lib.stdlib.native')

---@class FogModifier : Agent
local FogModifier = class('FogModifier', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function FogModifier:destructor()
    return Native.DestroyFogModifier(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function FogModifier:destroy()
--@debug@
    deprecated('FogModifier.destroy', 'FogModifier.delete')
--@end-debug@
    return self:delete()
end

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
---@overload fun(forWhichPlayer: Player, state: FogState, vec: Vector2, radius: float, useSharedVision: boolean, afterUnits: boolean): FogModifier
---@param forWhichPlayer Player
---@param state FogState
---@param centerx float
---@param centerY float
---@param radius float
---@param useSharedVision boolean
---@param afterUnits boolean
---@return FogModifier
function FogModifier:createRadius(forWhichPlayer, state, centerx, centerY, radius, useSharedVision, afterUnits)
    if type(centerx) == 'table' then
        radius, useSharedVision, afterUnits = centerY, radius, useSharedVision
        centerx, centerY = table.unpack(centerx)
    end
    return FogModifier:fromUd(Native.CreateFogModifierRadius(getUd(forWhichPlayer), state, centerx, centerY, radius, useSharedVision, afterUnits))
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
