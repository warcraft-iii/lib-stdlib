local Native = require('lib.stdlib.native')

---@class Trackable : Agent
local Trackable = class('Trackable', require('lib.stdlib.oop.agent'))

---<static> create
---@overload fun(trackableModelPath: string, vec: Vector, facing: float): Trackable
---@param trackableModelPath string
---@param x float
---@param y float
---@param facing float
---@return Trackable
function Trackable:create(trackableModelPath, x, y, facing)
    if type(x) == 'table' then
        facing = y
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Trackable, 'create', 'self')
    checktype(trackableModelPath, 'string', 'create', 1)
    checktype(x, 'float', 'create', 2)
    checktype(y, 'float', 'create', 3)
    checktype(facing, 'float', 'create', 4)
--@end-debug@
    return Trackable:fromUd(Native.CreateTrackable(trackableModelPath, x, y, facing))
end

return Trackable
