local Native = require('lib.stdlib.native')

---@class PlayerState
local PlayerState = {
    GameResult = Native.ConvertPlayerState(0), --PLAYER_STATE_GAME_RESULT
    ResourceGold = Native.ConvertPlayerState(1), --PLAYER_STATE_RESOURCE_GOLD
    ResourceLumber = Native.ConvertPlayerState(2), --PLAYER_STATE_RESOURCE_LUMBER
    ResourceHeroTokens = Native.ConvertPlayerState(3), --PLAYER_STATE_RESOURCE_HERO_TOKENS
    ResourceFoodCap = Native.ConvertPlayerState(4), --PLAYER_STATE_RESOURCE_FOOD_CAP
    ResourceFoodUsed = Native.ConvertPlayerState(5), --PLAYER_STATE_RESOURCE_FOOD_USED
    FoodCapCeiling = Native.ConvertPlayerState(6), --PLAYER_STATE_FOOD_CAP_CEILING
    GivesBounty = Native.ConvertPlayerState(7), --PLAYER_STATE_GIVES_BOUNTY
    AlliedVictory = Native.ConvertPlayerState(8), --PLAYER_STATE_ALLIED_VICTORY
    Placed = Native.ConvertPlayerState(9), --PLAYER_STATE_PLACED
    ObserverOnDeath = Native.ConvertPlayerState(10), --PLAYER_STATE_OBSERVER_ON_DEATH
    Observer = Native.ConvertPlayerState(11), --PLAYER_STATE_OBSERVER
    Unfollowable = Native.ConvertPlayerState(12), --PLAYER_STATE_UNFOLLOWABLE
    GoldUpkeepRate = Native.ConvertPlayerState(13), --PLAYER_STATE_GOLD_UPKEEP_RATE
    LumberUpkeepRate = Native.ConvertPlayerState(14), --PLAYER_STATE_LUMBER_UPKEEP_RATE
    GoldGathered = Native.ConvertPlayerState(15), --PLAYER_STATE_GOLD_GATHERED
    LumberGathered = Native.ConvertPlayerState(16), --PLAYER_STATE_LUMBER_GATHERED
    NoCreepSleep = Native.ConvertPlayerState(25), --PLAYER_STATE_NO_CREEP_SLEEP
}
return PlayerState
