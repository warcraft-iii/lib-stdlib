local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class PlayerSlotState
local PlayerSlotState = {
    Empty = 0, --PLAYER_SLOT_STATE_EMPTY
    Playing = 1, --PLAYER_SLOT_STATE_PLAYING
    Left = 2, --PLAYER_SLOT_STATE_LEFT
}

PlayerSlotState = converter(Native.ConvertPlayerSlotState, PlayerSlotState)
return PlayerSlotState
