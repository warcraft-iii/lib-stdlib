-- item.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 5/6/2019, 11:57:08 PM

---@class _Dispatcher: object
local Dispatcher = class('_Dispatcher')

Dispatcher.dispatchers = setmetatable({}, {
    __index = function(t, id)
        t[id] = Dispatcher:new(id)
        return t[id]
    end,
})

local function errorhandler(err)
    local h = geterrorhandler()
    if h then
        h(err)
    end
end

function Dispatcher:constructor(id)
    self.id = id
    self.listeners = {}
    self.insertQueue = {}
    self.recurse = 0
end

---<static> get
---@return _Dispatcher
function Dispatcher:get(id)
    return self.dispatchers[id]
end

function Dispatcher:remove(id)
    self.dispatchers[id] = nil
end

---<static> getAll
---@return table<integer, _Dispatcher>
function Dispatcher:getAll()
    return self.dispatchers
end

---addObject
---@param obj Observer
---@param method function
---@return void
function Dispatcher:addObject(obj, method)
    if self.recurse < 1 then
        self.listeners[obj] = method
    else
        self.insertQueue[obj] = method
    end
end

---removeObject
---@param obj Observer
---@return void
function Dispatcher:removeObject(obj)
    self.listeners[obj] = nil
    self.insertQueue[obj] = nil
end

---dispatch
---@vararg any
---@return void
function Dispatcher:dispatch(...)
    local recurse = self.recurse
    self.recurse = recurse + 1

    for obj, method in pairs(self.listeners) do
        xpcall(method, errorhandler, ...)
    end

    self.recurse = recurse

    if not table.isempty(self.insertQueue) and recurse == 0 then
        for obj, method in pairs(self.insertQueue) do
            self.listeners[obj] = method
            self.insertQueue[obj] = nil
        end
        self.insertQueue = {}
    end
end

---hasListener
---@return boolean
function Dispatcher:hasListener()
    return not table.isempty(self.listeners) or not table.isempty(self.insertQueue)
end

return Dispatcher
