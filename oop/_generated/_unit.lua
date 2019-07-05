local Native = require('lib.stdlib.native')

---@class Unit : Widget
local Unit = class('Unit', require('lib.stdlib.oop.widget'))

---destructor
---@return void
function Unit:destructor()
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
---@overload fun(id: Player, unitid: integer, vec: Vector2, face: float): Unit
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
    return Unit:fromUd(Native.CreateUnit(getUd(id), unitid, x, y, face))
end

---<static> createByName
---@overload fun(player: Player, unitname: string, vec: Vector2, face: float): Unit
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
    return Unit:fromUd(Native.CreateUnitByName(getUd(player), unitname, x, y, face))
end

---<static> createCorpse
---@overload fun(player: Player, unitid: integer, vec: Vector2, face: float): Unit
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
    return Unit:fromUd(Native.CreateCorpse(getUd(player), unitid, x, y, face))
end

---<static> createBlightedGoldmine
---@overload fun(id: Player, vec: Vector2, face: float): Unit
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
    return Unit:fromUd(Native.CreateBlightedGoldmine(getUd(id), x, y, face))
end

---kill
---@return void
function Unit:kill()
    return Native.KillUnit(getUd(self))
end

---setShown
---@param show boolean
---@return void
function Unit:setShown(show)
    return Native.ShowUnit(getUd(self), show)
end

---setState
---@param unitState UnitState
---@param val float
---@return void
function Unit:setState(unitState, val)
    return Native.SetUnitState(getUd(self), unitState, val)
end

---setX
---@param x float
---@return void
function Unit:setX(x)
    return Native.SetUnitX(getUd(self), x)
end

---setY
---@param y float
---@return void
function Unit:setY(y)
    return Native.SetUnitY(getUd(self), y)
end

---setPosition
---@overload fun(vec: Vector2): void
---@param x float
---@param y float
---@return void
function Unit:setPosition(x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
    return Native.SetUnitPosition(getUd(self), x, y)
end

---setFacing
---@param facingAngle float
---@return void
function Unit:setFacing(facingAngle)
    return Native.SetUnitFacing(getUd(self), facingAngle)
end

---setFacingTimed
---@param facingAngle float
---@param duration float
---@return void
function Unit:setFacingTimed(facingAngle, duration)
    return Native.SetUnitFacingTimed(getUd(self), facingAngle, duration)
end

---setMoveSpeed
---@param speed float
---@return void
function Unit:setMoveSpeed(speed)
    return Native.SetUnitMoveSpeed(getUd(self), speed)
end

---setFlyHeight
---@param height float
---@param rate float
---@return void
function Unit:setFlyHeight(height, rate)
    return Native.SetUnitFlyHeight(getUd(self), height, rate)
end

---setTurnSpeed
---@param turnSpeed float
---@return void
function Unit:setTurnSpeed(turnSpeed)
    return Native.SetUnitTurnSpeed(getUd(self), turnSpeed)
end

---setPropWindow
---@param propWindowAngle float
---@return void
function Unit:setPropWindow(propWindowAngle)
    return Native.SetUnitPropWindow(getUd(self), propWindowAngle)
end

---setAcquireRange
---@param acquireRange float
---@return void
function Unit:setAcquireRange(acquireRange)
    return Native.SetUnitAcquireRange(getUd(self), acquireRange)
end

---setCreepGuard
---@param creepGuard boolean
---@return void
function Unit:setCreepGuard(creepGuard)
    return Native.SetUnitCreepGuard(getUd(self), creepGuard)
end

---getAcquireRange
---@return float
function Unit:getAcquireRange()
    return Native.GetUnitAcquireRange(getUd(self))
end

---getTurnSpeed
---@return float
function Unit:getTurnSpeed()
    return Native.GetUnitTurnSpeed(getUd(self))
end

---getPropWindow
---@return float
function Unit:getPropWindow()
    return Native.GetUnitPropWindow(getUd(self))
end

---getFlyHeight
---@return float
function Unit:getFlyHeight()
    return Native.GetUnitFlyHeight(getUd(self))
end

---getDefaultAcquireRange
---@return float
function Unit:getDefaultAcquireRange()
    return Native.GetUnitDefaultAcquireRange(getUd(self))
end

---getDefaultTurnSpeed
---@return float
function Unit:getDefaultTurnSpeed()
    return Native.GetUnitDefaultTurnSpeed(getUd(self))
end

---getDefaultPropWindow
---@return float
function Unit:getDefaultPropWindow()
    return Native.GetUnitDefaultPropWindow(getUd(self))
end

---getDefaultFlyHeight
---@return float
function Unit:getDefaultFlyHeight()
    return Native.GetUnitDefaultFlyHeight(getUd(self))
end

---setOwner
---@param player Player
---@param changeColor boolean
---@return void
function Unit:setOwner(player, changeColor)
    return Native.SetUnitOwner(getUd(self), getUd(player), changeColor)
end

---setColor
---@param color PlayerColor
---@return void
function Unit:setColor(color)
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
    return Native.SetUnitScale(getUd(self), scaleX, scaleY, scaleZ)
end

---setTimeScale
---@param timeScale float
---@return void
function Unit:setTimeScale(timeScale)
    return Native.SetUnitTimeScale(getUd(self), timeScale)
end

---setBlendTime
---@param blendTime float
---@return void
function Unit:setBlendTime(blendTime)
    return Native.SetUnitBlendTime(getUd(self), blendTime)
end

---setVertexColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Unit:setVertexColor(red, green, blue, alpha)
    return Native.SetUnitVertexColor(getUd(self), red, green, blue, alpha)
end

---queueAnimation
---@param animation string
---@return void
function Unit:queueAnimation(animation)
    return Native.QueueUnitAnimation(getUd(self), animation)
end

---setAnimation
---@param animation string
---@return void
function Unit:setAnimation(animation)
    return Native.SetUnitAnimation(getUd(self), animation)
end

---setAnimationByIndex
---@param animation integer
---@return void
function Unit:setAnimationByIndex(animation)
    return Native.SetUnitAnimationByIndex(getUd(self), animation)
end

---setAnimationWithRarity
---@param animation string
---@param rarity RarityControl
---@return void
function Unit:setAnimationWithRarity(animation, rarity)
    return Native.SetUnitAnimationWithRarity(getUd(self), animation, rarity)
end

---addAnimationProperties
---@param animProperties string
---@param add boolean
---@return void
function Unit:addAnimationProperties(animProperties, add)
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
    return Native.SetUnitLookAt(getUd(self), bone, getUd(lookAtTarget), offsetX, offsetY, offsetZ)
end

---resetLookAt
---@return void
function Unit:resetLookAt()
    return Native.ResetUnitLookAt(getUd(self))
end

---setRescuable
---@param byWhichPlayer Player
---@param flag boolean
---@return void
function Unit:setRescuable(byWhichPlayer, flag)
    return Native.SetUnitRescuable(getUd(self), getUd(byWhichPlayer), flag)
end

---setRescueRange
---@param range float
---@return void
function Unit:setRescueRange(range)
    return Native.SetUnitRescueRange(getUd(self), range)
end

---setHeroStr
---@param str integer
---@param permanent boolean
---@return void
function Unit:setHeroStr(str, permanent)
    return Native.SetHeroStr(getUd(self), str, permanent)
end

---setHeroAgi
---@param agi integer
---@param permanent boolean
---@return void
function Unit:setHeroAgi(agi, permanent)
    return Native.SetHeroAgi(getUd(self), agi, permanent)
end

---setHeroInt
---@param int integer
---@param permanent boolean
---@return void
function Unit:setHeroInt(int, permanent)
    return Native.SetHeroInt(getUd(self), int, permanent)
end

---getHeroStr
---@param includeBonuses boolean
---@return integer
function Unit:getHeroStr(includeBonuses)
    return Native.GetHeroStr(getUd(self), includeBonuses)
end

---getHeroAgi
---@param includeBonuses boolean
---@return integer
function Unit:getHeroAgi(includeBonuses)
    return Native.GetHeroAgi(getUd(self), includeBonuses)
end

---getHeroInt
---@param includeBonuses boolean
---@return integer
function Unit:getHeroInt(includeBonuses)
    return Native.GetHeroInt(getUd(self), includeBonuses)
end

---stripHeroLevel
---@param howManyLevels integer
---@return boolean
function Unit:stripHeroLevel(howManyLevels)
    return Native.UnitStripHeroLevel(getUd(self), howManyLevels)
end

---getHeroXP
---@return integer
function Unit:getHeroXP()
    return Native.GetHeroXP(getUd(self))
end

---setHeroXP
---@param xpVal integer
---@param showEyeCandy boolean
---@return void
function Unit:setHeroXP(xpVal, showEyeCandy)
    return Native.SetHeroXP(getUd(self), xpVal, showEyeCandy)
end

---getHeroSkillPoints
---@return integer
function Unit:getHeroSkillPoints()
    return Native.GetHeroSkillPoints(getUd(self))
end

---modifySkillPoints
---@param skillPointDelta integer
---@return boolean
function Unit:modifySkillPoints(skillPointDelta)
    return Native.UnitModifySkillPoints(getUd(self), skillPointDelta)
end

---addHeroXP
---@param xpToAdd integer
---@param showEyeCandy boolean
---@return void
function Unit:addHeroXP(xpToAdd, showEyeCandy)
    return Native.AddHeroXP(getUd(self), xpToAdd, showEyeCandy)
end

---setHeroLevel
---@param level integer
---@param showEyeCandy boolean
---@return void
function Unit:setHeroLevel(level, showEyeCandy)
    return Native.SetHeroLevel(getUd(self), level, showEyeCandy)
end

---getHeroLevel
---@return integer
function Unit:getHeroLevel()
    return Native.GetHeroLevel(getUd(self))
end

---getLevel
---@return integer
function Unit:getLevel()
    return Native.GetUnitLevel(getUd(self))
end

---getHeroProperName
---@return string
function Unit:getHeroProperName()
    return Native.GetHeroProperName(getUd(self))
end

---suspendHeroXP
---@param flag boolean
---@return void
function Unit:suspendHeroXP(flag)
    return Native.SuspendHeroXP(getUd(self), flag)
end

---isSuspendedXP
---@return boolean
function Unit:isSuspendedXP()
    return Native.IsSuspendedXP(getUd(self))
end

---selectHeroSkill
---@param abilcode integer
---@return void
function Unit:selectHeroSkill(abilcode)
    return Native.SelectHeroSkill(getUd(self), abilcode)
end

---getAbilityLevel
---@param abilcode integer
---@return integer
function Unit:getAbilityLevel(abilcode)
    return Native.GetUnitAbilityLevel(getUd(self), abilcode)
end

---decAbilityLevel
---@param abilcode integer
---@return integer
function Unit:decAbilityLevel(abilcode)
    return Native.DecUnitAbilityLevel(getUd(self), abilcode)
end

---incAbilityLevel
---@param abilcode integer
---@return integer
function Unit:incAbilityLevel(abilcode)
    return Native.IncUnitAbilityLevel(getUd(self), abilcode)
end

---setAbilityLevel
---@param abilcode integer
---@param level integer
---@return integer
function Unit:setAbilityLevel(abilcode, level)
    return Native.SetUnitAbilityLevel(getUd(self), abilcode, level)
end

---reviveHero
---@overload fun(vec: Vector2, doEyecandy: boolean): boolean
---@param x float
---@param y float
---@param doEyecandy boolean
---@return boolean
function Unit:reviveHero(x, y, doEyecandy)
    if type(x) == 'table' then
        doEyecandy = y
        x, y = table.unpack(x)
    end
    return Native.ReviveHero(getUd(self), x, y, doEyecandy)
end

---setExploded
---@param exploded boolean
---@return void
function Unit:setExploded(exploded)
    return Native.SetUnitExploded(getUd(self), exploded)
end

---setInvulnerable
---@param flag boolean
---@return void
function Unit:setInvulnerable(flag)
    return Native.SetUnitInvulnerable(getUd(self), flag)
end

---setPaused
---@param flag boolean
---@return void
function Unit:setPaused(flag)
    return Native.PauseUnit(getUd(self), flag)
end

---isPaused
---@return boolean
function Unit:isPaused()
    return Native.IsUnitPaused(getUd(self))
end

---setPathing
---@param flag boolean
---@return void
function Unit:setPathing(flag)
    return Native.SetUnitPathing(getUd(self), flag)
end

---setSelected
---@param flag boolean
---@return void
function Unit:setSelected(flag)
    return Native.SelectUnit(getUd(self), flag)
end

---getPointValue
---@return integer
function Unit:getPointValue()
    return Native.GetUnitPointValue(getUd(self))
end

---addItem
---@param item Item
---@return boolean
function Unit:addItem(item)
    return Native.UnitAddItem(getUd(self), getUd(item))
end

---addItemById
---@param itemId integer
---@return Item
function Unit:addItemById(itemId)
    return require('lib.stdlib.oop.item'):fromUd(Native.UnitAddItemById(getUd(self), itemId))
end

---addItemToSlotById
---@param itemId integer
---@param itemSlot integer
---@return boolean
function Unit:addItemToSlotById(itemId, itemSlot)
    return Native.UnitAddItemToSlotById(getUd(self), itemId, itemSlot)
end

---removeItem
---@param item Item
---@return void
function Unit:removeItem(item)
    return Native.UnitRemoveItem(getUd(self), getUd(item))
end

---removeItemFromSlot
---@param itemSlot integer
---@return Item
function Unit:removeItemFromSlot(itemSlot)
    return require('lib.stdlib.oop.item'):fromUd(Native.UnitRemoveItemFromSlot(getUd(self), itemSlot))
end

---hasItem
---@param item Item
---@return boolean
function Unit:hasItem(item)
    return Native.UnitHasItem(getUd(self), getUd(item))
end

---itemInSlot
---@param itemSlot integer
---@return Item
function Unit:itemInSlot(itemSlot)
    return require('lib.stdlib.oop.item'):fromUd(Native.UnitItemInSlot(getUd(self), itemSlot))
end

---inventorySize
---@return integer
function Unit:inventorySize()
    return Native.UnitInventorySize(getUd(self))
end

---dropItemPoint
---@overload fun(item: Item, vec: Vector2): boolean
---@param item Item
---@param x float
---@param y float
---@return boolean
function Unit:dropItemPoint(item, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
    return Native.UnitDropItemPoint(getUd(self), getUd(item), x, y)
end

---dropItemSlot
---@param item Item
---@param slot integer
---@return boolean
function Unit:dropItemSlot(item, slot)
    return Native.UnitDropItemSlot(getUd(self), getUd(item), slot)
end

---dropItemTarget
---@param item Item
---@param target Widget
---@return boolean
function Unit:dropItemTarget(item, target)
    return Native.UnitDropItemTarget(getUd(self), getUd(item), getUd(target))
end

---useItem
---@param item Item
---@return boolean
function Unit:useItem(item)
    return Native.UnitUseItem(getUd(self), getUd(item))
end

---useItemPoint
---@overload fun(item: Item, vec: Vector2): boolean
---@param item Item
---@param x float
---@param y float
---@return boolean
function Unit:useItemPoint(item, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
    return Native.UnitUseItemPoint(getUd(self), getUd(item), x, y)
end

---useItemTarget
---@param item Item
---@param target Widget
---@return boolean
function Unit:useItemTarget(item, target)
    return Native.UnitUseItemTarget(getUd(self), getUd(item), getUd(target))
end

---getX
---@return float
function Unit:getX()
    return Native.GetUnitX(getUd(self))
end

---getY
---@return float
function Unit:getY()
    return Native.GetUnitY(getUd(self))
end

---getLoc
---@return Location
function Unit:getLoc()
    return require('lib.stdlib.oop.location'):fromUd(Native.GetUnitLoc(getUd(self)))
end

---getFacing
---@return float
function Unit:getFacing()
    return Native.GetUnitFacing(getUd(self))
end

---getMoveSpeed
---@return float
function Unit:getMoveSpeed()
    return Native.GetUnitMoveSpeed(getUd(self))
end

---getDefaultMoveSpeed
---@return float
function Unit:getDefaultMoveSpeed()
    return Native.GetUnitDefaultMoveSpeed(getUd(self))
end

---getState
---@param unitState UnitState
---@return float
function Unit:getState(unitState)
    return Native.GetUnitState(getUd(self), unitState)
end

---getOwner
---@return Player
function Unit:getOwner()
    return require('lib.stdlib.oop.player'):fromUd(Native.GetOwningPlayer(getUd(self)))
end

---getTypeId
---@return integer
function Unit:getTypeId()
    return Native.GetUnitTypeId(getUd(self))
end

---getRace
---@return Race
function Unit:getRace()
    return Native.GetUnitRace(getUd(self))
end

---getName
---@return string
function Unit:getName()
    return Native.GetUnitName(getUd(self))
end

---getFoodUsed
---@return integer
function Unit:getFoodUsed()
    return Native.GetUnitFoodUsed(getUd(self))
end

---getFoodMade
---@return integer
function Unit:getFoodMade()
    return Native.GetUnitFoodMade(getUd(self))
end

---setUseFood
---@param useFood boolean
---@return void
function Unit:setUseFood(useFood)
    return Native.SetUnitUseFood(getUd(self), useFood)
end

---getRallyPoint
---@return Location
function Unit:getRallyPoint()
    return require('lib.stdlib.oop.location'):fromUd(Native.GetUnitRallyPoint(getUd(self)))
end

---getRallyUnit
---@return Unit
function Unit:getRallyUnit()
    return Unit:fromUd(Native.GetUnitRallyUnit(getUd(self)))
end

---getRallyDestructable
---@return Destructable
function Unit:getRallyDestructable()
    return require('lib.stdlib.oop.destructable'):fromUd(Native.GetUnitRallyDestructable(getUd(self)))
end

---isInGroup
---@param group Group
---@return boolean
function Unit:isInGroup(group)
    return Native.IsUnitInGroup(getUd(self), getUd(group))
end

---isInForce
---@param force Force
---@return boolean
function Unit:isInForce(force)
    return Native.IsUnitInForce(getUd(self), getUd(force))
end

---isOwnedByPlayer
---@param player Player
---@return boolean
function Unit:isOwnedByPlayer(player)
    return Native.IsUnitOwnedByPlayer(getUd(self), getUd(player))
end

---isAlly
---@param player Player
---@return boolean
function Unit:isAlly(player)
    return Native.IsUnitAlly(getUd(self), getUd(player))
end

---isEnemy
---@param player Player
---@return boolean
function Unit:isEnemy(player)
    return Native.IsUnitEnemy(getUd(self), getUd(player))
end

---isVisible
---@param player Player
---@return boolean
function Unit:isVisible(player)
    return Native.IsUnitVisible(getUd(self), getUd(player))
end

---isDetected
---@param player Player
---@return boolean
function Unit:isDetected(player)
    return Native.IsUnitDetected(getUd(self), getUd(player))
end

---isInvisible
---@param player Player
---@return boolean
function Unit:isInvisible(player)
    return Native.IsUnitInvisible(getUd(self), getUd(player))
end

---isFogged
---@param player Player
---@return boolean
function Unit:isFogged(player)
    return Native.IsUnitFogged(getUd(self), getUd(player))
end

---isMasked
---@param player Player
---@return boolean
function Unit:isMasked(player)
    return Native.IsUnitMasked(getUd(self), getUd(player))
end

---isSelected
---@param player Player
---@return boolean
function Unit:isSelected(player)
    return Native.IsUnitSelected(getUd(self), getUd(player))
end

---isRace
---@param race Race
---@return boolean
function Unit:isRace(race)
    return Native.IsUnitRace(getUd(self), race)
end

---isType
---@param unitType UnitType
---@return boolean
function Unit:isType(unitType)
    return Native.IsUnitType(getUd(self), unitType)
end

---isUnit
---@param specifiedUnit Unit
---@return boolean
function Unit:isUnit(specifiedUnit)
    return Native.IsUnit(getUd(self), getUd(specifiedUnit))
end

---isUnitInRange
---@param otherUnit Unit
---@param distance float
---@return boolean
function Unit:isUnitInRange(otherUnit, distance)
    return Native.IsUnitInRange(getUd(self), getUd(otherUnit), distance)
end

---isInRangeXY
---@overload fun(vec: Vector2, distance: float): boolean
---@param x float
---@param y float
---@param distance float
---@return boolean
function Unit:isInRangeXY(x, y, distance)
    if type(x) == 'table' then
        distance = y
        x, y = table.unpack(x)
    end
    return Native.IsUnitInRangeXY(getUd(self), x, y, distance)
end

---isHidden
---@return boolean
function Unit:isHidden()
    return Native.IsUnitHidden(getUd(self))
end

---isIllusion
---@return boolean
function Unit:isIllusion()
    return Native.IsUnitIllusion(getUd(self))
end

---isUnitInTransport
---@param transport Unit
---@return boolean
function Unit:isUnitInTransport(transport)
    return Native.IsUnitInTransport(getUd(self), getUd(transport))
end

---isLoaded
---@return boolean
function Unit:isLoaded()
    return Native.IsUnitLoaded(getUd(self))
end

---shareVision
---@param player Player
---@param share boolean
---@return void
function Unit:shareVision(player, share)
    return Native.UnitShareVision(getUd(self), getUd(player), share)
end

---suspendDecay
---@param suspend boolean
---@return void
function Unit:suspendDecay(suspend)
    return Native.UnitSuspendDecay(getUd(self), suspend)
end

---addType
---@param unitType UnitType
---@return boolean
function Unit:addType(unitType)
    return Native.UnitAddType(getUd(self), unitType)
end

---removeType
---@param unitType UnitType
---@return boolean
function Unit:removeType(unitType)
    return Native.UnitRemoveType(getUd(self), unitType)
end

---addAbility
---@param abilityId integer
---@return boolean
function Unit:addAbility(abilityId)
    return Native.UnitAddAbility(getUd(self), abilityId)
end

---removeAbility
---@param abilityId integer
---@return boolean
function Unit:removeAbility(abilityId)
    return Native.UnitRemoveAbility(getUd(self), abilityId)
end

---makeAbilityPermanent
---@param permanent boolean
---@param abilityId integer
---@return boolean
function Unit:makeAbilityPermanent(permanent, abilityId)
    return Native.UnitMakeAbilityPermanent(getUd(self), permanent, abilityId)
end

---removeBuffs
---@param removePositive boolean
---@param removeNegative boolean
---@return void
function Unit:removeBuffs(removePositive, removeNegative)
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
    return Native.UnitCountBuffsEx(getUd(self), removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel)
end

---addSleep
---@param add boolean
---@return void
function Unit:addSleep(add)
    return Native.UnitAddSleep(getUd(self), add)
end

---canSleep
---@return boolean
function Unit:canSleep()
    return Native.UnitCanSleep(getUd(self))
end

---addSleepPerm
---@param add boolean
---@return void
function Unit:addSleepPerm(add)
    return Native.UnitAddSleepPerm(getUd(self), add)
end

---canSleepPerm
---@return boolean
function Unit:canSleepPerm()
    return Native.UnitCanSleepPerm(getUd(self))
end

---isSleeping
---@return boolean
function Unit:isSleeping()
    return Native.UnitIsSleeping(getUd(self))
end

---wakeUp
---@return void
function Unit:wakeUp()
    return Native.UnitWakeUp(getUd(self))
end

---applyTimedLife
---@param buffId integer
---@param duration float
---@return void
function Unit:applyTimedLife(buffId, duration)
    return Native.UnitApplyTimedLife(getUd(self), buffId, duration)
end

---ignoreAlarm
---@param flag boolean
---@return boolean
function Unit:ignoreAlarm(flag)
    return Native.UnitIgnoreAlarm(getUd(self), flag)
end

---ignoreAlarmToggled
---@return boolean
function Unit:ignoreAlarmToggled()
    return Native.UnitIgnoreAlarmToggled(getUd(self))
end

---resetCooldown
---@return void
function Unit:resetCooldown()
    return Native.UnitResetCooldown(getUd(self))
end

---setConstructionProgress
---@param constructionPercentage integer
---@return void
function Unit:setConstructionProgress(constructionPercentage)
    return Native.UnitSetConstructionProgress(getUd(self), constructionPercentage)
end

---setUpgradeProgress
---@param upgradePercentage integer
---@return void
function Unit:setUpgradeProgress(upgradePercentage)
    return Native.UnitSetUpgradeProgress(getUd(self), upgradePercentage)
end

---pauseTimedLife
---@param flag boolean
---@return void
function Unit:pauseTimedLife(flag)
    return Native.UnitPauseTimedLife(getUd(self), flag)
end

---setUsesAltIcon
---@param flag boolean
---@return void
function Unit:setUsesAltIcon(flag)
    return Native.UnitSetUsesAltIcon(getUd(self), flag)
end

---damagePoint
---@overload fun(delay: float, radius: float, vec: Vector2, amount: float, attack: boolean, ranged: boolean, attackType: AttackType, damageType: DamageType, weaponType: WeaponType): boolean
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
    return Native.UnitDamageTarget(getUd(self), getUd(target), amount, attack, ranged, attackType, damageType, weaponType)
end

---issueImmediateOrder
---@param order integer
---@return boolean
function Unit:issueImmediateOrder(order)
    return Native.IssueImmediateOrderById(getUd(self), order)
end

---issuePointOrder
---@overload fun(order: integer, vec: Vector2): boolean
---@param order integer
---@param x float
---@param y float
---@return boolean
function Unit:issuePointOrder(order, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
    return Native.IssuePointOrderById(getUd(self), order, x, y)
end

---issueTargetOrder
---@param order integer
---@param targetWidget Widget
---@return boolean
function Unit:issueTargetOrder(order, targetWidget)
    return Native.IssueTargetOrderById(getUd(self), order, getUd(targetWidget))
end

---issueInstantPointOrder
---@overload fun(order: integer, vec: Vector2, instantTargetWidget: Widget): boolean
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
    return Native.IssueInstantPointOrderById(getUd(self), order, x, y, getUd(instantTargetWidget))
end

---issueInstantTargetOrder
---@param order integer
---@param targetWidget Widget
---@param instantTargetWidget Widget
---@return boolean
function Unit:issueInstantTargetOrder(order, targetWidget, instantTargetWidget)
    return Native.IssueInstantTargetOrderById(getUd(self), order, getUd(targetWidget), getUd(instantTargetWidget))
end

---issueBuildOrder
---@overload fun(unitToBuild: string, vec: Vector2): boolean
---@param unitToBuild string
---@param x float
---@param y float
---@return boolean
function Unit:issueBuildOrder(unitToBuild, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
    return Native.IssueBuildOrder(getUd(self), unitToBuild, x, y)
end

---issueBuildOrderById
---@overload fun(unitId: integer, vec: Vector2): boolean
---@param unitId integer
---@param x float
---@param y float
---@return boolean
function Unit:issueBuildOrderById(unitId, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
    return Native.IssueBuildOrderById(getUd(self), unitId, x, y)
end

---getCurrentOrder
---@return integer
function Unit:getCurrentOrder()
    return Native.GetUnitCurrentOrder(getUd(self))
end

---setResourceAmount
---@param amount integer
---@return void
function Unit:setResourceAmount(amount)
    return Native.SetResourceAmount(getUd(self), amount)
end

---addResourceAmount
---@param amount integer
---@return void
function Unit:addResourceAmount(amount)
    return Native.AddResourceAmount(getUd(self), amount)
end

---getResourceAmount
---@return integer
function Unit:getResourceAmount()
    return Native.GetResourceAmount(getUd(self))
end

---waygateGetDestinationX
---@return float
function Unit:waygateGetDestinationX()
    return Native.WaygateGetDestinationX(getUd(self))
end

---waygateGetDestinationY
---@return float
function Unit:waygateGetDestinationY()
    return Native.WaygateGetDestinationY(getUd(self))
end

---waygateSetDestination
---@overload fun(vec: Vector2): void
---@param x float
---@param y float
---@return void
function Unit:waygateSetDestination(x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
    return Native.WaygateSetDestination(getUd(self), x, y)
end

---waygateActivate
---@param activate boolean
---@return void
function Unit:waygateActivate(activate)
    return Native.WaygateActivate(getUd(self), activate)
end

---waygateIsActive
---@return boolean
function Unit:waygateIsActive()
    return Native.WaygateIsActive(getUd(self))
end

---addItemToStock
---@param itemId integer
---@param currentStock integer
---@param stockMax integer
---@return void
function Unit:addItemToStock(itemId, currentStock, stockMax)
    return Native.AddItemToStock(getUd(self), itemId, currentStock, stockMax)
end

---addToStock
---@param unitId integer
---@param currentStock integer
---@param stockMax integer
---@return void
function Unit:addToStock(unitId, currentStock, stockMax)
    return Native.AddUnitToStock(getUd(self), unitId, currentStock, stockMax)
end

---removeItemFromStock
---@param itemId integer
---@return void
function Unit:removeItemFromStock(itemId)
    return Native.RemoveItemFromStock(getUd(self), itemId)
end

---removeFromStock
---@param unitId integer
---@return void
function Unit:removeFromStock(unitId)
    return Native.RemoveUnitFromStock(getUd(self), unitId)
end

---setItemTypeSlots
---@param slots integer
---@return void
function Unit:setItemTypeSlots(slots)
    return Native.SetItemTypeSlots(getUd(self), slots)
end

---setTypeSlots
---@param slots integer
---@return void
function Unit:setTypeSlots(slots)
    return Native.SetUnitTypeSlots(getUd(self), slots)
end

---getUserData
---@return integer
function Unit:getUserData()
    return Native.GetUnitUserData(getUd(self))
end

---setUserData
---@param data integer
---@return void
function Unit:setUserData(data)
    return Native.SetUnitUserData(getUd(self), data)
end

---addIndicator
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Unit:addIndicator(red, green, blue, alpha)
    return Native.UnitAddIndicator(getUd(self), red, green, blue, alpha)
end

---setCameraTargetController
---@param xoffset float
---@param yoffset float
---@param inheritOrientation boolean
---@return void
function Unit:setCameraTargetController(xoffset, yoffset, inheritOrientation)
    return Native.SetCameraTargetController(getUd(self), xoffset, yoffset, inheritOrientation)
end

---setCameraOrientController
---@param xoffset float
---@param yoffset float
---@return void
function Unit:setCameraOrientController(xoffset, yoffset)
    return Native.SetCameraOrientController(getUd(self), xoffset, yoffset)
end

---removeGuardPosition
---@return void
function Unit:removeGuardPosition()
    return Native.RemoveGuardPosition(getUd(self))
end

---recycleGuardPosition
---@return void
function Unit:recycleGuardPosition()
    return Native.RecycleGuardPosition(getUd(self))
end

---getMaxHP
---@return integer
function Unit:getMaxHP()
    return Native.BlzGetUnitMaxHP(getUd(self))
end

---setMaxHP
---@param hp integer
---@return void
function Unit:setMaxHP(hp)
    return Native.BlzSetUnitMaxHP(getUd(self), hp)
end

---getMaxMana
---@return integer
function Unit:getMaxMana()
    return Native.BlzGetUnitMaxMana(getUd(self))
end

---setMaxMana
---@param mana integer
---@return void
function Unit:setMaxMana(mana)
    return Native.BlzSetUnitMaxMana(getUd(self), mana)
end

---setName
---@param name string
---@return void
function Unit:setName(name)
    return Native.BlzSetUnitName(getUd(self), name)
end

---setHeroProperName
---@param heroProperName string
---@return void
function Unit:setHeroProperName(heroProperName)
    return Native.BlzSetHeroProperName(getUd(self), heroProperName)
end

---getBaseDamage
---@param weaponIndex integer
---@return integer
function Unit:getBaseDamage(weaponIndex)
    return Native.BlzGetUnitBaseDamage(getUd(self), weaponIndex)
end

---setBaseDamage
---@param baseDamage integer
---@param weaponIndex integer
---@return void
function Unit:setBaseDamage(baseDamage, weaponIndex)
    return Native.BlzSetUnitBaseDamage(getUd(self), baseDamage, weaponIndex)
end

---getDiceNumber
---@param weaponIndex integer
---@return integer
function Unit:getDiceNumber(weaponIndex)
    return Native.BlzGetUnitDiceNumber(getUd(self), weaponIndex)
end

---setDiceNumber
---@param diceNumber integer
---@param weaponIndex integer
---@return void
function Unit:setDiceNumber(diceNumber, weaponIndex)
    return Native.BlzSetUnitDiceNumber(getUd(self), diceNumber, weaponIndex)
end

---getDiceSides
---@param weaponIndex integer
---@return integer
function Unit:getDiceSides(weaponIndex)
    return Native.BlzGetUnitDiceSides(getUd(self), weaponIndex)
end

---setDiceSides
---@param diceSides integer
---@param weaponIndex integer
---@return void
function Unit:setDiceSides(diceSides, weaponIndex)
    return Native.BlzSetUnitDiceSides(getUd(self), diceSides, weaponIndex)
end

---getAttackCooldown
---@param weaponIndex integer
---@return float
function Unit:getAttackCooldown(weaponIndex)
    return Native.BlzGetUnitAttackCooldown(getUd(self), weaponIndex)
end

---setAttackCooldown
---@param cooldown float
---@param weaponIndex integer
---@return void
function Unit:setAttackCooldown(cooldown, weaponIndex)
    return Native.BlzSetUnitAttackCooldown(getUd(self), cooldown, weaponIndex)
end

---getArmor
---@return float
function Unit:getArmor()
    return Native.BlzGetUnitArmor(getUd(self))
end

---setArmor
---@param armorAmount float
---@return void
function Unit:setArmor(armorAmount)
    return Native.BlzSetUnitArmor(getUd(self), armorAmount)
end

---hideAbility
---@param abilId integer
---@param flag boolean
---@return void
function Unit:hideAbility(abilId, flag)
    return Native.BlzUnitHideAbility(getUd(self), abilId, flag)
end

---disableAbility
---@param abilId integer
---@param flag boolean
---@param hideUI boolean
---@return void
function Unit:disableAbility(abilId, flag, hideUI)
    return Native.BlzUnitDisableAbility(getUd(self), abilId, flag, hideUI)
end

---cancelTimedLife
---@return void
function Unit:cancelTimedLife()
    return Native.BlzUnitCancelTimedLife(getUd(self))
end

---isSelectable
---@return boolean
function Unit:isSelectable()
    return Native.BlzIsUnitSelectable(getUd(self))
end

---isInvulnerable
---@return boolean
function Unit:isInvulnerable()
    return Native.BlzIsUnitInvulnerable(getUd(self))
end

---interruptAttack
---@return void
function Unit:interruptAttack()
    return Native.BlzUnitInterruptAttack(getUd(self))
end

---getCollisionSize
---@return float
function Unit:getCollisionSize()
    return Native.BlzGetUnitCollisionSize(getUd(self))
end

---setAbilityCooldown
---@param abilId integer
---@param level integer
---@param cooldown float
---@return void
function Unit:setAbilityCooldown(abilId, level, cooldown)
    return Native.BlzSetUnitAbilityCooldown(getUd(self), abilId, level, cooldown)
end

---getAbilityCooldown
---@param abilId integer
---@param level integer
---@return float
function Unit:getAbilityCooldown(abilId, level)
    return Native.BlzGetUnitAbilityCooldown(getUd(self), abilId, level)
end

---getAbilityCooldownRemaining
---@param abilId integer
---@return float
function Unit:getAbilityCooldownRemaining(abilId)
    return Native.BlzGetUnitAbilityCooldownRemaining(getUd(self), abilId)
end

---endAbilityCooldown
---@param abilCode integer
---@return void
function Unit:endAbilityCooldown(abilCode)
    return Native.BlzEndUnitAbilityCooldown(getUd(self), abilCode)
end

---getAbilityManaCost
---@param abilId integer
---@param level integer
---@return integer
function Unit:getAbilityManaCost(abilId, level)
    return Native.BlzGetUnitAbilityManaCost(getUd(self), abilId, level)
end

---setAbilityManaCost
---@param abilId integer
---@param level integer
---@param manaCost integer
---@return void
function Unit:setAbilityManaCost(abilId, level, manaCost)
    return Native.BlzSetUnitAbilityManaCost(getUd(self), abilId, level, manaCost)
end

---getLocalZ
---@return float
function Unit:getLocalZ()
    return Native.BlzGetLocalUnitZ(getUd(self))
end

---getZ
---@return float
function Unit:getZ()
    return Native.BlzGetUnitZ(getUd(self))
end

---getAbility
---@param abilId integer
---@return Ability
function Unit:getAbility(abilId)
    return require('lib.stdlib.oop.ability'):fromUd(Native.BlzGetUnitAbility(getUd(self), abilId))
end

---getAbilityByIndex
---@param index integer
---@return Ability
function Unit:getAbilityByIndex(index)
    return require('lib.stdlib.oop.ability'):fromUd(Native.BlzGetUnitAbilityByIndex(getUd(self), index))
end

---pauseEx
---@param flag boolean
---@return void
function Unit:pauseEx(flag)
    return Native.BlzPauseUnitEx(getUd(self), flag)
end

---getBooleanField
---@param field UnitBooleanField
---@return boolean
function Unit:getBooleanField(field)
    return Native.BlzGetUnitBooleanField(getUd(self), field)
end

---getIntegerField
---@param field UnitIntegerField
---@return integer
function Unit:getIntegerField(field)
    return Native.BlzGetUnitIntegerField(getUd(self), field)
end

---getRealField
---@param field UnitRealField
---@return float
function Unit:getRealField(field)
    return Native.BlzGetUnitRealField(getUd(self), field)
end

---getStringField
---@param field UnitStringField
---@return string
function Unit:getStringField(field)
    return Native.BlzGetUnitStringField(getUd(self), field)
end

---setBooleanField
---@param field UnitBooleanField
---@param value boolean
---@return boolean
function Unit:setBooleanField(field, value)
    return Native.BlzSetUnitBooleanField(getUd(self), field, value)
end

---setIntegerField
---@param field UnitIntegerField
---@param value integer
---@return boolean
function Unit:setIntegerField(field, value)
    return Native.BlzSetUnitIntegerField(getUd(self), field, value)
end

---setRealField
---@param field UnitRealField
---@param value float
---@return boolean
function Unit:setRealField(field, value)
    return Native.BlzSetUnitRealField(getUd(self), field, value)
end

---setStringField
---@param field UnitStringField
---@param value string
---@return boolean
function Unit:setStringField(field, value)
    return Native.BlzSetUnitStringField(getUd(self), field, value)
end

---getWeaponBooleanField
---@param field UnitWeaponBooleanField
---@param index integer
---@return boolean
function Unit:getWeaponBooleanField(field, index)
    return Native.BlzGetUnitWeaponBooleanField(getUd(self), field, index)
end

---getWeaponIntegerField
---@param field UnitWeaponIntegerField
---@param index integer
---@return integer
function Unit:getWeaponIntegerField(field, index)
    return Native.BlzGetUnitWeaponIntegerField(getUd(self), field, index)
end

---getWeaponRealField
---@param field UnitWeaponRealField
---@param index integer
---@return float
function Unit:getWeaponRealField(field, index)
    return Native.BlzGetUnitWeaponRealField(getUd(self), field, index)
end

---getWeaponStringField
---@param field UnitWeaponStringField
---@param index integer
---@return string
function Unit:getWeaponStringField(field, index)
    return Native.BlzGetUnitWeaponStringField(getUd(self), field, index)
end

---setWeaponBooleanField
---@param field UnitWeaponBooleanField
---@param index integer
---@param value boolean
---@return boolean
function Unit:setWeaponBooleanField(field, index, value)
    return Native.BlzSetUnitWeaponBooleanField(getUd(self), field, index, value)
end

---setWeaponIntegerField
---@param field UnitWeaponIntegerField
---@param index integer
---@param value integer
---@return boolean
function Unit:setWeaponIntegerField(field, index, value)
    return Native.BlzSetUnitWeaponIntegerField(getUd(self), field, index, value)
end

---setWeaponRealField
---@param field UnitWeaponRealField
---@param index integer
---@param value float
---@return boolean
function Unit:setWeaponRealField(field, index, value)
    return Native.BlzSetUnitWeaponRealField(getUd(self), field, index, value)
end

---setWeaponStringField
---@param field UnitWeaponStringField
---@param index integer
---@param value string
---@return boolean
function Unit:setWeaponStringField(field, index, value)
    return Native.BlzSetUnitWeaponStringField(getUd(self), field, index, value)
end

return Unit
