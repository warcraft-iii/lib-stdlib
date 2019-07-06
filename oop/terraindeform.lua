---@type TerrainDeform
local TerrainDeform = require('lib.stdlib.oop._generated._terraindeform')

---<static> wave
---@overload fun(vec: Vector, dir: Vector, distance: float, speed: float, radius: float, depth: float, trailTime: integer, count: integer): TerrainDeform
---@param x float
---@param y float
---@param dirX float
---@param dirY float
---@param distance float
---@param speed float
---@param radius float
---@param depth float
---@param trailTime integer
---@param count integer
---@return TerrainDeform
function TerrainDeform:wave(x, y, dirX, dirY, distance, speed, radius, depth, trailTime, count)
    if type(x) == 'table' and type(y) == 'table' then
        distance, speed, radius, depth, trailTime, count = dirX, dirY, distance, speed, radius, depth
        dirX, dirY = table.unpack(y)
        x, y = table.unpack(x)
    end
    -- @debug@
    checkclass(self, TerrainDeform, 'wave', 'self')
    checktype(x, 'float', 'wave', 1)
    checktype(y, 'float', 'wave', 2)
    checktype(dirX, 'float', 'wave', 3)
    checktype(dirY, 'float', 'wave', 4)
    checktype(distance, 'float', 'wave', 5)
    checktype(speed, 'float', 'wave', 6)
    checktype(radius, 'float', 'wave', 7)
    checktype(depth, 'float', 'wave', 8)
    checktype(trailTime, 'integer', 'wave', 9)
    checktype(count, 'integer', 'wave', 10)
    -- @end-debug@
    return TerrainDeform:fromUd(Native.TerrainDeformWave(x, y, dirX, dirY, distance, speed, radius, depth, trailTime,
                                                         count))
end

return TerrainDeform
