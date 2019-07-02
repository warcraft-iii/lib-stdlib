local Native = require('lib.stdlib.native')

---@class Lightning : Handle
local Lightning = class('Lightning', require('lib.stdlib.oop.handle'))

---destructor
---@return boolean
function Lightning:destructor()
    return Native.DestroyLightning(getUd(self))
end

--@remove@

---destroy
---@deprecated
---@return void
function Lightning:destroy() end

--@end-remove@

Lightning.destroy = Lightning.delete


---move
---@param checkVisibility boolean
---@param x1 float
---@param y1 float
---@param x2 float
---@param y2 float
---@return boolean
function Lightning:move(checkVisibility, x1, y1, x2, y2)
    return Native.MoveLightning(getUd(self), checkVisibility, x1, y1, x2, y2)
end

---moveEx
---@param checkVisibility boolean
---@param x1 float
---@param y1 float
---@param z1 float
---@param x2 float
---@param y2 float
---@param z2 float
---@return boolean
function Lightning:moveEx(checkVisibility, x1, y1, z1, x2, y2, z2)
    return Native.MoveLightningEx(getUd(self), checkVisibility, x1, y1, z1, x2, y2, z2)
end

---getColorA
---@return float
function Lightning:getColorA()
    return Native.GetLightningColorA(getUd(self))
end

---getColorR
---@return float
function Lightning:getColorR()
    return Native.GetLightningColorR(getUd(self))
end

---getColorG
---@return float
function Lightning:getColorG()
    return Native.GetLightningColorG(getUd(self))
end

---getColorB
---@return float
function Lightning:getColorB()
    return Native.GetLightningColorB(getUd(self))
end

---setColor
---@param r float
---@param g float
---@param b float
---@param a float
---@return boolean
function Lightning:setColor(r, g, b, a)
    return Native.SetLightningColor(getUd(self), r, g, b, a)
end

return Lightning
