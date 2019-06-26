local Native = require('lib.stdlib.native')

---@class Version
local Version = {
    ReignOfChaos = Native.ConvertVersion(0), --VERSION_REIGN_OF_CHAOS
    FrozenThrone = Native.ConvertVersion(1), --VERSION_FROZEN_THRONE
}
return Version
