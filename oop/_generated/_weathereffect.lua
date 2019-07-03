local Native = require('lib.stdlib.native')

---@class WeatherEffect : Handle
local WeatherEffect = class('WeatherEffect', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function WeatherEffect:destructor()
    return Native.RemoveWeatherEffect(getUd(self))
end

---remove
---@deprecated
---@return void
function WeatherEffect:remove()
--@debug@
    deprecated('remove', 'delete')
--@end-debug@
    return self:delete()
end

---enable
---@param enable boolean
---@return void
function WeatherEffect:enable(enable)
    return Native.EnableWeatherEffect(getUd(self), enable)
end

return WeatherEffect
