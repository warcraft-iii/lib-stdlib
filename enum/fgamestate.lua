local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class FGameState
local FGameState = {
    TimeOfDay = 2, --GAME_STATE_TIME_OF_DAY
}

FGameState = converter(Native.ConvertFGameState, FGameState)
return FGameState
