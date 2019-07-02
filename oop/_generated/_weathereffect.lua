local Native = require('lib.stdlib.native')

---@class WeatherEffect : Handle
local WeatherEffect = class('WeatherEffect', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function WeatherEffect:destructor()
    return Native.RemoveWeatherEffect(getUd(self))
end

--@remove@

---remove
---@deprecated
---@return void
function WeatherEffect:remove() end

--@end-remove@

WeatherEffect.remove = WeatherEffect.delete


---enable
---@param enable boolean
---@return void
function WeatherEffect:enable(enable)
    return Native.EnableWeatherEffect(getUd(self), enable)
end

return WeatherEffect
