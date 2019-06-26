local Native = require('lib.stdlib.native')

---@class LimitOp
local LimitOp = {
    LessThan = Native.ConvertLimitOp(0), --LESS_THAN
    LessThanOrEqual = Native.ConvertLimitOp(1), --LESS_THAN_OR_EQUAL
    Equal = Native.ConvertLimitOp(2), --EQUAL
    GreaterThanOrEqual = Native.ConvertLimitOp(3), --GREATER_THAN_OR_EQUAL
    GreaterThan = Native.ConvertLimitOp(4), --GREATER_THAN
    NotEqual = Native.ConvertLimitOp(5), --NOT_EQUAL
}
return LimitOp
