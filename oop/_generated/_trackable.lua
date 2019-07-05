local Native = require('lib.stdlib.native')

---@class Trackable : Agent
local Trackable = class('Trackable', require('lib.stdlib.oop.agent'))

---<static> create
---@overload fun(trackableModelPath: string, vec: Vector2, facing: float): Trackable
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
    return Trackable:fromUd(Native.CreateTrackable(trackableModelPath, x, y, facing))
end

return Trackable
