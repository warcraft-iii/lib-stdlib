local Native = require('lib.stdlib.native')

---@class RarityControl
local RarityControl = {
    Frequent = Native.ConvertRarityControl(0), --RARITY_FREQUENT
    Rare = Native.ConvertRarityControl(1), --RARITY_RARE
}
return RarityControl
