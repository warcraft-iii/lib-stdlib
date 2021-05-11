local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class ItemStringField
local ItemStringField = {
    ModelUsed = 0x6966696C, --ITEM_SF_MODEL_USED
}

ItemStringField = converter(Native.ConvertItemStringField, ItemStringField)
return ItemStringField
