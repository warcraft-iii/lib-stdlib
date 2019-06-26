local Frame = require('lib.stdlib.oop._generated.frame')
local Native = require('lib.stdlib.native')

---show
function Frame:show()
    return self:setVisible(true)
end

---hide
function Frame:hide()
    return self:setVisible(false)
end

---clearFocus
function Frame:clearFocus()
    return self:setFocus(false)
end

return Frame
