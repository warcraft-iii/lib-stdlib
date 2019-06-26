local Native = require('lib.stdlib.native')

---@class ItemType
local ItemType = {
    Permanent = Native.ConvertItemType(0), --ITEM_TYPE_PERMANENT
    Charged = Native.ConvertItemType(1), --ITEM_TYPE_CHARGED
    Powerup = Native.ConvertItemType(2), --ITEM_TYPE_POWERUP
    Artifact = Native.ConvertItemType(3), --ITEM_TYPE_ARTIFACT
    Purchasable = Native.ConvertItemType(4), --ITEM_TYPE_PURCHASABLE
    Campaign = Native.ConvertItemType(5), --ITEM_TYPE_CAMPAIGN
    Miscellaneous = Native.ConvertItemType(6), --ITEM_TYPE_MISCELLANEOUS
    Unknown = Native.ConvertItemType(7), --ITEM_TYPE_UNKNOWN
    Any = Native.ConvertItemType(8), --ITEM_TYPE_ANY
    Tome = Native.ConvertItemType(2), --ITEM_TYPE_TOME
}
return ItemType
