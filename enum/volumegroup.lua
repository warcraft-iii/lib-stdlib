local Native = require('lib.stdlib.native')

---@class VolumeGroup
local VolumeGroup = {
    Unitmovement = Native.ConvertVolumeGroup(0), --SOUND_VOLUMEGROUP_UNITMOVEMENT
    Unitsounds = Native.ConvertVolumeGroup(1), --SOUND_VOLUMEGROUP_UNITSOUNDS
    Combat = Native.ConvertVolumeGroup(2), --SOUND_VOLUMEGROUP_COMBAT
    Spells = Native.ConvertVolumeGroup(3), --SOUND_VOLUMEGROUP_SPELLS
    Ui = Native.ConvertVolumeGroup(4), --SOUND_VOLUMEGROUP_UI
    Music = Native.ConvertVolumeGroup(5), --SOUND_VOLUMEGROUP_MUSIC
    Ambientsounds = Native.ConvertVolumeGroup(6), --SOUND_VOLUMEGROUP_AMBIENTSOUNDS
    Fire = Native.ConvertVolumeGroup(7), --SOUND_VOLUMEGROUP_FIRE
}
return VolumeGroup
