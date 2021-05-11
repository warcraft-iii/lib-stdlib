-- lazy generate enum value
return function(converter, ids)
    return setmetatable({}, {
        __index = function(tbl, key)
            --@debug@
            assert(converter, 'Invalid enum converter ' .. key)
            --@end-debug@
            if ids[key] then
                local val = converter(ids[key])
                tbl[key] = val
                return val
            end
        end,
    })
end
