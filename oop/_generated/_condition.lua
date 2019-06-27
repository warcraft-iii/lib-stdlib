local Native = require('lib.stdlib.native')

---@class Condition : BoolExpr
local Condition = class('Condition', require('lib.stdlib.oop.boolexpr'))

---- compact same name native function
local mt = table.shallowcopy(getmetatable(Condition))
mt.__call = function(_, ...)
    return Native.Condition(...)
end
setmetatable(Condition, mt)

---<static> create
---@param func function
---@return Condition
function Condition:create(func)
    return Condition:fromUd(Native.Condition(func))
end

---destroy
---@return void
function Condition:destroy()
    return Native.DestroyCondition(getUd(self))
end

return Condition
