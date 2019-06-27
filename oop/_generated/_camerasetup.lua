local Native = require('lib.stdlib.native')
local Location = require('lib.stdlib.oop.location')

---@class CameraSetup : Handle
local CameraSetup = class('CameraSetup', require('lib.stdlib.oop.handle'))

---<static> create
---@return CameraSetup
function CameraSetup:create()
    return CameraSetup:fromUd(Native.CreateCameraSetup())
end

---setField
---@param field CameraField
---@param value float
---@param duration float
---@return void
function CameraSetup:setField(field, value, duration)
    return Native.CameraSetupSetField(getUd(self), field, value, duration)
end

---getField
---@param field CameraField
---@return float
function CameraSetup:getField(field)
    return Native.CameraSetupGetField(getUd(self), field)
end

---setDestPosition
---@param x float
---@param y float
---@param duration float
---@return void
function CameraSetup:setDestPosition(x, y, duration)
    return Native.CameraSetupSetDestPosition(getUd(self), x, y, duration)
end

---getDestPositionLoc
---@return Location
function CameraSetup:getDestPositionLoc()
    return Location:fromUd(Native.CameraSetupGetDestPositionLoc(getUd(self)))
end

---getDestPositionX
---@return float
function CameraSetup:getDestPositionX()
    return Native.CameraSetupGetDestPositionX(getUd(self))
end

---getDestPositionY
---@return float
function CameraSetup:getDestPositionY()
    return Native.CameraSetupGetDestPositionY(getUd(self))
end

---apply
---@param doPan boolean
---@param panTimed boolean
---@return void
function CameraSetup:apply(doPan, panTimed)
    return Native.CameraSetupApply(getUd(self), doPan, panTimed)
end

---applyWithZ
---@param zDestOffset float
---@return void
function CameraSetup:applyWithZ(zDestOffset)
    return Native.CameraSetupApplyWithZ(getUd(self), zDestOffset)
end

---applyForceDuration
---@param doPan boolean
---@param forceDuration float
---@return void
function CameraSetup:applyForceDuration(doPan, forceDuration)
    return Native.CameraSetupApplyForceDuration(getUd(self), doPan, forceDuration)
end

---applyForceDurationWithZ
---@param zDestOffset float
---@param forceDuration float
---@return void
function CameraSetup:applyForceDurationWithZ(zDestOffset, forceDuration)
    return Native.CameraSetupApplyForceDurationWithZ(getUd(self), zDestOffset, forceDuration)
end

---applyForceDurationSmooth
---@param doPan boolean
---@param forcedDuration float
---@param easeInDuration float
---@param easeOutDuration float
---@param smoothFactor float
---@return void
function CameraSetup:applyForceDurationSmooth(doPan, forcedDuration, easeInDuration, easeOutDuration, smoothFactor)
    return Native.BlzCameraSetupApplyForceDurationSmooth(getUd(self), doPan, forcedDuration, easeInDuration, easeOutDuration, smoothFactor)
end

return CameraSetup
