local Native = require('lib.stdlib.native')

---@class PlayerScore
local PlayerScore = {
    UnitsTrained = Native.ConvertPlayerScore(0), --PLAYER_SCORE_UNITS_TRAINED
    UnitsKilled = Native.ConvertPlayerScore(1), --PLAYER_SCORE_UNITS_KILLED
    StructBuilt = Native.ConvertPlayerScore(2), --PLAYER_SCORE_STRUCT_BUILT
    StructRazed = Native.ConvertPlayerScore(3), --PLAYER_SCORE_STRUCT_RAZED
    TechPercent = Native.ConvertPlayerScore(4), --PLAYER_SCORE_TECH_PERCENT
    FoodMaxprod = Native.ConvertPlayerScore(5), --PLAYER_SCORE_FOOD_MAXPROD
    FoodMaxused = Native.ConvertPlayerScore(6), --PLAYER_SCORE_FOOD_MAXUSED
    HeroesKilled = Native.ConvertPlayerScore(7), --PLAYER_SCORE_HEROES_KILLED
    ItemsGained = Native.ConvertPlayerScore(8), --PLAYER_SCORE_ITEMS_GAINED
    MercsHired = Native.ConvertPlayerScore(9), --PLAYER_SCORE_MERCS_HIRED
    GoldMinedTotal = Native.ConvertPlayerScore(10), --PLAYER_SCORE_GOLD_MINED_TOTAL
    GoldMinedUpkeep = Native.ConvertPlayerScore(11), --PLAYER_SCORE_GOLD_MINED_UPKEEP
    GoldLostUpkeep = Native.ConvertPlayerScore(12), --PLAYER_SCORE_GOLD_LOST_UPKEEP
    GoldLostTax = Native.ConvertPlayerScore(13), --PLAYER_SCORE_GOLD_LOST_TAX
    GoldGiven = Native.ConvertPlayerScore(14), --PLAYER_SCORE_GOLD_GIVEN
    GoldReceived = Native.ConvertPlayerScore(15), --PLAYER_SCORE_GOLD_RECEIVED
    LumberTotal = Native.ConvertPlayerScore(16), --PLAYER_SCORE_LUMBER_TOTAL
    LumberLostUpkeep = Native.ConvertPlayerScore(17), --PLAYER_SCORE_LUMBER_LOST_UPKEEP
    LumberLostTax = Native.ConvertPlayerScore(18), --PLAYER_SCORE_LUMBER_LOST_TAX
    LumberGiven = Native.ConvertPlayerScore(19), --PLAYER_SCORE_LUMBER_GIVEN
    LumberReceived = Native.ConvertPlayerScore(20), --PLAYER_SCORE_LUMBER_RECEIVED
    UnitTotal = Native.ConvertPlayerScore(21), --PLAYER_SCORE_UNIT_TOTAL
    HeroTotal = Native.ConvertPlayerScore(22), --PLAYER_SCORE_HERO_TOTAL
    ResourceTotal = Native.ConvertPlayerScore(23), --PLAYER_SCORE_RESOURCE_TOTAL
    Total = Native.ConvertPlayerScore(24), --PLAYER_SCORE_TOTAL
}
return PlayerScore
