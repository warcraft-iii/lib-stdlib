local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class BlendMode
local BlendMode = {
    None = 0, --BLEND_MODE_NONE
    DontCare = 0, --BLEND_MODE_DONT_CARE
    Keyalpha = 1, --BLEND_MODE_KEYALPHA
    Blend = 2, --BLEND_MODE_BLEND
    Additive = 3, --BLEND_MODE_ADDITIVE
    Modulate = 4, --BLEND_MODE_MODULATE
    Modulate2X = 5, --BLEND_MODE_MODULATE_2X
}

BlendMode = converter(Native.ConvertBlendMode, BlendMode)
return BlendMode
