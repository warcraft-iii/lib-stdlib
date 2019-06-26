local Native = require('lib.stdlib.native')

---@class Race
local Race = {
    Human = Native.ConvertRace(1), --RACE_HUMAN
    Orc = Native.ConvertRace(2), --RACE_ORC
    Undead = Native.ConvertRace(3), --RACE_UNDEAD
    Nightelf = Native.ConvertRace(4), --RACE_NIGHTELF
    Demon = Native.ConvertRace(5), --RACE_DEMON
    Other = Native.ConvertRace(7), --RACE_OTHER
}
return Race
