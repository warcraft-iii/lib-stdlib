local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class GameType
local GameType = {
    Melee = 1, --GAME_TYPE_MELEE
    Ffa = 2, --GAME_TYPE_FFA
    UseMapSettings = 4, --GAME_TYPE_USE_MAP_SETTINGS
    Bliz = 8, --GAME_TYPE_BLIZ
    OneOnOne = 16, --GAME_TYPE_ONE_ON_ONE
    TwoTeamPlay = 32, --GAME_TYPE_TWO_TEAM_PLAY
    ThreeTeamPlay = 64, --GAME_TYPE_THREE_TEAM_PLAY
    FourTeamPlay = 128, --GAME_TYPE_FOUR_TEAM_PLAY
}

GameType = converter(Native.ConvertGameType, GameType)
return GameType
