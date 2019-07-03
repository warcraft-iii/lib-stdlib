local Native = require('lib.stdlib.native')

---@class Item : Widget
local Item = class('Item', require('lib.stdlib.oop.widget'))

---destructor
---@return void
function Item:destructor()
    return Native.RemoveItem(getUd(self))
end

---remove
---@deprecated
---@return void
function Item:remove()
--@debug@
    deprecated('remove', 'delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@param itemid integer
---@param x float
---@param y float
---@return Item
function Item:create(itemid, x, y)
    return Item:fromUd(Native.CreateItem(itemid, x, y))
end

---getPlayer
---@return Player
function Item:getPlayer()
    return require('lib.stdlib.oop.player'):fromUd(Native.GetItemPlayer(getUd(self)))
end

---getTypeId
---@return integer
function Item:getTypeId()
    return Native.GetItemTypeId(getUd(self))
end

---getX
---@return float
function Item:getX()
    return Native.GetItemX(getUd(self))
end

---getY
---@return float
function Item:getY()
    return Native.GetItemY(getUd(self))
end

---setPosition
---@param x float
---@param y float
---@return void
function Item:setPosition(x, y)
    return Native.SetItemPosition(getUd(self), x, y)
end

---setDropOnDeath
---@param flag boolean
---@return void
function Item:setDropOnDeath(flag)
    return Native.SetItemDropOnDeath(getUd(self), flag)
end

---setDroppable
---@param flag boolean
---@return void
function Item:setDroppable(flag)
    return Native.SetItemDroppable(getUd(self), flag)
end

---setPawnable
---@param flag boolean
---@return void
function Item:setPawnable(flag)
    return Native.SetItemPawnable(getUd(self), flag)
end

---setPlayer
---@param player Player
---@param changeColor boolean
---@return void
function Item:setPlayer(player, changeColor)
    return Native.SetItemPlayer(getUd(self), getUd(player), changeColor)
end

---setInvulnerable
---@param flag boolean
---@return void
function Item:setInvulnerable(flag)
    return Native.SetItemInvulnerable(getUd(self), flag)
end

---isInvulnerable
---@return boolean
function Item:isInvulnerable()
    return Native.IsItemInvulnerable(getUd(self))
end

---setVisible
---@param show boolean
---@return void
function Item:setVisible(show)
    return Native.SetItemVisible(getUd(self), show)
end

---isVisible
---@return boolean
function Item:isVisible()
    return Native.IsItemVisible(getUd(self))
end

---isOwned
---@return boolean
function Item:isOwned()
    return Native.IsItemOwned(getUd(self))
end

---isPowerup
---@return boolean
function Item:isPowerup()
    return Native.IsItemPowerup(getUd(self))
end

---isSellable
---@return boolean
function Item:isSellable()
    return Native.IsItemSellable(getUd(self))
end

---isPawnable
---@return boolean
function Item:isPawnable()
    return Native.IsItemPawnable(getUd(self))
end

---getLevel
---@return integer
function Item:getLevel()
    return Native.GetItemLevel(getUd(self))
end

---getType
---@return ItemType
function Item:getType()
    return Native.GetItemType(getUd(self))
end

---setDropID
---@param unitId integer
---@return void
function Item:setDropID(unitId)
    return Native.SetItemDropID(getUd(self), unitId)
end

---getName
---@return string
function Item:getName()
    return Native.GetItemName(getUd(self))
end

---getCharges
---@return integer
function Item:getCharges()
    return Native.GetItemCharges(getUd(self))
end

---setCharges
---@param charges integer
---@return void
function Item:setCharges(charges)
    return Native.SetItemCharges(getUd(self), charges)
end

---getUserData
---@return integer
function Item:getUserData()
    return Native.GetItemUserData(getUd(self))
end

---setUserData
---@param data integer
---@return void
function Item:setUserData(data)
    return Native.SetItemUserData(getUd(self), data)
end

---setName
---@param name string
---@return void
function Item:setName(name)
    return Native.BlzSetItemName(getUd(self), name)
end

---setDescription
---@param description string
---@return void
function Item:setDescription(description)
    return Native.BlzSetItemDescription(getUd(self), description)
end

---getDescription
---@return string
function Item:getDescription()
    return Native.BlzGetItemDescription(getUd(self))
end

---setTooltip
---@param tooltip string
---@return void
function Item:setTooltip(tooltip)
    return Native.BlzSetItemTooltip(getUd(self), tooltip)
end

---getTooltip
---@return string
function Item:getTooltip()
    return Native.BlzGetItemTooltip(getUd(self))
end

---setExtendedTooltip
---@param extendedTooltip string
---@return void
function Item:setExtendedTooltip(extendedTooltip)
    return Native.BlzSetItemExtendedTooltip(getUd(self), extendedTooltip)
end

---getExtendedTooltip
---@return string
function Item:getExtendedTooltip()
    return Native.BlzGetItemExtendedTooltip(getUd(self))
end

---setIconPath
---@param iconPath string
---@return void
function Item:setIconPath(iconPath)
    return Native.BlzSetItemIconPath(getUd(self), iconPath)
end

---getIconPath
---@return string
function Item:getIconPath()
    return Native.BlzGetItemIconPath(getUd(self))
end

---getAbilityByIndex
---@param index integer
---@return Ability
function Item:getAbilityByIndex(index)
    return require('lib.stdlib.oop.ability'):fromUd(Native.BlzGetItemAbilityByIndex(getUd(self), index))
end

---getAbility
---@param abilCode integer
---@return Ability
function Item:getAbility(abilCode)
    return require('lib.stdlib.oop.ability'):fromUd(Native.BlzGetItemAbility(getUd(self), abilCode))
end

---addAbility
---@param abilCode integer
---@return boolean
function Item:addAbility(abilCode)
    return Native.BlzItemAddAbility(getUd(self), abilCode)
end

---getBooleanField
---@param field ItemBooleanField
---@return boolean
function Item:getBooleanField(field)
    return Native.BlzGetItemBooleanField(getUd(self), field)
end

---getIntegerField
---@param field ItemIntegerField
---@return integer
function Item:getIntegerField(field)
    return Native.BlzGetItemIntegerField(getUd(self), field)
end

---getRealField
---@param field ItemRealField
---@return float
function Item:getRealField(field)
    return Native.BlzGetItemRealField(getUd(self), field)
end

---getStringField
---@param field ItemStringField
---@return string
function Item:getStringField(field)
    return Native.BlzGetItemStringField(getUd(self), field)
end

---setBooleanField
---@param field ItemBooleanField
---@param value boolean
---@return boolean
function Item:setBooleanField(field, value)
    return Native.BlzSetItemBooleanField(getUd(self), field, value)
end

---setIntegerField
---@param field ItemIntegerField
---@param value integer
---@return boolean
function Item:setIntegerField(field, value)
    return Native.BlzSetItemIntegerField(getUd(self), field, value)
end

---setRealField
---@param field ItemRealField
---@param value float
---@return boolean
function Item:setRealField(field, value)
    return Native.BlzSetItemRealField(getUd(self), field, value)
end

---setStringField
---@param field ItemStringField
---@param value string
---@return boolean
function Item:setStringField(field, value)
    return Native.BlzSetItemStringField(getUd(self), field, value)
end

---removeAbility
---@param abilCode integer
---@return boolean
function Item:removeAbility(abilCode)
    return Native.BlzItemRemoveAbility(getUd(self), abilCode)
end

return Item
