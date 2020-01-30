local Native = require('lib.stdlib.native')

---@class Destructable : Widget
local Destructable = class('Destructable', require('lib.stdlib.oop.widget'))

---destructor
---@return void
function Destructable:destructor()
--@debug@
    checkobject(self, Destructable, 'destructor', 'self')
--@end-debug@
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
---@overload fun(objectid: integer, vec: Vector, face: float, scale: float, variation: integer): Destructable
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
--@debug@
    checkclass(self, Destructable, 'create', 'self')
    checktype(objectid, 'integer', 'create', 1)
    checktype(x, 'float', 'create', 2)
    checktype(y, 'float', 'create', 3)
    checktype(face, 'float', 'create', 4)
    checktype(scale, 'float', 'create', 5)
    checktype(variation, 'integer', 'create', 6)
--@end-debug@
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
--@debug@
    checkclass(self, Destructable, 'createZ', 'self')
    checktype(objectid, 'integer', 'createZ', 1)
    checktype(x, 'float', 'createZ', 2)
    checktype(y, 'float', 'createZ', 3)
    checktype(z, 'float', 'createZ', 4)
    checktype(face, 'float', 'createZ', 5)
    checktype(scale, 'float', 'createZ', 6)
    checktype(variation, 'integer', 'createZ', 7)
--@end-debug@
    return Destructable:fromUd(Native.CreateDestructableZ(objectid, x, y, z, face, scale, variation))
end

---<static> createDead
---@overload fun(objectid: integer, vec: Vector, face: float, scale: float, variation: integer): Destructable
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
--@debug@
    checkclass(self, Destructable, 'createDead', 'self')
    checktype(objectid, 'integer', 'createDead', 1)
    checktype(x, 'float', 'createDead', 2)
    checktype(y, 'float', 'createDead', 3)
    checktype(face, 'float', 'createDead', 4)
    checktype(scale, 'float', 'createDead', 5)
    checktype(variation, 'integer', 'createDead', 6)
--@end-debug@
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
--@debug@
    checkclass(self, Destructable, 'createDeadZ', 'self')
    checktype(objectid, 'integer', 'createDeadZ', 1)
    checktype(x, 'float', 'createDeadZ', 2)
    checktype(y, 'float', 'createDeadZ', 3)
    checktype(z, 'float', 'createDeadZ', 4)
    checktype(face, 'float', 'createDeadZ', 5)
    checktype(scale, 'float', 'createDeadZ', 6)
    checktype(variation, 'integer', 'createDeadZ', 7)
--@end-debug@
    return Destructable:fromUd(Native.CreateDeadDestructableZ(objectid, x, y, z, face, scale, variation))
end

---<static> createWithSkin
---@overload fun(objectid: integer, vec: Vector, face: float, scale: float, variation: integer, skinId: integer): Destructable
---@param objectid integer
---@param x float
---@param y float
---@param face float
---@param scale float
---@param variation integer
---@param skinId integer
---@return Destructable
function Destructable:createWithSkin(objectid, x, y, face, scale, variation, skinId)
    if type(x) == 'table' then
        face, scale, variation, skinId = y, face, scale, variation
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Destructable, 'createWithSkin', 'self')
    checktype(objectid, 'integer', 'createWithSkin', 1)
    checktype(x, 'float', 'createWithSkin', 2)
    checktype(y, 'float', 'createWithSkin', 3)
    checktype(face, 'float', 'createWithSkin', 4)
    checktype(scale, 'float', 'createWithSkin', 5)
    checktype(variation, 'integer', 'createWithSkin', 6)
    checktype(skinId, 'integer', 'createWithSkin', 7)
--@end-debug@
    return Destructable:fromUd(Native.BlzCreateDestructableWithSkin(objectid, x, y, face, scale, variation, skinId))
end

---<static> createZWithSkin
---@overload fun(objectid: integer, vec: Vector3, face: float, scale: float, variation: integer, skinId: integer): Destructable
---@param objectid integer
---@param x float
---@param y float
---@param z float
---@param face float
---@param scale float
---@param variation integer
---@param skinId integer
---@return Destructable
function Destructable:createZWithSkin(objectid, x, y, z, face, scale, variation, skinId)
    if type(x) == 'table' then
        face, scale, variation, skinId = y, z, face, scale
        x, y, z = table.unpack(x)
    end
--@debug@
    checkclass(self, Destructable, 'createZWithSkin', 'self')
    checktype(objectid, 'integer', 'createZWithSkin', 1)
    checktype(x, 'float', 'createZWithSkin', 2)
    checktype(y, 'float', 'createZWithSkin', 3)
    checktype(z, 'float', 'createZWithSkin', 4)
    checktype(face, 'float', 'createZWithSkin', 5)
    checktype(scale, 'float', 'createZWithSkin', 6)
    checktype(variation, 'integer', 'createZWithSkin', 7)
    checktype(skinId, 'integer', 'createZWithSkin', 8)
--@end-debug@
    return Destructable:fromUd(Native.BlzCreateDestructableZWithSkin(objectid, x, y, z, face, scale, variation, skinId))
end

---<static> createDeadWithSkin
---@overload fun(objectid: integer, vec: Vector, face: float, scale: float, variation: integer, skinId: integer): Destructable
---@param objectid integer
---@param x float
---@param y float
---@param face float
---@param scale float
---@param variation integer
---@param skinId integer
---@return Destructable
function Destructable:createDeadWithSkin(objectid, x, y, face, scale, variation, skinId)
    if type(x) == 'table' then
        face, scale, variation, skinId = y, face, scale, variation
        x, y = table.unpack(x)
    end
--@debug@
    checkclass(self, Destructable, 'createDeadWithSkin', 'self')
    checktype(objectid, 'integer', 'createDeadWithSkin', 1)
    checktype(x, 'float', 'createDeadWithSkin', 2)
    checktype(y, 'float', 'createDeadWithSkin', 3)
    checktype(face, 'float', 'createDeadWithSkin', 4)
    checktype(scale, 'float', 'createDeadWithSkin', 5)
    checktype(variation, 'integer', 'createDeadWithSkin', 6)
    checktype(skinId, 'integer', 'createDeadWithSkin', 7)
--@end-debug@
    return Destructable:fromUd(Native.BlzCreateDeadDestructableWithSkin(objectid, x, y, face, scale, variation, skinId))
end

---<static> createDeadZWithSkin
---@overload fun(objectid: integer, vec: Vector3, face: float, scale: float, variation: integer, skinId: integer): Destructable
---@param objectid integer
---@param x float
---@param y float
---@param z float
---@param face float
---@param scale float
---@param variation integer
---@param skinId integer
---@return Destructable
function Destructable:createDeadZWithSkin(objectid, x, y, z, face, scale, variation, skinId)
    if type(x) == 'table' then
        face, scale, variation, skinId = y, z, face, scale
        x, y, z = table.unpack(x)
    end
--@debug@
    checkclass(self, Destructable, 'createDeadZWithSkin', 'self')
    checktype(objectid, 'integer', 'createDeadZWithSkin', 1)
    checktype(x, 'float', 'createDeadZWithSkin', 2)
    checktype(y, 'float', 'createDeadZWithSkin', 3)
    checktype(z, 'float', 'createDeadZWithSkin', 4)
    checktype(face, 'float', 'createDeadZWithSkin', 5)
    checktype(scale, 'float', 'createDeadZWithSkin', 6)
    checktype(variation, 'integer', 'createDeadZWithSkin', 7)
    checktype(skinId, 'integer', 'createDeadZWithSkin', 8)
--@end-debug@
    return Destructable:fromUd(Native.BlzCreateDeadDestructableZWithSkin(objectid, x, y, z, face, scale, variation, skinId))
end

---kill
---@return void
function Destructable:kill()
--@debug@
    checkobject(self, Destructable, 'kill', 'self')
--@end-debug@
    return Native.KillDestructable(getUd(self))
end

---setInvulnerable
---@param flag boolean
---@return void
function Destructable:setInvulnerable(flag)
--@debug@
    checkobject(self, Destructable, 'setInvulnerable', 'self')
    checktype(flag, 'boolean', 'setInvulnerable', 1)
--@end-debug@
    return Native.SetDestructableInvulnerable(getUd(self), flag)
end

---isInvulnerable
---@return boolean
function Destructable:isInvulnerable()
--@debug@
    checkobject(self, Destructable, 'isInvulnerable', 'self')
--@end-debug@
    return Native.IsDestructableInvulnerable(getUd(self))
end

---getTypeId
---@return integer
function Destructable:getTypeId()
--@debug@
    checkobject(self, Destructable, 'getTypeId', 'self')
--@end-debug@
    return Native.GetDestructableTypeId(getUd(self))
end

---getX
---@return float
function Destructable:getX()
--@debug@
    checkobject(self, Destructable, 'getX', 'self')
--@end-debug@
    return Native.GetDestructableX(getUd(self))
end

---getY
---@return float
function Destructable:getY()
--@debug@
    checkobject(self, Destructable, 'getY', 'self')
--@end-debug@
    return Native.GetDestructableY(getUd(self))
end

---setLife
---@param life float
---@return void
function Destructable:setLife(life)
--@debug@
    checkobject(self, Destructable, 'setLife', 'self')
    checktype(life, 'float', 'setLife', 1)
--@end-debug@
    return Native.SetDestructableLife(getUd(self), life)
end

---getLife
---@return float
function Destructable:getLife()
--@debug@
    checkobject(self, Destructable, 'getLife', 'self')
--@end-debug@
    return Native.GetDestructableLife(getUd(self))
end

---setMaxLife
---@param max float
---@return void
function Destructable:setMaxLife(max)
--@debug@
    checkobject(self, Destructable, 'setMaxLife', 'self')
    checktype(max, 'float', 'setMaxLife', 1)
--@end-debug@
    return Native.SetDestructableMaxLife(getUd(self), max)
end

---getMaxLife
---@return float
function Destructable:getMaxLife()
--@debug@
    checkobject(self, Destructable, 'getMaxLife', 'self')
--@end-debug@
    return Native.GetDestructableMaxLife(getUd(self))
end

---restoreLife
---@param life float
---@param birth boolean
---@return void
function Destructable:restoreLife(life, birth)
--@debug@
    checkobject(self, Destructable, 'restoreLife', 'self')
    checktype(life, 'float', 'restoreLife', 1)
    checktype(birth, 'boolean', 'restoreLife', 2)
--@end-debug@
    return Native.DestructableRestoreLife(getUd(self), life, birth)
end

---queueAnimation
---@param animation string
---@return void
function Destructable:queueAnimation(animation)
--@debug@
    checkobject(self, Destructable, 'queueAnimation', 'self')
    checktype(animation, 'string', 'queueAnimation', 1)
--@end-debug@
    return Native.QueueDestructableAnimation(getUd(self), animation)
end

---setAnimation
---@param animation string
---@return void
function Destructable:setAnimation(animation)
--@debug@
    checkobject(self, Destructable, 'setAnimation', 'self')
    checktype(animation, 'string', 'setAnimation', 1)
--@end-debug@
    return Native.SetDestructableAnimation(getUd(self), animation)
end

---setAnimationSpeed
---@param speedFactor float
---@return void
function Destructable:setAnimationSpeed(speedFactor)
--@debug@
    checkobject(self, Destructable, 'setAnimationSpeed', 'self')
    checktype(speedFactor, 'float', 'setAnimationSpeed', 1)
--@end-debug@
    return Native.SetDestructableAnimationSpeed(getUd(self), speedFactor)
end

---setShown
---@param flag boolean
---@return void
function Destructable:setShown(flag)
--@debug@
    checkobject(self, Destructable, 'setShown', 'self')
    checktype(flag, 'boolean', 'setShown', 1)
--@end-debug@
    return Native.ShowDestructable(getUd(self), flag)
end

---getOccluderHeight
---@return float
function Destructable:getOccluderHeight()
--@debug@
    checkobject(self, Destructable, 'getOccluderHeight', 'self')
--@end-debug@
    return Native.GetDestructableOccluderHeight(getUd(self))
end

---setOccluderHeight
---@param height float
---@return void
function Destructable:setOccluderHeight(height)
--@debug@
    checkobject(self, Destructable, 'setOccluderHeight', 'self')
    checktype(height, 'float', 'setOccluderHeight', 1)
--@end-debug@
    return Native.SetDestructableOccluderHeight(getUd(self), height)
end

---getName
---@return string
function Destructable:getName()
--@debug@
    checkobject(self, Destructable, 'getName', 'self')
--@end-debug@
    return Native.GetDestructableName(getUd(self))
end

return Destructable
