---an angle is just a wrapper around a real which allows for
---typesafe APIs without the confusion between radians and degrees
---@class Angle: object
local Angle = class('Angle')

---Converts Degrees to Radians 
---@type float
local DEGTORAD = 0.017453293

---Converts Radians to Degrees
---@type float
local RADTODEG = 57.295779513

---@param radians float
function Angle:constructor(radians)
    self.radians = radians
end

---get the real representation of this angle in degrees
---@return float
function Angle:degrees()
    return self.radians * RADTODEG
end

---get the real representation of this angle in radians
---@return float
function Angle:radians()
    return self.radians
end

---<static> interpret this real as an angle given in degrees
---@return Angle
function Angle:fromDeg(degrees)
    return Angle:new(degrees * DEGTORAD)
end

---<static> interpret this real as an angle given in radius
function Angle:fromRad(radius)
    return Angle:new(radius)
end

---get the sine of this angle
---@return float
function Angle:sin()
    return math.sin(self.radians)
end

---get the cosine of this angle
---@return float
function Angle:cos()
    return math.cos(self.radians)
end

---get the tangent of this angle
---@return float
function Angle:tan()
    return math.tan(self.radians)
end

---adds two angles
---@param me Angle
---@param other Angle
---@return Angle
function Angle.meta.__add(me, other)
    return Angle:new(me.radians + other.radians)
end

---substracts two angles
---@param me Angle
---@param other Angle
---@return Angle
function Angle.meta.__sub(me, other)
    return Angle:new(me.radians - other.radians)
end

---multiplies the angle with the given scalar
---@param me Angle
---@param scalar float
---@return Angle
function Angle.meta.__mul(me, scalar)
    return Angle:new(me.radians * scalar)
end

---divides the angle by the given scalar
---@param me Angle
---@param scalar float
---@return Angle
function Angle.meta.__div(me, scalar)
    return Angle:new(me.radians / scalar)
end

---returns a vector of the given length pointing into the direction of this angle
---@param len float
---@return Vector
function Angle:toVector(len)
    return require('lib.stdlib.oop.vector'):new(self:cos() * len, self:sin() * len)
end

return Angle
