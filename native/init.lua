-- init.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 6/27/2019, 2:31:30 AM

local Native = require('lib.stdlib.native._generated.native')
local globals = require('lib.stdlib.native._generated.globals')

for _, v in ipairs(globals) do
    Native[v] = _G[v]
end

return Native
