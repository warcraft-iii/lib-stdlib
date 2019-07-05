---@type Destructable
local Destructable = require('lib.stdlib.oop._generated._destructable')

---show
---@return void
function Destructable:show()
    return self:setShown(true)
end

---hide
---@return void
function Destructable:hide()
    return self:setShown(false)
end

return Destructable
