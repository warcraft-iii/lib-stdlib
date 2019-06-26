local Native = require('lib.stdlib.native')

---@class PlayerGameresult
local PlayerGameresult = {
    Victory = Native.ConvertPlayerGameResult(0), --PLAYER_GAME_RESULT_VICTORY
    Defeat = Native.ConvertPlayerGameResult(1), --PLAYER_GAME_RESULT_DEFEAT
    Tie = Native.ConvertPlayerGameResult(2), --PLAYER_GAME_RESULT_TIE
    Neutral = Native.ConvertPlayerGameResult(3), --PLAYER_GAME_RESULT_NEUTRAL
}
return PlayerGameresult
