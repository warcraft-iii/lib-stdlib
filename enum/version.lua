local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class Version
local Version = {
    ReignOfChaos = 0, --VERSION_REIGN_OF_CHAOS
    FrozenThrone = 1, --VERSION_FROZEN_THRONE
}

Version = converter(Native.ConvertVersion, Version)
return Version
