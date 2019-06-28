local Trigger = require('lib.stdlib.oop._generated._trigger')
local Player = require('lib.stdlib.oop.player')

-- @remove@

---registerAllPlayersEvent
---@param event PlayerEvent
function Trigger:registerAllPlayersEvent(event)
end

---registerAllPlayersUnitEvent
---@param event PlayerUnitEvent
---@param filter BoolExpr
function Trigger:registerAllPlayersUnitEvent(event, filter)
end

---registerAllPlayersAllianceChange
---@param alliance AllianceType
function Trigger:registerAllPlayersAllianceChange(alliance)
end

---registerAllPlayersStateEvent
---@param state PlayerState
---@param opcode LimitOp
---@param limitval float
function Trigger:registerAllPlayersStateEvent(state, opcode, limitval)
end

---registerAllPlayersChatEvent
---@param chatMessageToDetect string
---@param exactMatchOnly boolean
function Trigger:registerAllPlayersChatEvent(chatMessageToDetect, exactMatchOnly)
end

---registerAllPlayersSyncEvent
---@param prefix string
---@param fromServer boolean
function Trigger:registerAllPlayersSyncEvent(prefix, fromServer)
end

---registerAllPlayersKeyEvent
---@param key OsKeyType
---@param metaKey integer
---@param keyDown boolean
function Trigger:registerAllPlayersKeyEvent(key, metaKey, keyDown)
end

-- @end-remove@

local function generateRegisterAllPlayers(method)
    return function(self, ...)
        for player in Player:iterateAll() do
            method(self, player, ...)
        end
    end
end

Trigger.registerAllPlayersEvent = generateRegisterAllPlayers(Trigger.registerPlayerEvent)
Trigger.registerAllPlayersUnitEvent = generateRegisterAllPlayers(Trigger.registerPlayerUnitEvent)
Trigger.registerAllPlayersAllianceChange = generateRegisterAllPlayers(Trigger.registerPlayerAllianceChange)
Trigger.registerAllPlayersStateEvent = generateRegisterAllPlayers(Trigger.registerPlayerStateEvent)
Trigger.registerAllPlayersChatEvent = generateRegisterAllPlayers(Trigger.registerPlayerChatEvent)
Trigger.registerAllPlayersSyncEvent = generateRegisterAllPlayers(Trigger.registerPlayerSyncEvent)
Trigger.registerAllPlayersKeyEvent = generateRegisterAllPlayers(Trigger.registerPlayerKeyEvent)

return Trigger
