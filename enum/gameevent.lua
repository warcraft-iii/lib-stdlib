local Native = require('lib.stdlib.native')

---@class GameEvent
local GameEvent = {
    Victory = Native.ConvertGameEvent(0), --EVENT_GAME_VICTORY
    EndLevel = Native.ConvertGameEvent(1), --EVENT_GAME_END_LEVEL
    VariableLimit = Native.ConvertGameEvent(2), --EVENT_GAME_VARIABLE_LIMIT
    StateLimit = Native.ConvertGameEvent(3), --EVENT_GAME_STATE_LIMIT
    TimerExpired = Native.ConvertGameEvent(4), --EVENT_GAME_TIMER_EXPIRED
    EnterRegion = Native.ConvertGameEvent(5), --EVENT_GAME_ENTER_REGION
    LeaveRegion = Native.ConvertGameEvent(6), --EVENT_GAME_LEAVE_REGION
    TrackableHit = Native.ConvertGameEvent(7), --EVENT_GAME_TRACKABLE_HIT
    TrackableTrack = Native.ConvertGameEvent(8), --EVENT_GAME_TRACKABLE_TRACK
    ShowSkill = Native.ConvertGameEvent(9), --EVENT_GAME_SHOW_SKILL
    BuildSubmenu = Native.ConvertGameEvent(10), --EVENT_GAME_BUILD_SUBMENU
    Loaded = Native.ConvertGameEvent(256), --EVENT_GAME_LOADED
    TournamentFinishSoon = Native.ConvertGameEvent(257), --EVENT_GAME_TOURNAMENT_FINISH_SOON
    TournamentFinishNow = Native.ConvertGameEvent(258), --EVENT_GAME_TOURNAMENT_FINISH_NOW
    Save = Native.ConvertGameEvent(259), --EVENT_GAME_SAVE
    CustomUiFrame = Native.ConvertGameEvent(310), --EVENT_GAME_CUSTOM_UI_FRAME
}
return GameEvent
