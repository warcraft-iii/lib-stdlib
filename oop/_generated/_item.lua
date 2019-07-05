local Native = require('lib.stdlib.native')

---@class Item : Widget
local Item = class('Item', require('lib.stdlib.oop.widget'))

---destructor
---@return void
function Item:destructor()
--@debug@
    checkobject(self, Item, 'destructor', 'self')
--@end-debug@
    return Native.RemoveItem(getUd(self))
end

---<**_DEPRECATED_**> remove
---@return void
function Item:remove()
--@debug@
    deprecated('Item.remove', 'Item.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@overload fun(itemid: integer, vec: Vector2): Item
---@param itemid integer
---@param x float
---@param y float
---@return Item
function Item:create(itemid, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Item, 'create', 'self')
    checktype(itemid, 'integer', 'create', 1)
    checktype(x, 'float', 'create', 2)
    checktype(y, 'float', 'create', 3)
--@end-debug@
    return Item:fromUd(Native.CreateItem(itemid, x, y))
end

---getPlayer
---@return Player
function Item:getPlayer()
--@debug@
    checkobject(self, Item, 'getPlayer', 'self')
--@end-debug@
    return require('lib.stdlib.oop.player'):fromUd(Native.GetItemPlayer(getUd(self)))
end

---getTypeId
---@return integer
function Item:getTypeId()
--@debug@
    checkobject(self, Item, 'getTypeId', 'self')
--@end-debug@
    return Native.GetItemTypeId(getUd(self))
end

---getX
---@return float
function Item:getX()
--@debug@
    checkobject(self, Item, 'getX', 'self')
--@end-debug@
    return Native.GetItemX(getUd(self))
end

---getY
---@return float
function Item:getY()
--@debug@
    checkobject(self, Item, 'getY', 'self')
--@end-debug@
    return Native.GetItemY(getUd(self))
end

---setPosition
---@overload fun(vec: Vector2): void
---@param x float
---@param y float
---@return void
function Item:setPosition(x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Item, 'setPosition', 'self')
    checktype(x, 'float', 'setPosition', 1)
    checktype(y, 'float', 'setPosition', 2)
--@end-debug@
    return Native.SetItemPosition(getUd(self), x, y)
end

---setDropOnDeath
---@param flag boolean
---@return void
function Item:setDropOnDeath(flag)
--@debug@
    checkobject(self, Item, 'setDropOnDeath', 'self')
    checktype(flag, 'boolean', 'setDropOnDeath', 1)
--@end-debug@
    return Native.SetItemDropOnDeath(getUd(self), flag)
end

---setDroppable
---@param flag boolean
---@return void
function Item:setDroppable(flag)
--@debug@
    checkobject(self, Item, 'setDroppable', 'self')
    checktype(flag, 'boolean', 'setDroppable', 1)
--@end-debug@
    return Native.SetItemDroppable(getUd(self), flag)
end

---setPawnable
---@param flag boolean
---@return void
function Item:setPawnable(flag)
--@debug@
    checkobject(self, Item, 'setPawnable', 'self')
    checktype(flag, 'boolean', 'setPawnable', 1)
--@end-debug@
    return Native.SetItemPawnable(getUd(self), flag)
end

---setPlayer
---@param player Player
---@param changeColor boolean
---@return void
function Item:setPlayer(player, changeColor)
--@debug@
    checkobject(self, Item, 'setPlayer', 'self')
    checkobject(player, require('lib.stdlib.oop.player'), 'setPlayer', 1)
    checktype(changeColor, 'boolean', 'setPlayer', 2)
--@end-debug@
    return Native.SetItemPlayer(getUd(self), getUd(player), changeColor)
end

---setInvulnerable
---@param flag boolean
---@return void
function Item:setInvulnerable(flag)
--@debug@
    checkobject(self, Item, 'setInvulnerable', 'self')
    checktype(flag, 'boolean', 'setInvulnerable', 1)
--@end-debug@
    return Native.SetItemInvulnerable(getUd(self), flag)
end

---isInvulnerable
---@return boolean
function Item:isInvulnerable()
--@debug@
    checkobject(self, Item, 'isInvulnerable', 'self')
--@end-debug@
    return Native.IsItemInvulnerable(getUd(self))
end

---setVisible
---@param show boolean
---@return void
function Item:setVisible(show)
--@debug@
    checkobject(self, Item, 'setVisible', 'self')
    checktype(show, 'boolean', 'setVisible', 1)
--@end-debug@
    return Native.SetItemVisible(getUd(self), show)
end

---isVisible
---@return boolean
function Item:isVisible()
--@debug@
    checkobject(self, Item, 'isVisible', 'self')
--@end-debug@
    return Native.IsItemVisible(getUd(self))
end

---isOwned
---@return boolean
function Item:isOwned()
--@debug@
    checkobject(self, Item, 'isOwned', 'self')
--@end-debug@
    return Native.IsItemOwned(getUd(self))
end

---isPowerup
---@return boolean
function Item:isPowerup()
--@debug@
    checkobject(self, Item, 'isPowerup', 'self')
--@end-debug@
    return Native.IsItemPowerup(getUd(self))
end

---isSellable
---@return boolean
function Item:isSellable()
--@debug@
    checkobject(self, Item, 'isSellable', 'self')
--@end-debug@
    return Native.IsItemSellable(getUd(self))
end

---isPawnable
---@return boolean
function Item:isPawnable()
--@debug@
    checkobject(self, Item, 'isPawnable', 'self')
--@end-debug@
    return Native.IsItemPawnable(getUd(self))
end

---getLevel
---@return integer
function Item:getLevel()
--@debug@
    checkobject(self, Item, 'getLevel', 'self')
--@end-debug@
    return Native.GetItemLevel(getUd(self))
end

---getType
---@return ItemType
function Item:getType()
--@debug@
    checkobject(self, Item, 'getType', 'self')
--@end-debug@
    return Native.GetItemType(getUd(self))
end

---setDropID
---@param unitId integer
---@return void
function Item:setDropID(unitId)
--@debug@
    checkobject(self, Item, 'setDropID', 'self')
    checktype(unitId, 'integer', 'setDropID', 1)
--@end-debug@
    return Native.SetItemDropID(getUd(self), unitId)
end

---getName
---@return string
function Item:getName()
--@debug@
    checkobject(self, Item, 'getName', 'self')
--@end-debug@
    return Native.GetItemName(getUd(self))
end

---getCharges
---@return integer
function Item:getCharges()
--@debug@
    checkobject(self, Item, 'getCharges', 'self')
--@end-debug@
    return Native.GetItemCharges(getUd(self))
end

---setCharges
---@param charges integer
---@return void
function Item:setCharges(charges)
--@debug@
    checkobject(self, Item, 'setCharges', 'self')
    checktype(charges, 'integer', 'setCharges', 1)
--@end-debug@
    return Native.SetItemCharges(getUd(self), charges)
end

---getUserData
---@return integer
function Item:getUserData()
--@debug@
    checkobject(self, Item, 'getUserData', 'self')
--@end-debug@
    return Native.GetItemUserData(getUd(self))
end

---setUserData
---@param data integer
---@return void
function Item:setUserData(data)
--@debug@
    checkobject(self, Item, 'setUserData', 'self')
    checktype(data, 'integer', 'setUserData', 1)
--@end-debug@
    return Native.SetItemUserData(getUd(self), data)
end

---setName
---@param name string
---@return void
function Item:setName(name)
--@debug@
    checkobject(self, Item, 'setName', 'self')
    checktype(name, 'string', 'setName', 1)
--@end-debug@
    return Native.BlzSetItemName(getUd(self), name)
end

---setDescription
---@param description string
---@return void
function Item:setDescription(description)
--@debug@
    checkobject(self, Item, 'setDescription', 'self')
    checktype(description, 'string', 'setDescription', 1)
--@end-debug@
    return Native.BlzSetItemDescription(getUd(self), description)
end

---getDescription
---@return string
function Item:getDescription()
--@debug@
    checkobject(self, Item, 'getDescription', 'self')
--@end-debug@
    return Native.BlzGetItemDescription(getUd(self))
end

---setTooltip
---@param tooltip string
---@return void
function Item:setTooltip(tooltip)
--@debug@
    checkobject(self, Item, 'setTooltip', 'self')
    checktype(tooltip, 'string', 'setTooltip', 1)
--@end-debug@
    return Native.BlzSetItemTooltip(getUd(self), tooltip)
end

---getTooltip
---@return string
function Item:getTooltip()
--@debug@
    checkobject(self, Item, 'getTooltip', 'self')
--@end-debug@
    return Native.BlzGetItemTooltip(getUd(self))
end

---setExtendedTooltip
---@param extendedTooltip string
---@return void
function Item:setExtendedTooltip(extendedTooltip)
--@debug@
    checkobject(self, Item, 'setExtendedTooltip', 'self')
    checktype(extendedTooltip, 'string', 'setExtendedTooltip', 1)
--@end-debug@
    return Native.BlzSetItemExtendedTooltip(getUd(self), extendedTooltip)
end

---getExtendedTooltip
---@return string
function Item:getExtendedTooltip()
--@debug@
    checkobject(self, Item, 'getExtendedTooltip', 'self')
--@end-debug@
    return Native.BlzGetItemExtendedTooltip(getUd(self))
end

---setIconPath
---@param iconPath string
---@return void
function Item:setIconPath(iconPath)
--@debug@
    checkobject(self, Item, 'setIconPath', 'self')
    checktype(iconPath, 'string', 'setIconPath', 1)
--@end-debug@
    return Native.BlzSetItemIconPath(getUd(self), iconPath)
end

---getIconPath
---@return string
function Item:getIconPath()
--@debug@
    checkobject(self, Item, 'getIconPath', 'self')
--@end-debug@
    return Native.BlzGetItemIconPath(getUd(self))
end

---getAbilityByIndex
---@param index integer
---@return Ability
function Item:getAbilityByIndex(index)
--@debug@
    checkobject(self, Item, 'getAbilityByIndex', 'self')
    checktype(index, 'integer', 'getAbilityByIndex', 1)
--@end-debug@
    return require('lib.stdlib.oop.ability'):fromUd(Native.BlzGetItemAbilityByIndex(getUd(self), index))
end

---getAbility
---@param abilCode integer
---@return Ability
function Item:getAbility(abilCode)
--@debug@
    checkobject(self, Item, 'getAbility', 'self')
    checktype(abilCode, 'integer', 'getAbility', 1)
--@end-debug@
    return require('lib.stdlib.oop.ability'):fromUd(Native.BlzGetItemAbility(getUd(self), abilCode))
end

---addAbility
---@param abilCode integer
---@return boolean
function Item:addAbility(abilCode)
--@debug@
    checkobject(self, Item, 'addAbility', 'self')
    checktype(abilCode, 'integer', 'addAbility', 1)
--@end-debug@
    return Native.BlzItemAddAbility(getUd(self), abilCode)
end

---getBooleanField
---@param field ItemBooleanField
---@return boolean
function Item:getBooleanField(field)
--@debug@
    checkobject(self, Item, 'getBooleanField', 'self')
    checkuserdata(field, 'itembooleanfield', 'getBooleanField', 1)
--@end-debug@
    return Native.BlzGetItemBooleanField(getUd(self), field)
end

---getIntegerField
---@param field ItemIntegerField
---@return integer
function Item:getIntegerField(field)
--@debug@
    checkobject(self, Item, 'getIntegerField', 'self')
    checkuserdata(field, 'itemintegerfield', 'getIntegerField', 1)
--@end-debug@
    return Native.BlzGetItemIntegerField(getUd(self), field)
end

---getRealField
---@param field ItemRealField
---@return float
function Item:getRealField(field)
--@debug@
    checkobject(self, Item, 'getRealField', 'self')
    checkuserdata(field, 'itemrealfield', 'getRealField', 1)
--@end-debug@
    return Native.BlzGetItemRealField(getUd(self), field)
end

---getStringField
---@param field ItemStringField
---@return string
function Item:getStringField(field)
--@debug@
    checkobject(self, Item, 'getStringField', 'self')
    checkuserdata(field, 'itemstringfield', 'getStringField', 1)
--@end-debug@
    return Native.BlzGetItemStringField(getUd(self), field)
end

---setBooleanField
---@param field ItemBooleanField
---@param value boolean
---@return boolean
function Item:setBooleanField(field, value)
--@debug@
    checkobject(self, Item, 'setBooleanField', 'self')
    checkuserdata(field, 'itembooleanfield', 'setBooleanField', 1)
    checktype(value, 'boolean', 'setBooleanField', 2)
--@end-debug@
    return Native.BlzSetItemBooleanField(getUd(self), field, value)
end

---setIntegerField
---@param field ItemIntegerField
---@param value integer
---@return boolean
function Item:setIntegerField(field, value)
--@debug@
    checkobject(self, Item, 'setIntegerField', 'self')
    checkuserdata(field, 'itemintegerfield', 'setIntegerField', 1)
    checktype(value, 'integer', 'setIntegerField', 2)
--@end-debug@
    return Native.BlzSetItemIntegerField(getUd(self), field, value)
end

---setRealField
---@param field ItemRealField
---@param value float
---@return boolean
function Item:setRealField(field, value)
--@debug@
    checkobject(self, Item, 'setRealField', 'self')
    checkuserdata(field, 'itemrealfield', 'setRealField', 1)
    checktype(value, 'float', 'setRealField', 2)
--@end-debug@
    return Native.BlzSetItemRealField(getUd(self), field, value)
end

---setStringField
---@param field ItemStringField
---@param value string
---@return boolean
function Item:setStringField(field, value)
--@debug@
    checkobject(self, Item, 'setStringField', 'self')
    checkuserdata(field, 'itemstringfield', 'setStringField', 1)
    checktype(value, 'string', 'setStringField', 2)
--@end-debug@
    return Native.BlzSetItemStringField(getUd(self), field, value)
end

---removeAbility
---@param abilCode integer
---@return boolean
function Item:removeAbility(abilCode)
--@debug@
    checkobject(self, Item, 'removeAbility', 'self')
    checktype(abilCode, 'integer', 'removeAbility', 1)
--@end-debug@
    return Native.BlzItemRemoveAbility(getUd(self), abilCode)
end

return Item
