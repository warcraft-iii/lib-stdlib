local Native = require('lib.stdlib.native')

---@class StartLocprio
local StartLocprio = {
    Low = Native.ConvertStartLocPrio(0), --MAP_LOC_PRIO_LOW
    High = Native.ConvertStartLocPrio(1), --MAP_LOC_PRIO_HIGH
    Not = Native.ConvertStartLocPrio(2), --MAP_LOC_PRIO_NOT
}
return StartLocprio
