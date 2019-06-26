local Native = require('lib.stdlib.native')

---@class ItemIntegerField
local ItemIntegerField = {
    Level = Native.ConvertItemIntegerField(0x696C6576), --ITEM_IF_LEVEL
    NumberOfCharges = Native.ConvertItemIntegerField(0x69757365), --ITEM_IF_NUMBER_OF_CHARGES
    CooldownGroup = Native.ConvertItemIntegerField(0x69636964), --ITEM_IF_COOLDOWN_GROUP
    MaxHitPoints = Native.ConvertItemIntegerField(0x69687470), --ITEM_IF_MAX_HIT_POINTS
    HitPoints = Native.ConvertItemIntegerField(0x69687063), --ITEM_IF_HIT_POINTS
    Priority = Native.ConvertItemIntegerField(0x69707269), --ITEM_IF_PRIORITY
    ArmorType = Native.ConvertItemIntegerField(0x6961726D), --ITEM_IF_ARMOR_TYPE
    TintingColorRed = Native.ConvertItemIntegerField(0x69636C72), --ITEM_IF_TINTING_COLOR_RED
    TintingColorGreen = Native.ConvertItemIntegerField(0x69636C67), --ITEM_IF_TINTING_COLOR_GREEN
    TintingColorBlue = Native.ConvertItemIntegerField(0x69636C62), --ITEM_IF_TINTING_COLOR_BLUE
    TintingColorAlpha = Native.ConvertItemIntegerField(0x6963616C), --ITEM_IF_TINTING_COLOR_ALPHA
}
return ItemIntegerField
