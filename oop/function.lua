-- function.lua
-- @Author : DengSir (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 4/10/2019 6:34 PM

--[[generate begin]]
--[[generate end]]

---@alias UnitCallback fun(unit: Unit): void
---@alias PlayerCallback fun(player: Player): void
---@alias DestructableCallback fun(destructable: Destructable): void
---@alias ItemCallback fun(item: Item): void

local Native = require('lib.stdlib.native')
local Function = {}

--@remove@

---createUnitCallback
---@param filter UnitCallback
---@return function
function Function:createUnitCallback(filter) end

---createPlayerCallback
---@param filter PlayerCallback
---@return function
function Function:createPlayerCallback(filter) end

---createDestructableCallback
---@param filter DestructableCallback
---@return function
function Function:createDestructableCallback(filter) end

---createItemCallback
---@param filter ItemCallback
---@return function
function Function:createItemCallback(filter) end

--@end-remove@

local function generateCallbackCreator(cls, method)
    return function(_, callback)
        if type(callback) ~= 'function' then
            return callback
        end

        return function()
            return callback(cls:fromUd(method()))
        end
    end
end

Function.createUnitCallback = generateCallbackCreator(Unit, Native.GetEnumUnit)
Function.createPlayerCallback = generateCallbackCreator(Player, Native.GetEnumPlayer)
Function.createDestructableCallback = generateCallbackCreator(Destructable, Native.GetEnumDestructable)
Function.createItemCallback = generateCallbackCreator(Item, Native.GetEnumItem)

return Function
