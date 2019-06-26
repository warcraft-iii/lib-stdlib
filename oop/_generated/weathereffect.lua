local Native = require('lib.stdlib.native')

---@class WeatherEffect : Handle
local WeatherEffect = class('WeatherEffect', require('lib.stdlib.oop.handle'))

---remove
---@return void
function WeatherEffect:remove()
    return Native.RemoveWeatherEffect(getUd(self))
end

---enable
---@param enable boolean
---@return void
function WeatherEffect:enable(enable)
    return Native.EnableWeatherEffect(getUd(self), enable)
end

return WeatherEffect
