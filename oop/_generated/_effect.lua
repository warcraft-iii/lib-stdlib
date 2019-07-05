local Native = require('lib.stdlib.native')

---@class Effect : Agent
local Effect = class('Effect', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Effect:destructor()
--@debug@
    checkobject(self, Effect, 'destructor', 'self')
--@end-debug@
    return Native.DestroyEffect(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function Effect:destroy()
--@debug@
    deprecated('Effect.destroy', 'Effect.delete')
--@end-debug@
    return self:delete()
end

---<static> addSpecial
---@overload fun(modelName: string, vec: Vector2): Effect
---@param modelName string
---@param x float
---@param y float
---@return Effect
function Effect:addSpecial(modelName, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Effect, 'addSpecial', 'self')
    checktype(modelName, 'string', 'addSpecial', 1)
    checktype(x, 'float', 'addSpecial', 2)
    checktype(y, 'float', 'addSpecial', 3)
--@end-debug@
    return Effect:fromUd(Native.AddSpecialEffect(modelName, x, y))
end

---<static> addSpecialTarget
---@param modelName string
---@param targetWidget Widget
---@param attachPointName string
---@return Effect
function Effect:addSpecialTarget(modelName, targetWidget, attachPointName)
--@debug@
    checkclass(self, Effect, 'addSpecialTarget', 'self')
    checktype(modelName, 'string', 'addSpecialTarget', 1)
    checkobject(targetWidget, require('lib.stdlib.oop.widget'), 'addSpecialTarget', 2)
    checktype(attachPointName, 'string', 'addSpecialTarget', 3)
--@end-debug@
    return Effect:fromUd(Native.AddSpecialEffectTarget(modelName, getUd(targetWidget), attachPointName))
end

---<static> addSpell
---@overload fun(abilityString: string, t: EffectType, vec: Vector2): Effect
---@param abilityString string
---@param t EffectType
---@param x float
---@param y float
---@return Effect
function Effect:addSpell(abilityString, t, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Effect, 'addSpell', 'self')
    checktype(abilityString, 'string', 'addSpell', 1)
    checkuserdata(t, 'effecttype', 'addSpell', 2)
    checktype(x, 'float', 'addSpell', 3)
    checktype(y, 'float', 'addSpell', 4)
--@end-debug@
    return Effect:fromUd(Native.AddSpellEffect(abilityString, t, x, y))
end

---<static> addSpellById
---@overload fun(abilityId: integer, t: EffectType, vec: Vector2): Effect
---@param abilityId integer
---@param t EffectType
---@param x float
---@param y float
---@return Effect
function Effect:addSpellById(abilityId, t, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Effect, 'addSpellById', 'self')
    checktype(abilityId, 'integer', 'addSpellById', 1)
    checkuserdata(t, 'effecttype', 'addSpellById', 2)
    checktype(x, 'float', 'addSpellById', 3)
    checktype(y, 'float', 'addSpellById', 4)
--@end-debug@
    return Effect:fromUd(Native.AddSpellEffectById(abilityId, t, x, y))
end

---<static> addSpellTarget
---@param modelName string
---@param t EffectType
---@param targetWidget Widget
---@param attachPoint string
---@return Effect
function Effect:addSpellTarget(modelName, t, targetWidget, attachPoint)
--@debug@
    checkclass(self, Effect, 'addSpellTarget', 'self')
    checktype(modelName, 'string', 'addSpellTarget', 1)
    checkuserdata(t, 'effecttype', 'addSpellTarget', 2)
    checkobject(targetWidget, require('lib.stdlib.oop.widget'), 'addSpellTarget', 3)
    checktype(attachPoint, 'string', 'addSpellTarget', 4)
--@end-debug@
    return Effect:fromUd(Native.AddSpellEffectTarget(modelName, t, getUd(targetWidget), attachPoint))
end

---<static> addSpellTargetById
---@param abilityId integer
---@param t EffectType
---@param targetWidget Widget
---@param attachPoint string
---@return Effect
function Effect:addSpellTargetById(abilityId, t, targetWidget, attachPoint)
--@debug@
    checkclass(self, Effect, 'addSpellTargetById', 'self')
    checktype(abilityId, 'integer', 'addSpellTargetById', 1)
    checkuserdata(t, 'effecttype', 'addSpellTargetById', 2)
    checkobject(targetWidget, require('lib.stdlib.oop.widget'), 'addSpellTargetById', 3)
    checktype(attachPoint, 'string', 'addSpellTargetById', 4)
--@end-debug@
    return Effect:fromUd(Native.AddSpellEffectTargetById(abilityId, t, getUd(targetWidget), attachPoint))
end

---setSpecialColorByPlayer
---@param player Player
---@return void
function Effect:setSpecialColorByPlayer(player)
--@debug@
    checkobject(self, Effect, 'setSpecialColorByPlayer', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'setSpecialColorByPlayer', 1)
--@end-debug@
    return Native.BlzSetSpecialEffectColorByPlayer(getUd(self), getUd(player))
end

---setSpecialColor
---@param r integer
---@param g integer
---@param b integer
---@return void
function Effect:setSpecialColor(r, g, b)
--@debug@
    checkobject(self, Effect, 'setSpecialColor', 'self')
    checktype(r, 'integer', 'setSpecialColor', 1)
    checktype(g, 'integer', 'setSpecialColor', 2)
    checktype(b, 'integer', 'setSpecialColor', 3)
--@end-debug@
    return Native.BlzSetSpecialEffectColor(getUd(self), r, g, b)
end

---setSpecialAlpha
---@param alpha integer
---@return void
function Effect:setSpecialAlpha(alpha)
--@debug@
    checkobject(self, Effect, 'setSpecialAlpha', 'self')
    checktype(alpha, 'integer', 'setSpecialAlpha', 1)
--@end-debug@
    return Native.BlzSetSpecialEffectAlpha(getUd(self), alpha)
end

---setSpecialScale
---@param scale float
---@return void
function Effect:setSpecialScale(scale)
--@debug@
    checkobject(self, Effect, 'setSpecialScale', 'self')
    checktype(scale, 'float', 'setSpecialScale', 1)
--@end-debug@
    return Native.BlzSetSpecialEffectScale(getUd(self), scale)
end

---setSpecialPosition
---@overload fun(vec: Vector3): void
---@param x float
---@param y float
---@param z float
---@return void
function Effect:setSpecialPosition(x, y, z)
    if type(x) == 'table' then
        x, y, z = table.unpack(x)
    end
--@debug@
    checkobject(self, Effect, 'setSpecialPosition', 'self')
    checktype(x, 'float', 'setSpecialPosition', 1)
    checktype(y, 'float', 'setSpecialPosition', 2)
    checktype(z, 'float', 'setSpecialPosition', 3)
--@end-debug@
    return Native.BlzSetSpecialEffectPosition(getUd(self), x, y, z)
end

---setSpecialHeight
---@param height float
---@return void
function Effect:setSpecialHeight(height)
--@debug@
    checkobject(self, Effect, 'setSpecialHeight', 'self')
    checktype(height, 'float', 'setSpecialHeight', 1)
--@end-debug@
    return Native.BlzSetSpecialEffectHeight(getUd(self), height)
end

---setSpecialTimeScale
---@param timeScale float
---@return void
function Effect:setSpecialTimeScale(timeScale)
--@debug@
    checkobject(self, Effect, 'setSpecialTimeScale', 'self')
    checktype(timeScale, 'float', 'setSpecialTimeScale', 1)
--@end-debug@
    return Native.BlzSetSpecialEffectTimeScale(getUd(self), timeScale)
end

---setSpecialTime
---@param time float
---@return void
function Effect:setSpecialTime(time)
--@debug@
    checkobject(self, Effect, 'setSpecialTime', 'self')
    checktype(time, 'float', 'setSpecialTime', 1)
--@end-debug@
    return Native.BlzSetSpecialEffectTime(getUd(self), time)
end

---setSpecialOrientation
---@param yaw float
---@param pitch float
---@param roll float
---@return void
function Effect:setSpecialOrientation(yaw, pitch, roll)
--@debug@
    checkobject(self, Effect, 'setSpecialOrientation', 'self')
    checktype(yaw, 'float', 'setSpecialOrientation', 1)
    checktype(pitch, 'float', 'setSpecialOrientation', 2)
    checktype(roll, 'float', 'setSpecialOrientation', 3)
--@end-debug@
    return Native.BlzSetSpecialEffectOrientation(getUd(self), yaw, pitch, roll)
end

---setSpecialYaw
---@param yaw float
---@return void
function Effect:setSpecialYaw(yaw)
--@debug@
    checkobject(self, Effect, 'setSpecialYaw', 'self')
    checktype(yaw, 'float', 'setSpecialYaw', 1)
--@end-debug@
    return Native.BlzSetSpecialEffectYaw(getUd(self), yaw)
end

---setSpecialPitch
---@param pitch float
---@return void
function Effect:setSpecialPitch(pitch)
--@debug@
    checkobject(self, Effect, 'setSpecialPitch', 'self')
    checktype(pitch, 'float', 'setSpecialPitch', 1)
--@end-debug@
    return Native.BlzSetSpecialEffectPitch(getUd(self), pitch)
end

---setSpecialRoll
---@param roll float
---@return void
function Effect:setSpecialRoll(roll)
--@debug@
    checkobject(self, Effect, 'setSpecialRoll', 'self')
    checktype(roll, 'float', 'setSpecialRoll', 1)
--@end-debug@
    return Native.BlzSetSpecialEffectRoll(getUd(self), roll)
end

---setSpecialX
---@param x float
---@return void
function Effect:setSpecialX(x)
--@debug@
    checkobject(self, Effect, 'setSpecialX', 'self')
    checktype(x, 'float', 'setSpecialX', 1)
--@end-debug@
    return Native.BlzSetSpecialEffectX(getUd(self), x)
end

---setSpecialY
---@param y float
---@return void
function Effect:setSpecialY(y)
--@debug@
    checkobject(self, Effect, 'setSpecialY', 'self')
    checktype(y, 'float', 'setSpecialY', 1)
--@end-debug@
    return Native.BlzSetSpecialEffectY(getUd(self), y)
end

---setSpecialZ
---@param z float
---@return void
function Effect:setSpecialZ(z)
--@debug@
    checkobject(self, Effect, 'setSpecialZ', 'self')
    checktype(z, 'float', 'setSpecialZ', 1)
--@end-debug@
    return Native.BlzSetSpecialEffectZ(getUd(self), z)
end

---getLocalSpecialX
---@return float
function Effect:getLocalSpecialX()
--@debug@
    checkobject(self, Effect, 'getLocalSpecialX', 'self')
--@end-debug@
    return Native.BlzGetLocalSpecialEffectX(getUd(self))
end

---getLocalSpecialY
---@return float
function Effect:getLocalSpecialY()
--@debug@
    checkobject(self, Effect, 'getLocalSpecialY', 'self')
--@end-debug@
    return Native.BlzGetLocalSpecialEffectY(getUd(self))
end

---getLocalSpecialZ
---@return float
function Effect:getLocalSpecialZ()
--@debug@
    checkobject(self, Effect, 'getLocalSpecialZ', 'self')
--@end-debug@
    return Native.BlzGetLocalSpecialEffectZ(getUd(self))
end

---specialClearSubAnimations
---@return void
function Effect:specialClearSubAnimations()
--@debug@
    checkobject(self, Effect, 'specialClearSubAnimations', 'self')
--@end-debug@
    return Native.BlzSpecialEffectClearSubAnimations(getUd(self))
end

---specialRemoveSubAnimation
---@param subAnim SubAnimType
---@return void
function Effect:specialRemoveSubAnimation(subAnim)
--@debug@
    checkobject(self, Effect, 'specialRemoveSubAnimation', 'self')
    checkuserdata(subAnim, 'subanimtype', 'specialRemoveSubAnimation', 1)
--@end-debug@
    return Native.BlzSpecialEffectRemoveSubAnimation(getUd(self), subAnim)
end

---specialAddSubAnimation
---@param subAnim SubAnimType
---@return void
function Effect:specialAddSubAnimation(subAnim)
--@debug@
    checkobject(self, Effect, 'specialAddSubAnimation', 'self')
    checkuserdata(subAnim, 'subanimtype', 'specialAddSubAnimation', 1)
--@end-debug@
    return Native.BlzSpecialEffectAddSubAnimation(getUd(self), subAnim)
end

---playSpecial
---@param anim AnimType
---@return void
function Effect:playSpecial(anim)
--@debug@
    checkobject(self, Effect, 'playSpecial', 'self')
    checkuserdata(anim, 'animtype', 'playSpecial', 1)
--@end-debug@
    return Native.BlzPlaySpecialEffect(getUd(self), anim)
end

---playSpecialWithTimeScale
---@param anim AnimType
---@param timeScale float
---@return void
function Effect:playSpecialWithTimeScale(anim, timeScale)
--@debug@
    checkobject(self, Effect, 'playSpecialWithTimeScale', 'self')
    checkuserdata(anim, 'animtype', 'playSpecialWithTimeScale', 1)
    checktype(timeScale, 'float', 'playSpecialWithTimeScale', 2)
--@end-debug@
    return Native.BlzPlaySpecialEffectWithTimeScale(getUd(self), anim, timeScale)
end

---getSpecialScale
---@return float
function Effect:getSpecialScale()
--@debug@
    checkobject(self, Effect, 'getSpecialScale', 'self')
--@end-debug@
    return Native.BlzGetSpecialEffectScale(getUd(self))
end

---setSpecialMatrixScale
---@overload fun(vec: Vector3): void
---@param x float
---@param y float
---@param z float
---@return void
function Effect:setSpecialMatrixScale(x, y, z)
    if type(x) == 'table' then
        x, y, z = table.unpack(x)
    end
--@debug@
    checkobject(self, Effect, 'setSpecialMatrixScale', 'self')
    checktype(x, 'float', 'setSpecialMatrixScale', 1)
    checktype(y, 'float', 'setSpecialMatrixScale', 2)
    checktype(z, 'float', 'setSpecialMatrixScale', 3)
--@end-debug@
    return Native.BlzSetSpecialEffectMatrixScale(getUd(self), x, y, z)
end

---resetSpecialMatrix
---@return void
function Effect:resetSpecialMatrix()
--@debug@
    checkobject(self, Effect, 'resetSpecialMatrix', 'self')
--@end-debug@
    return Native.BlzResetSpecialEffectMatrix(getUd(self))
end

return Effect
