local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class HeroAttribute
local HeroAttribute = {
    Str = 1, --HERO_ATTRIBUTE_STR
    Int = 2, --HERO_ATTRIBUTE_INT
    Agi = 3, --HERO_ATTRIBUTE_AGI
}

HeroAttribute = converter(Native.ConvertHeroAttribute, HeroAttribute)
return HeroAttribute
