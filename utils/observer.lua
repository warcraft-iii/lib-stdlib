-- observer.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 5/6/2019, 10:49:38 PM
---@class Observer: object
local Observer = class('Observer')

local Dispatcher = require('lib.stdlib.utils._dispatcher')

---registerEvent
---@param id integer
---@param method function | string
---@return void
function Observer:registerEvent(...)
    local length = select('#', ...)
    local method = select(length, ...)

    if type(method) == 'string' then
        local _method = self[method]
        if not _method then
            error(string.format([[not found method '%s' in object]], method), 2)
        end
        method = function(...)
            return _method(self, ...)
        end
    end

    if type(method) ~= 'function' then
        error('not function', 2)
    end

    for i = 1, length - 1 do
        local id = select(i, ...)
        Dispatcher:get(id):addObject(self, method)
    end
end

---unregisterEvent
---@param id integer
---@return void
function Observer:unregisterEvent(id)
    Dispatcher:get(id):removeObject(id)
end

---unregisterAllEvents
---@return void
function Observer:unregisterAllEvents()
    for id, dispatcher in pairs(Dispatcher:getAll()) do
        dispatcher:removeObject(self)

        if not dispatcher:hasListener() then
            Dispatcher:remove(id)
        end
    end
end

---fireEvent
---@param id integer
---@vararg any
function Observer:fireEvent(id, ...)
    return Dispatcher:get(id):dispatch(...)
end

return Observer
