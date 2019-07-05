local Native = require('lib.stdlib.native')

---@class Ubersplat : Handle
local Ubersplat = class('Ubersplat', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function Ubersplat:destructor()
--@debug@
    checkobject(self, Ubersplat, 'destructor', 'self')
--@end-debug@
    return Native.DestroyUbersplat(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function Ubersplat:destroy()
--@debug@
    deprecated('Ubersplat.destroy', 'Ubersplat.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@overload fun(vec: Vector2, name: string, red: integer, green: integer, blue: integer, alpha: integer, forcePaused: boolean, noBirthTime: boolean): Ubersplat
---@param x float
---@param y float
---@param name string
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param forcePaused boolean
---@param noBirthTime boolean
---@return Ubersplat
function Ubersplat:create(x, y, name, red, green, blue, alpha, forcePaused, noBirthTime)
    if type(x) == 'table' then
        name, red, green, blue, alpha, forcePaused, noBirthTime = y, name, red, green, blue, alpha, forcePaused
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Ubersplat, 'create', 'self')
    checktype(x, 'float', 'create', 1)
    checktype(y, 'float', 'create', 2)
    checktype(name, 'string', 'create', 3)
    checktype(red, 'integer', 'create', 4)
    checktype(green, 'integer', 'create', 5)
    checktype(blue, 'integer', 'create', 6)
    checktype(alpha, 'integer', 'create', 7)
    checktype(forcePaused, 'boolean', 'create', 8)
    checktype(noBirthTime, 'boolean', 'create', 9)
--@end-debug@
    return Ubersplat:fromUd(Native.CreateUbersplat(x, y, name, red, green, blue, alpha, forcePaused, noBirthTime))
end

---reset
---@return void
function Ubersplat:reset()
--@debug@
    checkobject(self, Ubersplat, 'reset', 'self')
--@end-debug@
    return Native.ResetUbersplat(getUd(self))
end

---finish
---@return void
function Ubersplat:finish()
--@debug@
    checkobject(self, Ubersplat, 'finish', 'self')
--@end-debug@
    return Native.FinishUbersplat(getUd(self))
end

---setShown
---@param flag boolean
---@return void
function Ubersplat:setShown(flag)
--@debug@
    checkobject(self, Ubersplat, 'setShown', 'self')
    checktype(flag, 'boolean', 'setShown', 1)
--@end-debug@
    return Native.ShowUbersplat(getUd(self), flag)
end

---setRender
---@param flag boolean
---@return void
function Ubersplat:setRender(flag)
--@debug@
    checkobject(self, Ubersplat, 'setRender', 'self')
    checktype(flag, 'boolean', 'setRender', 1)
--@end-debug@
    return Native.SetUbersplatRender(getUd(self), flag)
end

---setRenderAlways
---@param flag boolean
---@return void
function Ubersplat:setRenderAlways(flag)
--@debug@
    checkobject(self, Ubersplat, 'setRenderAlways', 'self')
    checktype(flag, 'boolean', 'setRenderAlways', 1)
--@end-debug@
    return Native.SetUbersplatRenderAlways(getUd(self), flag)
end

return Ubersplat
