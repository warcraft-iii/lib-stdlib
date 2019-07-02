local Native = require('lib.stdlib.native')

---@class Ubersplat : Handle
local Ubersplat = class('Ubersplat', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function Ubersplat:destructor()
    return Native.DestroyUbersplat(getUd(self))
end

--@remove@

---destroy
---@deprecated
---@return void
function Ubersplat:destroy() end

--@end-remove@

Ubersplat.destroy = Ubersplat.delete


---<static> create
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

---show
---@param flag boolean
---@return void
function Ubersplat:show(flag)
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
