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
--@debug@
    checkobject(self, Filter, 'destructor', 'self')
--@end-debug@
    return Native.DestroyFilter(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function Filter:destroy()
--@debug@
    deprecated('Filter.destroy', 'Filter.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@param func function
---@return Filter
function Filter:create(func)
--@debug@
    checkclass(self, Filter, 'create', 'self')
    checktype(func, 'function', 'create', 1)
--@end-debug@
    return Filter:fromUd(Native.Filter(func))
end

return Filter
