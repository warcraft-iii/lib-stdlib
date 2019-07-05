local Native = require('lib.stdlib.native')

---@class Ability : Agent
local Ability = class('Ability', require('lib.stdlib.oop.agent'))

---getBooleanField
---@param field AbilityBooleanField
---@return boolean
function Ability:getBooleanField(field)
--@debug@
    checkobject(self, Ability, 'getBooleanField', 'self')
    checkuserdata(field, 'abilitybooleanfield', 'getBooleanField', 1)
--@end-debug@
    return Native.BlzGetAbilityBooleanField(getUd(self), field)
end

---getIntegerField
---@param field AbilityIntegerField
---@return integer
function Ability:getIntegerField(field)
--@debug@
    checkobject(self, Ability, 'getIntegerField', 'self')
    checkuserdata(field, 'abilityintegerfield', 'getIntegerField', 1)
--@end-debug@
    return Native.BlzGetAbilityIntegerField(getUd(self), field)
end

---getRealField
---@param field AbilityRealField
---@return float
function Ability:getRealField(field)
--@debug@
    checkobject(self, Ability, 'getRealField', 'self')
    checkuserdata(field, 'abilityrealfield', 'getRealField', 1)
--@end-debug@
    return Native.BlzGetAbilityRealField(getUd(self), field)
end

---getStringField
---@param field AbilityStringField
---@return string
function Ability:getStringField(field)
--@debug@
    checkobject(self, Ability, 'getStringField', 'self')
    checkuserdata(field, 'abilitystringfield', 'getStringField', 1)
--@end-debug@
    return Native.BlzGetAbilityStringField(getUd(self), field)
end

---getBooleanLevelField
---@param field AbilityBooleanLevelField
---@param level integer
---@return boolean
function Ability:getBooleanLevelField(field, level)
--@debug@
    checkobject(self, Ability, 'getBooleanLevelField', 'self')
    checkuserdata(field, 'abilitybooleanlevelfield', 'getBooleanLevelField', 1)
    checktype(level, 'integer', 'getBooleanLevelField', 2)
--@end-debug@
    return Native.BlzGetAbilityBooleanLevelField(getUd(self), field, level)
end

---getIntegerLevelField
---@param field AbilityIntegerLevelField
---@param level integer
---@return integer
function Ability:getIntegerLevelField(field, level)
--@debug@
    checkobject(self, Ability, 'getIntegerLevelField', 'self')
    checkuserdata(field, 'abilityintegerlevelfield', 'getIntegerLevelField', 1)
    checktype(level, 'integer', 'getIntegerLevelField', 2)
--@end-debug@
    return Native.BlzGetAbilityIntegerLevelField(getUd(self), field, level)
end

---getRealLevelField
---@param field AbilityRealLevelField
---@param level integer
---@return float
function Ability:getRealLevelField(field, level)
--@debug@
    checkobject(self, Ability, 'getRealLevelField', 'self')
    checkuserdata(field, 'abilityreallevelfield', 'getRealLevelField', 1)
    checktype(level, 'integer', 'getRealLevelField', 2)
--@end-debug@
    return Native.BlzGetAbilityRealLevelField(getUd(self), field, level)
end

---getStringLevelField
---@param field AbilityStringLevelField
---@param level integer
---@return string
function Ability:getStringLevelField(field, level)
--@debug@
    checkobject(self, Ability, 'getStringLevelField', 'self')
    checkuserdata(field, 'abilitystringlevelfield', 'getStringLevelField', 1)
    checktype(level, 'integer', 'getStringLevelField', 2)
--@end-debug@
    return Native.BlzGetAbilityStringLevelField(getUd(self), field, level)
end

---getBooleanLevelArrayField
---@param field AbilityBooleanLevelArrayField
---@param level integer
---@param index integer
---@return boolean
function Ability:getBooleanLevelArrayField(field, level, index)
--@debug@
    checkobject(self, Ability, 'getBooleanLevelArrayField', 'self')
    checkuserdata(field, 'abilitybooleanlevelarrayfield', 'getBooleanLevelArrayField', 1)
    checktype(level, 'integer', 'getBooleanLevelArrayField', 2)
    checktype(index, 'integer', 'getBooleanLevelArrayField', 3)
--@end-debug@
    return Native.BlzGetAbilityBooleanLevelArrayField(getUd(self), field, level, index)
end

---getIntegerLevelArrayField
---@param field AbilityIntegerLevelArrayField
---@param level integer
---@param index integer
---@return integer
function Ability:getIntegerLevelArrayField(field, level, index)
--@debug@
    checkobject(self, Ability, 'getIntegerLevelArrayField', 'self')
    checkuserdata(field, 'abilityintegerlevelarrayfield', 'getIntegerLevelArrayField', 1)
    checktype(level, 'integer', 'getIntegerLevelArrayField', 2)
    checktype(index, 'integer', 'getIntegerLevelArrayField', 3)
--@end-debug@
    return Native.BlzGetAbilityIntegerLevelArrayField(getUd(self), field, level, index)
end

---getRealLevelArrayField
---@param field AbilityRealLevelArrayField
---@param level integer
---@param index integer
---@return float
function Ability:getRealLevelArrayField(field, level, index)
--@debug@
    checkobject(self, Ability, 'getRealLevelArrayField', 'self')
    checkuserdata(field, 'abilityreallevelarrayfield', 'getRealLevelArrayField', 1)
    checktype(level, 'integer', 'getRealLevelArrayField', 2)
    checktype(index, 'integer', 'getRealLevelArrayField', 3)
--@end-debug@
    return Native.BlzGetAbilityRealLevelArrayField(getUd(self), field, level, index)
end

---getStringLevelArrayField
---@param field AbilityStringLevelArrayField
---@param level integer
---@param index integer
---@return string
function Ability:getStringLevelArrayField(field, level, index)
--@debug@
    checkobject(self, Ability, 'getStringLevelArrayField', 'self')
    checkuserdata(field, 'abilitystringlevelarrayfield', 'getStringLevelArrayField', 1)
    checktype(level, 'integer', 'getStringLevelArrayField', 2)
    checktype(index, 'integer', 'getStringLevelArrayField', 3)
--@end-debug@
    return Native.BlzGetAbilityStringLevelArrayField(getUd(self), field, level, index)
end

---setBooleanField
---@param field AbilityBooleanField
---@param value boolean
---@return boolean
function Ability:setBooleanField(field, value)
--@debug@
    checkobject(self, Ability, 'setBooleanField', 'self')
    checkuserdata(field, 'abilitybooleanfield', 'setBooleanField', 1)
    checktype(value, 'boolean', 'setBooleanField', 2)
--@end-debug@
    return Native.BlzSetAbilityBooleanField(getUd(self), field, value)
end

---setIntegerField
---@param field AbilityIntegerField
---@param value integer
---@return boolean
function Ability:setIntegerField(field, value)
--@debug@
    checkobject(self, Ability, 'setIntegerField', 'self')
    checkuserdata(field, 'abilityintegerfield', 'setIntegerField', 1)
    checktype(value, 'integer', 'setIntegerField', 2)
--@end-debug@
    return Native.BlzSetAbilityIntegerField(getUd(self), field, value)
end

---setRealField
---@param field AbilityRealField
---@param value float
---@return boolean
function Ability:setRealField(field, value)
--@debug@
    checkobject(self, Ability, 'setRealField', 'self')
    checkuserdata(field, 'abilityrealfield', 'setRealField', 1)
    checktype(value, 'float', 'setRealField', 2)
--@end-debug@
    return Native.BlzSetAbilityRealField(getUd(self), field, value)
end

---setStringField
---@param field AbilityStringField
---@param value string
---@return boolean
function Ability:setStringField(field, value)
--@debug@
    checkobject(self, Ability, 'setStringField', 'self')
    checkuserdata(field, 'abilitystringfield', 'setStringField', 1)
    checktype(value, 'string', 'setStringField', 2)
--@end-debug@
    return Native.BlzSetAbilityStringField(getUd(self), field, value)
end

---setBooleanLevelField
---@param field AbilityBooleanLevelField
---@param level integer
---@param value boolean
---@return boolean
function Ability:setBooleanLevelField(field, level, value)
--@debug@
    checkobject(self, Ability, 'setBooleanLevelField', 'self')
    checkuserdata(field, 'abilitybooleanlevelfield', 'setBooleanLevelField', 1)
    checktype(level, 'integer', 'setBooleanLevelField', 2)
    checktype(value, 'boolean', 'setBooleanLevelField', 3)
--@end-debug@
    return Native.BlzSetAbilityBooleanLevelField(getUd(self), field, level, value)
end

---setIntegerLevelField
---@param field AbilityIntegerLevelField
---@param level integer
---@param value integer
---@return boolean
function Ability:setIntegerLevelField(field, level, value)
--@debug@
    checkobject(self, Ability, 'setIntegerLevelField', 'self')
    checkuserdata(field, 'abilityintegerlevelfield', 'setIntegerLevelField', 1)
    checktype(level, 'integer', 'setIntegerLevelField', 2)
    checktype(value, 'integer', 'setIntegerLevelField', 3)
--@end-debug@
    return Native.BlzSetAbilityIntegerLevelField(getUd(self), field, level, value)
end

---setRealLevelField
---@param field AbilityRealLevelField
---@param level integer
---@param value float
---@return boolean
function Ability:setRealLevelField(field, level, value)
--@debug@
    checkobject(self, Ability, 'setRealLevelField', 'self')
    checkuserdata(field, 'abilityreallevelfield', 'setRealLevelField', 1)
    checktype(level, 'integer', 'setRealLevelField', 2)
    checktype(value, 'float', 'setRealLevelField', 3)
--@end-debug@
    return Native.BlzSetAbilityRealLevelField(getUd(self), field, level, value)
end

---setStringLevelField
---@param field AbilityStringLevelField
---@param level integer
---@param value string
---@return boolean
function Ability:setStringLevelField(field, level, value)
--@debug@
    checkobject(self, Ability, 'setStringLevelField', 'self')
    checkuserdata(field, 'abilitystringlevelfield', 'setStringLevelField', 1)
    checktype(level, 'integer', 'setStringLevelField', 2)
    checktype(value, 'string', 'setStringLevelField', 3)
--@end-debug@
    return Native.BlzSetAbilityStringLevelField(getUd(self), field, level, value)
end

---setBooleanLevelArrayField
---@param field AbilityBooleanLevelArrayField
---@param level integer
---@param index integer
---@param value boolean
---@return boolean
function Ability:setBooleanLevelArrayField(field, level, index, value)
--@debug@
    checkobject(self, Ability, 'setBooleanLevelArrayField', 'self')
    checkuserdata(field, 'abilitybooleanlevelarrayfield', 'setBooleanLevelArrayField', 1)
    checktype(level, 'integer', 'setBooleanLevelArrayField', 2)
    checktype(index, 'integer', 'setBooleanLevelArrayField', 3)
    checktype(value, 'boolean', 'setBooleanLevelArrayField', 4)
--@end-debug@
    return Native.BlzSetAbilityBooleanLevelArrayField(getUd(self), field, level, index, value)
end

---setIntegerLevelArrayField
---@param field AbilityIntegerLevelArrayField
---@param level integer
---@param index integer
---@param value integer
---@return boolean
function Ability:setIntegerLevelArrayField(field, level, index, value)
--@debug@
    checkobject(self, Ability, 'setIntegerLevelArrayField', 'self')
    checkuserdata(field, 'abilityintegerlevelarrayfield', 'setIntegerLevelArrayField', 1)
    checktype(level, 'integer', 'setIntegerLevelArrayField', 2)
    checktype(index, 'integer', 'setIntegerLevelArrayField', 3)
    checktype(value, 'integer', 'setIntegerLevelArrayField', 4)
--@end-debug@
    return Native.BlzSetAbilityIntegerLevelArrayField(getUd(self), field, level, index, value)
end

---setRealLevelArrayField
---@param field AbilityRealLevelArrayField
---@param level integer
---@param index integer
---@param value float
---@return boolean
function Ability:setRealLevelArrayField(field, level, index, value)
--@debug@
    checkobject(self, Ability, 'setRealLevelArrayField', 'self')
    checkuserdata(field, 'abilityreallevelarrayfield', 'setRealLevelArrayField', 1)
    checktype(level, 'integer', 'setRealLevelArrayField', 2)
    checktype(index, 'integer', 'setRealLevelArrayField', 3)
    checktype(value, 'float', 'setRealLevelArrayField', 4)
--@end-debug@
    return Native.BlzSetAbilityRealLevelArrayField(getUd(self), field, level, index, value)
end

---setStringLevelArrayField
---@param field AbilityStringLevelArrayField
---@param level integer
---@param index integer
---@param value string
---@return boolean
function Ability:setStringLevelArrayField(field, level, index, value)
--@debug@
    checkobject(self, Ability, 'setStringLevelArrayField', 'self')
    checkuserdata(field, 'abilitystringlevelarrayfield', 'setStringLevelArrayField', 1)
    checktype(level, 'integer', 'setStringLevelArrayField', 2)
    checktype(index, 'integer', 'setStringLevelArrayField', 3)
    checktype(value, 'string', 'setStringLevelArrayField', 4)
--@end-debug@
    return Native.BlzSetAbilityStringLevelArrayField(getUd(self), field, level, index, value)
end

---addBooleanLevelArrayField
---@param field AbilityBooleanLevelArrayField
---@param level integer
---@param value boolean
---@return boolean
function Ability:addBooleanLevelArrayField(field, level, value)
--@debug@
    checkobject(self, Ability, 'addBooleanLevelArrayField', 'self')
    checkuserdata(field, 'abilitybooleanlevelarrayfield', 'addBooleanLevelArrayField', 1)
    checktype(level, 'integer', 'addBooleanLevelArrayField', 2)
    checktype(value, 'boolean', 'addBooleanLevelArrayField', 3)
--@end-debug@
    return Native.BlzAddAbilityBooleanLevelArrayField(getUd(self), field, level, value)
end

---addIntegerLevelArrayField
---@param field AbilityIntegerLevelArrayField
---@param level integer
---@param value integer
---@return boolean
function Ability:addIntegerLevelArrayField(field, level, value)
--@debug@
    checkobject(self, Ability, 'addIntegerLevelArrayField', 'self')
    checkuserdata(field, 'abilityintegerlevelarrayfield', 'addIntegerLevelArrayField', 1)
    checktype(level, 'integer', 'addIntegerLevelArrayField', 2)
    checktype(value, 'integer', 'addIntegerLevelArrayField', 3)
--@end-debug@
    return Native.BlzAddAbilityIntegerLevelArrayField(getUd(self), field, level, value)
end

---addRealLevelArrayField
---@param field AbilityRealLevelArrayField
---@param level integer
---@param value float
---@return boolean
function Ability:addRealLevelArrayField(field, level, value)
--@debug@
    checkobject(self, Ability, 'addRealLevelArrayField', 'self')
    checkuserdata(field, 'abilityreallevelarrayfield', 'addRealLevelArrayField', 1)
    checktype(level, 'integer', 'addRealLevelArrayField', 2)
    checktype(value, 'float', 'addRealLevelArrayField', 3)
--@end-debug@
    return Native.BlzAddAbilityRealLevelArrayField(getUd(self), field, level, value)
end

---addStringLevelArrayField
---@param field AbilityStringLevelArrayField
---@param level integer
---@param value string
---@return boolean
function Ability:addStringLevelArrayField(field, level, value)
--@debug@
    checkobject(self, Ability, 'addStringLevelArrayField', 'self')
    checkuserdata(field, 'abilitystringlevelarrayfield', 'addStringLevelArrayField', 1)
    checktype(level, 'integer', 'addStringLevelArrayField', 2)
    checktype(value, 'string', 'addStringLevelArrayField', 3)
--@end-debug@
    return Native.BlzAddAbilityStringLevelArrayField(getUd(self), field, level, value)
end

---removeBooleanLevelArrayField
---@param field AbilityBooleanLevelArrayField
---@param level integer
---@param value boolean
---@return boolean
function Ability:removeBooleanLevelArrayField(field, level, value)
--@debug@
    checkobject(self, Ability, 'removeBooleanLevelArrayField', 'self')
    checkuserdata(field, 'abilitybooleanlevelarrayfield', 'removeBooleanLevelArrayField', 1)
    checktype(level, 'integer', 'removeBooleanLevelArrayField', 2)
    checktype(value, 'boolean', 'removeBooleanLevelArrayField', 3)
--@end-debug@
    return Native.BlzRemoveAbilityBooleanLevelArrayField(getUd(self), field, level, value)
end

---removeIntegerLevelArrayField
---@param field AbilityIntegerLevelArrayField
---@param level integer
---@param value integer
---@return boolean
function Ability:removeIntegerLevelArrayField(field, level, value)
--@debug@
    checkobject(self, Ability, 'removeIntegerLevelArrayField', 'self')
    checkuserdata(field, 'abilityintegerlevelarrayfield', 'removeIntegerLevelArrayField', 1)
    checktype(level, 'integer', 'removeIntegerLevelArrayField', 2)
    checktype(value, 'integer', 'removeIntegerLevelArrayField', 3)
--@end-debug@
    return Native.BlzRemoveAbilityIntegerLevelArrayField(getUd(self), field, level, value)
end

---removeRealLevelArrayField
---@param field AbilityRealLevelArrayField
---@param level integer
---@param value float
---@return boolean
function Ability:removeRealLevelArrayField(field, level, value)
--@debug@
    checkobject(self, Ability, 'removeRealLevelArrayField', 'self')
    checkuserdata(field, 'abilityreallevelarrayfield', 'removeRealLevelArrayField', 1)
    checktype(level, 'integer', 'removeRealLevelArrayField', 2)
    checktype(value, 'float', 'removeRealLevelArrayField', 3)
--@end-debug@
    return Native.BlzRemoveAbilityRealLevelArrayField(getUd(self), field, level, value)
end

---removeStringLevelArrayField
---@param field AbilityStringLevelArrayField
---@param level integer
---@param value string
---@return boolean
function Ability:removeStringLevelArrayField(field, level, value)
--@debug@
    checkobject(self, Ability, 'removeStringLevelArrayField', 'self')
    checkuserdata(field, 'abilitystringlevelarrayfield', 'removeStringLevelArrayField', 1)
    checktype(level, 'integer', 'removeStringLevelArrayField', 2)
    checktype(value, 'string', 'removeStringLevelArrayField', 3)
--@end-debug@
    return Native.BlzRemoveAbilityStringLevelArrayField(getUd(self), field, level, value)
end

return Ability
