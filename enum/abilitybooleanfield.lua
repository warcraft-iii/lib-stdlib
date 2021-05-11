local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class AbilityBooleanField
local AbilityBooleanField = {
    HeroAbility = 0x61686572, --ABILITY_BF_HERO_ABILITY
    ItemAbility = 0x61697465, --ABILITY_BF_ITEM_ABILITY
    CheckDependencies = 0x61636864, --ABILITY_BF_CHECK_DEPENDENCIES
}

AbilityBooleanField = converter(Native.ConvertAbilityBooleanField, AbilityBooleanField)
return AbilityBooleanField
