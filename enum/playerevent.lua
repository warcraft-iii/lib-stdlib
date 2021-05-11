local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class PlayerEvent
local PlayerEvent = {
    StateLimit = 11, --EVENT_PLAYER_STATE_LIMIT
    AllianceChanged = 12, --EVENT_PLAYER_ALLIANCE_CHANGED
    Defeat = 13, --EVENT_PLAYER_DEFEAT
    Victory = 14, --EVENT_PLAYER_VICTORY
    Leave = 15, --EVENT_PLAYER_LEAVE
    Chat = 16, --EVENT_PLAYER_CHAT
    EndCinematic = 17, --EVENT_PLAYER_END_CINEMATIC
    ArrowLeftDown = 261, --EVENT_PLAYER_ARROW_LEFT_DOWN
    ArrowLeftUp = 262, --EVENT_PLAYER_ARROW_LEFT_UP
    ArrowRightDown = 263, --EVENT_PLAYER_ARROW_RIGHT_DOWN
    ArrowRightUp = 264, --EVENT_PLAYER_ARROW_RIGHT_UP
    ArrowDownDown = 265, --EVENT_PLAYER_ARROW_DOWN_DOWN
    ArrowDownUp = 266, --EVENT_PLAYER_ARROW_DOWN_UP
    ArrowUpDown = 267, --EVENT_PLAYER_ARROW_UP_DOWN
    ArrowUpUp = 268, --EVENT_PLAYER_ARROW_UP_UP
    MouseDown = 305, --EVENT_PLAYER_MOUSE_DOWN
    MouseUp = 306, --EVENT_PLAYER_MOUSE_UP
    MouseMove = 307, --EVENT_PLAYER_MOUSE_MOVE
    SyncData = 309, --EVENT_PLAYER_SYNC_DATA
    Key = 311, --EVENT_PLAYER_KEY
    KeyDown = 312, --EVENT_PLAYER_KEY_DOWN
    KeyUp = 313, --EVENT_PLAYER_KEY_UP
}

PlayerEvent = converter(Native.ConvertPlayerEvent, PlayerEvent)
return PlayerEvent
