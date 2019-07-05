local Native = require('lib.stdlib.native')

---@class Image : Handle
local Image = class('Image', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function Image:destructor()
--@debug@
    checkobject(self, Image, 'destructor', 'self')
--@end-debug@
    return Native.DestroyImage(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function Image:destroy()
--@debug@
    deprecated('Image.destroy', 'Image.delete')
--@end-debug@
    return self:delete()
end

---<static> create
---@param file string
---@param sizeX float
---@param sizeY float
---@param sizeZ float
---@param posX float
---@param posY float
---@param posZ float
---@param originX float
---@param originY float
---@param originZ float
---@param imageType integer
---@return Image
function Image:create(file, sizeX, sizeY, sizeZ, posX, posY, posZ, originX, originY, originZ, imageType)
--@debug@
    checkclass(self, Image, 'create', 'self')
    checktype(file, 'string', 'create', 1)
    checktype(sizeX, 'float', 'create', 2)
    checktype(sizeY, 'float', 'create', 3)
    checktype(sizeZ, 'float', 'create', 4)
    checktype(posX, 'float', 'create', 5)
    checktype(posY, 'float', 'create', 6)
    checktype(posZ, 'float', 'create', 7)
    checktype(originX, 'float', 'create', 8)
    checktype(originY, 'float', 'create', 9)
    checktype(originZ, 'float', 'create', 10)
    checktype(imageType, 'integer', 'create', 11)
--@end-debug@
    return Image:fromUd(Native.CreateImage(file, sizeX, sizeY, sizeZ, posX, posY, posZ, originX, originY, originZ, imageType))
end

---setShown
---@param flag boolean
---@return void
function Image:setShown(flag)
--@debug@
    checkobject(self, Image, 'setShown', 'self')
    checktype(flag, 'boolean', 'setShown', 1)
--@end-debug@
    return Native.ShowImage(getUd(self), flag)
end

---setConstantHeight
---@param flag boolean
---@param height float
---@return void
function Image:setConstantHeight(flag, height)
--@debug@
    checkobject(self, Image, 'setConstantHeight', 'self')
    checktype(flag, 'boolean', 'setConstantHeight', 1)
    checktype(height, 'float', 'setConstantHeight', 2)
--@end-debug@
    return Native.SetImageConstantHeight(getUd(self), flag, height)
end

---setPosition
---@overload fun(vec: Vector3): void
---@param x float
---@param y float
---@param z float
---@return void
function Image:setPosition(x, y, z)
    if type(x) == 'table' then
        x, y, z = table.unpack(x)
    end
--@debug@
    checkobject(self, Image, 'setPosition', 'self')
    checktype(x, 'float', 'setPosition', 1)
    checktype(y, 'float', 'setPosition', 2)
    checktype(z, 'float', 'setPosition', 3)
--@end-debug@
    return Native.SetImagePosition(getUd(self), x, y, z)
end

---setColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Image:setColor(red, green, blue, alpha)
--@debug@
    checkobject(self, Image, 'setColor', 'self')
    checktype(red, 'integer', 'setColor', 1)
    checktype(green, 'integer', 'setColor', 2)
    checktype(blue, 'integer', 'setColor', 3)
    checktype(alpha, 'integer', 'setColor', 4)
--@end-debug@
    return Native.SetImageColor(getUd(self), red, green, blue, alpha)
end

---setRender
---@param flag boolean
---@return void
function Image:setRender(flag)
--@debug@
    checkobject(self, Image, 'setRender', 'self')
    checktype(flag, 'boolean', 'setRender', 1)
--@end-debug@
    return Native.SetImageRender(getUd(self), flag)
end

---setRenderAlways
---@param flag boolean
---@return void
function Image:setRenderAlways(flag)
--@debug@
    checkobject(self, Image, 'setRenderAlways', 'self')
    checktype(flag, 'boolean', 'setRenderAlways', 1)
--@end-debug@
    return Native.SetImageRenderAlways(getUd(self), flag)
end

---setAboveWater
---@param flag boolean
---@param useWaterAlpha boolean
---@return void
function Image:setAboveWater(flag, useWaterAlpha)
--@debug@
    checkobject(self, Image, 'setAboveWater', 'self')
    checktype(flag, 'boolean', 'setAboveWater', 1)
    checktype(useWaterAlpha, 'boolean', 'setAboveWater', 2)
--@end-debug@
    return Native.SetImageAboveWater(getUd(self), flag, useWaterAlpha)
end

---setType
---@param imageType integer
---@return void
function Image:setType(imageType)
--@debug@
    checkobject(self, Image, 'setType', 'self')
    checktype(imageType, 'integer', 'setType', 1)
--@end-debug@
    return Native.SetImageType(getUd(self), imageType)
end

return Image
