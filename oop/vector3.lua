-- vector3.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 7/5/2019, 9:33:38 PM

---@class Vector3: Vector
local Vector3 = class('Vector3', require('lib.stdlib.oop.vector'))

function Vector3:constructor(x, y, z)
    self._z = z
end

---getZ
---@return float
function Vector3:getZ()
    return self._z
end

---setZ
---@return float
function Vector3:setZ(z)
    self._z = z
end

---getXYZ
---@return float, float, float
function Vector3:getXYZ()
    return self._x, self._y, self._z
end
