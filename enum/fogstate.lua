local Native = require('lib.stdlib.native')

---@class FogState
local FogState = {
    Masked = Native.ConvertFogState(1), --FOG_OF_WAR_MASKED
    Fogged = Native.ConvertFogState(2), --FOG_OF_WAR_FOGGED
    Visible = Native.ConvertFogState(4), --FOG_OF_WAR_VISIBLE
}
return FogState
