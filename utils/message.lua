-- message.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 7/5/2019, 2:28:56 PM
local Player = require('lib.stdlib.oop.player')
local Force = require('lib.stdlib.oop.force')
local Native = require('lib.stdlib.native.init')

local Message = {}

---toAll
---@param text string
---@param timeout float
function Message:toAll(text, timeout)
    for player in Player:iterateAll() do
        self:toPlayer(player, text, timeout or 10)
    end
end

---toForce
---@param force Force
---@param text string
---@param timeout float
---@return void
function Message:toForce(force, text, timeout)
    local localPlayer = Player:getLocal()
    if not localPlayer:isInForce(force) then
        return
    end
    return self:toPlayer(localPlayer, text, timeout)
end

---toPlayers
---@param players Player[]
---@param text string
---@param timeout float
---@return void
function Message:toPlayers(players, text, timeout)
    for player in vipairs(players) do
        self:toPlayer(player, text, timeout)
    end
end

---toPlayer
---@overload fun(player: Player, text: string): void
---@param player Player
---@param text string
---@param timeout float
---@return void
function Message:toPlayer(player, text, timeout)
    if not player:isLocal() then
        return
    end
    if timeout then
        Native.DisplayTimedTextToPlayer(player:getUd(), 0, 0, timeout, text)
    else
        Native.DisplayTextToPlayer(player:getUd(), 0, 0, text)
    end

end

return Message
