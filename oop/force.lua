---@type Force
local Force = require('lib.stdlib.oop._generated._force')

---size
function Force:size()
    local count = 0
    self:forEach(function()
        count = count + 1
    end)
    return count
end

return Force
