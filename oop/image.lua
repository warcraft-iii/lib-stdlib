---@type Image
local Image = require('lib.stdlib.oop._generated._image')

function Image:show()
    return self:setShown(true)
end

function Image:hide()
    return self:setShown(false)
end

return Image
