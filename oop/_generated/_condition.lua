local Native = require('lib.stdlib.native')

---@class Condition : BoolExpr
local Condition = class('Condition', require('lib.stdlib.oop.boolexpr'))

---- compact same name native function
setmetatable(Condition, table.merge(getmetatable(Condition), {__call = function(_, ...)
    return Native.Condition(...)
end}))

---destructor
---@return void
function Condition:destructor()
    return Native.DestroyCondition(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function Condition:destroy()
--@debug@
    deprecated('Condition.destroy', 'Condition.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@param func function
---@return Condition
function Condition:create(func)
    return Condition:fromUd(Native.Condition(func))
end

return Condition
