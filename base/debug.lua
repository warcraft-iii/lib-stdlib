-- debug.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 7/4/2019, 4:35:09 AM
local function errorhandler(msg)
    local h = geterrorhandler()
    if h then
        h(msg)
    end
end

local _type = type
local function type(value)
    local t = _type(value)
    if t ~= 'number' then
        return t
    end
    return math.type(value)
end

local function isValidType(obj, checkType)
    local t = type(obj)
    if t == checkType then
        return true
    end

    if checkType == 'float' and t == 'integer' then
        return true
    end
    if checkType == 'function' and t == 'nil' then
        return true
    end
    return false
end

---deprecated
---@param msg string
---@return void
function deprecated(name, to)
    return xpcall(function()
        error(string.format('%s deprecated, see %s', name, to or ''), 5)
    end, errorhandler)
end

---checktype
---@param value any
---@param checkType string
---@param apiName string
---@param argIndex integer
function checktype(value, checkType, apiName, argIndex)
    if not isValidType(value, checkType) then
        error(string.format([[bad argument #%s to '%s' (%s expected, got %s)]], argIndex, apiName, checkType,
                            type(value)), 3)
    end
end

---checkobject
---@param obj object
---@param cls object
---@param apiName string
---@param argIndex integer
function checkobject(obj, cls, apiName, argIndex)
    if obj == nil then
        return
    end
    if not isInstanceOf(obj, cls) then
        local e = isObject(obj) and obj.meta.__name or type(obj)
        error(string.format([[bad argument #%s to '%s' (%s expected, got %s)]], argIndex, apiName, cls.meta.__name, e),
              3)
    end
end

---checkclass
---@param obj object
---@param cls object
---@param apiName string
---@param argIndex integer
function checkclass(value, cls, apiName, argIndex)
    if value ~= cls then
        local e = isObject(value) and 'object' or isClass(value) and value.meta.__name or type(value)
        error(string.format([[bad argument #%s to '%s' (%s expected, got %s)]], argIndex, apiName, cls.meta.__name, e),
              3)
    end
end

---checkuserdata
---@param value any
---@param checkType string
---@param apiName string
---@param argIndex integer
function checkuserdata(value, checkType, apiName, argIndex)
    -- @reforge@
    if not tostring(value):startswith(checkType) then
    -- @end-reforge@
    --[===[@non-reforge@
    if value == nil then
    --@end-non-reforge@]===]
        error(string.format([[bad argument #%s to '%s' (%s expected, got %s)]], argIndex, apiName, checkType,
                            tostring(value)), 3)
    end
end
