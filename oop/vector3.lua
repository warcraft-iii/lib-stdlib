-- vector3.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 7/5/2019, 9:33:38 PM

---@class Vector3: Vector
local Vector3 = class('Vector3', require('lib.stdlib.oop.vector'))

function Vector3:constructor(x, y, z)
    self[3] = z
end

---getZ
---@return float
function Vector3:getZ()
    return self[3]
end

---setZ
---@return float
function Vector3:setZ(z)
    self[3] = z
end

---getXYZ
---@return float, float, float
function Vector3:getXYZ()
    return self[1], self[2], self[3]
end
