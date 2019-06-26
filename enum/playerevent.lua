local Native = require('lib.stdlib.native')

---@class PlayerEvent
local PlayerEvent = {
    StateLimit = Native.ConvertPlayerEvent(11), --EVENT_PLAYER_STATE_LIMIT
    AllianceChanged = Native.ConvertPlayerEvent(12), --EVENT_PLAYER_ALLIANCE_CHANGED
    Defeat = Native.ConvertPlayerEvent(13), --EVENT_PLAYER_DEFEAT
    Victory = Native.ConvertPlayerEvent(14), --EVENT_PLAYER_VICTORY
    Leave = Native.ConvertPlayerEvent(15), --EVENT_PLAYER_LEAVE
    Chat = Native.ConvertPlayerEvent(16), --EVENT_PLAYER_CHAT
    EndCinematic = Native.ConvertPlayerEvent(17), --EVENT_PLAYER_END_CINEMATIC
    ArrowLeftDown = Native.ConvertPlayerEvent(261), --EVENT_PLAYER_ARROW_LEFT_DOWN
    ArrowLeftUp = Native.ConvertPlayerEvent(262), --EVENT_PLAYER_ARROW_LEFT_UP
    ArrowRightDown = Native.ConvertPlayerEvent(263), --EVENT_PLAYER_ARROW_RIGHT_DOWN
    ArrowRightUp = Native.ConvertPlayerEvent(264), --EVENT_PLAYER_ARROW_RIGHT_UP
    ArrowDownDown = Native.ConvertPlayerEvent(265), --EVENT_PLAYER_ARROW_DOWN_DOWN
    ArrowDownUp = Native.ConvertPlayerEvent(266), --EVENT_PLAYER_ARROW_DOWN_UP
    ArrowUpDown = Native.ConvertPlayerEvent(267), --EVENT_PLAYER_ARROW_UP_DOWN
    ArrowUpUp = Native.ConvertPlayerEvent(268), --EVENT_PLAYER_ARROW_UP_UP
    MouseDown = Native.ConvertPlayerEvent(305), --EVENT_PLAYER_MOUSE_DOWN
    MouseUp = Native.ConvertPlayerEvent(306), --EVENT_PLAYER_MOUSE_UP
    MouseMove = Native.ConvertPlayerEvent(307), --EVENT_PLAYER_MOUSE_MOVE
    SyncData = Native.ConvertPlayerEvent(309), --EVENT_PLAYER_SYNC_DATA
    Key = Native.ConvertPlayerEvent(311), --EVENT_PLAYER_KEY
    KeyDown = Native.ConvertPlayerEvent(312), --EVENT_PLAYER_KEY_DOWN
    KeyUp = Native.ConvertPlayerEvent(313), --EVENT_PLAYER_KEY_UP
}
return PlayerEvent
