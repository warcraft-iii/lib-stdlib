local Native = require('lib.stdlib.native')

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
--@debug@
    checkobject(self, CameraSetup, 'setField', 'self')
    checkuserdata(field, 'camerafield', 'setField', 1)
    checktype(value, 'float', 'setField', 2)
    checktype(duration, 'float', 'setField', 3)
--@end-debug@
    return Native.CameraSetupSetField(getUd(self), field, value, duration)
end

---getField
---@param field CameraField
---@return float
function CameraSetup:getField(field)
--@debug@
    checkobject(self, CameraSetup, 'getField', 'self')
    checkuserdata(field, 'camerafield', 'getField', 1)
--@end-debug@
    return Native.CameraSetupGetField(getUd(self), field)
end

---setDestPosition
---@overload fun(vec: Vector2, duration: float): void
---@param x float
---@param y float
---@param duration float
---@return void
function CameraSetup:setDestPosition(x, y, duration)
    if type(x) == 'table' then
        duration = y
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, CameraSetup, 'setDestPosition', 'self')
    checktype(x, 'float', 'setDestPosition', 1)
    checktype(y, 'float', 'setDestPosition', 2)
    checktype(duration, 'float', 'setDestPosition', 3)
--@end-debug@
    return Native.CameraSetupSetDestPosition(getUd(self), x, y, duration)
end

---getDestPositionLoc
---@return Location
function CameraSetup:getDestPositionLoc()
--@debug@
    checkobject(self, CameraSetup, 'getDestPositionLoc', 'self')
--@end-debug@
    return require('lib.stdlib.oop.location'):fromUd(Native.CameraSetupGetDestPositionLoc(getUd(self)))
end

---getDestPositionX
---@return float
function CameraSetup:getDestPositionX()
--@debug@
    checkobject(self, CameraSetup, 'getDestPositionX', 'self')
--@end-debug@
    return Native.CameraSetupGetDestPositionX(getUd(self))
end

---getDestPositionY
---@return float
function CameraSetup:getDestPositionY()
--@debug@
    checkobject(self, CameraSetup, 'getDestPositionY', 'self')
--@end-debug@
    return Native.CameraSetupGetDestPositionY(getUd(self))
end

---apply
---@param doPan boolean
---@param panTimed boolean
---@return void
function CameraSetup:apply(doPan, panTimed)
--@debug@
    checkobject(self, CameraSetup, 'apply', 'self')
    checktype(doPan, 'boolean', 'apply', 1)
    checktype(panTimed, 'boolean', 'apply', 2)
--@end-debug@
    return Native.CameraSetupApply(getUd(self), doPan, panTimed)
end

---applyWithZ
---@param zDestOffset float
---@return void
function CameraSetup:applyWithZ(zDestOffset)
--@debug@
    checkobject(self, CameraSetup, 'applyWithZ', 'self')
    checktype(zDestOffset, 'float', 'applyWithZ', 1)
--@end-debug@
    return Native.CameraSetupApplyWithZ(getUd(self), zDestOffset)
end

---applyForceDuration
---@param doPan boolean
---@param forceDuration float
---@return void
function CameraSetup:applyForceDuration(doPan, forceDuration)
--@debug@
    checkobject(self, CameraSetup, 'applyForceDuration', 'self')
    checktype(doPan, 'boolean', 'applyForceDuration', 1)
    checktype(forceDuration, 'float', 'applyForceDuration', 2)
--@end-debug@
    return Native.CameraSetupApplyForceDuration(getUd(self), doPan, forceDuration)
end

---applyForceDurationWithZ
---@param zDestOffset float
---@param forceDuration float
---@return void
function CameraSetup:applyForceDurationWithZ(zDestOffset, forceDuration)
--@debug@
    checkobject(self, CameraSetup, 'applyForceDurationWithZ', 'self')
    checktype(zDestOffset, 'float', 'applyForceDurationWithZ', 1)
    checktype(forceDuration, 'float', 'applyForceDurationWithZ', 2)
--@end-debug@
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
--@debug@
    checkobject(self, CameraSetup, 'applyForceDurationSmooth', 'self')
    checktype(doPan, 'boolean', 'applyForceDurationSmooth', 1)
    checktype(forcedDuration, 'float', 'applyForceDurationSmooth', 2)
    checktype(easeInDuration, 'float', 'applyForceDurationSmooth', 3)
    checktype(easeOutDuration, 'float', 'applyForceDurationSmooth', 4)
    checktype(smoothFactor, 'float', 'applyForceDurationSmooth', 5)
--@end-debug@
    return Native.BlzCameraSetupApplyForceDurationSmooth(getUd(self), doPan, forcedDuration, easeInDuration, easeOutDuration, smoothFactor)
end

return CameraSetup
