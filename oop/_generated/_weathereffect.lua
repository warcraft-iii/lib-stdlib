local Native = require('lib.stdlib.native')

---@class WeatherEffect : Handle
local WeatherEffect = class('WeatherEffect', require('lib.stdlib.oop.handle'))

---destructor
---@return void
function WeatherEffect:destructor()
--@debug@
    checkobject(self, WeatherEffect, 'destructor', 'self')
--@end-debug@
    return Native.RemoveWeatherEffect(getUd(self))
end

---<**_DEPRECATED_**> remove
---@return void
function WeatherEffect:remove()
--@debug@
    deprecated('WeatherEffect.remove', 'WeatherEffect.delete')
--@end-debug@
    return self:delete()
end

---enable
---@param enable boolean
---@return void
function WeatherEffect:enable(enable)
--@debug@
    checkobject(self, WeatherEffect, 'enable', 'self')
    checktype(enable, 'boolean', 'enable', 1)
--@end-debug@
    return Native.EnableWeatherEffect(getUd(self), enable)
end

return WeatherEffect
