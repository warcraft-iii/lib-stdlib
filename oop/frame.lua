local Frame = require('lib.stdlib.oop._generated._frame')
local Native = require('lib.stdlib.native.native')

---show
---@return void
function Frame:show()
    return self:setVisible(true)
end

---hide
---@return void
function Frame:hide()
    return self:setVisible(false)
end

---clearFocus
---@return void
function Frame:clearFocus()
    return Native.BlzFrameSetFocus(getUd(self), false)
end

---setFocus
---@return void
function Frame:setFocus()
    return Native.BlzFrameSetFocus(getUd(self), true)
end

return Frame
