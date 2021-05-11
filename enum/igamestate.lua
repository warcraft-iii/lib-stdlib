local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class IGameState
local IGameState = {
    VineIntervention = 0, --GAME_STATE_DIVINE_INTERVENTION
    Sconnected = 1, --GAME_STATE_DISCONNECTED
}

IGameState = converter(Native.ConvertIGameState, IGameState)
return IGameState
