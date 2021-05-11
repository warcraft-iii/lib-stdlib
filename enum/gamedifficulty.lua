local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class GameDifficulty
local GameDifficulty = {
    Easy = 0, --MAP_DIFFICULTY_EASY
    Normal = 1, --MAP_DIFFICULTY_NORMAL
    Hard = 2, --MAP_DIFFICULTY_HARD
    Insane = 3, --MAP_DIFFICULTY_INSANE
}

GameDifficulty = converter(Native.ConvertGameDifficulty, GameDifficulty)
return GameDifficulty
