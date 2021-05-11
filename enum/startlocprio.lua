local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class StartLocprio
local StartLocprio = {
    Low = 0, --MAP_LOC_PRIO_LOW
    High = 1, --MAP_LOC_PRIO_HIGH
    Not = 2, --MAP_LOC_PRIO_NOT
}

StartLocprio = converter(Native.ConvertStartLocPrio, StartLocprio)
return StartLocprio
