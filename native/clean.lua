-- clean.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 6/27/2019, 2:32:56 AM

local globals = require('lib.stdlib.native._generated.globals')

for _, v in ipairs(globals) do
    _G[v] = nil
end
