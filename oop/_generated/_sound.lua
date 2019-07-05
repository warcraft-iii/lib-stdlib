local Native = require('lib.stdlib.native')

---@class Sound : Agent
local Sound = class('Sound', require('lib.stdlib.oop.agent'))

---<static> create
---@param fileName string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate integer
---@param fadeOutRate integer
---@param eaxSetting string
---@return Sound
function Sound:create(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, eaxSetting)
--@debug@
    checkclass(self, Sound, 'create', 'self')
    checktype(fileName, 'string', 'create', 1)
    checktype(looping, 'boolean', 'create', 2)
    checktype(is3D, 'boolean', 'create', 3)
    checktype(stopwhenoutofrange, 'boolean', 'create', 4)
    checktype(fadeInRate, 'integer', 'create', 5)
    checktype(fadeOutRate, 'integer', 'create', 6)
    checktype(eaxSetting, 'string', 'create', 7)
--@end-debug@
    return Sound:fromUd(Native.CreateSound(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, eaxSetting))
end

---<static> createFilenameWithLabel
---@param fileName string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate integer
---@param fadeOutRate integer
---@param SLKEntryName string
---@return Sound
function Sound:createFilenameWithLabel(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, SLKEntryName)
--@debug@
    checkclass(self, Sound, 'createFilenameWithLabel', 'self')
    checktype(fileName, 'string', 'createFilenameWithLabel', 1)
    checktype(looping, 'boolean', 'createFilenameWithLabel', 2)
    checktype(is3D, 'boolean', 'createFilenameWithLabel', 3)
    checktype(stopwhenoutofrange, 'boolean', 'createFilenameWithLabel', 4)
    checktype(fadeInRate, 'integer', 'createFilenameWithLabel', 5)
    checktype(fadeOutRate, 'integer', 'createFilenameWithLabel', 6)
    checktype(SLKEntryName, 'string', 'createFilenameWithLabel', 7)
--@end-debug@
    return Sound:fromUd(Native.CreateSoundFilenameWithLabel(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, SLKEntryName))
end

---<static> createFromLabel
---@param soundLabel string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate integer
---@param fadeOutRate integer
---@return Sound
function Sound:createFromLabel(soundLabel, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate)
--@debug@
    checkclass(self, Sound, 'createFromLabel', 'self')
    checktype(soundLabel, 'string', 'createFromLabel', 1)
    checktype(looping, 'boolean', 'createFromLabel', 2)
    checktype(is3D, 'boolean', 'createFromLabel', 3)
    checktype(stopwhenoutofrange, 'boolean', 'createFromLabel', 4)
    checktype(fadeInRate, 'integer', 'createFromLabel', 5)
    checktype(fadeOutRate, 'integer', 'createFromLabel', 6)
--@end-debug@
    return Sound:fromUd(Native.CreateSoundFromLabel(soundLabel, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate))
end

---<static> createMIDI
---@param soundLabel string
---@param fadeInRate integer
---@param fadeOutRate integer
---@return Sound
function Sound:createMIDI(soundLabel, fadeInRate, fadeOutRate)
--@debug@
    checkclass(self, Sound, 'createMIDI', 'self')
    checktype(soundLabel, 'string', 'createMIDI', 1)
    checktype(fadeInRate, 'integer', 'createMIDI', 2)
    checktype(fadeOutRate, 'integer', 'createMIDI', 3)
--@end-debug@
    return Sound:fromUd(Native.CreateMIDISound(soundLabel, fadeInRate, fadeOutRate))
end

---setParamsFromLabel
---@param soundLabel string
---@return void
function Sound:setParamsFromLabel(soundLabel)
--@debug@
    checkobject(self, Sound, 'setParamsFromLabel', 'self')
    checktype(soundLabel, 'string', 'setParamsFromLabel', 1)
--@end-debug@
    return Native.SetSoundParamsFromLabel(getUd(self), soundLabel)
end

---setDistanceCutoff
---@param cutoff float
---@return void
function Sound:setDistanceCutoff(cutoff)
--@debug@
    checkobject(self, Sound, 'setDistanceCutoff', 'self')
    checktype(cutoff, 'float', 'setDistanceCutoff', 1)
--@end-debug@
    return Native.SetSoundDistanceCutoff(getUd(self), cutoff)
end

---setChannel
---@param channel integer
---@return void
function Sound:setChannel(channel)
--@debug@
    checkobject(self, Sound, 'setChannel', 'self')
    checktype(channel, 'integer', 'setChannel', 1)
--@end-debug@
    return Native.SetSoundChannel(getUd(self), channel)
end

---setVolume
---@param volume integer
---@return void
function Sound:setVolume(volume)
--@debug@
    checkobject(self, Sound, 'setVolume', 'self')
    checktype(volume, 'integer', 'setVolume', 1)
--@end-debug@
    return Native.SetSoundVolume(getUd(self), volume)
end

---setPitch
---@param pitch float
---@return void
function Sound:setPitch(pitch)
--@debug@
    checkobject(self, Sound, 'setPitch', 'self')
    checktype(pitch, 'float', 'setPitch', 1)
--@end-debug@
    return Native.SetSoundPitch(getUd(self), pitch)
end

---setPlayPosition
---@param millisecs integer
---@return void
function Sound:setPlayPosition(millisecs)
--@debug@
    checkobject(self, Sound, 'setPlayPosition', 'self')
    checktype(millisecs, 'integer', 'setPlayPosition', 1)
--@end-debug@
    return Native.SetSoundPlayPosition(getUd(self), millisecs)
end

---setDistances
---@param minDist float
---@param maxDist float
---@return void
function Sound:setDistances(minDist, maxDist)
--@debug@
    checkobject(self, Sound, 'setDistances', 'self')
    checktype(minDist, 'float', 'setDistances', 1)
    checktype(maxDist, 'float', 'setDistances', 2)
--@end-debug@
    return Native.SetSoundDistances(getUd(self), minDist, maxDist)
end

---setConeAngles
---@param inside float
---@param outside float
---@param outsideVolume integer
---@return void
function Sound:setConeAngles(inside, outside, outsideVolume)
--@debug@
    checkobject(self, Sound, 'setConeAngles', 'self')
    checktype(inside, 'float', 'setConeAngles', 1)
    checktype(outside, 'float', 'setConeAngles', 2)
    checktype(outsideVolume, 'integer', 'setConeAngles', 3)
--@end-debug@
    return Native.SetSoundConeAngles(getUd(self), inside, outside, outsideVolume)
end

---setConeOrientation
---@overload fun(vec: Vector3): void
---@param x float
---@param y float
---@param z float
---@return void
function Sound:setConeOrientation(x, y, z)
    if type(x) == 'table' then
        x, y, z = table.unpack(x)
    end
--@debug@
    checkobject(self, Sound, 'setConeOrientation', 'self')
    checktype(x, 'float', 'setConeOrientation', 1)
    checktype(y, 'float', 'setConeOrientation', 2)
    checktype(z, 'float', 'setConeOrientation', 3)
--@end-debug@
    return Native.SetSoundConeOrientation(getUd(self), x, y, z)
end

---setPosition
---@overload fun(vec: Vector3): void
---@param x float
---@param y float
---@param z float
---@return void
function Sound:setPosition(x, y, z)
    if type(x) == 'table' then
        x, y, z = table.unpack(x)
    end
--@debug@
    checkobject(self, Sound, 'setPosition', 'self')
    checktype(x, 'float', 'setPosition', 1)
    checktype(y, 'float', 'setPosition', 2)
    checktype(z, 'float', 'setPosition', 3)
--@end-debug@
    return Native.SetSoundPosition(getUd(self), x, y, z)
end

---setVelocity
---@overload fun(vec: Vector3): void
---@param x float
---@param y float
---@param z float
---@return void
function Sound:setVelocity(x, y, z)
    if type(x) == 'table' then
        x, y, z = table.unpack(x)
    end
--@debug@
    checkobject(self, Sound, 'setVelocity', 'self')
    checktype(x, 'float', 'setVelocity', 1)
    checktype(y, 'float', 'setVelocity', 2)
    checktype(z, 'float', 'setVelocity', 3)
--@end-debug@
    return Native.SetSoundVelocity(getUd(self), x, y, z)
end

---attachToUnit
---@param unit Unit
---@return void
function Sound:attachToUnit(unit)
--@debug@
    checkobject(self, Sound, 'attachToUnit', 'self')
    checkobject(unit, require('lib.stdlib.oop.unit'), 'attachToUnit', 1)
--@end-debug@
    return Native.AttachSoundToUnit(getUd(self), getUd(unit))
end

---start
---@return void
function Sound:start()
--@debug@
    checkobject(self, Sound, 'start', 'self')
--@end-debug@
    return Native.StartSound(getUd(self))
end

---stop
---@param killWhenDone boolean
---@param fadeOut boolean
---@return void
function Sound:stop(killWhenDone, fadeOut)
--@debug@
    checkobject(self, Sound, 'stop', 'self')
    checktype(killWhenDone, 'boolean', 'stop', 1)
    checktype(fadeOut, 'boolean', 'stop', 2)
--@end-debug@
    return Native.StopSound(getUd(self), killWhenDone, fadeOut)
end

---killWhenDone
---@return void
function Sound:killWhenDone()
--@debug@
    checkobject(self, Sound, 'killWhenDone', 'self')
--@end-debug@
    return Native.KillSoundWhenDone(getUd(self))
end

---setDuration
---@param duration integer
---@return void
function Sound:setDuration(duration)
--@debug@
    checkobject(self, Sound, 'setDuration', 'self')
    checktype(duration, 'integer', 'setDuration', 1)
--@end-debug@
    return Native.SetSoundDuration(getUd(self), duration)
end

---getDuration
---@return integer
function Sound:getDuration()
--@debug@
    checkobject(self, Sound, 'getDuration', 'self')
--@end-debug@
    return Native.GetSoundDuration(getUd(self))
end

---getIsPlaying
---@return boolean
function Sound:getIsPlaying()
--@debug@
    checkobject(self, Sound, 'getIsPlaying', 'self')
--@end-debug@
    return Native.GetSoundIsPlaying(getUd(self))
end

---getIsLoading
---@return boolean
function Sound:getIsLoading()
--@debug@
    checkobject(self, Sound, 'getIsLoading', 'self')
--@end-debug@
    return Native.GetSoundIsLoading(getUd(self))
end

---registerStacked
---@param byPosition boolean
---@param rectwidth float
---@param rectheight float
---@return void
function Sound:registerStacked(byPosition, rectwidth, rectheight)
--@debug@
    checkobject(self, Sound, 'registerStacked', 'self')
    checktype(byPosition, 'boolean', 'registerStacked', 1)
    checktype(rectwidth, 'float', 'registerStacked', 2)
    checktype(rectheight, 'float', 'registerStacked', 3)
--@end-debug@
    return Native.RegisterStackedSound(getUd(self), byPosition, rectwidth, rectheight)
end

---unregisterStacked
---@param byPosition boolean
---@param rectwidth float
---@param rectheight float
---@return void
function Sound:unregisterStacked(byPosition, rectwidth, rectheight)
--@debug@
    checkobject(self, Sound, 'unregisterStacked', 'self')
    checktype(byPosition, 'boolean', 'unregisterStacked', 1)
    checktype(rectwidth, 'float', 'unregisterStacked', 2)
    checktype(rectheight, 'float', 'unregisterStacked', 3)
--@end-debug@
    return Native.UnregisterStackedSound(getUd(self), byPosition, rectwidth, rectheight)
end

return Sound
