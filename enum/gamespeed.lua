local Native = require('lib.stdlib.native')

---@class GameSpeed
local GameSpeed = {
    Slowest = Native.ConvertGameSpeed(0), --MAP_SPEED_SLOWEST
    Slow = Native.ConvertGameSpeed(1), --MAP_SPEED_SLOW
    Normal = Native.ConvertGameSpeed(2), --MAP_SPEED_NORMAL
    Fast = Native.ConvertGameSpeed(3), --MAP_SPEED_FAST
    Fastest = Native.ConvertGameSpeed(4), --MAP_SPEED_FASTEST
}
return GameSpeed
