local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class AllianceType
local AllianceType = {
    Passive = 0, --ALLIANCE_PASSIVE
    HelpRequest = 1, --ALLIANCE_HELP_REQUEST
    HelpResponse = 2, --ALLIANCE_HELP_RESPONSE
    SharedXp = 3, --ALLIANCE_SHARED_XP
    SharedSpells = 4, --ALLIANCE_SHARED_SPELLS
    SharedVision = 5, --ALLIANCE_SHARED_VISION
    SharedControl = 6, --ALLIANCE_SHARED_CONTROL
    SharedAdvancedControl = 7, --ALLIANCE_SHARED_ADVANCED_CONTROL
    Rescuable = 8, --ALLIANCE_RESCUABLE
    SharedVisionForced = 9, --ALLIANCE_SHARED_VISION_FORCED
}

AllianceType = converter(Native.ConvertAllianceType, AllianceType)
return AllianceType
