local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class TexmapFlags
local TexmapFlags = {
    None = 0, --TEXMAP_FLAG_NONE
    WrapU = 1, --TEXMAP_FLAG_WRAP_U
    WrapV = 2, --TEXMAP_FLAG_WRAP_V
    WrapUv = 3, --TEXMAP_FLAG_WRAP_UV
}

TexmapFlags = converter(Native.ConvertTexMapFlags, TexmapFlags)
return TexmapFlags
