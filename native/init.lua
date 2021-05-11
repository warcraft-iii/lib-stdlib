-- init.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 6/27/2019, 8:55:59 PM

-- @classic@
local bj = require('jass.globals')
for index, value in pairs(bj) do
    _G[index] = value
end
function FourCC(id)
    if type(id) == 'number' then
        return id
    end
    id = string.unpack('>I', id)
    return id
end
-- @end-classic@

return require('lib.stdlib.native.native')
