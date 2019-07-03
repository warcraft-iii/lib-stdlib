local Native = require('lib.stdlib.native')

---@class Effect : Agent
local Effect = class('Effect', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function Effect:destructor()
    return Native.DestroyEffect(getUd(self))
end

---destroy
---@deprecated
---@return void
function Effect:destroy()
--@debug@
    deprecated('destroy', 'delete')
--@end-debug@
    return self:delete()
end

---<static> addSpecial
---@param modelName string
---@param x float
---@param y float
---@return Effect
function Effect:addSpecial(modelName, x, y)
    return Effect:fromUd(Native.AddSpecialEffect(modelName, x, y))
end

---<static> addSpecialLoc
---@param modelName string
---@param where Location
---@return Effect
function Effect:addSpecialLoc(modelName, where)
    return Effect:fromUd(Native.AddSpecialEffectLoc(modelName, getUd(where)))
end

---<static> addSpecialTarget
---@param modelName string
---@param targetWidget Widget
---@param attachPointName string
---@return Effect
function Effect:addSpecialTarget(modelName, targetWidget, attachPointName)
    return Effect:fromUd(Native.AddSpecialEffectTarget(modelName, getUd(targetWidget), attachPointName))
end

---<static> addSpell
---@param abilityString string
---@param t EffectType
---@param x float
---@param y float
---@return Effect
function Effect:addSpell(abilityString, t, x, y)
    return Effect:fromUd(Native.AddSpellEffect(abilityString, t, x, y))
end

---<static> addSpellLoc
---@param abilityString string
---@param t EffectType
---@param where Location
---@return Effect
function Effect:addSpellLoc(abilityString, t, where)
    return Effect:fromUd(Native.AddSpellEffectLoc(abilityString, t, getUd(where)))
end

---<static> addSpellById
---@param abilityId integer
---@param t EffectType
---@param x float
---@param y float
---@return Effect
function Effect:addSpellById(abilityId, t, x, y)
    return Effect:fromUd(Native.AddSpellEffectById(abilityId, t, x, y))
end

---<static> addSpellByIdLoc
---@param abilityId integer
---@param t EffectType
---@param where Location
---@return Effect
function Effect:addSpellByIdLoc(abilityId, t, where)
    return Effect:fromUd(Native.AddSpellEffectByIdLoc(abilityId, t, getUd(where)))
end

---<static> addSpellTarget
---@param modelName string
---@param t EffectType
---@param targetWidget Widget
---@param attachPoint string
---@return Effect
function Effect:addSpellTarget(modelName, t, targetWidget, attachPoint)
    return Effect:fromUd(Native.AddSpellEffectTarget(modelName, t, getUd(targetWidget), attachPoint))
end

---<static> addSpellTargetById
---@param abilityId integer
---@param t EffectType
---@param targetWidget Widget
---@param attachPoint string
---@return Effect
function Effect:addSpellTargetById(abilityId, t, targetWidget, attachPoint)
    return Effect:fromUd(Native.AddSpellEffectTargetById(abilityId, t, getUd(targetWidget), attachPoint))
end

---setSpecialColorByPlayer
---@param player Player
---@return void
function Effect:setSpecialColorByPlayer(player)
    return Native.BlzSetSpecialEffectColorByPlayer(getUd(self), getUd(player))
end

---setSpecialColor
---@param r integer
---@param g integer
---@param b integer
---@return void
function Effect:setSpecialColor(r, g, b)
    return Native.BlzSetSpecialEffectColor(getUd(self), r, g, b)
end

---setSpecialAlpha
---@param alpha integer
---@return void
function Effect:setSpecialAlpha(alpha)
    return Native.BlzSetSpecialEffectAlpha(getUd(self), alpha)
end

---setSpecialScale
---@param scale float
---@return void
function Effect:setSpecialScale(scale)
    return Native.BlzSetSpecialEffectScale(getUd(self), scale)
end

---setSpecialPosition
---@param x float
---@param y float
---@param z float
---@return void
function Effect:setSpecialPosition(x, y, z)
    return Native.BlzSetSpecialEffectPosition(getUd(self), x, y, z)
end

---setSpecialHeight
---@param height float
---@return void
function Effect:setSpecialHeight(height)
    return Native.BlzSetSpecialEffectHeight(getUd(self), height)
end

---setSpecialTimeScale
---@param timeScale float
---@return void
function Effect:setSpecialTimeScale(timeScale)
    return Native.BlzSetSpecialEffectTimeScale(getUd(self), timeScale)
end

---setSpecialTime
---@param time float
---@return void
function Effect:setSpecialTime(time)
    return Native.BlzSetSpecialEffectTime(getUd(self), time)
end

---setSpecialOrientation
---@param yaw float
---@param pitch float
---@param roll float
---@return void
function Effect:setSpecialOrientation(yaw, pitch, roll)
    return Native.BlzSetSpecialEffectOrientation(getUd(self), yaw, pitch, roll)
end

---setSpecialYaw
---@param yaw float
---@return void
function Effect:setSpecialYaw(yaw)
    return Native.BlzSetSpecialEffectYaw(getUd(self), yaw)
end

---setSpecialPitch
---@param pitch float
---@return void
function Effect:setSpecialPitch(pitch)
    return Native.BlzSetSpecialEffectPitch(getUd(self), pitch)
end

---setSpecialRoll
---@param roll float
---@return void
function Effect:setSpecialRoll(roll)
    return Native.BlzSetSpecialEffectRoll(getUd(self), roll)
end

---setSpecialX
---@param x float
---@return void
function Effect:setSpecialX(x)
    return Native.BlzSetSpecialEffectX(getUd(self), x)
end

---setSpecialY
---@param y float
---@return void
function Effect:setSpecialY(y)
    return Native.BlzSetSpecialEffectY(getUd(self), y)
end

---setSpecialZ
---@param z float
---@return void
function Effect:setSpecialZ(z)
    return Native.BlzSetSpecialEffectZ(getUd(self), z)
end

---setSpecialPositionLoc
---@param loc Location
---@return void
function Effect:setSpecialPositionLoc(loc)
    return Native.BlzSetSpecialEffectPositionLoc(getUd(self), getUd(loc))
end

---getLocalSpecialX
---@return float
function Effect:getLocalSpecialX()
    return Native.BlzGetLocalSpecialEffectX(getUd(self))
end

---getLocalSpecialY
---@return float
function Effect:getLocalSpecialY()
    return Native.BlzGetLocalSpecialEffectY(getUd(self))
end

---getLocalSpecialZ
---@return float
function Effect:getLocalSpecialZ()
    return Native.BlzGetLocalSpecialEffectZ(getUd(self))
end

---specialClearSubAnimations
---@return void
function Effect:specialClearSubAnimations()
    return Native.BlzSpecialEffectClearSubAnimations(getUd(self))
end

---specialRemoveSubAnimation
---@param subAnim SubAnimType
---@return void
function Effect:specialRemoveSubAnimation(subAnim)
    return Native.BlzSpecialEffectRemoveSubAnimation(getUd(self), subAnim)
end

---specialAddSubAnimation
---@param subAnim SubAnimType
---@return void
function Effect:specialAddSubAnimation(subAnim)
    return Native.BlzSpecialEffectAddSubAnimation(getUd(self), subAnim)
end

---playSpecial
---@param anim AnimType
---@return void
function Effect:playSpecial(anim)
    return Native.BlzPlaySpecialEffect(getUd(self), anim)
end

---playSpecialWithTimeScale
---@param anim AnimType
---@param timeScale float
---@return void
function Effect:playSpecialWithTimeScale(anim, timeScale)
    return Native.BlzPlaySpecialEffectWithTimeScale(getUd(self), anim, timeScale)
end

---getSpecialScale
---@return float
function Effect:getSpecialScale()
    return Native.BlzGetSpecialEffectScale(getUd(self))
end

---setSpecialMatrixScale
---@param x float
---@param y float
---@param z float
---@return void
function Effect:setSpecialMatrixScale(x, y, z)
    return Native.BlzSetSpecialEffectMatrixScale(getUd(self), x, y, z)
end

---resetSpecialMatrix
---@return void
function Effect:resetSpecialMatrix()
    return Native.BlzResetSpecialEffectMatrix(getUd(self))
end

return Effect
