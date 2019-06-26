local Native = require('lib.stdlib.native')

---@class AllianceType
local AllianceType = {
    Passive = Native.ConvertAllianceType(0), --ALLIANCE_PASSIVE
    HelpRequest = Native.ConvertAllianceType(1), --ALLIANCE_HELP_REQUEST
    HelpResponse = Native.ConvertAllianceType(2), --ALLIANCE_HELP_RESPONSE
    SharedXp = Native.ConvertAllianceType(3), --ALLIANCE_SHARED_XP
    SharedSpells = Native.ConvertAllianceType(4), --ALLIANCE_SHARED_SPELLS
    SharedVision = Native.ConvertAllianceType(5), --ALLIANCE_SHARED_VISION
    SharedControl = Native.ConvertAllianceType(6), --ALLIANCE_SHARED_CONTROL
    SharedAdvancedControl = Native.ConvertAllianceType(7), --ALLIANCE_SHARED_ADVANCED_CONTROL
    Rescuable = Native.ConvertAllianceType(8), --ALLIANCE_RESCUABLE
    SharedVisionForced = Native.ConvertAllianceType(9), --ALLIANCE_SHARED_VISION_FORCED
}
return AllianceType
