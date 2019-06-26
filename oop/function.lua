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

local Function = {}

local function safereturn(ok, ...)
    if ok then
        return ...
    end
    print(...)
end

local function safecall(f, ...)
    return safereturn(pcall(f, ...))
end

function Function:errorable(f)
    if not f then
        return
    end
    return function(...)
        return safecall(f, ...)
    end
end

local function generateCallbackCreator(cls, method)
    return function(_, callback)
        if not callback then
            return
        end

        local function f()
            return callback(cls:fromUd(method()))
        end

        return function()
            return safecall(f)
        end
    end
end

---createUnitCallback
---@param filter UnitCallback
---@return function
Function.createUnitCallback = generateCallbackCreator(Unit, GetEnumUnit)

---createPlayerCallback
---@param filter PlayerCallback
---@return function
Function.createPlayerCallback = generateCallbackCreator(Player, GetEnumPlayer)

---createDestructableCallback
---@param filter DestructableCallback
---@return function
Function.createDestructableCallback = generateCallbackCreator(Destructable, GetEnumDestructable)

---createItemCallback
---@param filter ItemCallback
---@return function
Function.createItemCallback = generateCallbackCreator(Item, GetEnumItem)

return Function
