-- vector.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 7/5/2019, 9:28:48 PM

---@class Vector: object
local Vector = class('Vector')

function Vector:constructor(x, y)
    self[1] = x
    self[2] = y
end

---getX
---@return float
function Vector:getX()
    return self[1]
end

---getY
---@return float
function Vector:getY()
    return self[2]
end

---getXY
---@return float, float
function Vector:getXY()
    return self[1], self[2]
end

---setX
---@param x float
---@return void
function Vector:setX(x)
    self[1] = x
end

---setY
---@param y float
---@return void
function Vector:setY(y)
    self[2] = y
end

---toVector3
---@return Vector3
function Vector:toVector3()
    return require('lib.stdlib.oop.vector3'):new(self[1], self[2], 0)
end

return Vector
