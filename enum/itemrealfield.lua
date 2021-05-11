local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class ItemRealField
local ItemRealField = {
    ScalingValue = 0x69736361, --ITEM_RF_SCALING_VALUE
}

ItemRealField = converter(Native.ConvertItemRealField, ItemRealField)
return ItemRealField
