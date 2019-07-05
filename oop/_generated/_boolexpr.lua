local Native = require('lib.stdlib.native')

---@class BoolExpr : Agent
local BoolExpr = class('BoolExpr', require('lib.stdlib.oop.agent'))

---destructor
---@return void
function BoolExpr:destructor()
--@debug@
    checkobject(self, BoolExpr, 'destructor', 'self')
--@end-debug@
    return Native.DestroyBoolExpr(getUd(self))
end

---<**_DEPRECATED_**> destroy
---@return void
function BoolExpr:destroy()
--@debug@
    deprecated('BoolExpr.destroy', 'BoolExpr.delete')
--@end-debug@
    return self:delete()
end

---and_
---@param operandB BoolExpr
---@return BoolExpr
function BoolExpr:and_(operandB)
--@debug@
    checkobject(self, BoolExpr, 'and_', 'self')
    checkobject(operandB, require('lib.stdlib.oop.boolexpr'), 'and_', 1)
--@end-debug@
    return BoolExpr:fromUd(Native.And(getUd(self), getUd(operandB)))
end

---or_
---@param operandB BoolExpr
---@return BoolExpr
function BoolExpr:or_(operandB)
--@debug@
    checkobject(self, BoolExpr, 'or_', 'self')
    checkobject(operandB, require('lib.stdlib.oop.boolexpr'), 'or_', 1)
--@end-debug@
    return BoolExpr:fromUd(Native.Or(getUd(self), getUd(operandB)))
end

---not_
---@return BoolExpr
function BoolExpr:not_()
--@debug@
    checkobject(self, BoolExpr, 'not_', 'self')
--@end-debug@
    return BoolExpr:fromUd(Native.Not(getUd(self)))
end

return BoolExpr
