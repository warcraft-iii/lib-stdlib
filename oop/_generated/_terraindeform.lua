local Native = require('lib.stdlib.native')

---@class TerrainDeform : Handle
local TerrainDeform = class('TerrainDeform', require('lib.stdlib.oop.handle'))

---<static> crater
---@overload fun(vec: Vector2, radius: float, depth: float, duration: integer, permanent: boolean): TerrainDeform
---@param x float
---@param y float
---@param radius float
---@param depth float
---@param duration integer
---@param permanent boolean
---@return TerrainDeform
function TerrainDeform:crater(x, y, radius, depth, duration, permanent)
    if type(x) == 'table' then
        radius, depth, duration, permanent = y, radius, depth, duration
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, TerrainDeform, 'crater', 'self')
    checktype(x, 'float', 'crater', 1)
    checktype(y, 'float', 'crater', 2)
    checktype(radius, 'float', 'crater', 3)
    checktype(depth, 'float', 'crater', 4)
    checktype(duration, 'integer', 'crater', 5)
    checktype(permanent, 'boolean', 'crater', 6)
--@end-debug@
    return TerrainDeform:fromUd(Native.TerrainDeformCrater(x, y, radius, depth, duration, permanent))
end

---<static> ripple
---@overload fun(vec: Vector2, radius: float, depth: float, duration: integer, count: integer, spaceWaves: float, timeWaves: float, radiusStartPct: float, limitNeg: boolean): TerrainDeform
---@param x float
---@param y float
---@param radius float
---@param depth float
---@param duration integer
---@param count integer
---@param spaceWaves float
---@param timeWaves float
---@param radiusStartPct float
---@param limitNeg boolean
---@return TerrainDeform
function TerrainDeform:ripple(x, y, radius, depth, duration, count, spaceWaves, timeWaves, radiusStartPct, limitNeg)
    if type(x) == 'table' then
        radius, depth, duration, count, spaceWaves, timeWaves, radiusStartPct, limitNeg = y, radius, depth, duration, count, spaceWaves, timeWaves, radiusStartPct
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, TerrainDeform, 'ripple', 'self')
    checktype(x, 'float', 'ripple', 1)
    checktype(y, 'float', 'ripple', 2)
    checktype(radius, 'float', 'ripple', 3)
    checktype(depth, 'float', 'ripple', 4)
    checktype(duration, 'integer', 'ripple', 5)
    checktype(count, 'integer', 'ripple', 6)
    checktype(spaceWaves, 'float', 'ripple', 7)
    checktype(timeWaves, 'float', 'ripple', 8)
    checktype(radiusStartPct, 'float', 'ripple', 9)
    checktype(limitNeg, 'boolean', 'ripple', 10)
--@end-debug@
    return TerrainDeform:fromUd(Native.TerrainDeformRipple(x, y, radius, depth, duration, count, spaceWaves, timeWaves, radiusStartPct, limitNeg))
end

---<static> wave
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
--@debug@
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
--@end-debug@
    return TerrainDeform:fromUd(Native.TerrainDeformWave(x, y, dirX, dirY, distance, speed, radius, depth, trailTime, count))
end

---<static> random
---@overload fun(vec: Vector2, radius: float, minDelta: float, maxDelta: float, duration: integer, updateInterval: integer): TerrainDeform
---@param x float
---@param y float
---@param radius float
---@param minDelta float
---@param maxDelta float
---@param duration integer
---@param updateInterval integer
---@return TerrainDeform
function TerrainDeform:random(x, y, radius, minDelta, maxDelta, duration, updateInterval)
    if type(x) == 'table' then
        radius, minDelta, maxDelta, duration, updateInterval = y, radius, minDelta, maxDelta, duration
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, TerrainDeform, 'random', 'self')
    checktype(x, 'float', 'random', 1)
    checktype(y, 'float', 'random', 2)
    checktype(radius, 'float', 'random', 3)
    checktype(minDelta, 'float', 'random', 4)
    checktype(maxDelta, 'float', 'random', 5)
    checktype(duration, 'integer', 'random', 6)
    checktype(updateInterval, 'integer', 'random', 7)
--@end-debug@
    return TerrainDeform:fromUd(Native.TerrainDeformRandom(x, y, radius, minDelta, maxDelta, duration, updateInterval))
end

---stop
---@param duration integer
---@return void
function TerrainDeform:stop(duration)
--@debug@
    checkobject(self, TerrainDeform, 'stop', 'self')
    checktype(duration, 'integer', 'stop', 1)
--@end-debug@
    return Native.TerrainDeformStop(getUd(self), duration)
end

return TerrainDeform
