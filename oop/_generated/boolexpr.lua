local Native = require('lib.stdlib.native')

---@class BoolExpr : Agent
local BoolExpr = class('BoolExpr', require('lib.stdlib.oop.agent'))

---and_
---@param operandB BoolExpr
---@return BoolExpr
function BoolExpr:and_(operandB)
    return BoolExpr:fromUd(Native.And(getUd(self), getUd(operandB)))
end

---or_
---@param operandB BoolExpr
---@return BoolExpr
function BoolExpr:or_(operandB)
    return BoolExpr:fromUd(Native.Or(getUd(self), getUd(operandB)))
end

---not_
---@return BoolExpr
function BoolExpr:not_()
    return BoolExpr:fromUd(Native.Not(getUd(self)))
end

---destroy
---@return void
function BoolExpr:destroy()
    return Native.DestroyBoolExpr(getUd(self))
end

return BoolExpr
