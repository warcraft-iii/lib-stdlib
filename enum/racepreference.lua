local Native = require('lib.stdlib.native')

---@class RacePreference
local RacePreference = {
    Human = Native.ConvertRacePref(1), --RACE_PREF_HUMAN
    Orc = Native.ConvertRacePref(2), --RACE_PREF_ORC
    Nightelf = Native.ConvertRacePref(4), --RACE_PREF_NIGHTELF
    Undead = Native.ConvertRacePref(8), --RACE_PREF_UNDEAD
    Demon = Native.ConvertRacePref(16), --RACE_PREF_DEMON
    Random = Native.ConvertRacePref(32), --RACE_PREF_RANDOM
    UserSelectable = Native.ConvertRacePref(64), --RACE_PREF_USER_SELECTABLE
}
return RacePreference
