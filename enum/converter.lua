-- lazy generate enum value
return function(converter, ids)
    return setmetatable({}, {
        __index = function(tbl, key)
            -- @debug@
            -- @reforge@
            assert(converter, 'Invalid enum converter ' .. key)
            -- @end-reforge@
            -- @end-debug@
            if ids[key] then
                local val = ids[key]
                if converter then
                    val = converter(val)
                end
                tbl[key] = val
                return val
            end
        end,
    })
end
