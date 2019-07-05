local Native = require('lib.stdlib.native')

---@class Destructable : Widget
local Destructable = class('Destructable', require('lib.stdlib.oop.widget'))

---destructor
---@return void
function Destructable:destructor()
    return Native.RemoveDestructable(getUd(self))
end

---<**_DEPRECATED_**> remove
---@return void
function Destructable:remove()
--@debug@
    deprecated('Destructable.remove', 'Destructable.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@overload fun(objectid: integer, vec: Vector2, face: float, scale: float, variation: integer): Destructable
---@param objectid integer
---@param x float
---@param y float
---@param face float
---@param scale float
---@param variation integer
---@return Destructable
function Destructable:create(objectid, x, y, face, scale, variation)
    if type(x) == 'table' then
        face, scale, variation = y, face, scale
        x, y = table.unpack(x)
    end
    return Destructable:fromUd(Native.CreateDestructable(objectid, x, y, face, scale, variation))
end

---<static> createZ
---@overload fun(objectid: integer, vec: Vector3, face: float, scale: float, variation: integer): Destructable
---@param objectid integer
---@param x float
---@param y float
---@param z float
---@param face float
---@param scale float
---@param variation integer
---@return Destructable
function Destructable:createZ(objectid, x, y, z, face, scale, variation)
    if type(x) == 'table' then
        face, scale, variation = y, z, face
        x, y, z = table.unpack(x)
    end
    return Destructable:fromUd(Native.CreateDestructableZ(objectid, x, y, z, face, scale, variation))
end

---<static> createDead
---@overload fun(objectid: integer, vec: Vector2, face: float, scale: float, variation: integer): Destructable
---@param objectid integer
---@param x float
---@param y float
---@param face float
---@param scale float
---@param variation integer
---@return Destructable
function Destructable:createDead(objectid, x, y, face, scale, variation)
    if type(x) == 'table' then
        face, scale, variation = y, face, scale
        x, y = table.unpack(x)
    end
    return Destructable:fromUd(Native.CreateDeadDestructable(objectid, x, y, face, scale, variation))
end

---<static> createDeadZ
---@overload fun(objectid: integer, vec: Vector3, face: float, scale: float, variation: integer): Destructable
---@param objectid integer
---@param x float
---@param y float
---@param z float
---@param face float
---@param scale float
---@param variation integer
---@return Destructable
function Destructable:createDeadZ(objectid, x, y, z, face, scale, variation)
    if type(x) == 'table' then
        face, scale, variation = y, z, face
        x, y, z = table.unpack(x)
    end
    return Destructable:fromUd(Native.CreateDeadDestructableZ(objectid, x, y, z, face, scale, variation))
end

---kill
---@return void
function Destructable:kill()
    return Native.KillDestructable(getUd(self))
end

---setInvulnerable
---@param flag boolean
---@return void
function Destructable:setInvulnerable(flag)
    return Native.SetDestructableInvulnerable(getUd(self), flag)
end

---isInvulnerable
---@return boolean
function Destructable:isInvulnerable()
    return Native.IsDestructableInvulnerable(getUd(self))
end

---getTypeId
---@return integer
function Destructable:getTypeId()
    return Native.GetDestructableTypeId(getUd(self))
end

---getX
---@return float
function Destructable:getX()
    return Native.GetDestructableX(getUd(self))
end

---getY
---@return float
function Destructable:getY()
    return Native.GetDestructableY(getUd(self))
end

---setLife
---@param life float
---@return void
function Destructable:setLife(life)
    return Native.SetDestructableLife(getUd(self), life)
end

---getLife
---@return float
function Destructable:getLife()
    return Native.GetDestructableLife(getUd(self))
end

---setMaxLife
---@param max float
---@return void
function Destructable:setMaxLife(max)
    return Native.SetDestructableMaxLife(getUd(self), max)
end

---getMaxLife
---@return float
function Destructable:getMaxLife()
    return Native.GetDestructableMaxLife(getUd(self))
end

---restoreLife
---@param life float
---@param birth boolean
---@return void
function Destructable:restoreLife(life, birth)
    return Native.DestructableRestoreLife(getUd(self), life, birth)
end

---queueAnimation
---@param animation string
---@return void
function Destructable:queueAnimation(animation)
    return Native.QueueDestructableAnimation(getUd(self), animation)
end

---setAnimation
---@param animation string
---@return void
function Destructable:setAnimation(animation)
    return Native.SetDestructableAnimation(getUd(self), animation)
end

---setAnimationSpeed
---@param speedFactor float
---@return void
function Destructable:setAnimationSpeed(speedFactor)
    return Native.SetDestructableAnimationSpeed(getUd(self), speedFactor)
end

---setShown
---@param flag boolean
---@return void
function Destructable:setShown(flag)
    return Native.ShowDestructable(getUd(self), flag)
end

---getOccluderHeight
---@return float
function Destructable:getOccluderHeight()
    return Native.GetDestructableOccluderHeight(getUd(self))
end

---setOccluderHeight
---@param height float
---@return void
function Destructable:setOccluderHeight(height)
    return Native.SetDestructableOccluderHeight(getUd(self), height)
end

---getName
---@return string
function Destructable:getName()
    return Native.GetDestructableName(getUd(self))
end

return Destructable
