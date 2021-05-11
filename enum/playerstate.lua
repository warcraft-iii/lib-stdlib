local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class PlayerState
local PlayerState = {
    GameResult = 0, --PLAYER_STATE_GAME_RESULT
    ResourceGold = 1, --PLAYER_STATE_RESOURCE_GOLD
    ResourceLumber = 2, --PLAYER_STATE_RESOURCE_LUMBER
    ResourceHeroTokens = 3, --PLAYER_STATE_RESOURCE_HERO_TOKENS
    ResourceFoodCap = 4, --PLAYER_STATE_RESOURCE_FOOD_CAP
    ResourceFoodUsed = 5, --PLAYER_STATE_RESOURCE_FOOD_USED
    FoodCapCeiling = 6, --PLAYER_STATE_FOOD_CAP_CEILING
    GivesBounty = 7, --PLAYER_STATE_GIVES_BOUNTY
    AlliedVictory = 8, --PLAYER_STATE_ALLIED_VICTORY
    Placed = 9, --PLAYER_STATE_PLACED
    ObserverOnDeath = 10, --PLAYER_STATE_OBSERVER_ON_DEATH
    Observer = 11, --PLAYER_STATE_OBSERVER
    Unfollowable = 12, --PLAYER_STATE_UNFOLLOWABLE
    GoldUpkeepRate = 13, --PLAYER_STATE_GOLD_UPKEEP_RATE
    LumberUpkeepRate = 14, --PLAYER_STATE_LUMBER_UPKEEP_RATE
    GoldGathered = 15, --PLAYER_STATE_GOLD_GATHERED
    LumberGathered = 16, --PLAYER_STATE_LUMBER_GATHERED
    NoCreepSleep = 25, --PLAYER_STATE_NO_CREEP_SLEEP
}

PlayerState = converter(Native.ConvertPlayerState, PlayerState)
return PlayerState
