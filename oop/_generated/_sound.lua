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
    return Sound:fromUd(Native.CreateSoundFromLabel(soundLabel, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate))
end

---<static> createMIDI
---@param soundLabel string
---@param fadeInRate integer
---@param fadeOutRate integer
---@return Sound
function Sound:createMIDI(soundLabel, fadeInRate, fadeOutRate)
    return Sound:fromUd(Native.CreateMIDISound(soundLabel, fadeInRate, fadeOutRate))
end

---setParamsFromLabel
---@param soundLabel string
---@return void
function Sound:setParamsFromLabel(soundLabel)
    return Native.SetSoundParamsFromLabel(getUd(self), soundLabel)
end

---setDistanceCutoff
---@param cutoff float
---@return void
function Sound:setDistanceCutoff(cutoff)
    return Native.SetSoundDistanceCutoff(getUd(self), cutoff)
end

---setChannel
---@param channel integer
---@return void
function Sound:setChannel(channel)
    return Native.SetSoundChannel(getUd(self), channel)
end

---setVolume
---@param volume integer
---@return void
function Sound:setVolume(volume)
    return Native.SetSoundVolume(getUd(self), volume)
end

---setPitch
---@param pitch float
---@return void
function Sound:setPitch(pitch)
    return Native.SetSoundPitch(getUd(self), pitch)
end

---setPlayPosition
---@param millisecs integer
---@return void
function Sound:setPlayPosition(millisecs)
    return Native.SetSoundPlayPosition(getUd(self), millisecs)
end

---setDistances
---@param minDist float
---@param maxDist float
---@return void
function Sound:setDistances(minDist, maxDist)
    return Native.SetSoundDistances(getUd(self), minDist, maxDist)
end

---setConeAngles
---@param inside float
---@param outside float
---@param outsideVolume integer
---@return void
function Sound:setConeAngles(inside, outside, outsideVolume)
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
    return Native.SetSoundVelocity(getUd(self), x, y, z)
end

---attachToUnit
---@param unit Unit
---@return void
function Sound:attachToUnit(unit)
    return Native.AttachSoundToUnit(getUd(self), getUd(unit))
end

---start
---@return void
function Sound:start()
    return Native.StartSound(getUd(self))
end

---stop
---@param killWhenDone boolean
---@param fadeOut boolean
---@return void
function Sound:stop(killWhenDone, fadeOut)
    return Native.StopSound(getUd(self), killWhenDone, fadeOut)
end

---killWhenDone
---@return void
function Sound:killWhenDone()
    return Native.KillSoundWhenDone(getUd(self))
end

---setDuration
---@param duration integer
---@return void
function Sound:setDuration(duration)
    return Native.SetSoundDuration(getUd(self), duration)
end

---getDuration
---@return integer
function Sound:getDuration()
    return Native.GetSoundDuration(getUd(self))
end

---getIsPlaying
---@return boolean
function Sound:getIsPlaying()
    return Native.GetSoundIsPlaying(getUd(self))
end

---getIsLoading
---@return boolean
function Sound:getIsLoading()
    return Native.GetSoundIsLoading(getUd(self))
end

---registerStacked
---@param byPosition boolean
---@param rectwidth float
---@param rectheight float
---@return void
function Sound:registerStacked(byPosition, rectwidth, rectheight)
    return Native.RegisterStackedSound(getUd(self), byPosition, rectwidth, rectheight)
end

---unregisterStacked
---@param byPosition boolean
---@param rectwidth float
---@param rectheight float
---@return void
function Sound:unregisterStacked(byPosition, rectwidth, rectheight)
    return Native.UnregisterStackedSound(getUd(self), byPosition, rectwidth, rectheight)
end

return Sound
