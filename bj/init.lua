-- @classic@
require('lib.stdlib.bj.utility')
require('lib.stdlib.bj.native')
require('lib.stdlib.bj.blizzard')

local _globals = require('jass.globals')
for k, v in pairs(_globals) do
    _G[k] = v
end
-- @end-classic@
