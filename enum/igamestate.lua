local Native = require('lib.stdlib.native')

---@class IGameState
local IGameState = {
    VineIntervention = Native.ConvertIGameState(0), --GAME_STATE_DIVINE_INTERVENTION
    Sconnected = Native.ConvertIGameState(1), --GAME_STATE_DISCONNECTED
}
return IGameState
