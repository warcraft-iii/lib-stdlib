local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class GameSpeed
local GameSpeed = {
    Slowest = 0, --MAP_SPEED_SLOWEST
    Slow = 1, --MAP_SPEED_SLOW
    Normal = 2, --MAP_SPEED_NORMAL
    Fast = 3, --MAP_SPEED_FAST
    Fastest = 4, --MAP_SPEED_FASTEST
}

GameSpeed = converter(Native.ConvertGameSpeed, GameSpeed)
return GameSpeed
