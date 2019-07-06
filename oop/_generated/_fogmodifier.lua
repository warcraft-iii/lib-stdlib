local Native = require('lib.stdlib.native')

---@class FogModifier : Agent
local FogModifier = class('FogModifier', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function FogModifier:destructor()
--@debug@
    checkobject(self, FogModifier, 'destructor', 'self')
--@end-debug@
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
--@debug@
    checkclass(self, FogModifier, 'createRect', 'self')
    checkobject(forWhichPlayer, require('lib.stdlib.oop.player'), 'createRect', 1)
    checkuserdata(state, 'fogstate', 'createRect', 2)
    checkobject(where, require('lib.stdlib.oop.rect'), 'createRect', 3)
    checktype(useSharedVision, 'boolean', 'createRect', 4)
    checktype(afterUnits, 'boolean', 'createRect', 5)
--@end-debug@
    return FogModifier:fromUd(Native.CreateFogModifierRect(getUd(forWhichPlayer), state, getUd(where), useSharedVision, afterUnits))
end

---<static> createRadius
---@overload fun(forWhichPlayer: Player, state: FogState, vec: Vector, radius: float, useSharedVision: boolean, afterUnits: boolean): FogModifier
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
--@debug@
    checkclass(self, FogModifier, 'createRadius', 'self')
    checkobject(forWhichPlayer, require('lib.stdlib.oop.player'), 'createRadius', 1)
    checkuserdata(state, 'fogstate', 'createRadius', 2)
    checktype(centerx, 'float', 'createRadius', 3)
    checktype(centerY, 'float', 'createRadius', 4)
    checktype(radius, 'float', 'createRadius', 5)
    checktype(useSharedVision, 'boolean', 'createRadius', 6)
    checktype(afterUnits, 'boolean', 'createRadius', 7)
--@end-debug@
    return FogModifier:fromUd(Native.CreateFogModifierRadius(getUd(forWhichPlayer), state, centerx, centerY, radius, useSharedVision, afterUnits))
end

---start
---@return void
function FogModifier:start()
--@debug@
    checkobject(self, FogModifier, 'start', 'self')
--@end-debug@
    return Native.FogModifierStart(getUd(self))
end

---stop
---@return void
function FogModifier:stop()
--@debug@
    checkobject(self, FogModifier, 'stop', 'self')
--@end-debug@
    return Native.FogModifierStop(getUd(self))
end

return FogModifier
