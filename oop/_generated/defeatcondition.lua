local Native = require('lib.stdlib.native')

---@class DefeatCondition : Agent
local DefeatCondition = class('DefeatCondition', require('lib.stdlib.oop.agent'))

---<static> create
---@return DefeatCondition
function DefeatCondition:create()
    return DefeatCondition:fromUd(Native.CreateDefeatCondition())
end

---destroy
---@return void
function DefeatCondition:destroy()
    return Native.DestroyDefeatCondition(getUd(self))
end

---setDescription
---@param description string
---@return void
function DefeatCondition:setDescription(description)
    return Native.DefeatConditionSetDescription(getUd(self), description)
end

return DefeatCondition
