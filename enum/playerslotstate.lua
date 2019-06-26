local Native = require('lib.stdlib.native')

---@class PlayerSlotState
local PlayerSlotState = {
    Empty = Native.ConvertPlayerSlotState(0), --PLAYER_SLOT_STATE_EMPTY
    Playing = Native.ConvertPlayerSlotState(1), --PLAYER_SLOT_STATE_PLAYING
    Left = Native.ConvertPlayerSlotState(2), --PLAYER_SLOT_STATE_LEFT
}
return PlayerSlotState
