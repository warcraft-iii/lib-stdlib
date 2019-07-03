local Native = require('lib.stdlib.native')

---@class Image : Handle
local Image = class('Image', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function Image:destructor()
    return Native.DestroyImage(getUd(self))
end

---destroy
---@deprecated
---@return void
function Image:destroy()
--@debug@
    deprecated('destroy', 'delete')
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
    return Image:fromUd(Native.CreateImage(file, sizeX, sizeY, sizeZ, posX, posY, posZ, originX, originY, originZ, imageType))
end

---show
---@param flag boolean
---@return void
function Image:show(flag)
    return Native.ShowImage(getUd(self), flag)
end

---setConstantHeight
---@param flag boolean
---@param height float
---@return void
function Image:setConstantHeight(flag, height)
    return Native.SetImageConstantHeight(getUd(self), flag, height)
end

---setPosition
---@param x float
---@param y float
---@param z float
---@return void
function Image:setPosition(x, y, z)
    return Native.SetImagePosition(getUd(self), x, y, z)
end

---setColor
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Image:setColor(red, green, blue, alpha)
    return Native.SetImageColor(getUd(self), red, green, blue, alpha)
end

---setRender
---@param flag boolean
---@return void
function Image:setRender(flag)
    return Native.SetImageRender(getUd(self), flag)
end

---setRenderAlways
---@param flag boolean
---@return void
function Image:setRenderAlways(flag)
    return Native.SetImageRenderAlways(getUd(self), flag)
end

---setAboveWater
---@param flag boolean
---@param useWaterAlpha boolean
---@return void
function Image:setAboveWater(flag, useWaterAlpha)
    return Native.SetImageAboveWater(getUd(self), flag, useWaterAlpha)
end

---setType
---@param imageType integer
---@return void
function Image:setType(imageType)
    return Native.SetImageType(getUd(self), imageType)
end

return Image
