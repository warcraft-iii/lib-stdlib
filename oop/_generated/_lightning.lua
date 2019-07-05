local Native = require('lib.stdlib.native')

---@class Lightning : Handle
local Lightning = class('Lightning', require('lib.stdlib.oop.handle'))

---destructor
---@return boolean
function Lightning:destructor()
--@debug@
    checkobject(self, Lightning, 'destructor', 'self')
--@end-debug@
    return Native.DestroyLightning(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function Lightning:destroy()
--@debug@
    deprecated('Lightning.destroy', 'Lightning.delete')
--@end-debug@
    return self:delete()
end

---move
---@param checkVisibility boolean
---@param x1 float
---@param y1 float
---@param x2 float
---@param y2 float
---@return boolean
function Lightning:move(checkVisibility, x1, y1, x2, y2)
--@debug@
    checkobject(self, Lightning, 'move', 'self')
    checktype(checkVisibility, 'boolean', 'move', 1)
    checktype(x1, 'float', 'move', 2)
    checktype(y1, 'float', 'move', 3)
    checktype(x2, 'float', 'move', 4)
    checktype(y2, 'float', 'move', 5)
--@end-debug@
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
--@debug@
    checkobject(self, Lightning, 'moveEx', 'self')
    checktype(checkVisibility, 'boolean', 'moveEx', 1)
    checktype(x1, 'float', 'moveEx', 2)
    checktype(y1, 'float', 'moveEx', 3)
    checktype(z1, 'float', 'moveEx', 4)
    checktype(x2, 'float', 'moveEx', 5)
    checktype(y2, 'float', 'moveEx', 6)
    checktype(z2, 'float', 'moveEx', 7)
--@end-debug@
    return Native.MoveLightningEx(getUd(self), checkVisibility, x1, y1, z1, x2, y2, z2)
end

---getColorA
---@return float
function Lightning:getColorA()
--@debug@
    checkobject(self, Lightning, 'getColorA', 'self')
--@end-debug@
    return Native.GetLightningColorA(getUd(self))
end

---getColorR
---@return float
function Lightning:getColorR()
--@debug@
    checkobject(self, Lightning, 'getColorR', 'self')
--@end-debug@
    return Native.GetLightningColorR(getUd(self))
end

---getColorG
---@return float
function Lightning:getColorG()
--@debug@
    checkobject(self, Lightning, 'getColorG', 'self')
--@end-debug@
    return Native.GetLightningColorG(getUd(self))
end

---getColorB
---@return float
function Lightning:getColorB()
--@debug@
    checkobject(self, Lightning, 'getColorB', 'self')
--@end-debug@
    return Native.GetLightningColorB(getUd(self))
end

---setColor
---@param r float
---@param g float
---@param b float
---@param a float
---@return boolean
function Lightning:setColor(r, g, b, a)
--@debug@
    checkobject(self, Lightning, 'setColor', 'self')
    checktype(r, 'float', 'setColor', 1)
    checktype(g, 'float', 'setColor', 2)
    checktype(b, 'float', 'setColor', 3)
    checktype(a, 'float', 'setColor', 4)
--@end-debug@
    return Native.SetLightningColor(getUd(self), r, g, b, a)
end

return Lightning
