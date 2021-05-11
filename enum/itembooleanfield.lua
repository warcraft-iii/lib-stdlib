local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class ItemBooleanField
local ItemBooleanField = {
    DroppedWhenCarrierDies = 0x69647270, --ITEM_BF_DROPPED_WHEN_CARRIER_DIES
    CanBeDropped = 0x6964726F, --ITEM_BF_CAN_BE_DROPPED
    Perishable = 0x69706572, --ITEM_BF_PERISHABLE
    IncludeAsRandomChoice = 0x6970726E, --ITEM_BF_INCLUDE_AS_RANDOM_CHOICE
    UseAutomaticallyWhenAcquired = 0x69706F77, --ITEM_BF_USE_AUTOMATICALLY_WHEN_ACQUIRED
    CanBeSoldToMerchants = 0x69706177, --ITEM_BF_CAN_BE_SOLD_TO_MERCHANTS
    ActivelyUsed = 0x69757361, --ITEM_BF_ACTIVELY_USED
}

ItemBooleanField = converter(Native.ConvertItemBooleanField, ItemBooleanField)
return ItemBooleanField
