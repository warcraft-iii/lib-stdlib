local Native = require('lib.stdlib.native')

---@class FGameState
local FGameState = {
    TimeOfDay = Native.ConvertFGameState(2), --GAME_STATE_TIME_OF_DAY
}
return FGameState
