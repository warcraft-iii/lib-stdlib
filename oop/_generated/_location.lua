local Native = require('lib.stdlib.native')

---@class Location : Agent
local Location = class('Location', require('lib.stdlib.oop.agent'))

---- compact same name native function
setmetatable(Location, table.merge(getmetatable(Location), {__call = function(_, ...)
    return Native.Location(...)
end}))

---<static> create
---@overload fun(vec: Vector): Location
---@param x float
---@param y float
---@return Location
function Location:create(x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Location, 'create', 'self')
    checktype(x, 'float', 'create', 1)
    checktype(y, 'float', 'create', 2)
--@end-debug@
    return Location:fromUd(Native.Location(x, y))
end

return Location
