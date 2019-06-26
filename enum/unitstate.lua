local Native = require('lib.stdlib.native')

---@class UnitState
local UnitState = {
    Life = Native.ConvertUnitState(0), --UNIT_STATE_LIFE
    MaxLife = Native.ConvertUnitState(1), --UNIT_STATE_MAX_LIFE
    Mana = Native.ConvertUnitState(2), --UNIT_STATE_MANA
    MaxMana = Native.ConvertUnitState(3), --UNIT_STATE_MAX_MANA
}
return UnitState
