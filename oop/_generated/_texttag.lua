local Native = require('lib.stdlib.native')

---@class TextTag : Handle
local TextTag = class('TextTag', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function TextTag:destructor()
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
    return Native.SetTextTagText(getUd(self), s, height)
end

---setPos
---@param x float
---@param y float
---@param heightOffset float
---@return void
function TextTag:setPos(x, y, heightOffset)
    return Native.SetTextTagPos(getUd(self), x, y, heightOffset)
end

---setPosUnit
---@param unit Unit
---@param heightOffset float
---@return void
function TextTag:setPosUnit(unit, heightOffset)
    return Native.SetTextTagPosUnit(getUd(self), getUd(unit), heightOffset)
end

---setColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function TextTag:setColor(red, green, blue, alpha)
    return Native.SetTextTagColor(getUd(self), red, green, blue, alpha)
end

---setVelocity
---@param xvel float
---@param yvel float
---@return void
function TextTag:setVelocity(xvel, yvel)
    return Native.SetTextTagVelocity(getUd(self), xvel, yvel)
end

---setVisibility
---@param flag boolean
---@return void
function TextTag:setVisibility(flag)
    return Native.SetTextTagVisibility(getUd(self), flag)
end

---setSuspended
---@param flag boolean
---@return void
function TextTag:setSuspended(flag)
    return Native.SetTextTagSuspended(getUd(self), flag)
end

---setPermanent
---@param flag boolean
---@return void
function TextTag:setPermanent(flag)
    return Native.SetTextTagPermanent(getUd(self), flag)
end

---setAge
---@param age float
---@return void
function TextTag:setAge(age)
    return Native.SetTextTagAge(getUd(self), age)
end

---setLifespan
---@param lifespan float
---@return void
function TextTag:setLifespan(lifespan)
    return Native.SetTextTagLifespan(getUd(self), lifespan)
end

---setFadepoint
---@param fadepoint float
---@return void
function TextTag:setFadepoint(fadepoint)
    return Native.SetTextTagFadepoint(getUd(self), fadepoint)
end

return TextTag
