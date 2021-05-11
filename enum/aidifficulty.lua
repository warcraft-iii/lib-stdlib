local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class AiDifficulty
local AiDifficulty = {
    Newbie = 0, --AI_DIFFICULTY_NEWBIE
    Normal = 1, --AI_DIFFICULTY_NORMAL
    Insane = 2, --AI_DIFFICULTY_INSANE
}

AiDifficulty = converter(Native.ConvertAIDifficulty, AiDifficulty)
return AiDifficulty
