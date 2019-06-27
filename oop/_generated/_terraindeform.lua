local Native = require('lib.stdlib.native')

---@class TerrainDeform : Handle
local TerrainDeform = class('TerrainDeform', require('lib.stdlib.oop.handle'))

---<static> crater
---@param x float
---@param y float
---@param radius float
---@param depth float
---@param duration integer
---@param permanent boolean
---@return TerrainDeform
function TerrainDeform:crater(x, y, radius, depth, duration, permanent)
    return TerrainDeform:fromUd(Native.TerrainDeformCrater(x, y, radius, depth, duration, permanent))
end

---<static> ripple
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
    return TerrainDeform:fromUd(Native.TerrainDeformWave(x, y, dirX, dirY, distance, speed, radius, depth, trailTime, count))
end

---<static> random
---@param x float
---@param y float
---@param radius float
---@param minDelta float
---@param maxDelta float
---@param duration integer
---@param updateInterval integer
---@return TerrainDeform
function TerrainDeform:random(x, y, radius, minDelta, maxDelta, duration, updateInterval)
    return TerrainDeform:fromUd(Native.TerrainDeformRandom(x, y, radius, minDelta, maxDelta, duration, updateInterval))
end

---stop
---@param duration integer
---@return void
function TerrainDeform:stop(duration)
    return Native.TerrainDeformStop(getUd(self), duration)
end

return TerrainDeform
