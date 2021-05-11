local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class UnitState
local UnitState = {
    Life = 0, --UNIT_STATE_LIFE
    MaxLife = 1, --UNIT_STATE_MAX_LIFE
    Mana = 2, --UNIT_STATE_MANA
    MaxMana = 3, --UNIT_STATE_MAX_MANA
}

UnitState = converter(Native.ConvertUnitState, UnitState)
return UnitState
