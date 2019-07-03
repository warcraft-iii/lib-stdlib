local Native = require('lib.stdlib.native')

---@class Filter : BoolExpr
local Filter = class('Filter', require('lib.stdlib.oop.boolexpr'))

---- compact same name native function
setmetatable(Filter, table.merge(getmetatable(Filter), {__call = function(_, ...)
    return Native.Filter(...)
end}))

---destructor
---@return void
function Filter:destructor()
    return Native.DestroyFilter(getUd(self))
end

---destroy
---@deprecated
---@return void
function Filter:destroy()
--@debug@
    deprecated('destroy', 'delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@param func function
---@return Filter
function Filter:create(func)
    return Filter:fromUd(Native.Filter(func))
end

return Filter
