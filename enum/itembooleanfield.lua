local Native = require('lib.stdlib.native')

---@class ItemBooleanField
local ItemBooleanField = {
    DroppedWhenCarrierDies = Native.ConvertItemBooleanField(0x69647270), --ITEM_BF_DROPPED_WHEN_CARRIER_DIES
    CanBeDropped = Native.ConvertItemBooleanField(0x6964726F), --ITEM_BF_CAN_BE_DROPPED
    Perishable = Native.ConvertItemBooleanField(0x69706572), --ITEM_BF_PERISHABLE
    IncludeAsRandomChoice = Native.ConvertItemBooleanField(0x6970726E), --ITEM_BF_INCLUDE_AS_RANDOM_CHOICE
    UseAutomaticallyWhenAcquired = Native.ConvertItemBooleanField(0x69706F77), --ITEM_BF_USE_AUTOMATICALLY_WHEN_ACQUIRED
    CanBeSoldToMerchants = Native.ConvertItemBooleanField(0x69706177), --ITEM_BF_CAN_BE_SOLD_TO_MERCHANTS
    ActivelyUsed = Native.ConvertItemBooleanField(0x69757361), --ITEM_BF_ACTIVELY_USED
}
return ItemBooleanField
