local Native = require('lib.stdlib.native')

---@class UnitStringField
local UnitStringField = {
    Name = Native.ConvertUnitStringField(0x756E616D), --UNIT_SF_NAME
    ProperNames = Native.ConvertUnitStringField(0x7570726F), --UNIT_SF_PROPER_NAMES
    GroundTexture = Native.ConvertUnitStringField(0x75756273), --UNIT_SF_GROUND_TEXTURE
    ShadowImageUnit = Native.ConvertUnitStringField(0x75736875), --UNIT_SF_SHADOW_IMAGE_UNIT
}
return UnitStringField
