local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class Race
local Race = {
    Human = 1, --RACE_HUMAN
    Orc = 2, --RACE_ORC
    Undead = 3, --RACE_UNDEAD
    Nightelf = 4, --RACE_NIGHTELF
    Demon = 5, --RACE_DEMON
    Other = 7, --RACE_OTHER
}

Race = converter(Native.ConvertRace, Race)
return Race
