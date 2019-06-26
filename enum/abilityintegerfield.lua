local Native = require('lib.stdlib.native')

---@class AbilityIntegerField
local AbilityIntegerField = {
    ButtonPositionNormalX = Native.ConvertAbilityIntegerField(0x61627078), --ABILITY_IF_BUTTON_POSITION_NORMAL_X
    ButtonPositionNormalY = Native.ConvertAbilityIntegerField(0x61627079), --ABILITY_IF_BUTTON_POSITION_NORMAL_Y
    ButtonPositionActivatedX = Native.ConvertAbilityIntegerField(0x61756278), --ABILITY_IF_BUTTON_POSITION_ACTIVATED_X
    ButtonPositionActivatedY = Native.ConvertAbilityIntegerField(0x61756279), --ABILITY_IF_BUTTON_POSITION_ACTIVATED_Y
    ButtonPositionResearchX = Native.ConvertAbilityIntegerField(0x61727078), --ABILITY_IF_BUTTON_POSITION_RESEARCH_X
    ButtonPositionResearchY = Native.ConvertAbilityIntegerField(0x61727079), --ABILITY_IF_BUTTON_POSITION_RESEARCH_Y
    MissileSpeed = Native.ConvertAbilityIntegerField(0x616D7370), --ABILITY_IF_MISSILE_SPEED
    TargetAttachments = Native.ConvertAbilityIntegerField(0x61746163), --ABILITY_IF_TARGET_ATTACHMENTS
    CasterAttachments = Native.ConvertAbilityIntegerField(0x61636163), --ABILITY_IF_CASTER_ATTACHMENTS
    Priority = Native.ConvertAbilityIntegerField(0x61707269), --ABILITY_IF_PRIORITY
    Levels = Native.ConvertAbilityIntegerField(0x616C6576), --ABILITY_IF_LEVELS
    RequiredLevel = Native.ConvertAbilityIntegerField(0x61726C76), --ABILITY_IF_REQUIRED_LEVEL
    LevelSkipRequirement = Native.ConvertAbilityIntegerField(0x616C736B), --ABILITY_IF_LEVEL_SKIP_REQUIREMENT
}
return AbilityIntegerField
