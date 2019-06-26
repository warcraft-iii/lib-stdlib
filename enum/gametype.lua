local Native = require('lib.stdlib.native')

---@class GameType
local GameType = {
    Melee = Native.ConvertGameType(1), --GAME_TYPE_MELEE
    Ffa = Native.ConvertGameType(2), --GAME_TYPE_FFA
    UseMapSettings = Native.ConvertGameType(4), --GAME_TYPE_USE_MAP_SETTINGS
    Bliz = Native.ConvertGameType(8), --GAME_TYPE_BLIZ
    OneOnOne = Native.ConvertGameType(16), --GAME_TYPE_ONE_ON_ONE
    TwoTeamPlay = Native.ConvertGameType(32), --GAME_TYPE_TWO_TEAM_PLAY
    ThreeTeamPlay = Native.ConvertGameType(64), --GAME_TYPE_THREE_TEAM_PLAY
    FourTeamPlay = Native.ConvertGameType(128), --GAME_TYPE_FOUR_TEAM_PLAY
}
return GameType
