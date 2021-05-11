local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class AbilityIntegerField
local AbilityIntegerField = {
    ButtonPositionNormalX = 0x61627078, --ABILITY_IF_BUTTON_POSITION_NORMAL_X
    ButtonPositionNormalY = 0x61627079, --ABILITY_IF_BUTTON_POSITION_NORMAL_Y
    ButtonPositionActivatedX = 0x61756278, --ABILITY_IF_BUTTON_POSITION_ACTIVATED_X
    ButtonPositionActivatedY = 0x61756279, --ABILITY_IF_BUTTON_POSITION_ACTIVATED_Y
    ButtonPositionResearchX = 0x61727078, --ABILITY_IF_BUTTON_POSITION_RESEARCH_X
    ButtonPositionResearchY = 0x61727079, --ABILITY_IF_BUTTON_POSITION_RESEARCH_Y
    MissileSpeed = 0x616D7370, --ABILITY_IF_MISSILE_SPEED
    TargetAttachments = 0x61746163, --ABILITY_IF_TARGET_ATTACHMENTS
    CasterAttachments = 0x61636163, --ABILITY_IF_CASTER_ATTACHMENTS
    Priority = 0x61707269, --ABILITY_IF_PRIORITY
    Levels = 0x616C6576, --ABILITY_IF_LEVELS
    RequiredLevel = 0x61726C76, --ABILITY_IF_REQUIRED_LEVEL
    LevelSkipRequirement = 0x616C736B, --ABILITY_IF_LEVEL_SKIP_REQUIREMENT
}

AbilityIntegerField = converter(Native.ConvertAbilityIntegerField, AbilityIntegerField)
return AbilityIntegerField
