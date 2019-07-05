local Native = require('lib.stdlib.native')

---@class Location : Agent
local Location = class('Location', require('lib.stdlib.oop.agent'))

---- compact same name native function
setmetatable(Location, table.merge(getmetatable(Location), {__call = function(_, ...)
    return Native.Location(...)
end}))

---<static> create
---@overload fun(vec: Vector2): Location
---@param x float
---@param y float
---@return Location
function Location:create(x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
    return Location:fromUd(Native.Location(x, y))
end

return Location
