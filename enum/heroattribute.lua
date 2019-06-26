local Native = require('lib.stdlib.native')

---@class HeroAttribute
local HeroAttribute = {
    Str = Native.ConvertHeroAttribute(1), --HERO_ATTRIBUTE_STR
    Int = Native.ConvertHeroAttribute(2), --HERO_ATTRIBUTE_INT
    Agi = Native.ConvertHeroAttribute(3), --HERO_ATTRIBUTE_AGI
}
return HeroAttribute
