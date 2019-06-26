local Native = require('lib.stdlib.native')

---@class ItemRealField
local ItemRealField = {
    ScalingValue = Native.ConvertItemRealField(0x69736361), --ITEM_RF_SCALING_VALUE
}
return ItemRealField
