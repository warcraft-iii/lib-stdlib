---@type Quest 
---@field private state StateType
local Quest = require('lib.stdlib.oop._generated._quest')

---StateType
---@type StateType table<string, integer>
Quest.StateType = {None = 0, Failed = 1, Completed = 2, Undiscovered = 3, Discovered = 4}

function Quest:constructor()
    self.state = Quest.StateType.None
end

---getState
---@return StateType
function Quest:getState()
    return self.state
end

---setState
---@param state StateType
function Quest:setState(state)
    self.state = state
    if state == Quest.StateType.Completed then
        self:setCompleted(true)
    elseif state == Quest.StateType.Failed then
        self:setFailed(true)
    elseif state == Quest.StateType.Undiscovered then
        self:setDiscovered(false)
    elseif state == Quest.StateType.Discovered then
        self:setDiscovered(true)
    end
end

return Quest
