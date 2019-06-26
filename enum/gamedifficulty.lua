local Native = require('lib.stdlib.native')

---@class GameDifficulty
local GameDifficulty = {
    Easy = Native.ConvertGameDifficulty(0), --MAP_DIFFICULTY_EASY
    Normal = Native.ConvertGameDifficulty(1), --MAP_DIFFICULTY_NORMAL
    Hard = Native.ConvertGameDifficulty(2), --MAP_DIFFICULTY_HARD
    Insane = Native.ConvertGameDifficulty(3), --MAP_DIFFICULTY_INSANE
}
return GameDifficulty
