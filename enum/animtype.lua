local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class AnimType
local AnimType = {
    Birth = 0, --ANIM_TYPE_BIRTH
    Death = 1, --ANIM_TYPE_DEATH
    Decay = 2, --ANIM_TYPE_DECAY
    Dissipate = 3, --ANIM_TYPE_DISSIPATE
    Stand = 4, --ANIM_TYPE_STAND
    Walk = 5, --ANIM_TYPE_WALK
    Attack = 6, --ANIM_TYPE_ATTACK
    Morph = 7, --ANIM_TYPE_MORPH
    Sleep = 8, --ANIM_TYPE_SLEEP
    Spell = 9, --ANIM_TYPE_SPELL
    Portrait = 10, --ANIM_TYPE_PORTRAIT
}

AnimType = converter(Native.ConvertAnimType, AnimType)
return AnimType
