local Native = require('lib.stdlib.native')

---@class DefeatCondition : Agent
local DefeatCondition = class('DefeatCondition', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function DefeatCondition:destructor()
--@debug@
    checkobject(self, DefeatCondition, 'destructor', 'self')
--@end-debug@
    return Native.DestroyDefeatCondition(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function DefeatCondition:destroy()
--@debug@
    deprecated('DefeatCondition.destroy', 'DefeatCondition.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@return DefeatCondition
function DefeatCondition:create()
    return DefeatCondition:fromUd(Native.CreateDefeatCondition())
end

---setDescription
---@param description string
---@return void
function DefeatCondition:setDescription(description)
--@debug@
    checkobject(self, DefeatCondition, 'setDescription', 'self')
    checktype(description, 'string', 'setDescription', 1)
--@end-debug@
    return Native.DefeatConditionSetDescription(getUd(self), description)
end

return DefeatCondition
