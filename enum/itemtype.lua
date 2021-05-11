local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class ItemType
local ItemType = {
    Permanent = 0, --ITEM_TYPE_PERMANENT
    Charged = 1, --ITEM_TYPE_CHARGED
    Powerup = 2, --ITEM_TYPE_POWERUP
    Artifact = 3, --ITEM_TYPE_ARTIFACT
    Purchasable = 4, --ITEM_TYPE_PURCHASABLE
    Campaign = 5, --ITEM_TYPE_CAMPAIGN
    Miscellaneous = 6, --ITEM_TYPE_MISCELLANEOUS
    Unknown = 7, --ITEM_TYPE_UNKNOWN
    Any = 8, --ITEM_TYPE_ANY
    Tome = 2, --ITEM_TYPE_TOME
}

ItemType = converter(Native.ConvertItemType, ItemType)
return ItemType
