-- vector.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 7/5/2019, 9:28:48 PM

---@class Vector: object
local Vector = class('Vector')

function Vector:constructor(x, y)
    self._x = x
    self._y = y
end

---getX
---@return float
function Vector:getX()
    return self._x
end

---getY
---@return float
function Vector:getY()
    return self._y
end

---getXY
---@return float, float
function Vector:getXY()
    return self._x, self._y
end

---setX
---@param x float
---@return void
function Vector:setX(x)
    self._x = x
end

---setY
---@param y float
---@return void
function Vector:setY(y)
    self._y = y
end

---toVector3
---@return Vector3
function Vector:toVector3()
    return require('lib.stdlib.oop.vector3'):new(self._x, self._y, 0)
end

return Vector
