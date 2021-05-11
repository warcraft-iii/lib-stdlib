local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class LimitOp
local LimitOp = {
    LessThan = 0, --LESS_THAN
    LessThanOrEqual = 1, --LESS_THAN_OR_EQUAL
    Equal = 2, --EQUAL
    GreaterThanOrEqual = 3, --GREATER_THAN_OR_EQUAL
    GreaterThan = 4, --GREATER_THAN
    NotEqual = 5, --NOT_EQUAL
}

LimitOp = converter(Native.ConvertLimitOp, LimitOp)
return LimitOp
