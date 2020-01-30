local Native = require('lib.stdlib.native')

---@class Unit : Widget
local Unit = class('Unit', require('lib.stdlib.oop.widget'))

---destructor
---@return void
function Unit:destructor()
--@debug@
    checkobject(self, Unit, 'destructor', 'self')
--@end-debug@
    return Native.RemoveUnit(getUd(self))
end

---<**_DEPRECATED_**> remove
---@return void
function Unit:remove()
--@debug@
    deprecated('Unit.remove', 'Unit.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@overload fun(id: Player, unitid: integer, vec: Vector, face: float): Unit
---@param id Player
---@param unitid integer
---@param x float
---@param y float
---@param face float
---@return Unit
function Unit:create(id, unitid, x, y, face)
    if type(x) == 'table' then
        face = y
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Unit, 'create', 'self')
    checkobject(id, require('lib.stdlib.oop.player'), 'create', 1)
    checktype(unitid, 'integer', 'create', 2)
    checktype(x, 'float', 'create', 3)
    checktype(y, 'float', 'create', 4)
    checktype(face, 'float', 'create', 5)
--@end-debug@
    return Unit:fromUd(Native.CreateUnit(getUd(id), unitid, x, y, face))
end

---<static> createByName
---@overload fun(player: Player, unitname: string, vec: Vector, face: float): Unit
---@param player Player
---@param unitname string
---@param x float
---@param y float
---@param face float
---@return Unit
function Unit:createByName(player, unitname, x, y, face)
    if type(x) == 'table' then
        face = y
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Unit, 'createByName', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'createByName', 1)
    checktype(unitname, 'string', 'createByName', 2)
    checktype(x, 'float', 'createByName', 3)
    checktype(y, 'float', 'createByName', 4)
    checktype(face, 'float', 'createByName', 5)
--@end-debug@
    return Unit:fromUd(Native.CreateUnitByName(getUd(player), unitname, x, y, face))
end

---<static> createCorpse
---@overload fun(player: Player, unitid: integer, vec: Vector, face: float): Unit
---@param player Player
---@param unitid integer
---@param x float
---@param y float
---@param face float
---@return Unit
function Unit:createCorpse(player, unitid, x, y, face)
    if type(x) == 'table' then
        face = y
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Unit, 'createCorpse', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'createCorpse', 1)
    checktype(unitid, 'integer', 'createCorpse', 2)
    checktype(x, 'float', 'createCorpse', 3)
    checktype(y, 'float', 'createCorpse', 4)
    checktype(face, 'float', 'createCorpse', 5)
--@end-debug@
    return Unit:fromUd(Native.CreateCorpse(getUd(player), unitid, x, y, face))
end

---<static> createBlightedGoldmine
---@overload fun(id: Player, vec: Vector, face: float): Unit
---@param id Player
---@param x float
---@param y float
---@param face float
---@return Unit
function Unit:createBlightedGoldmine(id, x, y, face)
    if type(x) == 'table' then
        face = y
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Unit, 'createBlightedGoldmine', 'self')
    checkobject(id, require('lib.stdlib.oop.player'), 'createBlightedGoldmine', 1)
    checktype(x, 'float', 'createBlightedGoldmine', 2)
    checktype(y, 'float', 'createBlightedGoldmine', 3)
    checktype(face, 'float', 'createBlightedGoldmine', 4)
--@end-debug@
    return Unit:fromUd(Native.CreateBlightedGoldmine(getUd(id), x, y, face))
end

---<static> createWithSkin
---@overload fun(id: Player, unitid: integer, vec: Vector, face: float, skinId: integer): Unit
---@param id Player
---@param unitid integer
---@param x float
---@param y float
---@param face float
---@param skinId integer
---@return Unit
function Unit:createWithSkin(id, unitid, x, y, face, skinId)
    if type(x) == 'table' then
        face, skinId = y, face
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Unit, 'createWithSkin', 'self')
    checkobject(id, require('lib.stdlib.oop.player'), 'createWithSkin', 1)
    checktype(unitid, 'integer', 'createWithSkin', 2)
    checktype(x, 'float', 'createWithSkin', 3)
    checktype(y, 'float', 'createWithSkin', 4)
    checktype(face, 'float', 'createWithSkin', 5)
    checktype(skinId, 'integer', 'createWithSkin', 6)
--@end-debug@
    return Unit:fromUd(Native.BlzCreateUnitWithSkin(getUd(id), unitid, x, y, face, skinId))
end

---kill
---@return void
function Unit:kill()
--@debug@
    checkobject(self, Unit, 'kill', 'self')
--@end-debug@
    return Native.KillUnit(getUd(self))
end

---setShown
---@param show boolean
---@return void
function Unit:setShown(show)
--@debug@
    checkobject(self, Unit, 'setShown', 'self')
    checktype(show, 'boolean', 'setShown', 1)
--@end-debug@
    return Native.ShowUnit(getUd(self), show)
end

---setState
---@param unitState UnitState
---@param val float
---@return void
function Unit:setState(unitState, val)
--@debug@
    checkobject(self, Unit, 'setState', 'self')
    checkuserdata(unitState, 'unitstate', 'setState', 1)
    checktype(val, 'float', 'setState', 2)
--@end-debug@
    return Native.SetUnitState(getUd(self), unitState, val)
end

---setX
---@param x float
---@return void
function Unit:setX(x)
--@debug@
    checkobject(self, Unit, 'setX', 'self')
    checktype(x, 'float', 'setX', 1)
--@end-debug@
    return Native.SetUnitX(getUd(self), x)
end

---setY
---@param y float
---@return void
function Unit:setY(y)
--@debug@
    checkobject(self, Unit, 'setY', 'self')
    checktype(y, 'float', 'setY', 1)
--@end-debug@
    return Native.SetUnitY(getUd(self), y)
end

---setPosition
---@overload fun(vec: Vector): void
---@param x float
---@param y float
---@return void
function Unit:setPosition(x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Unit, 'setPosition', 'self')
    checktype(x, 'float', 'setPosition', 1)
    checktype(y, 'float', 'setPosition', 2)
--@end-debug@
    return Native.SetUnitPosition(getUd(self), x, y)
end

---setFacing
---@param facingAngle float
---@return void
function Unit:setFacing(facingAngle)
--@debug@
    checkobject(self, Unit, 'setFacing', 'self')
    checktype(facingAngle, 'float', 'setFacing', 1)
--@end-debug@
    return Native.SetUnitFacing(getUd(self), facingAngle)
end

---setFacingTimed
---@param facingAngle float
---@param duration float
---@return void
function Unit:setFacingTimed(facingAngle, duration)
--@debug@
    checkobject(self, Unit, 'setFacingTimed', 'self')
    checktype(facingAngle, 'float', 'setFacingTimed', 1)
    checktype(duration, 'float', 'setFacingTimed', 2)
--@end-debug@
    return Native.SetUnitFacingTimed(getUd(self), facingAngle, duration)
end

---setMoveSpeed
---@param speed float
---@return void
function Unit:setMoveSpeed(speed)
--@debug@
    checkobject(self, Unit, 'setMoveSpeed', 'self')
    checktype(speed, 'float', 'setMoveSpeed', 1)
--@end-debug@
    return Native.SetUnitMoveSpeed(getUd(self), speed)
end

---setFlyHeight
---@param height float
---@param rate float
---@return void
function Unit:setFlyHeight(height, rate)
--@debug@
    checkobject(self, Unit, 'setFlyHeight', 'self')
    checktype(height, 'float', 'setFlyHeight', 1)
    checktype(rate, 'float', 'setFlyHeight', 2)
--@end-debug@
    return Native.SetUnitFlyHeight(getUd(self), height, rate)
end

---setTurnSpeed
---@param turnSpeed float
---@return void
function Unit:setTurnSpeed(turnSpeed)
--@debug@
    checkobject(self, Unit, 'setTurnSpeed', 'self')
    checktype(turnSpeed, 'float', 'setTurnSpeed', 1)
--@end-debug@
    return Native.SetUnitTurnSpeed(getUd(self), turnSpeed)
end

---setPropWindow
---@param propWindowAngle float
---@return void
function Unit:setPropWindow(propWindowAngle)
--@debug@
    checkobject(self, Unit, 'setPropWindow', 'self')
    checktype(propWindowAngle, 'float', 'setPropWindow', 1)
--@end-debug@
    return Native.SetUnitPropWindow(getUd(self), propWindowAngle)
end

---setAcquireRange
---@param acquireRange float
---@return void
function Unit:setAcquireRange(acquireRange)
--@debug@
    checkobject(self, Unit, 'setAcquireRange', 'self')
    checktype(acquireRange, 'float', 'setAcquireRange', 1)
--@end-debug@
    return Native.SetUnitAcquireRange(getUd(self), acquireRange)
end

---setCreepGuard
---@param creepGuard boolean
---@return void
function Unit:setCreepGuard(creepGuard)
--@debug@
    checkobject(self, Unit, 'setCreepGuard', 'self')
    checktype(creepGuard, 'boolean', 'setCreepGuard', 1)
--@end-debug@
    return Native.SetUnitCreepGuard(getUd(self), creepGuard)
end

---getAcquireRange
---@return float
function Unit:getAcquireRange()
--@debug@
    checkobject(self, Unit, 'getAcquireRange', 'self')
--@end-debug@
    return Native.GetUnitAcquireRange(getUd(self))
end

---getTurnSpeed
---@return float
function Unit:getTurnSpeed()
--@debug@
    checkobject(self, Unit, 'getTurnSpeed', 'self')
--@end-debug@
    return Native.GetUnitTurnSpeed(getUd(self))
end

---getPropWindow
---@return float
function Unit:getPropWindow()
--@debug@
    checkobject(self, Unit, 'getPropWindow', 'self')
--@end-debug@
    return Native.GetUnitPropWindow(getUd(self))
end

---getFlyHeight
---@return float
function Unit:getFlyHeight()
--@debug@
    checkobject(self, Unit, 'getFlyHeight', 'self')
--@end-debug@
    return Native.GetUnitFlyHeight(getUd(self))
end

---getDefaultAcquireRange
---@return float
function Unit:getDefaultAcquireRange()
--@debug@
    checkobject(self, Unit, 'getDefaultAcquireRange', 'self')
--@end-debug@
    return Native.GetUnitDefaultAcquireRange(getUd(self))
end

---getDefaultTurnSpeed
---@return float
function Unit:getDefaultTurnSpeed()
--@debug@
    checkobject(self, Unit, 'getDefaultTurnSpeed', 'self')
--@end-debug@
    return Native.GetUnitDefaultTurnSpeed(getUd(self))
end

---getDefaultPropWindow
---@return float
function Unit:getDefaultPropWindow()
--@debug@
    checkobject(self, Unit, 'getDefaultPropWindow', 'self')
--@end-debug@
    return Native.GetUnitDefaultPropWindow(getUd(self))
end

---getDefaultFlyHeight
---@return float
function Unit:getDefaultFlyHeight()
--@debug@
    checkobject(self, Unit, 'getDefaultFlyHeight', 'self')
--@end-debug@
    return Native.GetUnitDefaultFlyHeight(getUd(self))
end

---setOwner
---@param player Player
---@param changeColor boolean
---@return void
function Unit:setOwner(player, changeColor)
--@debug@
    checkobject(self, Unit, 'setOwner', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'setOwner', 1)
    checktype(changeColor, 'boolean', 'setOwner', 2)
--@end-debug@
    return Native.SetUnitOwner(getUd(self), getUd(player), changeColor)
end

---setColor
---@param color PlayerColor
---@return void
function Unit:setColor(color)
--@debug@
    checkobject(self, Unit, 'setColor', 'self')
    checkuserdata(color, 'playercolor', 'setColor', 1)
--@end-debug@
    return Native.SetUnitColor(getUd(self), color)
end

---setScale
---@overload fun(vec: Vector3): void
---@param scaleX float
---@param scaleY float
---@param scaleZ float
---@return void
function Unit:setScale(scaleX, scaleY, scaleZ)
    if type(scaleX) == 'table' then
        scaleX, scaleY, scaleZ = table.unpack(scaleX)
    end
--@debug@
    checkobject(self, Unit, 'setScale', 'self')
    checktype(scaleX, 'float', 'setScale', 1)
    checktype(scaleY, 'float', 'setScale', 2)
    checktype(scaleZ, 'float', 'setScale', 3)
--@end-debug@
    return Native.SetUnitScale(getUd(self), scaleX, scaleY, scaleZ)
end

---setTimeScale
---@param timeScale float
---@return void
function Unit:setTimeScale(timeScale)
--@debug@
    checkobject(self, Unit, 'setTimeScale', 'self')
    checktype(timeScale, 'float', 'setTimeScale', 1)
--@end-debug@
    return Native.SetUnitTimeScale(getUd(self), timeScale)
end

---setBlendTime
---@param blendTime float
---@return void
function Unit:setBlendTime(blendTime)
--@debug@
    checkobject(self, Unit, 'setBlendTime', 'self')
    checktype(blendTime, 'float', 'setBlendTime', 1)
--@end-debug@
    return Native.SetUnitBlendTime(getUd(self), blendTime)
end

---setVertexColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Unit:setVertexColor(red, green, blue, alpha)
--@debug@
    checkobject(self, Unit, 'setVertexColor', 'self')
    checktype(red, 'integer', 'setVertexColor', 1)
    checktype(green, 'integer', 'setVertexColor', 2)
    checktype(blue, 'integer', 'setVertexColor', 3)
    checktype(alpha, 'integer', 'setVertexColor', 4)
--@end-debug@
    return Native.SetUnitVertexColor(getUd(self), red, green, blue, alpha)
end

---queueAnimation
---@param animation string
---@return void
function Unit:queueAnimation(animation)
--@debug@
    checkobject(self, Unit, 'queueAnimation', 'self')
    checktype(animation, 'string', 'queueAnimation', 1)
--@end-debug@
    return Native.QueueUnitAnimation(getUd(self), animation)
end

---setAnimation
---@param animation string
---@return void
function Unit:setAnimation(animation)
--@debug@
    checkobject(self, Unit, 'setAnimation', 'self')
    checktype(animation, 'string', 'setAnimation', 1)
--@end-debug@
    return Native.SetUnitAnimation(getUd(self), animation)
end

---setAnimationByIndex
---@param animation integer
---@return void
function Unit:setAnimationByIndex(animation)
--@debug@
    checkobject(self, Unit, 'setAnimationByIndex', 'self')
    checktype(animation, 'integer', 'setAnimationByIndex', 1)
--@end-debug@
    return Native.SetUnitAnimationByIndex(getUd(self), animation)
end

---setAnimationWithRarity
---@param animation string
---@param rarity RarityControl
---@return void
function Unit:setAnimationWithRarity(animation, rarity)
--@debug@
    checkobject(self, Unit, 'setAnimationWithRarity', 'self')
    checktype(animation, 'string', 'setAnimationWithRarity', 1)
    checkuserdata(rarity, 'raritycontrol', 'setAnimationWithRarity', 2)
--@end-debug@
    return Native.SetUnitAnimationWithRarity(getUd(self), animation, rarity)
end

---addAnimationProperties
---@param animProperties string
---@param add boolean
---@return void
function Unit:addAnimationProperties(animProperties, add)
--@debug@
    checkobject(self, Unit, 'addAnimationProperties', 'self')
    checktype(animProperties, 'string', 'addAnimationProperties', 1)
    checktype(add, 'boolean', 'addAnimationProperties', 2)
--@end-debug@
    return Native.AddUnitAnimationProperties(getUd(self), animProperties, add)
end

---setUnitLookAt
---@overload fun(bone: string, lookAtTarget: Unit, vec: Vector3): void
---@param bone string
---@param lookAtTarget Unit
---@param offsetX float
---@param offsetY float
---@param offsetZ float
---@return void
function Unit:setUnitLookAt(bone, lookAtTarget, offsetX, offsetY, offsetZ)
    if type(offsetX) == 'table' then
        offsetX, offsetY, offsetZ = table.unpack(offsetX)
    end
--@debug@
    checkobject(self, Unit, 'setUnitLookAt', 'self')
    checktype(bone, 'string', 'setUnitLookAt', 1)
    checkobject(lookAtTarget, require('lib.stdlib.oop.unit'), 'setUnitLookAt', 2)
    checktype(offsetX, 'float', 'setUnitLookAt', 3)
    checktype(offsetY, 'float', 'setUnitLookAt', 4)
    checktype(offsetZ, 'float', 'setUnitLookAt', 5)
--@end-debug@
    return Native.SetUnitLookAt(getUd(self), bone, getUd(lookAtTarget), offsetX, offsetY, offsetZ)
end

---resetLookAt
---@return void
function Unit:resetLookAt()
--@debug@
    checkobject(self, Unit, 'resetLookAt', 'self')
--@end-debug@
    return Native.ResetUnitLookAt(getUd(self))
end

---setRescuable
---@param byWhichPlayer Player
---@param flag boolean
---@return void
function Unit:setRescuable(byWhichPlayer, flag)
--@debug@
    checkobject(self, Unit, 'setRescuable', 'self')
    checkobject(byWhichPlayer, require('lib.stdlib.oop.player'), 'setRescuable', 1)
    checktype(flag, 'boolean', 'setRescuable', 2)
--@end-debug@
    return Native.SetUnitRescuable(getUd(self), getUd(byWhichPlayer), flag)
end

---setRescueRange
---@param range float
---@return void
function Unit:setRescueRange(range)
--@debug@
    checkobject(self, Unit, 'setRescueRange', 'self')
    checktype(range, 'float', 'setRescueRange', 1)
--@end-debug@
    return Native.SetUnitRescueRange(getUd(self), range)
end

---setHeroStr
---@param str integer
---@param permanent boolean
---@return void
function Unit:setHeroStr(str, permanent)
--@debug@
    checkobject(self, Unit, 'setHeroStr', 'self')
    checktype(str, 'integer', 'setHeroStr', 1)
    checktype(permanent, 'boolean', 'setHeroStr', 2)
--@end-debug@
    return Native.SetHeroStr(getUd(self), str, permanent)
end

---setHeroAgi
---@param agi integer
---@param permanent boolean
---@return void
function Unit:setHeroAgi(agi, permanent)
--@debug@
    checkobject(self, Unit, 'setHeroAgi', 'self')
    checktype(agi, 'integer', 'setHeroAgi', 1)
    checktype(permanent, 'boolean', 'setHeroAgi', 2)
--@end-debug@
    return Native.SetHeroAgi(getUd(self), agi, permanent)
end

---setHeroInt
---@param int integer
---@param permanent boolean
---@return void
function Unit:setHeroInt(int, permanent)
--@debug@
    checkobject(self, Unit, 'setHeroInt', 'self')
    checktype(int, 'integer', 'setHeroInt', 1)
    checktype(permanent, 'boolean', 'setHeroInt', 2)
--@end-debug@
    return Native.SetHeroInt(getUd(self), int, permanent)
end

---getHeroStr
---@param includeBonuses boolean
---@return integer
function Unit:getHeroStr(includeBonuses)
--@debug@
    checkobject(self, Unit, 'getHeroStr', 'self')
    checktype(includeBonuses, 'boolean', 'getHeroStr', 1)
--@end-debug@
    return Native.GetHeroStr(getUd(self), includeBonuses)
end

---getHeroAgi
---@param includeBonuses boolean
---@return integer
function Unit:getHeroAgi(includeBonuses)
--@debug@
    checkobject(self, Unit, 'getHeroAgi', 'self')
    checktype(includeBonuses, 'boolean', 'getHeroAgi', 1)
--@end-debug@
    return Native.GetHeroAgi(getUd(self), includeBonuses)
end

---getHeroInt
---@param includeBonuses boolean
---@return integer
function Unit:getHeroInt(includeBonuses)
--@debug@
    checkobject(self, Unit, 'getHeroInt', 'self')
    checktype(includeBonuses, 'boolean', 'getHeroInt', 1)
--@end-debug@
    return Native.GetHeroInt(getUd(self), includeBonuses)
end

---stripHeroLevel
---@param howManyLevels integer
---@return boolean
function Unit:stripHeroLevel(howManyLevels)
--@debug@
    checkobject(self, Unit, 'stripHeroLevel', 'self')
    checktype(howManyLevels, 'integer', 'stripHeroLevel', 1)
--@end-debug@
    return Native.UnitStripHeroLevel(getUd(self), howManyLevels)
end

---getHeroXP
---@return integer
function Unit:getHeroXP()
--@debug@
    checkobject(self, Unit, 'getHeroXP', 'self')
--@end-debug@
    return Native.GetHeroXP(getUd(self))
end

---setHeroXP
---@param xpVal integer
---@param showEyeCandy boolean
---@return void
function Unit:setHeroXP(xpVal, showEyeCandy)
--@debug@
    checkobject(self, Unit, 'setHeroXP', 'self')
    checktype(xpVal, 'integer', 'setHeroXP', 1)
    checktype(showEyeCandy, 'boolean', 'setHeroXP', 2)
--@end-debug@
    return Native.SetHeroXP(getUd(self), xpVal, showEyeCandy)
end

---getHeroSkillPoints
---@return integer
function Unit:getHeroSkillPoints()
--@debug@
    checkobject(self, Unit, 'getHeroSkillPoints', 'self')
--@end-debug@
    return Native.GetHeroSkillPoints(getUd(self))
end

---modifySkillPoints
---@param skillPointDelta integer
---@return boolean
function Unit:modifySkillPoints(skillPointDelta)
--@debug@
    checkobject(self, Unit, 'modifySkillPoints', 'self')
    checktype(skillPointDelta, 'integer', 'modifySkillPoints', 1)
--@end-debug@
    return Native.UnitModifySkillPoints(getUd(self), skillPointDelta)
end

---addHeroXP
---@param xpToAdd integer
---@param showEyeCandy boolean
---@return void
function Unit:addHeroXP(xpToAdd, showEyeCandy)
--@debug@
    checkobject(self, Unit, 'addHeroXP', 'self')
    checktype(xpToAdd, 'integer', 'addHeroXP', 1)
    checktype(showEyeCandy, 'boolean', 'addHeroXP', 2)
--@end-debug@
    return Native.AddHeroXP(getUd(self), xpToAdd, showEyeCandy)
end

---setHeroLevel
---@param level integer
---@param showEyeCandy boolean
---@return void
function Unit:setHeroLevel(level, showEyeCandy)
--@debug@
    checkobject(self, Unit, 'setHeroLevel', 'self')
    checktype(level, 'integer', 'setHeroLevel', 1)
    checktype(showEyeCandy, 'boolean', 'setHeroLevel', 2)
--@end-debug@
    return Native.SetHeroLevel(getUd(self), level, showEyeCandy)
end

---getHeroLevel
---@return integer
function Unit:getHeroLevel()
--@debug@
    checkobject(self, Unit, 'getHeroLevel', 'self')
--@end-debug@
    return Native.GetHeroLevel(getUd(self))
end

---getLevel
---@return integer
function Unit:getLevel()
--@debug@
    checkobject(self, Unit, 'getLevel', 'self')
--@end-debug@
    return Native.GetUnitLevel(getUd(self))
end

---getHeroProperName
---@return string
function Unit:getHeroProperName()
--@debug@
    checkobject(self, Unit, 'getHeroProperName', 'self')
--@end-debug@
    return Native.GetHeroProperName(getUd(self))
end

---suspendHeroXP
---@param flag boolean
---@return void
function Unit:suspendHeroXP(flag)
--@debug@
    checkobject(self, Unit, 'suspendHeroXP', 'self')
    checktype(flag, 'boolean', 'suspendHeroXP', 1)
--@end-debug@
    return Native.SuspendHeroXP(getUd(self), flag)
end

---isSuspendedXP
---@return boolean
function Unit:isSuspendedXP()
--@debug@
    checkobject(self, Unit, 'isSuspendedXP', 'self')
--@end-debug@
    return Native.IsSuspendedXP(getUd(self))
end

---selectHeroSkill
---@param abilcode integer
---@return void
function Unit:selectHeroSkill(abilcode)
--@debug@
    checkobject(self, Unit, 'selectHeroSkill', 'self')
    checktype(abilcode, 'integer', 'selectHeroSkill', 1)
--@end-debug@
    return Native.SelectHeroSkill(getUd(self), abilcode)
end

---getAbilityLevel
---@param abilcode integer
---@return integer
function Unit:getAbilityLevel(abilcode)
--@debug@
    checkobject(self, Unit, 'getAbilityLevel', 'self')
    checktype(abilcode, 'integer', 'getAbilityLevel', 1)
--@end-debug@
    return Native.GetUnitAbilityLevel(getUd(self), abilcode)
end

---decAbilityLevel
---@param abilcode integer
---@return integer
function Unit:decAbilityLevel(abilcode)
--@debug@
    checkobject(self, Unit, 'decAbilityLevel', 'self')
    checktype(abilcode, 'integer', 'decAbilityLevel', 1)
--@end-debug@
    return Native.DecUnitAbilityLevel(getUd(self), abilcode)
end

---incAbilityLevel
---@param abilcode integer
---@return integer
function Unit:incAbilityLevel(abilcode)
--@debug@
    checkobject(self, Unit, 'incAbilityLevel', 'self')
    checktype(abilcode, 'integer', 'incAbilityLevel', 1)
--@end-debug@
    return Native.IncUnitAbilityLevel(getUd(self), abilcode)
end

---setAbilityLevel
---@param abilcode integer
---@param level integer
---@return integer
function Unit:setAbilityLevel(abilcode, level)
--@debug@
    checkobject(self, Unit, 'setAbilityLevel', 'self')
    checktype(abilcode, 'integer', 'setAbilityLevel', 1)
    checktype(level, 'integer', 'setAbilityLevel', 2)
--@end-debug@
    return Native.SetUnitAbilityLevel(getUd(self), abilcode, level)
end

---reviveHero
---@overload fun(vec: Vector, doEyecandy: boolean): boolean
---@param x float
---@param y float
---@param doEyecandy boolean
---@return boolean
function Unit:reviveHero(x, y, doEyecandy)
    if type(x) == 'table' then
        doEyecandy = y
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Unit, 'reviveHero', 'self')
    checktype(x, 'float', 'reviveHero', 1)
    checktype(y, 'float', 'reviveHero', 2)
    checktype(doEyecandy, 'boolean', 'reviveHero', 3)
--@end-debug@
    return Native.ReviveHero(getUd(self), x, y, doEyecandy)
end

---setExploded
---@param exploded boolean
---@return void
function Unit:setExploded(exploded)
--@debug@
    checkobject(self, Unit, 'setExploded', 'self')
    checktype(exploded, 'boolean', 'setExploded', 1)
--@end-debug@
    return Native.SetUnitExploded(getUd(self), exploded)
end

---setInvulnerable
---@param flag boolean
---@return void
function Unit:setInvulnerable(flag)
--@debug@
    checkobject(self, Unit, 'setInvulnerable', 'self')
    checktype(flag, 'boolean', 'setInvulnerable', 1)
--@end-debug@
    return Native.SetUnitInvulnerable(getUd(self), flag)
end

---setPaused
---@param flag boolean
---@return void
function Unit:setPaused(flag)
--@debug@
    checkobject(self, Unit, 'setPaused', 'self')
    checktype(flag, 'boolean', 'setPaused', 1)
--@end-debug@
    return Native.PauseUnit(getUd(self), flag)
end

---isPaused
---@return boolean
function Unit:isPaused()
--@debug@
    checkobject(self, Unit, 'isPaused', 'self')
--@end-debug@
    return Native.IsUnitPaused(getUd(self))
end

---setPathing
---@param flag boolean
---@return void
function Unit:setPathing(flag)
--@debug@
    checkobject(self, Unit, 'setPathing', 'self')
    checktype(flag, 'boolean', 'setPathing', 1)
--@end-debug@
    return Native.SetUnitPathing(getUd(self), flag)
end

---setSelected
---@param flag boolean
---@return void
function Unit:setSelected(flag)
--@debug@
    checkobject(self, Unit, 'setSelected', 'self')
    checktype(flag, 'boolean', 'setSelected', 1)
--@end-debug@
    return Native.SelectUnit(getUd(self), flag)
end

---getPointValue
---@return integer
function Unit:getPointValue()
--@debug@
    checkobject(self, Unit, 'getPointValue', 'self')
--@end-debug@
    return Native.GetUnitPointValue(getUd(self))
end

---addItem
---@param item Item
---@return boolean
function Unit:addItem(item)
--@debug@
    checkobject(self, Unit, 'addItem', 'self')
    checkobject(item, require('lib.stdlib.oop.item'), 'addItem', 1)
--@end-debug@
    return Native.UnitAddItem(getUd(self), getUd(item))
end

---addItemById
---@param itemId integer
---@return Item
function Unit:addItemById(itemId)
--@debug@
    checkobject(self, Unit, 'addItemById', 'self')
    checktype(itemId, 'integer', 'addItemById', 1)
--@end-debug@
    return require('lib.stdlib.oop.item'):fromUd(Native.UnitAddItemById(getUd(self), itemId))
end

---addItemToSlotById
---@param itemId integer
---@param itemSlot integer
---@return boolean
function Unit:addItemToSlotById(itemId, itemSlot)
--@debug@
    checkobject(self, Unit, 'addItemToSlotById', 'self')
    checktype(itemId, 'integer', 'addItemToSlotById', 1)
    checktype(itemSlot, 'integer', 'addItemToSlotById', 2)
--@end-debug@
    return Native.UnitAddItemToSlotById(getUd(self), itemId, itemSlot)
end

---removeItem
---@param item Item
---@return void
function Unit:removeItem(item)
--@debug@
    checkobject(self, Unit, 'removeItem', 'self')
    checkobject(item, require('lib.stdlib.oop.item'), 'removeItem', 1)
--@end-debug@
    return Native.UnitRemoveItem(getUd(self), getUd(item))
end

---removeItemFromSlot
---@param itemSlot integer
---@return Item
function Unit:removeItemFromSlot(itemSlot)
--@debug@
    checkobject(self, Unit, 'removeItemFromSlot', 'self')
    checktype(itemSlot, 'integer', 'removeItemFromSlot', 1)
--@end-debug@
    return require('lib.stdlib.oop.item'):fromUd(Native.UnitRemoveItemFromSlot(getUd(self), itemSlot))
end

---hasItem
---@param item Item
---@return boolean
function Unit:hasItem(item)
--@debug@
    checkobject(self, Unit, 'hasItem', 'self')
    checkobject(item, require('lib.stdlib.oop.item'), 'hasItem', 1)
--@end-debug@
    return Native.UnitHasItem(getUd(self), getUd(item))
end

---itemInSlot
---@param itemSlot integer
---@return Item
function Unit:itemInSlot(itemSlot)
--@debug@
    checkobject(self, Unit, 'itemInSlot', 'self')
    checktype(itemSlot, 'integer', 'itemInSlot', 1)
--@end-debug@
    return require('lib.stdlib.oop.item'):fromUd(Native.UnitItemInSlot(getUd(self), itemSlot))
end

---inventorySize
---@return integer
function Unit:inventorySize()
--@debug@
    checkobject(self, Unit, 'inventorySize', 'self')
--@end-debug@
    return Native.UnitInventorySize(getUd(self))
end

---dropItemPoint
---@overload fun(item: Item, vec: Vector): boolean
---@param item Item
---@param x float
---@param y float
---@return boolean
function Unit:dropItemPoint(item, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Unit, 'dropItemPoint', 'self')
    checkobject(item, require('lib.stdlib.oop.item'), 'dropItemPoint', 1)
    checktype(x, 'float', 'dropItemPoint', 2)
    checktype(y, 'float', 'dropItemPoint', 3)
--@end-debug@
    return Native.UnitDropItemPoint(getUd(self), getUd(item), x, y)
end

---dropItemSlot
---@param item Item
---@param slot integer
---@return boolean
function Unit:dropItemSlot(item, slot)
--@debug@
    checkobject(self, Unit, 'dropItemSlot', 'self')
    checkobject(item, require('lib.stdlib.oop.item'), 'dropItemSlot', 1)
    checktype(slot, 'integer', 'dropItemSlot', 2)
--@end-debug@
    return Native.UnitDropItemSlot(getUd(self), getUd(item), slot)
end

---dropItemTarget
---@param item Item
---@param target Widget
---@return boolean
function Unit:dropItemTarget(item, target)
--@debug@
    checkobject(self, Unit, 'dropItemTarget', 'self')
    checkobject(item, require('lib.stdlib.oop.item'), 'dropItemTarget', 1)
    checkobject(target, require('lib.stdlib.oop.widget'), 'dropItemTarget', 2)
--@end-debug@
    return Native.UnitDropItemTarget(getUd(self), getUd(item), getUd(target))
end

---useItem
---@param item Item
---@return boolean
function Unit:useItem(item)
--@debug@
    checkobject(self, Unit, 'useItem', 'self')
    checkobject(item, require('lib.stdlib.oop.item'), 'useItem', 1)
--@end-debug@
    return Native.UnitUseItem(getUd(self), getUd(item))
end

---useItemPoint
---@overload fun(item: Item, vec: Vector): boolean
---@param item Item
---@param x float
---@param y float
---@return boolean
function Unit:useItemPoint(item, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Unit, 'useItemPoint', 'self')
    checkobject(item, require('lib.stdlib.oop.item'), 'useItemPoint', 1)
    checktype(x, 'float', 'useItemPoint', 2)
    checktype(y, 'float', 'useItemPoint', 3)
--@end-debug@
    return Native.UnitUseItemPoint(getUd(self), getUd(item), x, y)
end

---useItemTarget
---@param item Item
---@param target Widget
---@return boolean
function Unit:useItemTarget(item, target)
--@debug@
    checkobject(self, Unit, 'useItemTarget', 'self')
    checkobject(item, require('lib.stdlib.oop.item'), 'useItemTarget', 1)
    checkobject(target, require('lib.stdlib.oop.widget'), 'useItemTarget', 2)
--@end-debug@
    return Native.UnitUseItemTarget(getUd(self), getUd(item), getUd(target))
end

---getX
---@return float
function Unit:getX()
--@debug@
    checkobject(self, Unit, 'getX', 'self')
--@end-debug@
    return Native.GetUnitX(getUd(self))
end

---getY
---@return float
function Unit:getY()
--@debug@
    checkobject(self, Unit, 'getY', 'self')
--@end-debug@
    return Native.GetUnitY(getUd(self))
end

---getLoc
---@return Location
function Unit:getLoc()
--@debug@
    checkobject(self, Unit, 'getLoc', 'self')
--@end-debug@
    return require('lib.stdlib.oop.location'):fromUd(Native.GetUnitLoc(getUd(self)))
end

---getFacing
---@return float
function Unit:getFacing()
--@debug@
    checkobject(self, Unit, 'getFacing', 'self')
--@end-debug@
    return Native.GetUnitFacing(getUd(self))
end

---getMoveSpeed
---@return float
function Unit:getMoveSpeed()
--@debug@
    checkobject(self, Unit, 'getMoveSpeed', 'self')
--@end-debug@
    return Native.GetUnitMoveSpeed(getUd(self))
end

---getDefaultMoveSpeed
---@return float
function Unit:getDefaultMoveSpeed()
--@debug@
    checkobject(self, Unit, 'getDefaultMoveSpeed', 'self')
--@end-debug@
    return Native.GetUnitDefaultMoveSpeed(getUd(self))
end

---getState
---@param unitState UnitState
---@return float
function Unit:getState(unitState)
--@debug@
    checkobject(self, Unit, 'getState', 'self')
    checkuserdata(unitState, 'unitstate', 'getState', 1)
--@end-debug@
    return Native.GetUnitState(getUd(self), unitState)
end

---getOwner
---@return Player
function Unit:getOwner()
--@debug@
    checkobject(self, Unit, 'getOwner', 'self')
--@end-debug@
    return require('lib.stdlib.oop.player'):fromUd(Native.GetOwningPlayer(getUd(self)))
end

---getTypeId
---@return integer
function Unit:getTypeId()
--@debug@
    checkobject(self, Unit, 'getTypeId', 'self')
--@end-debug@
    return Native.GetUnitTypeId(getUd(self))
end

---getRace
---@return Race
function Unit:getRace()
--@debug@
    checkobject(self, Unit, 'getRace', 'self')
--@end-debug@
    return Native.GetUnitRace(getUd(self))
end

---getName
---@return string
function Unit:getName()
--@debug@
    checkobject(self, Unit, 'getName', 'self')
--@end-debug@
    return Native.GetUnitName(getUd(self))
end

---getFoodUsed
---@return integer
function Unit:getFoodUsed()
--@debug@
    checkobject(self, Unit, 'getFoodUsed', 'self')
--@end-debug@
    return Native.GetUnitFoodUsed(getUd(self))
end

---getFoodMade
---@return integer
function Unit:getFoodMade()
--@debug@
    checkobject(self, Unit, 'getFoodMade', 'self')
--@end-debug@
    return Native.GetUnitFoodMade(getUd(self))
end

---setUseFood
---@param useFood boolean
---@return void
function Unit:setUseFood(useFood)
--@debug@
    checkobject(self, Unit, 'setUseFood', 'self')
    checktype(useFood, 'boolean', 'setUseFood', 1)
--@end-debug@
    return Native.SetUnitUseFood(getUd(self), useFood)
end

---getRallyPoint
---@return Location
function Unit:getRallyPoint()
--@debug@
    checkobject(self, Unit, 'getRallyPoint', 'self')
--@end-debug@
    return require('lib.stdlib.oop.location'):fromUd(Native.GetUnitRallyPoint(getUd(self)))
end

---getRallyUnit
---@return Unit
function Unit:getRallyUnit()
--@debug@
    checkobject(self, Unit, 'getRallyUnit', 'self')
--@end-debug@
    return Unit:fromUd(Native.GetUnitRallyUnit(getUd(self)))
end

---getRallyDestructable
---@return Destructable
function Unit:getRallyDestructable()
--@debug@
    checkobject(self, Unit, 'getRallyDestructable', 'self')
--@end-debug@
    return require('lib.stdlib.oop.destructable'):fromUd(Native.GetUnitRallyDestructable(getUd(self)))
end

---isInGroup
---@param group Group
---@return boolean
function Unit:isInGroup(group)
--@debug@
    checkobject(self, Unit, 'isInGroup', 'self')
    checkobject(group, require('lib.stdlib.oop.group'), 'isInGroup', 1)
--@end-debug@
    return Native.IsUnitInGroup(getUd(self), getUd(group))
end

---isInForce
---@param force Force
---@return boolean
function Unit:isInForce(force)
--@debug@
    checkobject(self, Unit, 'isInForce', 'self')
    checkobject(force, require('lib.stdlib.oop.force'), 'isInForce', 1)
--@end-debug@
    return Native.IsUnitInForce(getUd(self), getUd(force))
end

---isOwnedByPlayer
---@param player Player
---@return boolean
function Unit:isOwnedByPlayer(player)
--@debug@
    checkobject(self, Unit, 'isOwnedByPlayer', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'isOwnedByPlayer', 1)
--@end-debug@
    return Native.IsUnitOwnedByPlayer(getUd(self), getUd(player))
end

---isAlly
---@param player Player
---@return boolean
function Unit:isAlly(player)
--@debug@
    checkobject(self, Unit, 'isAlly', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'isAlly', 1)
--@end-debug@
    return Native.IsUnitAlly(getUd(self), getUd(player))
end

---isEnemy
---@param player Player
---@return boolean
function Unit:isEnemy(player)
--@debug@
    checkobject(self, Unit, 'isEnemy', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'isEnemy', 1)
--@end-debug@
    return Native.IsUnitEnemy(getUd(self), getUd(player))
end

---isVisible
---@param player Player
---@return boolean
function Unit:isVisible(player)
--@debug@
    checkobject(self, Unit, 'isVisible', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'isVisible', 1)
--@end-debug@
    return Native.IsUnitVisible(getUd(self), getUd(player))
end

---isDetected
---@param player Player
---@return boolean
function Unit:isDetected(player)
--@debug@
    checkobject(self, Unit, 'isDetected', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'isDetected', 1)
--@end-debug@
    return Native.IsUnitDetected(getUd(self), getUd(player))
end

---isInvisible
---@param player Player
---@return boolean
function Unit:isInvisible(player)
--@debug@
    checkobject(self, Unit, 'isInvisible', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'isInvisible', 1)
--@end-debug@
    return Native.IsUnitInvisible(getUd(self), getUd(player))
end

---isFogged
---@param player Player
---@return boolean
function Unit:isFogged(player)
--@debug@
    checkobject(self, Unit, 'isFogged', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'isFogged', 1)
--@end-debug@
    return Native.IsUnitFogged(getUd(self), getUd(player))
end

---isMasked
---@param player Player
---@return boolean
function Unit:isMasked(player)
--@debug@
    checkobject(self, Unit, 'isMasked', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'isMasked', 1)
--@end-debug@
    return Native.IsUnitMasked(getUd(self), getUd(player))
end

---isSelected
---@param player Player
---@return boolean
function Unit:isSelected(player)
--@debug@
    checkobject(self, Unit, 'isSelected', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'isSelected', 1)
--@end-debug@
    return Native.IsUnitSelected(getUd(self), getUd(player))
end

---isRace
---@param race Race
---@return boolean
function Unit:isRace(race)
--@debug@
    checkobject(self, Unit, 'isRace', 'self')
    checkuserdata(race, 'race', 'isRace', 1)
--@end-debug@
    return Native.IsUnitRace(getUd(self), race)
end

---isType
---@param unitType UnitType
---@return boolean
function Unit:isType(unitType)
--@debug@
    checkobject(self, Unit, 'isType', 'self')
    checkuserdata(unitType, 'unittype', 'isType', 1)
--@end-debug@
    return Native.IsUnitType(getUd(self), unitType)
end

---isUnit
---@param specifiedUnit Unit
---@return boolean
function Unit:isUnit(specifiedUnit)
--@debug@
    checkobject(self, Unit, 'isUnit', 'self')
    checkobject(specifiedUnit, require('lib.stdlib.oop.unit'), 'isUnit', 1)
--@end-debug@
    return Native.IsUnit(getUd(self), getUd(specifiedUnit))
end

---isUnitInRange
---@param otherUnit Unit
---@param distance float
---@return boolean
function Unit:isUnitInRange(otherUnit, distance)
--@debug@
    checkobject(self, Unit, 'isUnitInRange', 'self')
    checkobject(otherUnit, require('lib.stdlib.oop.unit'), 'isUnitInRange', 1)
    checktype(distance, 'float', 'isUnitInRange', 2)
--@end-debug@
    return Native.IsUnitInRange(getUd(self), getUd(otherUnit), distance)
end

---isInRangeXY
---@overload fun(vec: Vector, distance: float): boolean
---@param x float
---@param y float
---@param distance float
---@return boolean
function Unit:isInRangeXY(x, y, distance)
    if type(x) == 'table' then
        distance = y
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Unit, 'isInRangeXY', 'self')
    checktype(x, 'float', 'isInRangeXY', 1)
    checktype(y, 'float', 'isInRangeXY', 2)
    checktype(distance, 'float', 'isInRangeXY', 3)
--@end-debug@
    return Native.IsUnitInRangeXY(getUd(self), x, y, distance)
end

---isHidden
---@return boolean
function Unit:isHidden()
--@debug@
    checkobject(self, Unit, 'isHidden', 'self')
--@end-debug@
    return Native.IsUnitHidden(getUd(self))
end

---isIllusion
---@return boolean
function Unit:isIllusion()
--@debug@
    checkobject(self, Unit, 'isIllusion', 'self')
--@end-debug@
    return Native.IsUnitIllusion(getUd(self))
end

---isUnitInTransport
---@param transport Unit
---@return boolean
function Unit:isUnitInTransport(transport)
--@debug@
    checkobject(self, Unit, 'isUnitInTransport', 'self')
    checkobject(transport, require('lib.stdlib.oop.unit'), 'isUnitInTransport', 1)
--@end-debug@
    return Native.IsUnitInTransport(getUd(self), getUd(transport))
end

---isLoaded
---@return boolean
function Unit:isLoaded()
--@debug@
    checkobject(self, Unit, 'isLoaded', 'self')
--@end-debug@
    return Native.IsUnitLoaded(getUd(self))
end

---shareVision
---@param player Player
---@param share boolean
---@return void
function Unit:shareVision(player, share)
--@debug@
    checkobject(self, Unit, 'shareVision', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'shareVision', 1)
    checktype(share, 'boolean', 'shareVision', 2)
--@end-debug@
    return Native.UnitShareVision(getUd(self), getUd(player), share)
end

---suspendDecay
---@param suspend boolean
---@return void
function Unit:suspendDecay(suspend)
--@debug@
    checkobject(self, Unit, 'suspendDecay', 'self')
    checktype(suspend, 'boolean', 'suspendDecay', 1)
--@end-debug@
    return Native.UnitSuspendDecay(getUd(self), suspend)
end

---addType
---@param unitType UnitType
---@return boolean
function Unit:addType(unitType)
--@debug@
    checkobject(self, Unit, 'addType', 'self')
    checkuserdata(unitType, 'unittype', 'addType', 1)
--@end-debug@
    return Native.UnitAddType(getUd(self), unitType)
end

---removeType
---@param unitType UnitType
---@return boolean
function Unit:removeType(unitType)
--@debug@
    checkobject(self, Unit, 'removeType', 'self')
    checkuserdata(unitType, 'unittype', 'removeType', 1)
--@end-debug@
    return Native.UnitRemoveType(getUd(self), unitType)
end

---addAbility
---@param abilityId integer
---@return boolean
function Unit:addAbility(abilityId)
--@debug@
    checkobject(self, Unit, 'addAbility', 'self')
    checktype(abilityId, 'integer', 'addAbility', 1)
--@end-debug@
    return Native.UnitAddAbility(getUd(self), abilityId)
end

---removeAbility
---@param abilityId integer
---@return boolean
function Unit:removeAbility(abilityId)
--@debug@
    checkobject(self, Unit, 'removeAbility', 'self')
    checktype(abilityId, 'integer', 'removeAbility', 1)
--@end-debug@
    return Native.UnitRemoveAbility(getUd(self), abilityId)
end

---makeAbilityPermanent
---@param permanent boolean
---@param abilityId integer
---@return boolean
function Unit:makeAbilityPermanent(permanent, abilityId)
--@debug@
    checkobject(self, Unit, 'makeAbilityPermanent', 'self')
    checktype(permanent, 'boolean', 'makeAbilityPermanent', 1)
    checktype(abilityId, 'integer', 'makeAbilityPermanent', 2)
--@end-debug@
    return Native.UnitMakeAbilityPermanent(getUd(self), permanent, abilityId)
end

---removeBuffs
---@param removePositive boolean
---@param removeNegative boolean
---@return void
function Unit:removeBuffs(removePositive, removeNegative)
--@debug@
    checkobject(self, Unit, 'removeBuffs', 'self')
    checktype(removePositive, 'boolean', 'removeBuffs', 1)
    checktype(removeNegative, 'boolean', 'removeBuffs', 2)
--@end-debug@
    return Native.UnitRemoveBuffs(getUd(self), removePositive, removeNegative)
end

---removeBuffsEx
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
---@return void
function Unit:removeBuffsEx(removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel)
--@debug@
    checkobject(self, Unit, 'removeBuffsEx', 'self')
    checktype(removePositive, 'boolean', 'removeBuffsEx', 1)
    checktype(removeNegative, 'boolean', 'removeBuffsEx', 2)
    checktype(magic, 'boolean', 'removeBuffsEx', 3)
    checktype(physical, 'boolean', 'removeBuffsEx', 4)
    checktype(timedLife, 'boolean', 'removeBuffsEx', 5)
    checktype(aura, 'boolean', 'removeBuffsEx', 6)
    checktype(autoDispel, 'boolean', 'removeBuffsEx', 7)
--@end-debug@
    return Native.UnitRemoveBuffsEx(getUd(self), removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel)
end

---hasBuffsEx
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
---@return boolean
function Unit:hasBuffsEx(removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel)
--@debug@
    checkobject(self, Unit, 'hasBuffsEx', 'self')
    checktype(removePositive, 'boolean', 'hasBuffsEx', 1)
    checktype(removeNegative, 'boolean', 'hasBuffsEx', 2)
    checktype(magic, 'boolean', 'hasBuffsEx', 3)
    checktype(physical, 'boolean', 'hasBuffsEx', 4)
    checktype(timedLife, 'boolean', 'hasBuffsEx', 5)
    checktype(aura, 'boolean', 'hasBuffsEx', 6)
    checktype(autoDispel, 'boolean', 'hasBuffsEx', 7)
--@end-debug@
    return Native.UnitHasBuffsEx(getUd(self), removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel)
end

---countBuffsEx
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
---@return integer
function Unit:countBuffsEx(removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel)
--@debug@
    checkobject(self, Unit, 'countBuffsEx', 'self')
    checktype(removePositive, 'boolean', 'countBuffsEx', 1)
    checktype(removeNegative, 'boolean', 'countBuffsEx', 2)
    checktype(magic, 'boolean', 'countBuffsEx', 3)
    checktype(physical, 'boolean', 'countBuffsEx', 4)
    checktype(timedLife, 'boolean', 'countBuffsEx', 5)
    checktype(aura, 'boolean', 'countBuffsEx', 6)
    checktype(autoDispel, 'boolean', 'countBuffsEx', 7)
--@end-debug@
    return Native.UnitCountBuffsEx(getUd(self), removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel)
end

---addSleep
---@param add boolean
---@return void
function Unit:addSleep(add)
--@debug@
    checkobject(self, Unit, 'addSleep', 'self')
    checktype(add, 'boolean', 'addSleep', 1)
--@end-debug@
    return Native.UnitAddSleep(getUd(self), add)
end

---canSleep
---@return boolean
function Unit:canSleep()
--@debug@
    checkobject(self, Unit, 'canSleep', 'self')
--@end-debug@
    return Native.UnitCanSleep(getUd(self))
end

---addSleepPerm
---@param add boolean
---@return void
function Unit:addSleepPerm(add)
--@debug@
    checkobject(self, Unit, 'addSleepPerm', 'self')
    checktype(add, 'boolean', 'addSleepPerm', 1)
--@end-debug@
    return Native.UnitAddSleepPerm(getUd(self), add)
end

---canSleepPerm
---@return boolean
function Unit:canSleepPerm()
--@debug@
    checkobject(self, Unit, 'canSleepPerm', 'self')
--@end-debug@
    return Native.UnitCanSleepPerm(getUd(self))
end

---isSleeping
---@return boolean
function Unit:isSleeping()
--@debug@
    checkobject(self, Unit, 'isSleeping', 'self')
--@end-debug@
    return Native.UnitIsSleeping(getUd(self))
end

---wakeUp
---@return void
function Unit:wakeUp()
--@debug@
    checkobject(self, Unit, 'wakeUp', 'self')
--@end-debug@
    return Native.UnitWakeUp(getUd(self))
end

---applyTimedLife
---@param buffId integer
---@param duration float
---@return void
function Unit:applyTimedLife(buffId, duration)
--@debug@
    checkobject(self, Unit, 'applyTimedLife', 'self')
    checktype(buffId, 'integer', 'applyTimedLife', 1)
    checktype(duration, 'float', 'applyTimedLife', 2)
--@end-debug@
    return Native.UnitApplyTimedLife(getUd(self), buffId, duration)
end

---ignoreAlarm
---@param flag boolean
---@return boolean
function Unit:ignoreAlarm(flag)
--@debug@
    checkobject(self, Unit, 'ignoreAlarm', 'self')
    checktype(flag, 'boolean', 'ignoreAlarm', 1)
--@end-debug@
    return Native.UnitIgnoreAlarm(getUd(self), flag)
end

---ignoreAlarmToggled
---@return boolean
function Unit:ignoreAlarmToggled()
--@debug@
    checkobject(self, Unit, 'ignoreAlarmToggled', 'self')
--@end-debug@
    return Native.UnitIgnoreAlarmToggled(getUd(self))
end

---resetCooldown
---@return void
function Unit:resetCooldown()
--@debug@
    checkobject(self, Unit, 'resetCooldown', 'self')
--@end-debug@
    return Native.UnitResetCooldown(getUd(self))
end

---setConstructionProgress
---@param constructionPercentage integer
---@return void
function Unit:setConstructionProgress(constructionPercentage)
--@debug@
    checkobject(self, Unit, 'setConstructionProgress', 'self')
    checktype(constructionPercentage, 'integer', 'setConstructionProgress', 1)
--@end-debug@
    return Native.UnitSetConstructionProgress(getUd(self), constructionPercentage)
end

---setUpgradeProgress
---@param upgradePercentage integer
---@return void
function Unit:setUpgradeProgress(upgradePercentage)
--@debug@
    checkobject(self, Unit, 'setUpgradeProgress', 'self')
    checktype(upgradePercentage, 'integer', 'setUpgradeProgress', 1)
--@end-debug@
    return Native.UnitSetUpgradeProgress(getUd(self), upgradePercentage)
end

---pauseTimedLife
---@param flag boolean
---@return void
function Unit:pauseTimedLife(flag)
--@debug@
    checkobject(self, Unit, 'pauseTimedLife', 'self')
    checktype(flag, 'boolean', 'pauseTimedLife', 1)
--@end-debug@
    return Native.UnitPauseTimedLife(getUd(self), flag)
end

---setUsesAltIcon
---@param flag boolean
---@return void
function Unit:setUsesAltIcon(flag)
--@debug@
    checkobject(self, Unit, 'setUsesAltIcon', 'self')
    checktype(flag, 'boolean', 'setUsesAltIcon', 1)
--@end-debug@
    return Native.UnitSetUsesAltIcon(getUd(self), flag)
end

---damagePoint
---@overload fun(delay: float, radius: float, vec: Vector, amount: float, attack: boolean, ranged: boolean, attackType: AttackType, damageType: DamageType, weaponType: WeaponType): boolean
---@param delay float
---@param radius float
---@param x float
---@param y float
---@param amount float
---@param attack boolean
---@param ranged boolean
---@param attackType AttackType
---@param damageType DamageType
---@param weaponType WeaponType
---@return boolean
function Unit:damagePoint(delay, radius, x, y, amount, attack, ranged, attackType, damageType, weaponType)
    if type(x) == 'table' then
        amount, attack, ranged, attackType, damageType, weaponType = y, amount, attack, ranged, attackType, damageType
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Unit, 'damagePoint', 'self')
    checktype(delay, 'float', 'damagePoint', 1)
    checktype(radius, 'float', 'damagePoint', 2)
    checktype(x, 'float', 'damagePoint', 3)
    checktype(y, 'float', 'damagePoint', 4)
    checktype(amount, 'float', 'damagePoint', 5)
    checktype(attack, 'boolean', 'damagePoint', 6)
    checktype(ranged, 'boolean', 'damagePoint', 7)
    checkuserdata(attackType, 'attacktype', 'damagePoint', 8)
    checkuserdata(damageType, 'damagetype', 'damagePoint', 9)
    checkuserdata(weaponType, 'weapontype', 'damagePoint', 10)
--@end-debug@
    return Native.UnitDamagePoint(getUd(self), delay, radius, x, y, amount, attack, ranged, attackType, damageType, weaponType)
end

---damageTarget
---@param target Widget
---@param amount float
---@param attack boolean
---@param ranged boolean
---@param attackType AttackType
---@param damageType DamageType
---@param weaponType WeaponType
---@return boolean
function Unit:damageTarget(target, amount, attack, ranged, attackType, damageType, weaponType)
--@debug@
    checkobject(self, Unit, 'damageTarget', 'self')
    checkobject(target, require('lib.stdlib.oop.widget'), 'damageTarget', 1)
    checktype(amount, 'float', 'damageTarget', 2)
    checktype(attack, 'boolean', 'damageTarget', 3)
    checktype(ranged, 'boolean', 'damageTarget', 4)
    checkuserdata(attackType, 'attacktype', 'damageTarget', 5)
    checkuserdata(damageType, 'damagetype', 'damageTarget', 6)
    checkuserdata(weaponType, 'weapontype', 'damageTarget', 7)
--@end-debug@
    return Native.UnitDamageTarget(getUd(self), getUd(target), amount, attack, ranged, attackType, damageType, weaponType)
end

---issueImmediateOrder
---@param order integer
---@return boolean
function Unit:issueImmediateOrder(order)
--@debug@
    checkobject(self, Unit, 'issueImmediateOrder', 'self')
    checktype(order, 'integer', 'issueImmediateOrder', 1)
--@end-debug@
    return Native.IssueImmediateOrderById(getUd(self), order)
end

---issuePointOrder
---@overload fun(order: integer, vec: Vector): boolean
---@param order integer
---@param x float
---@param y float
---@return boolean
function Unit:issuePointOrder(order, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Unit, 'issuePointOrder', 'self')
    checktype(order, 'integer', 'issuePointOrder', 1)
    checktype(x, 'float', 'issuePointOrder', 2)
    checktype(y, 'float', 'issuePointOrder', 3)
--@end-debug@
    return Native.IssuePointOrderById(getUd(self), order, x, y)
end

---issueTargetOrder
---@param order integer
---@param targetWidget Widget
---@return boolean
function Unit:issueTargetOrder(order, targetWidget)
--@debug@
    checkobject(self, Unit, 'issueTargetOrder', 'self')
    checktype(order, 'integer', 'issueTargetOrder', 1)
    checkobject(targetWidget, require('lib.stdlib.oop.widget'), 'issueTargetOrder', 2)
--@end-debug@
    return Native.IssueTargetOrderById(getUd(self), order, getUd(targetWidget))
end

---issueInstantPointOrder
---@overload fun(order: integer, vec: Vector, instantTargetWidget: Widget): boolean
---@param order integer
---@param x float
---@param y float
---@param instantTargetWidget Widget
---@return boolean
function Unit:issueInstantPointOrder(order, x, y, instantTargetWidget)
    if type(x) == 'table' then
        instantTargetWidget = y
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Unit, 'issueInstantPointOrder', 'self')
    checktype(order, 'integer', 'issueInstantPointOrder', 1)
    checktype(x, 'float', 'issueInstantPointOrder', 2)
    checktype(y, 'float', 'issueInstantPointOrder', 3)
    checkobject(instantTargetWidget, require('lib.stdlib.oop.widget'), 'issueInstantPointOrder', 4)
--@end-debug@
    return Native.IssueInstantPointOrderById(getUd(self), order, x, y, getUd(instantTargetWidget))
end

---issueInstantTargetOrder
---@param order integer
---@param targetWidget Widget
---@param instantTargetWidget Widget
---@return boolean
function Unit:issueInstantTargetOrder(order, targetWidget, instantTargetWidget)
--@debug@
    checkobject(self, Unit, 'issueInstantTargetOrder', 'self')
    checktype(order, 'integer', 'issueInstantTargetOrder', 1)
    checkobject(targetWidget, require('lib.stdlib.oop.widget'), 'issueInstantTargetOrder', 2)
    checkobject(instantTargetWidget, require('lib.stdlib.oop.widget'), 'issueInstantTargetOrder', 3)
--@end-debug@
    return Native.IssueInstantTargetOrderById(getUd(self), order, getUd(targetWidget), getUd(instantTargetWidget))
end

---issueBuildOrder
---@overload fun(unitToBuild: string, vec: Vector): boolean
---@param unitToBuild string
---@param x float
---@param y float
---@return boolean
function Unit:issueBuildOrder(unitToBuild, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Unit, 'issueBuildOrder', 'self')
    checktype(unitToBuild, 'string', 'issueBuildOrder', 1)
    checktype(x, 'float', 'issueBuildOrder', 2)
    checktype(y, 'float', 'issueBuildOrder', 3)
--@end-debug@
    return Native.IssueBuildOrder(getUd(self), unitToBuild, x, y)
end

---issueBuildOrderById
---@overload fun(unitId: integer, vec: Vector): boolean
---@param unitId integer
---@param x float
---@param y float
---@return boolean
function Unit:issueBuildOrderById(unitId, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Unit, 'issueBuildOrderById', 'self')
    checktype(unitId, 'integer', 'issueBuildOrderById', 1)
    checktype(x, 'float', 'issueBuildOrderById', 2)
    checktype(y, 'float', 'issueBuildOrderById', 3)
--@end-debug@
    return Native.IssueBuildOrderById(getUd(self), unitId, x, y)
end

---getCurrentOrder
---@return integer
function Unit:getCurrentOrder()
--@debug@
    checkobject(self, Unit, 'getCurrentOrder', 'self')
--@end-debug@
    return Native.GetUnitCurrentOrder(getUd(self))
end

---setResourceAmount
---@param amount integer
---@return void
function Unit:setResourceAmount(amount)
--@debug@
    checkobject(self, Unit, 'setResourceAmount', 'self')
    checktype(amount, 'integer', 'setResourceAmount', 1)
--@end-debug@
    return Native.SetResourceAmount(getUd(self), amount)
end

---addResourceAmount
---@param amount integer
---@return void
function Unit:addResourceAmount(amount)
--@debug@
    checkobject(self, Unit, 'addResourceAmount', 'self')
    checktype(amount, 'integer', 'addResourceAmount', 1)
--@end-debug@
    return Native.AddResourceAmount(getUd(self), amount)
end

---getResourceAmount
---@return integer
function Unit:getResourceAmount()
--@debug@
    checkobject(self, Unit, 'getResourceAmount', 'self')
--@end-debug@
    return Native.GetResourceAmount(getUd(self))
end

---waygateGetDestinationX
---@return float
function Unit:waygateGetDestinationX()
--@debug@
    checkobject(self, Unit, 'waygateGetDestinationX', 'self')
--@end-debug@
    return Native.WaygateGetDestinationX(getUd(self))
end

---waygateGetDestinationY
---@return float
function Unit:waygateGetDestinationY()
--@debug@
    checkobject(self, Unit, 'waygateGetDestinationY', 'self')
--@end-debug@
    return Native.WaygateGetDestinationY(getUd(self))
end

---waygateSetDestination
---@overload fun(vec: Vector): void
---@param x float
---@param y float
---@return void
function Unit:waygateSetDestination(x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Unit, 'waygateSetDestination', 'self')
    checktype(x, 'float', 'waygateSetDestination', 1)
    checktype(y, 'float', 'waygateSetDestination', 2)
--@end-debug@
    return Native.WaygateSetDestination(getUd(self), x, y)
end

---waygateActivate
---@param activate boolean
---@return void
function Unit:waygateActivate(activate)
--@debug@
    checkobject(self, Unit, 'waygateActivate', 'self')
    checktype(activate, 'boolean', 'waygateActivate', 1)
--@end-debug@
    return Native.WaygateActivate(getUd(self), activate)
end

---waygateIsActive
---@return boolean
function Unit:waygateIsActive()
--@debug@
    checkobject(self, Unit, 'waygateIsActive', 'self')
--@end-debug@
    return Native.WaygateIsActive(getUd(self))
end

---addItemToStock
---@param itemId integer
---@param currentStock integer
---@param stockMax integer
---@return void
function Unit:addItemToStock(itemId, currentStock, stockMax)
--@debug@
    checkobject(self, Unit, 'addItemToStock', 'self')
    checktype(itemId, 'integer', 'addItemToStock', 1)
    checktype(currentStock, 'integer', 'addItemToStock', 2)
    checktype(stockMax, 'integer', 'addItemToStock', 3)
--@end-debug@
    return Native.AddItemToStock(getUd(self), itemId, currentStock, stockMax)
end

---addToStock
---@param unitId integer
---@param currentStock integer
---@param stockMax integer
---@return void
function Unit:addToStock(unitId, currentStock, stockMax)
--@debug@
    checkobject(self, Unit, 'addToStock', 'self')
    checktype(unitId, 'integer', 'addToStock', 1)
    checktype(currentStock, 'integer', 'addToStock', 2)
    checktype(stockMax, 'integer', 'addToStock', 3)
--@end-debug@
    return Native.AddUnitToStock(getUd(self), unitId, currentStock, stockMax)
end

---removeItemFromStock
---@param itemId integer
---@return void
function Unit:removeItemFromStock(itemId)
--@debug@
    checkobject(self, Unit, 'removeItemFromStock', 'self')
    checktype(itemId, 'integer', 'removeItemFromStock', 1)
--@end-debug@
    return Native.RemoveItemFromStock(getUd(self), itemId)
end

---removeFromStock
---@param unitId integer
---@return void
function Unit:removeFromStock(unitId)
--@debug@
    checkobject(self, Unit, 'removeFromStock', 'self')
    checktype(unitId, 'integer', 'removeFromStock', 1)
--@end-debug@
    return Native.RemoveUnitFromStock(getUd(self), unitId)
end

---setItemTypeSlots
---@param slots integer
---@return void
function Unit:setItemTypeSlots(slots)
--@debug@
    checkobject(self, Unit, 'setItemTypeSlots', 'self')
    checktype(slots, 'integer', 'setItemTypeSlots', 1)
--@end-debug@
    return Native.SetItemTypeSlots(getUd(self), slots)
end

---setTypeSlots
---@param slots integer
---@return void
function Unit:setTypeSlots(slots)
--@debug@
    checkobject(self, Unit, 'setTypeSlots', 'self')
    checktype(slots, 'integer', 'setTypeSlots', 1)
--@end-debug@
    return Native.SetUnitTypeSlots(getUd(self), slots)
end

---getUserData
---@return integer
function Unit:getUserData()
--@debug@
    checkobject(self, Unit, 'getUserData', 'self')
--@end-debug@
    return Native.GetUnitUserData(getUd(self))
end

---setUserData
---@param data integer
---@return void
function Unit:setUserData(data)
--@debug@
    checkobject(self, Unit, 'setUserData', 'self')
    checktype(data, 'integer', 'setUserData', 1)
--@end-debug@
    return Native.SetUnitUserData(getUd(self), data)
end

---addIndicator
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Unit:addIndicator(red, green, blue, alpha)
--@debug@
    checkobject(self, Unit, 'addIndicator', 'self')
    checktype(red, 'integer', 'addIndicator', 1)
    checktype(green, 'integer', 'addIndicator', 2)
    checktype(blue, 'integer', 'addIndicator', 3)
    checktype(alpha, 'integer', 'addIndicator', 4)
--@end-debug@
    return Native.UnitAddIndicator(getUd(self), red, green, blue, alpha)
end

---createMinimapIconOn
---@param red integer
---@param green integer
---@param blue integer
---@param pingPath string
---@param fogVisibility FogState
---@return minimapicon
function Unit:createMinimapIconOn(red, green, blue, pingPath, fogVisibility)
--@debug@
    checkobject(self, Unit, 'createMinimapIconOn', 'self')
    checktype(red, 'integer', 'createMinimapIconOn', 1)
    checktype(green, 'integer', 'createMinimapIconOn', 2)
    checktype(blue, 'integer', 'createMinimapIconOn', 3)
    checktype(pingPath, 'string', 'createMinimapIconOn', 4)
    checkuserdata(fogVisibility, 'fogstate', 'createMinimapIconOn', 5)
--@end-debug@
    return Native.CreateMinimapIconOnUnit(getUd(self), red, green, blue, pingPath, fogVisibility)
end

---setCameraTargetController
---@param xoffset float
---@param yoffset float
---@param inheritOrientation boolean
---@return void
function Unit:setCameraTargetController(xoffset, yoffset, inheritOrientation)
--@debug@
    checkobject(self, Unit, 'setCameraTargetController', 'self')
    checktype(xoffset, 'float', 'setCameraTargetController', 1)
    checktype(yoffset, 'float', 'setCameraTargetController', 2)
    checktype(inheritOrientation, 'boolean', 'setCameraTargetController', 3)
--@end-debug@
    return Native.SetCameraTargetController(getUd(self), xoffset, yoffset, inheritOrientation)
end

---setCameraOrientController
---@param xoffset float
---@param yoffset float
---@return void
function Unit:setCameraOrientController(xoffset, yoffset)
--@debug@
    checkobject(self, Unit, 'setCameraOrientController', 'self')
    checktype(xoffset, 'float', 'setCameraOrientController', 1)
    checktype(yoffset, 'float', 'setCameraOrientController', 2)
--@end-debug@
    return Native.SetCameraOrientController(getUd(self), xoffset, yoffset)
end

---removeGuardPosition
---@return void
function Unit:removeGuardPosition()
--@debug@
    checkobject(self, Unit, 'removeGuardPosition', 'self')
--@end-debug@
    return Native.RemoveGuardPosition(getUd(self))
end

---recycleGuardPosition
---@return void
function Unit:recycleGuardPosition()
--@debug@
    checkobject(self, Unit, 'recycleGuardPosition', 'self')
--@end-debug@
    return Native.RecycleGuardPosition(getUd(self))
end

---getMaxHP
---@return integer
function Unit:getMaxHP()
--@debug@
    checkobject(self, Unit, 'getMaxHP', 'self')
--@end-debug@
    return Native.BlzGetUnitMaxHP(getUd(self))
end

---setMaxHP
---@param hp integer
---@return void
function Unit:setMaxHP(hp)
--@debug@
    checkobject(self, Unit, 'setMaxHP', 'self')
    checktype(hp, 'integer', 'setMaxHP', 1)
--@end-debug@
    return Native.BlzSetUnitMaxHP(getUd(self), hp)
end

---getMaxMana
---@return integer
function Unit:getMaxMana()
--@debug@
    checkobject(self, Unit, 'getMaxMana', 'self')
--@end-debug@
    return Native.BlzGetUnitMaxMana(getUd(self))
end

---setMaxMana
---@param mana integer
---@return void
function Unit:setMaxMana(mana)
--@debug@
    checkobject(self, Unit, 'setMaxMana', 'self')
    checktype(mana, 'integer', 'setMaxMana', 1)
--@end-debug@
    return Native.BlzSetUnitMaxMana(getUd(self), mana)
end

---setName
---@param name string
---@return void
function Unit:setName(name)
--@debug@
    checkobject(self, Unit, 'setName', 'self')
    checktype(name, 'string', 'setName', 1)
--@end-debug@
    return Native.BlzSetUnitName(getUd(self), name)
end

---setHeroProperName
---@param heroProperName string
---@return void
function Unit:setHeroProperName(heroProperName)
--@debug@
    checkobject(self, Unit, 'setHeroProperName', 'self')
    checktype(heroProperName, 'string', 'setHeroProperName', 1)
--@end-debug@
    return Native.BlzSetHeroProperName(getUd(self), heroProperName)
end

---getBaseDamage
---@param weaponIndex integer
---@return integer
function Unit:getBaseDamage(weaponIndex)
--@debug@
    checkobject(self, Unit, 'getBaseDamage', 'self')
    checktype(weaponIndex, 'integer', 'getBaseDamage', 1)
--@end-debug@
    return Native.BlzGetUnitBaseDamage(getUd(self), weaponIndex)
end

---setBaseDamage
---@param baseDamage integer
---@param weaponIndex integer
---@return void
function Unit:setBaseDamage(baseDamage, weaponIndex)
--@debug@
    checkobject(self, Unit, 'setBaseDamage', 'self')
    checktype(baseDamage, 'integer', 'setBaseDamage', 1)
    checktype(weaponIndex, 'integer', 'setBaseDamage', 2)
--@end-debug@
    return Native.BlzSetUnitBaseDamage(getUd(self), baseDamage, weaponIndex)
end

---getDiceNumber
---@param weaponIndex integer
---@return integer
function Unit:getDiceNumber(weaponIndex)
--@debug@
    checkobject(self, Unit, 'getDiceNumber', 'self')
    checktype(weaponIndex, 'integer', 'getDiceNumber', 1)
--@end-debug@
    return Native.BlzGetUnitDiceNumber(getUd(self), weaponIndex)
end

---setDiceNumber
---@param diceNumber integer
---@param weaponIndex integer
---@return void
function Unit:setDiceNumber(diceNumber, weaponIndex)
--@debug@
    checkobject(self, Unit, 'setDiceNumber', 'self')
    checktype(diceNumber, 'integer', 'setDiceNumber', 1)
    checktype(weaponIndex, 'integer', 'setDiceNumber', 2)
--@end-debug@
    return Native.BlzSetUnitDiceNumber(getUd(self), diceNumber, weaponIndex)
end

---getDiceSides
---@param weaponIndex integer
---@return integer
function Unit:getDiceSides(weaponIndex)
--@debug@
    checkobject(self, Unit, 'getDiceSides', 'self')
    checktype(weaponIndex, 'integer', 'getDiceSides', 1)
--@end-debug@
    return Native.BlzGetUnitDiceSides(getUd(self), weaponIndex)
end

---setDiceSides
---@param diceSides integer
---@param weaponIndex integer
---@return void
function Unit:setDiceSides(diceSides, weaponIndex)
--@debug@
    checkobject(self, Unit, 'setDiceSides', 'self')
    checktype(diceSides, 'integer', 'setDiceSides', 1)
    checktype(weaponIndex, 'integer', 'setDiceSides', 2)
--@end-debug@
    return Native.BlzSetUnitDiceSides(getUd(self), diceSides, weaponIndex)
end

---getAttackCooldown
---@param weaponIndex integer
---@return float
function Unit:getAttackCooldown(weaponIndex)
--@debug@
    checkobject(self, Unit, 'getAttackCooldown', 'self')
    checktype(weaponIndex, 'integer', 'getAttackCooldown', 1)
--@end-debug@
    return Native.BlzGetUnitAttackCooldown(getUd(self), weaponIndex)
end

---setAttackCooldown
---@param cooldown float
---@param weaponIndex integer
---@return void
function Unit:setAttackCooldown(cooldown, weaponIndex)
--@debug@
    checkobject(self, Unit, 'setAttackCooldown', 'self')
    checktype(cooldown, 'float', 'setAttackCooldown', 1)
    checktype(weaponIndex, 'integer', 'setAttackCooldown', 2)
--@end-debug@
    return Native.BlzSetUnitAttackCooldown(getUd(self), cooldown, weaponIndex)
end

---getArmor
---@return float
function Unit:getArmor()
--@debug@
    checkobject(self, Unit, 'getArmor', 'self')
--@end-debug@
    return Native.BlzGetUnitArmor(getUd(self))
end

---setArmor
---@param armorAmount float
---@return void
function Unit:setArmor(armorAmount)
--@debug@
    checkobject(self, Unit, 'setArmor', 'self')
    checktype(armorAmount, 'float', 'setArmor', 1)
--@end-debug@
    return Native.BlzSetUnitArmor(getUd(self), armorAmount)
end

---hideAbility
---@param abilId integer
---@param flag boolean
---@return void
function Unit:hideAbility(abilId, flag)
--@debug@
    checkobject(self, Unit, 'hideAbility', 'self')
    checktype(abilId, 'integer', 'hideAbility', 1)
    checktype(flag, 'boolean', 'hideAbility', 2)
--@end-debug@
    return Native.BlzUnitHideAbility(getUd(self), abilId, flag)
end

---disableAbility
---@param abilId integer
---@param flag boolean
---@param hideUI boolean
---@return void
function Unit:disableAbility(abilId, flag, hideUI)
--@debug@
    checkobject(self, Unit, 'disableAbility', 'self')
    checktype(abilId, 'integer', 'disableAbility', 1)
    checktype(flag, 'boolean', 'disableAbility', 2)
    checktype(hideUI, 'boolean', 'disableAbility', 3)
--@end-debug@
    return Native.BlzUnitDisableAbility(getUd(self), abilId, flag, hideUI)
end

---cancelTimedLife
---@return void
function Unit:cancelTimedLife()
--@debug@
    checkobject(self, Unit, 'cancelTimedLife', 'self')
--@end-debug@
    return Native.BlzUnitCancelTimedLife(getUd(self))
end

---isSelectable
---@return boolean
function Unit:isSelectable()
--@debug@
    checkobject(self, Unit, 'isSelectable', 'self')
--@end-debug@
    return Native.BlzIsUnitSelectable(getUd(self))
end

---isInvulnerable
---@return boolean
function Unit:isInvulnerable()
--@debug@
    checkobject(self, Unit, 'isInvulnerable', 'self')
--@end-debug@
    return Native.BlzIsUnitInvulnerable(getUd(self))
end

---interruptAttack
---@return void
function Unit:interruptAttack()
--@debug@
    checkobject(self, Unit, 'interruptAttack', 'self')
--@end-debug@
    return Native.BlzUnitInterruptAttack(getUd(self))
end

---getCollisionSize
---@return float
function Unit:getCollisionSize()
--@debug@
    checkobject(self, Unit, 'getCollisionSize', 'self')
--@end-debug@
    return Native.BlzGetUnitCollisionSize(getUd(self))
end

---setAbilityCooldown
---@param abilId integer
---@param level integer
---@param cooldown float
---@return void
function Unit:setAbilityCooldown(abilId, level, cooldown)
--@debug@
    checkobject(self, Unit, 'setAbilityCooldown', 'self')
    checktype(abilId, 'integer', 'setAbilityCooldown', 1)
    checktype(level, 'integer', 'setAbilityCooldown', 2)
    checktype(cooldown, 'float', 'setAbilityCooldown', 3)
--@end-debug@
    return Native.BlzSetUnitAbilityCooldown(getUd(self), abilId, level, cooldown)
end

---getAbilityCooldown
---@param abilId integer
---@param level integer
---@return float
function Unit:getAbilityCooldown(abilId, level)
--@debug@
    checkobject(self, Unit, 'getAbilityCooldown', 'self')
    checktype(abilId, 'integer', 'getAbilityCooldown', 1)
    checktype(level, 'integer', 'getAbilityCooldown', 2)
--@end-debug@
    return Native.BlzGetUnitAbilityCooldown(getUd(self), abilId, level)
end

---getAbilityCooldownRemaining
---@param abilId integer
---@return float
function Unit:getAbilityCooldownRemaining(abilId)
--@debug@
    checkobject(self, Unit, 'getAbilityCooldownRemaining', 'self')
    checktype(abilId, 'integer', 'getAbilityCooldownRemaining', 1)
--@end-debug@
    return Native.BlzGetUnitAbilityCooldownRemaining(getUd(self), abilId)
end

---endAbilityCooldown
---@param abilCode integer
---@return void
function Unit:endAbilityCooldown(abilCode)
--@debug@
    checkobject(self, Unit, 'endAbilityCooldown', 'self')
    checktype(abilCode, 'integer', 'endAbilityCooldown', 1)
--@end-debug@
    return Native.BlzEndUnitAbilityCooldown(getUd(self), abilCode)
end

---startAbilityCooldown
---@param abilCode integer
---@param cooldown float
---@return void
function Unit:startAbilityCooldown(abilCode, cooldown)
--@debug@
    checkobject(self, Unit, 'startAbilityCooldown', 'self')
    checktype(abilCode, 'integer', 'startAbilityCooldown', 1)
    checktype(cooldown, 'float', 'startAbilityCooldown', 2)
--@end-debug@
    return Native.BlzStartUnitAbilityCooldown(getUd(self), abilCode, cooldown)
end

---getAbilityManaCost
---@param abilId integer
---@param level integer
---@return integer
function Unit:getAbilityManaCost(abilId, level)
--@debug@
    checkobject(self, Unit, 'getAbilityManaCost', 'self')
    checktype(abilId, 'integer', 'getAbilityManaCost', 1)
    checktype(level, 'integer', 'getAbilityManaCost', 2)
--@end-debug@
    return Native.BlzGetUnitAbilityManaCost(getUd(self), abilId, level)
end

---setAbilityManaCost
---@param abilId integer
---@param level integer
---@param manaCost integer
---@return void
function Unit:setAbilityManaCost(abilId, level, manaCost)
--@debug@
    checkobject(self, Unit, 'setAbilityManaCost', 'self')
    checktype(abilId, 'integer', 'setAbilityManaCost', 1)
    checktype(level, 'integer', 'setAbilityManaCost', 2)
    checktype(manaCost, 'integer', 'setAbilityManaCost', 3)
--@end-debug@
    return Native.BlzSetUnitAbilityManaCost(getUd(self), abilId, level, manaCost)
end

---getLocalZ
---@return float
function Unit:getLocalZ()
--@debug@
    checkobject(self, Unit, 'getLocalZ', 'self')
--@end-debug@
    return Native.BlzGetLocalUnitZ(getUd(self))
end

---getZ
---@return float
function Unit:getZ()
--@debug@
    checkobject(self, Unit, 'getZ', 'self')
--@end-debug@
    return Native.BlzGetUnitZ(getUd(self))
end

---showTeamGlow
---@param show boolean
---@return void
function Unit:showTeamGlow(show)
--@debug@
    checkobject(self, Unit, 'showTeamGlow', 'self')
    checktype(show, 'boolean', 'showTeamGlow', 1)
--@end-debug@
    return Native.BlzShowUnitTeamGlow(getUd(self), show)
end

---getAbility
---@param abilId integer
---@return Ability
function Unit:getAbility(abilId)
--@debug@
    checkobject(self, Unit, 'getAbility', 'self')
    checktype(abilId, 'integer', 'getAbility', 1)
--@end-debug@
    return require('lib.stdlib.oop.ability'):fromUd(Native.BlzGetUnitAbility(getUd(self), abilId))
end

---getAbilityByIndex
---@param index integer
---@return Ability
function Unit:getAbilityByIndex(index)
--@debug@
    checkobject(self, Unit, 'getAbilityByIndex', 'self')
    checktype(index, 'integer', 'getAbilityByIndex', 1)
--@end-debug@
    return require('lib.stdlib.oop.ability'):fromUd(Native.BlzGetUnitAbilityByIndex(getUd(self), index))
end

---pauseEx
---@param flag boolean
---@return void
function Unit:pauseEx(flag)
--@debug@
    checkobject(self, Unit, 'pauseEx', 'self')
    checktype(flag, 'boolean', 'pauseEx', 1)
--@end-debug@
    return Native.BlzPauseUnitEx(getUd(self), flag)
end

---setFacingEx
---@param facingAngle float
---@return void
function Unit:setFacingEx(facingAngle)
--@debug@
    checkobject(self, Unit, 'setFacingEx', 'self')
    checktype(facingAngle, 'float', 'setFacingEx', 1)
--@end-debug@
    return Native.BlzSetUnitFacingEx(getUd(self), facingAngle)
end

---getBooleanField
---@param field UnitBooleanField
---@return boolean
function Unit:getBooleanField(field)
--@debug@
    checkobject(self, Unit, 'getBooleanField', 'self')
    checkuserdata(field, 'unitbooleanfield', 'getBooleanField', 1)
--@end-debug@
    return Native.BlzGetUnitBooleanField(getUd(self), field)
end

---getIntegerField
---@param field UnitIntegerField
---@return integer
function Unit:getIntegerField(field)
--@debug@
    checkobject(self, Unit, 'getIntegerField', 'self')
    checkuserdata(field, 'unitintegerfield', 'getIntegerField', 1)
--@end-debug@
    return Native.BlzGetUnitIntegerField(getUd(self), field)
end

---getRealField
---@param field UnitRealField
---@return float
function Unit:getRealField(field)
--@debug@
    checkobject(self, Unit, 'getRealField', 'self')
    checkuserdata(field, 'unitrealfield', 'getRealField', 1)
--@end-debug@
    return Native.BlzGetUnitRealField(getUd(self), field)
end

---getStringField
---@param field UnitStringField
---@return string
function Unit:getStringField(field)
--@debug@
    checkobject(self, Unit, 'getStringField', 'self')
    checkuserdata(field, 'unitstringfield', 'getStringField', 1)
--@end-debug@
    return Native.BlzGetUnitStringField(getUd(self), field)
end

---setBooleanField
---@param field UnitBooleanField
---@param value boolean
---@return boolean
function Unit:setBooleanField(field, value)
--@debug@
    checkobject(self, Unit, 'setBooleanField', 'self')
    checkuserdata(field, 'unitbooleanfield', 'setBooleanField', 1)
    checktype(value, 'boolean', 'setBooleanField', 2)
--@end-debug@
    return Native.BlzSetUnitBooleanField(getUd(self), field, value)
end

---setIntegerField
---@param field UnitIntegerField
---@param value integer
---@return boolean
function Unit:setIntegerField(field, value)
--@debug@
    checkobject(self, Unit, 'setIntegerField', 'self')
    checkuserdata(field, 'unitintegerfield', 'setIntegerField', 1)
    checktype(value, 'integer', 'setIntegerField', 2)
--@end-debug@
    return Native.BlzSetUnitIntegerField(getUd(self), field, value)
end

---setRealField
---@param field UnitRealField
---@param value float
---@return boolean
function Unit:setRealField(field, value)
--@debug@
    checkobject(self, Unit, 'setRealField', 'self')
    checkuserdata(field, 'unitrealfield', 'setRealField', 1)
    checktype(value, 'float', 'setRealField', 2)
--@end-debug@
    return Native.BlzSetUnitRealField(getUd(self), field, value)
end

---setStringField
---@param field UnitStringField
---@param value string
---@return boolean
function Unit:setStringField(field, value)
--@debug@
    checkobject(self, Unit, 'setStringField', 'self')
    checkuserdata(field, 'unitstringfield', 'setStringField', 1)
    checktype(value, 'string', 'setStringField', 2)
--@end-debug@
    return Native.BlzSetUnitStringField(getUd(self), field, value)
end

---getWeaponBooleanField
---@param field UnitWeaponBooleanField
---@param index integer
---@return boolean
function Unit:getWeaponBooleanField(field, index)
--@debug@
    checkobject(self, Unit, 'getWeaponBooleanField', 'self')
    checkuserdata(field, 'unitweaponbooleanfield', 'getWeaponBooleanField', 1)
    checktype(index, 'integer', 'getWeaponBooleanField', 2)
--@end-debug@
    return Native.BlzGetUnitWeaponBooleanField(getUd(self), field, index)
end

---getWeaponIntegerField
---@param field UnitWeaponIntegerField
---@param index integer
---@return integer
function Unit:getWeaponIntegerField(field, index)
--@debug@
    checkobject(self, Unit, 'getWeaponIntegerField', 'self')
    checkuserdata(field, 'unitweaponintegerfield', 'getWeaponIntegerField', 1)
    checktype(index, 'integer', 'getWeaponIntegerField', 2)
--@end-debug@
    return Native.BlzGetUnitWeaponIntegerField(getUd(self), field, index)
end

---getWeaponRealField
---@param field UnitWeaponRealField
---@param index integer
---@return float
function Unit:getWeaponRealField(field, index)
--@debug@
    checkobject(self, Unit, 'getWeaponRealField', 'self')
    checkuserdata(field, 'unitweaponrealfield', 'getWeaponRealField', 1)
    checktype(index, 'integer', 'getWeaponRealField', 2)
--@end-debug@
    return Native.BlzGetUnitWeaponRealField(getUd(self), field, index)
end

---getWeaponStringField
---@param field UnitWeaponStringField
---@param index integer
---@return string
function Unit:getWeaponStringField(field, index)
--@debug@
    checkobject(self, Unit, 'getWeaponStringField', 'self')
    checkuserdata(field, 'unitweaponstringfield', 'getWeaponStringField', 1)
    checktype(index, 'integer', 'getWeaponStringField', 2)
--@end-debug@
    return Native.BlzGetUnitWeaponStringField(getUd(self), field, index)
end

---setWeaponBooleanField
---@param field UnitWeaponBooleanField
---@param index integer
---@param value boolean
---@return boolean
function Unit:setWeaponBooleanField(field, index, value)
--@debug@
    checkobject(self, Unit, 'setWeaponBooleanField', 'self')
    checkuserdata(field, 'unitweaponbooleanfield', 'setWeaponBooleanField', 1)
    checktype(index, 'integer', 'setWeaponBooleanField', 2)
    checktype(value, 'boolean', 'setWeaponBooleanField', 3)
--@end-debug@
    return Native.BlzSetUnitWeaponBooleanField(getUd(self), field, index, value)
end

---setWeaponIntegerField
---@param field UnitWeaponIntegerField
---@param index integer
---@param value integer
---@return boolean
function Unit:setWeaponIntegerField(field, index, value)
--@debug@
    checkobject(self, Unit, 'setWeaponIntegerField', 'self')
    checkuserdata(field, 'unitweaponintegerfield', 'setWeaponIntegerField', 1)
    checktype(index, 'integer', 'setWeaponIntegerField', 2)
    checktype(value, 'integer', 'setWeaponIntegerField', 3)
--@end-debug@
    return Native.BlzSetUnitWeaponIntegerField(getUd(self), field, index, value)
end

---setWeaponRealField
---@param field UnitWeaponRealField
---@param index integer
---@param value float
---@return boolean
function Unit:setWeaponRealField(field, index, value)
--@debug@
    checkobject(self, Unit, 'setWeaponRealField', 'self')
    checkuserdata(field, 'unitweaponrealfield', 'setWeaponRealField', 1)
    checktype(index, 'integer', 'setWeaponRealField', 2)
    checktype(value, 'float', 'setWeaponRealField', 3)
--@end-debug@
    return Native.BlzSetUnitWeaponRealField(getUd(self), field, index, value)
end

---setWeaponStringField
---@param field UnitWeaponStringField
---@param index integer
---@param value string
---@return boolean
function Unit:setWeaponStringField(field, index, value)
--@debug@
    checkobject(self, Unit, 'setWeaponStringField', 'self')
    checkuserdata(field, 'unitweaponstringfield', 'setWeaponStringField', 1)
    checktype(index, 'integer', 'setWeaponStringField', 2)
    checktype(value, 'string', 'setWeaponStringField', 3)
--@end-debug@
    return Native.BlzSetUnitWeaponStringField(getUd(self), field, index, value)
end

---getSkin
---@return integer
function Unit:getSkin()
--@debug@
    checkobject(self, Unit, 'getSkin', 'self')
--@end-debug@
    return Native.BlzGetUnitSkin(getUd(self))
end

---setSkin
---@param skinId integer
---@return void
function Unit:setSkin(skinId)
--@debug@
    checkobject(self, Unit, 'setSkin', 'self')
    checktype(skinId, 'integer', 'setSkin', 1)
--@end-debug@
    return Native.BlzSetUnitSkin(getUd(self), skinId)
end

return Unit
