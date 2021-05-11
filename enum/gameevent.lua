local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class GameEvent
local GameEvent = {
    Victory = 0, --EVENT_GAME_VICTORY
    EndLevel = 1, --EVENT_GAME_END_LEVEL
    VariableLimit = 2, --EVENT_GAME_VARIABLE_LIMIT
    StateLimit = 3, --EVENT_GAME_STATE_LIMIT
    TimerExpired = 4, --EVENT_GAME_TIMER_EXPIRED
    EnterRegion = 5, --EVENT_GAME_ENTER_REGION
    LeaveRegion = 6, --EVENT_GAME_LEAVE_REGION
    TrackableHit = 7, --EVENT_GAME_TRACKABLE_HIT
    TrackableTrack = 8, --EVENT_GAME_TRACKABLE_TRACK
    ShowSkill = 9, --EVENT_GAME_SHOW_SKILL
    BuildSubmenu = 10, --EVENT_GAME_BUILD_SUBMENU
    Loaded = 256, --EVENT_GAME_LOADED
    TournamentFinishSoon = 257, --EVENT_GAME_TOURNAMENT_FINISH_SOON
    TournamentFinishNow = 258, --EVENT_GAME_TOURNAMENT_FINISH_NOW
    Save = 259, --EVENT_GAME_SAVE
    CustomUiFrame = 310, --EVENT_GAME_CUSTOM_UI_FRAME
}

GameEvent = converter(Native.ConvertGameEvent, GameEvent)
return GameEvent
