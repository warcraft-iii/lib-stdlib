---@type Item
local Item = require('lib.stdlib.oop._generated._item')

function Item:getId()
    return string.pack('>I', self:getTypeId())
end

return Item
