local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class MapFlag
local MapFlag = {
    FogHideTerrain = 1, --MAP_FOG_HIDE_TERRAIN
    FogMapExplored = 2, --MAP_FOG_MAP_EXPLORED
    FogAlwaysVisible = 4, --MAP_FOG_ALWAYS_VISIBLE
    UseHandicaps = 8, --MAP_USE_HANDICAPS
    Observers = 16, --MAP_OBSERVERS
    ObserversOnDeath = 32, --MAP_OBSERVERS_ON_DEATH
    FixedColors = 128, --MAP_FIXED_COLORS
    LockResourceTrading = 256, --MAP_LOCK_RESOURCE_TRADING
    ResourceTradingAlliesOnly = 512, --MAP_RESOURCE_TRADING_ALLIES_ONLY
    LockAllianceChanges = 1024, --MAP_LOCK_ALLIANCE_CHANGES
    AllianceChangesHidden = 2048, --MAP_ALLIANCE_CHANGES_HIDDEN
    Cheats = 4096, --MAP_CHEATS
    CheatsHidden = 8192, --MAP_CHEATS_HIDDEN
    LockSpeed = 8192*2, --MAP_LOCK_SPEED
    LockRandomSeed = 8192*4, --MAP_LOCK_RANDOM_SEED
    SharedAdvancedControl = 8192*8, --MAP_SHARED_ADVANCED_CONTROL
    RandomHero = 8192*16, --MAP_RANDOM_HERO
    RandomRaces = 8192*32, --MAP_RANDOM_RACES
    Reloaded = 8192*64, --MAP_RELOADED
}

MapFlag = converter(Native.ConvertMapFlag, MapFlag)
return MapFlag
