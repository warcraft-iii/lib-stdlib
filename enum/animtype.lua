local Native = require('lib.stdlib.native')

---@class AnimType
local AnimType = {
    Birth = Native.ConvertAnimType(0), --ANIM_TYPE_BIRTH
    Death = Native.ConvertAnimType(1), --ANIM_TYPE_DEATH
    Decay = Native.ConvertAnimType(2), --ANIM_TYPE_DECAY
    Dissipate = Native.ConvertAnimType(3), --ANIM_TYPE_DISSIPATE
    Stand = Native.ConvertAnimType(4), --ANIM_TYPE_STAND
    Walk = Native.ConvertAnimType(5), --ANIM_TYPE_WALK
    Attack = Native.ConvertAnimType(6), --ANIM_TYPE_ATTACK
    Morph = Native.ConvertAnimType(7), --ANIM_TYPE_MORPH
    Sleep = Native.ConvertAnimType(8), --ANIM_TYPE_SLEEP
    Spell = Native.ConvertAnimType(9), --ANIM_TYPE_SPELL
    Portrait = Native.ConvertAnimType(10), --ANIM_TYPE_PORTRAIT
}
return AnimType
