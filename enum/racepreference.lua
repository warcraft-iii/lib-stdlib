local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class RacePreference
local RacePreference = {
    Human = 1, --RACE_PREF_HUMAN
    Orc = 2, --RACE_PREF_ORC
    Nightelf = 4, --RACE_PREF_NIGHTELF
    Undead = 8, --RACE_PREF_UNDEAD
    Demon = 16, --RACE_PREF_DEMON
    Random = 32, --RACE_PREF_RANDOM
    UserSelectable = 64, --RACE_PREF_USER_SELECTABLE
}

RacePreference = converter(Native.ConvertRacePref, RacePreference)
return RacePreference
