---@type Ubersplat
local Ubersplat = require('lib.stdlib.oop._generated._ubersplat')

---show
---@return void
function Ubersplat:show()
    return self:setShown(true)
end

---hide
---@return void
function Ubersplat:hide()
    return self:setShown(false)
end

return Ubersplat
