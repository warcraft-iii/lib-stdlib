-- handle.lua
-- @Author : DengSir (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 4/10/2019 6:43 PM

---@class Handle: object
local Handle = class('Handle')

---inherit
---@private
function Handle:inherit()
    self._object = {}
end

---constructor
---@private
---@param ud userdata
---@return void
function Handle:constructor(ud)
    self[0] = ud
    self._object[ud] = self
end

---delete
---@return void
function Handle:delete()
    self._object[self:getUd()] = nil
    object.delete(self)
end

---fromUd
---@param ud userdata
---@return self
function Handle:fromUd(ud)
    if not ud then
        return
    end
    return  self._object[ud] or self:new(ud)
end

---getUd
---@return userdata
function Handle:getUd()
    return self[0]
end

function getUd(obj)
    if obj then
        return obj[0]
    end
    return nil
end

return Handle
