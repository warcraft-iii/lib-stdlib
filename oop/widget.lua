---@type Widget
local Widget = require('lib.stdlib.oop._generated._widget')
local Effect = require('lib.stdlib.oop.effect')

---addEffect
---@param model string
---@param attachment string
---@return Effect
function Widget:addEffect(model, attachment)
    return Effect:addSpecialTarget(model, self, attachment)
end

---Checks if the widget is alive by testing current life > .405
---@return boolean
function Widget:isAliveTrick()
    return self:getLife() > 0.405
end

return Widget
