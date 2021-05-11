local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class UnitStringField
local UnitStringField = {
    Name = 0x756E616D, --UNIT_SF_NAME
    ProperNames = 0x7570726F, --UNIT_SF_PROPER_NAMES
    GroundTexture = 0x75756273, --UNIT_SF_GROUND_TEXTURE
    ShadowImageUnit = 0x75736875, --UNIT_SF_SHADOW_IMAGE_UNIT
}

UnitStringField = converter(Native.ConvertUnitStringField, UnitStringField)
return UnitStringField
