local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class ItemIntegerField
local ItemIntegerField = {
    Level = 0x696C6576, --ITEM_IF_LEVEL
    NumberOfCharges = 0x69757365, --ITEM_IF_NUMBER_OF_CHARGES
    CooldownGroup = 0x69636964, --ITEM_IF_COOLDOWN_GROUP
    MaxHitPoints = 0x69687470, --ITEM_IF_MAX_HIT_POINTS
    HitPoints = 0x69687063, --ITEM_IF_HIT_POINTS
    Priority = 0x69707269, --ITEM_IF_PRIORITY
    ArmorType = 0x6961726D, --ITEM_IF_ARMOR_TYPE
    TintingColorRed = 0x69636C72, --ITEM_IF_TINTING_COLOR_RED
    TintingColorGreen = 0x69636C67, --ITEM_IF_TINTING_COLOR_GREEN
    TintingColorBlue = 0x69636C62, --ITEM_IF_TINTING_COLOR_BLUE
    TintingColorAlpha = 0x6963616C, --ITEM_IF_TINTING_COLOR_ALPHA
}

ItemIntegerField = converter(Native.ConvertItemIntegerField, ItemIntegerField)
return ItemIntegerField
