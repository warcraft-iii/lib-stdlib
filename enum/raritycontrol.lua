local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class RarityControl
local RarityControl = {
    Frequent = 0, --RARITY_FREQUENT
    Rare = 1, --RARITY_RARE
}

RarityControl = converter(Native.ConvertRarityControl, RarityControl)
return RarityControl
