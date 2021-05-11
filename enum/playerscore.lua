local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class PlayerScore
local PlayerScore = {
    UnitsTrained = 0, --PLAYER_SCORE_UNITS_TRAINED
    UnitsKilled = 1, --PLAYER_SCORE_UNITS_KILLED
    StructBuilt = 2, --PLAYER_SCORE_STRUCT_BUILT
    StructRazed = 3, --PLAYER_SCORE_STRUCT_RAZED
    TechPercent = 4, --PLAYER_SCORE_TECH_PERCENT
    FoodMaxprod = 5, --PLAYER_SCORE_FOOD_MAXPROD
    FoodMaxused = 6, --PLAYER_SCORE_FOOD_MAXUSED
    HeroesKilled = 7, --PLAYER_SCORE_HEROES_KILLED
    ItemsGained = 8, --PLAYER_SCORE_ITEMS_GAINED
    MercsHired = 9, --PLAYER_SCORE_MERCS_HIRED
    GoldMinedTotal = 10, --PLAYER_SCORE_GOLD_MINED_TOTAL
    GoldMinedUpkeep = 11, --PLAYER_SCORE_GOLD_MINED_UPKEEP
    GoldLostUpkeep = 12, --PLAYER_SCORE_GOLD_LOST_UPKEEP
    GoldLostTax = 13, --PLAYER_SCORE_GOLD_LOST_TAX
    GoldGiven = 14, --PLAYER_SCORE_GOLD_GIVEN
    GoldReceived = 15, --PLAYER_SCORE_GOLD_RECEIVED
    LumberTotal = 16, --PLAYER_SCORE_LUMBER_TOTAL
    LumberLostUpkeep = 17, --PLAYER_SCORE_LUMBER_LOST_UPKEEP
    LumberLostTax = 18, --PLAYER_SCORE_LUMBER_LOST_TAX
    LumberGiven = 19, --PLAYER_SCORE_LUMBER_GIVEN
    LumberReceived = 20, --PLAYER_SCORE_LUMBER_RECEIVED
    UnitTotal = 21, --PLAYER_SCORE_UNIT_TOTAL
    HeroTotal = 22, --PLAYER_SCORE_HERO_TOTAL
    ResourceTotal = 23, --PLAYER_SCORE_RESOURCE_TOTAL
    Total = 24, --PLAYER_SCORE_TOTAL
}

PlayerScore = converter(Native.ConvertPlayerScore, PlayerScore)
return PlayerScore
