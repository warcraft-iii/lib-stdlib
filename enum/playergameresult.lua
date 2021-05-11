local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class PlayerGameResult
local PlayerGameResult = {
    Victory = 0, --PLAYER_GAME_RESULT_VICTORY
    Defeat = 1, --PLAYER_GAME_RESULT_DEFEAT
    Tie = 2, --PLAYER_GAME_RESULT_TIE
    Neutral = 3, --PLAYER_GAME_RESULT_NEUTRAL
}

PlayerGameResult = converter(Native.ConvertPlayerGameResult, PlayerGameResult)
return PlayerGameResult
