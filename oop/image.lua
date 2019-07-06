---@type Image
local Image = require('lib.stdlib.oop._generated._image')

---<static> create
---@overload fun(file: string, size: Vector3, pos: Vector3, origin: Vector3, imageType: integer): Image
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
    if type(sizeX) == 'table' and type(sizeY) == 'table' and type(sizeZ) == 'table' then
        imageType = posX
        originX, originY, originZ = table.unpack(sizeZ)
        posX, posY, posZ = table.unpack(sizeY)
        sizeX, sizeY, sizeZ = table.unpack(sizeZ)
    end
    -- @debug@
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
    -- @end-debug@
    return Image:fromUd(Native.CreateImage(file, sizeX, sizeY, sizeZ, posX, posY, posZ, originX, originY, originZ,
                                           imageType))
end

---show
---@return void
function Image:show()
    return self:setShown(true)
end

---hide
---@return void
function Image:hide()
    return self:setShown(false)
end

return Image
