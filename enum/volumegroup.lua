local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class VolumeGroup
local VolumeGroup = {
    Unitmovement = 0, --SOUND_VOLUMEGROUP_UNITMOVEMENT
    Unitsounds = 1, --SOUND_VOLUMEGROUP_UNITSOUNDS
    Combat = 2, --SOUND_VOLUMEGROUP_COMBAT
    Spells = 3, --SOUND_VOLUMEGROUP_SPELLS
    Ui = 4, --SOUND_VOLUMEGROUP_UI
    Music = 5, --SOUND_VOLUMEGROUP_MUSIC
    Ambientsounds = 6, --SOUND_VOLUMEGROUP_AMBIENTSOUNDS
    Fire = 7, --SOUND_VOLUMEGROUP_FIRE
}

VolumeGroup = converter(Native.ConvertVolumeGroup, VolumeGroup)
return VolumeGroup
