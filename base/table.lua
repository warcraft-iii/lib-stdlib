-- table.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 4/1/2019 2:47 PM

---@class integer: number
---@class float: number

---@generic V
---@alias array V[]|table<integer, V>

local function riter(t, i)
    i = i - 1
    if i > 0 then
        return i, t[i]
    end
end

---ripairs
---@generic V
---@param t array
---@return fun(t:array):number,V
function ripairs(t)
    return riter, t, #t + 1
end

---spairs
---@generic V
---@param t table<string, V>|V[]
---@return fun(tbl: table<string, V>):string, V
function spairs(t)
    local i = 0
    local keys = table.keys(t)
    table.sort(keys)

    return function()
        i = i + 1
        local k = keys[i]
        if k then
            return k, t[k]
        end
    end
end

---reduce
---@generic V, T
---@param t array
---@param callback fun(r:any, v:V, i:integer, t:array):T
---@param initialValue T
---@return T
function table.reduce(t, callback, initialValue)
    local r = initialValue
    for i, v in ipairs(t) do
        r = callback(r, v, i, t) or r
    end
    return r
end

---filter
---@generic V
---@param t array
---@param callback fun(v:V, i:integer, t:array):boolean
---@return array
function table.filter(t, callback)
    return table.reduce(t, function(r, v, i, _t)
        if callback(v, i, _t) then
            table.insert(r, v)
        end
    end, {})
end

---map
---@generic V, O
---@param t array
---@param callback fun(v:V, i:integer, t:array):O
---@return O[]|table<integer,O>
function table.map(t, callback)
    return table.reduce(t, function(r, v, i, _t)
        r[i] = callback(v, i, _t)
    end, {})
end

---every
---@generic V
---@param t array
---@param callback fun(v:V, i:integer, t:array):boolean
---@return boolean
function table.every(t, callback)
    for i, v in ipairs(t) do
        if callback(v, i, t) then
            return true
        end
    end
    return false
end

---shallowcopy
---@generic T
---@param t T
---@return T
function table.shallowcopy(t)
    local r = {}
    for k, v in pairs(t) do
        r[k] = v
    end
    return r
end

---arraycopy
---@generic T
---@param t T
---@return T
function table.arraycopy(t)
    local r = {}
    for i, v in ipairs(t) do
        r[i] = v
    end
    return r
end

---indexof
---@generic V
---@param t array
---@param item V
---@return integer|nil
function table.indexof(t, item)
    for i, v in ipairs(t) do
        if v == item then
            return i
        end
    end
end

---lastindexof
---@generic V
---@param t array
---@param item V
---@return integer|nil
--function table.lastindexof(t, item)
--    for i, v in ripairs(t) do
--        if v == item then
--            return i
--        end
--    end
--end

---contains
---@generic V
---@param t array
---@param item V
---@return boolean
function table.contains(t, item)
    return not not table.indexof(t, item)
end

---isempty
---@param t table
---@return boolean
function table.isempty(t)
    return next(t) == nil
end

---keys
---@param t table
function table.keys(t)
    local r = {}
    for k in pairs(t) do
        table.insert(r, k)
    end
    return r
end

---join
---@generic T
---@vararg T
---@return T
function table.join(...)
    local r = {}
    local t

    for i = 1, select('#', ...) do
        t = select(i, ...)
        if type(t) == 'table' then
            for _, v in ipairs(t) do
                table.insert(r, v)
            end
        else
            table.insert(r, t)
        end
    end
    return r
end