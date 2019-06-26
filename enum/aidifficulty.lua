local Native = require('lib.stdlib.native')

---@class AiDifficulty
local AiDifficulty = {
    Newbie = Native.ConvertAIDifficulty(0), --AI_DIFFICULTY_NEWBIE
    Normal = Native.ConvertAIDifficulty(1), --AI_DIFFICULTY_NORMAL
    Insane = Native.ConvertAIDifficulty(2), --AI_DIFFICULTY_INSANE
}
return AiDifficulty
