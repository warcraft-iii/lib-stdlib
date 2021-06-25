---@type Agent
local Agent = require('lib.stdlib.oop._generated._agent')

---@param field string
---@param value any
function Agent:setProperty(field, value)
    -- @debug@
    checktype(field, 'string', 'setProperty', 1)
    -- @end-debug@
    self._property = self._property or {}
    self._property[field] = value
end

---@field field string
---@field value integer
function Agent:addProperty(field, value)
    -- @debug@
    checktype(value, 'integer', 'setProperty', 2)
    -- @end-debug@
    local old = self:getProperty(field)
    self:setProperty(field, old and old + value or value)
end

---@param field string
function Agent:getProperty(field)
    -- @debug@
    checktype(field, 'string', 'setProperty', 1)
    -- @end-debug@
    return self._property and self._property[field] or nil
end

return Agent
