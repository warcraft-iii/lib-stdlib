local Native = require('lib.stdlib.native')

---@class MapFlag
local MapFlag = {
    FogHideTerrain = Native.ConvertMapFlag(1), --MAP_FOG_HIDE_TERRAIN
    FogMapExplored = Native.ConvertMapFlag(2), --MAP_FOG_MAP_EXPLORED
    FogAlwaysVisible = Native.ConvertMapFlag(4), --MAP_FOG_ALWAYS_VISIBLE
    UseHandicaps = Native.ConvertMapFlag(8), --MAP_USE_HANDICAPS
    Observers = Native.ConvertMapFlag(16), --MAP_OBSERVERS
    ObserversOnDeath = Native.ConvertMapFlag(32), --MAP_OBSERVERS_ON_DEATH
    FixedColors = Native.ConvertMapFlag(128), --MAP_FIXED_COLORS
    LockResourceTrading = Native.ConvertMapFlag(256), --MAP_LOCK_RESOURCE_TRADING
    ResourceTradingAlliesOnly = Native.ConvertMapFlag(512), --MAP_RESOURCE_TRADING_ALLIES_ONLY
    LockAllianceChanges = Native.ConvertMapFlag(1024), --MAP_LOCK_ALLIANCE_CHANGES
    AllianceChangesHidden = Native.ConvertMapFlag(2048), --MAP_ALLIANCE_CHANGES_HIDDEN
    Cheats = Native.ConvertMapFlag(4096), --MAP_CHEATS
    CheatsHidden = Native.ConvertMapFlag(8192), --MAP_CHEATS_HIDDEN
    LockSpeed = Native.ConvertMapFlag(8192*2), --MAP_LOCK_SPEED
    LockRandomSeed = Native.ConvertMapFlag(8192*4), --MAP_LOCK_RANDOM_SEED
    SharedAdvancedControl = Native.ConvertMapFlag(8192*8), --MAP_SHARED_ADVANCED_CONTROL
    RandomHero = Native.ConvertMapFlag(8192*16), --MAP_RANDOM_HERO
    RandomRaces = Native.ConvertMapFlag(8192*32), --MAP_RANDOM_RACES
    Reloaded = Native.ConvertMapFlag(8192*64), --MAP_RELOADED
}
return MapFlag
