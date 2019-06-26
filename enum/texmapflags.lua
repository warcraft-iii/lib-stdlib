local Native = require('lib.stdlib.native')

---@class TexmapFlags
local TexmapFlags = {
    None = Native.ConvertTexMapFlags(0), --TEXMAP_FLAG_NONE
    WrapU = Native.ConvertTexMapFlags(1), --TEXMAP_FLAG_WRAP_U
    WrapV = Native.ConvertTexMapFlags(2), --TEXMAP_FLAG_WRAP_V
    WrapUv = Native.ConvertTexMapFlags(3), --TEXMAP_FLAG_WRAP_UV
}
return TexmapFlags
