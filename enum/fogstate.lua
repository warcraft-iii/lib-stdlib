local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class FogState
local FogState = {
    Masked = 1, --FOG_OF_WAR_MASKED
    Fogged = 2, --FOG_OF_WAR_FOGGED
    Visible = 4, --FOG_OF_WAR_VISIBLE
}

FogState = converter(Native.ConvertFogState, FogState)
return FogState
