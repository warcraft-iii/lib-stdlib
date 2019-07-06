local Native = require('lib.stdlib.native')

---@class TextTag : Handle
local TextTag = class('TextTag', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function TextTag:destructor()
--@debug@
    checkobject(self, TextTag, 'destructor', 'self')
--@end-debug@
    return Native.DestroyTextTag(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function TextTag:destroy()
--@debug@
    deprecated('TextTag.destroy', 'TextTag.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@return TextTag
function TextTag:create()
    return TextTag:fromUd(Native.CreateTextTag())
end

---setText
---@param s string
---@param height float
---@return void
function TextTag:setText(s, height)
--@debug@
    checkobject(self, TextTag, 'setText', 'self')
    checktype(s, 'string', 'setText', 1)
    checktype(height, 'float', 'setText', 2)
--@end-debug@
    return Native.SetTextTagText(getUd(self), s, height)
end

---setPos
---@overload fun(vec: Vector, heightOffset: float): void
---@param x float
---@param y float
---@param heightOffset float
---@return void
function TextTag:setPos(x, y, heightOffset)
    if type(x) == 'table' then
        heightOffset = y
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, TextTag, 'setPos', 'self')
    checktype(x, 'float', 'setPos', 1)
    checktype(y, 'float', 'setPos', 2)
    checktype(heightOffset, 'float', 'setPos', 3)
--@end-debug@
    return Native.SetTextTagPos(getUd(self), x, y, heightOffset)
end

---setPosUnit
---@param unit Unit
---@param heightOffset float
---@return void
function TextTag:setPosUnit(unit, heightOffset)
--@debug@
    checkobject(self, TextTag, 'setPosUnit', 'self')
    checkobject(unit, require('lib.stdlib.oop.unit'), 'setPosUnit', 1)
    checktype(heightOffset, 'float', 'setPosUnit', 2)
--@end-debug@
    return Native.SetTextTagPosUnit(getUd(self), getUd(unit), heightOffset)
end

---setColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function TextTag:setColor(red, green, blue, alpha)
--@debug@
    checkobject(self, TextTag, 'setColor', 'self')
    checktype(red, 'integer', 'setColor', 1)
    checktype(green, 'integer', 'setColor', 2)
    checktype(blue, 'integer', 'setColor', 3)
    checktype(alpha, 'integer', 'setColor', 4)
--@end-debug@
    return Native.SetTextTagColor(getUd(self), red, green, blue, alpha)
end

---setVelocity
---@param xvel float
---@param yvel float
---@return void
function TextTag:setVelocity(xvel, yvel)
--@debug@
    checkobject(self, TextTag, 'setVelocity', 'self')
    checktype(xvel, 'float', 'setVelocity', 1)
    checktype(yvel, 'float', 'setVelocity', 2)
--@end-debug@
    return Native.SetTextTagVelocity(getUd(self), xvel, yvel)
end

---setVisibility
---@param flag boolean
---@return void
function TextTag:setVisibility(flag)
--@debug@
    checkobject(self, TextTag, 'setVisibility', 'self')
    checktype(flag, 'boolean', 'setVisibility', 1)
--@end-debug@
    return Native.SetTextTagVisibility(getUd(self), flag)
end

---setSuspended
---@param flag boolean
---@return void
function TextTag:setSuspended(flag)
--@debug@
    checkobject(self, TextTag, 'setSuspended', 'self')
    checktype(flag, 'boolean', 'setSuspended', 1)
--@end-debug@
    return Native.SetTextTagSuspended(getUd(self), flag)
end

---setPermanent
---@param flag boolean
---@return void
function TextTag:setPermanent(flag)
--@debug@
    checkobject(self, TextTag, 'setPermanent', 'self')
    checktype(flag, 'boolean', 'setPermanent', 1)
--@end-debug@
    return Native.SetTextTagPermanent(getUd(self), flag)
end

---setAge
---@param age float
---@return void
function TextTag:setAge(age)
--@debug@
    checkobject(self, TextTag, 'setAge', 'self')
    checktype(age, 'float', 'setAge', 1)
--@end-debug@
    return Native.SetTextTagAge(getUd(self), age)
end

---setLifespan
---@param lifespan float
---@return void
function TextTag:setLifespan(lifespan)
--@debug@
    checkobject(self, TextTag, 'setLifespan', 'self')
    checktype(lifespan, 'float', 'setLifespan', 1)
--@end-debug@
    return Native.SetTextTagLifespan(getUd(self), lifespan)
end

---setFadepoint
---@param fadepoint float
---@return void
function TextTag:setFadepoint(fadepoint)
--@debug@
    checkobject(self, TextTag, 'setFadepoint', 'self')
    checktype(fadepoint, 'float', 'setFadepoint', 1)
--@end-debug@
    return Native.SetTextTagFadepoint(getUd(self), fadepoint)
end

return TextTag
