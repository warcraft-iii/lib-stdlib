local Native = require('lib.stdlib.native')

---@class Ubersplat : Handle
local Ubersplat = class('Ubersplat', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function Ubersplat:destructor()
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
    return Ubersplat:fromUd(Native.CreateUbersplat(x, y, name, red, green, blue, alpha, forcePaused, noBirthTime))
end

---reset
---@return void
function Ubersplat:reset()
    return Native.ResetUbersplat(getUd(self))
end

---finish
---@return void
function Ubersplat:finish()
    return Native.FinishUbersplat(getUd(self))
end

---setShown
---@param flag boolean
---@return void
function Ubersplat:setShown(flag)
    return Native.ShowUbersplat(getUd(self), flag)
end

---setRender
---@param flag boolean
---@return void
function Ubersplat:setRender(flag)
    return Native.SetUbersplatRender(getUd(self), flag)
end

---setRenderAlways
---@param flag boolean
---@return void
function Ubersplat:setRenderAlways(flag)
    return Native.SetUbersplatRenderAlways(getUd(self), flag)
end

return Ubersplat
