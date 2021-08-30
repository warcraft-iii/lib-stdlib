-- vector.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 7/5/2019, 9:28:48 PM
local Native = require('lib.stdlib.native')

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
---@param z float|nil
---@return Vector3
function Vector:toVector3(z)
    return require('lib.stdlib.oop.vector3'):new(self[1], self[2], z and z or 0)
end

---@param me Vector
---@param other Vector
---@return Vector
function Vector.meta.__sub(me, other)
    return Vector:new(me:getX() - other:getX(), me:getY() - other:getY())
end

---@param me Vector
---@param other Vector
---@return Vector
function Vector.meta.__add(me, other)
    return Vector:new(me:getX() + other:getX(), me:getY() + other:getY())
end

---@param me Vector
---@param other Vector
---@return boolean
function Vector.meta.__eq(me, other)
    return me:getX() == other:getX() and me:getY() == other:getY()
end

---@param me Vector
function Vector.meta.__tostring(me)
    return string.format('%s,%s', me:getX(), me:getY())
end

---@param ang Angle
---@param dist float
---@return Vector
function Vector:polarOffset(ang, dist)
    return ang:toVector(dist) + self
end

---Get distance to another vector
---@return float
function Vector:distanceTo(other)
    return Native.SquareRoot(Native.Pow(other:getX() - self:getX(), 2) + Native.Pow(other:getY() - self:getY(), 2))
end

---Get this vetor's angle to another one
---@param v Vector
---@return Angle
function Vector:angleTo(v)
    return require('lib.stdlib.math.Angle'):fromRad(math.atan(v:getY() - self:getY(), v:getX() - self:getX()))
end

return Vector
