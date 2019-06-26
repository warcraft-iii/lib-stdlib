local Native = require('lib.stdlib.native')

---@class AbilityBooleanField
local AbilityBooleanField = {
    HeroAbility = Native.ConvertAbilityBooleanField(0x61686572), --ABILITY_BF_HERO_ABILITY
    ItemAbility = Native.ConvertAbilityBooleanField(0x61697465), --ABILITY_BF_ITEM_ABILITY
    CheckDependencies = Native.ConvertAbilityBooleanField(0x61636864), --ABILITY_BF_CHECK_DEPENDENCIES
}
return AbilityBooleanField
