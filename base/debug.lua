-- debug.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 7/4/2019, 4:35:09 AM
local function errorhandler(msg)
    local h = geterrorhandler()
    if h then
        h(msg)
    end
end

---deprecated
---@param msg string
---@return void
function deprecated(name, to)
    return xpcall(function()
        error(string.format('%s deprecated, see %s', name, to or ''), 5)
    end, errorhandler)
end
