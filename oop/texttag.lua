local Vector = require('lib.stdlib.oop.vector')

---@type TextTag
local TextTag = require('lib.stdlib.oop._generated._texttag')

TextTag.FontSize = 0.024
TextTag.Offset = Vector:new(16, 0)

function TextTag:setScaledText(text, scale)
    self:setText(text, scale * self.FontSize)
end

---setText
---@param s string
---@param height float
---@return void
function TextTag:setStandardText(text)
    self:setText(text, self.FontSize)
end

---@param target Unit
function TextTag:matchVisibility(target)
    self:setVisibility(target:isVisible(Player:getLocal()))
end

---@param target Unit
---@param offset Vector|nil
function TextTag:match(target, offset)
    local p = target:getPos()
    if offset then
        p = p - offset
    end
    self:setPos(p)
    self:matchVisibility(target)
end

return TextTag
