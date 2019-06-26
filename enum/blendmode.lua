local Native = require('lib.stdlib.native')

---@class BlendMode
local BlendMode = {
    None = Native.ConvertBlendMode(0), --BLEND_MODE_NONE
    DontCare = Native.ConvertBlendMode(0), --BLEND_MODE_DONT_CARE
    Keyalpha = Native.ConvertBlendMode(1), --BLEND_MODE_KEYALPHA
    Blend = Native.ConvertBlendMode(2), --BLEND_MODE_BLEND
    Additive = Native.ConvertBlendMode(3), --BLEND_MODE_ADDITIVE
    Modulate = Native.ConvertBlendMode(4), --BLEND_MODE_MODULATE
    Modulate2X = Native.ConvertBlendMode(5), --BLEND_MODE_MODULATE_2X
}
return BlendMode
