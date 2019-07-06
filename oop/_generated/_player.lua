local Native = require('lib.stdlib.native')

---@class Player : Agent
local Player = class('Player', require('lib.stdlib.oop.agent'))

---- compact same name native function
setmetatable(Player, table.merge(getmetatable(Player), {__call = function(_, ...)
    return Native.Player(...)
end}))

---<static> get
---@param number integer
---@return Player
function Player:get(number)
--@debug@
    checkclass(self, Player, 'get', 'self')
    checktype(number, 'integer', 'get', 1)
--@end-debug@
    return Player:fromUd(Native.Player(number))
end

---setTeam
---@param team integer
---@return void
function Player:setTeam(team)
--@debug@
    checkobject(self, Player, 'setTeam', 'self')
    checktype(team, 'integer', 'setTeam', 1)
--@end-debug@
    return Native.SetPlayerTeam(getUd(self), team)
end

---setStartLocation
---@param startLocIndex integer
---@return void
function Player:setStartLocation(startLocIndex)
--@debug@
    checkobject(self, Player, 'setStartLocation', 'self')
    checktype(startLocIndex, 'integer', 'setStartLocation', 1)
--@end-debug@
    return Native.SetPlayerStartLocation(getUd(self), startLocIndex)
end

---forceStartLocation
---@param startLocIndex integer
---@return void
function Player:forceStartLocation(startLocIndex)
--@debug@
    checkobject(self, Player, 'forceStartLocation', 'self')
    checktype(startLocIndex, 'integer', 'forceStartLocation', 1)
--@end-debug@
    return Native.ForcePlayerStartLocation(getUd(self), startLocIndex)
end

---setColor
---@param color PlayerColor
---@return void
function Player:setColor(color)
--@debug@
    checkobject(self, Player, 'setColor', 'self')
    checkuserdata(color, 'playercolor', 'setColor', 1)
--@end-debug@
    return Native.SetPlayerColor(getUd(self), color)
end

---setPlayerAlliance
---@param otherPlayer Player
---@param allianceSetting AllianceType
---@param value boolean
---@return void
function Player:setPlayerAlliance(otherPlayer, allianceSetting, value)
--@debug@
    checkobject(self, Player, 'setPlayerAlliance', 'self')
    checkobject(otherPlayer, require('lib.stdlib.oop.player'), 'setPlayerAlliance', 1)
    checkuserdata(allianceSetting, 'alliancetype', 'setPlayerAlliance', 2)
    checktype(value, 'boolean', 'setPlayerAlliance', 3)
--@end-debug@
    return Native.SetPlayerAlliance(getUd(self), getUd(otherPlayer), allianceSetting, value)
end

---setPlayerTaxRate
---@param otherPlayer Player
---@param resource PlayerState
---@param rate integer
---@return void
function Player:setPlayerTaxRate(otherPlayer, resource, rate)
--@debug@
    checkobject(self, Player, 'setPlayerTaxRate', 'self')
    checkobject(otherPlayer, require('lib.stdlib.oop.player'), 'setPlayerTaxRate', 1)
    checkuserdata(resource, 'playerstate', 'setPlayerTaxRate', 2)
    checktype(rate, 'integer', 'setPlayerTaxRate', 3)
--@end-debug@
    return Native.SetPlayerTaxRate(getUd(self), getUd(otherPlayer), resource, rate)
end

---setRacePreference
---@param racePreference RacePreference
---@return void
function Player:setRacePreference(racePreference)
--@debug@
    checkobject(self, Player, 'setRacePreference', 'self')
    checkuserdata(racePreference, 'racepreference', 'setRacePreference', 1)
--@end-debug@
    return Native.SetPlayerRacePreference(getUd(self), racePreference)
end

---setRaceSelectable
---@param value boolean
---@return void
function Player:setRaceSelectable(value)
--@debug@
    checkobject(self, Player, 'setRaceSelectable', 'self')
    checktype(value, 'boolean', 'setRaceSelectable', 1)
--@end-debug@
    return Native.SetPlayerRaceSelectable(getUd(self), value)
end

---setController
---@param controlType MapControl
---@return void
function Player:setController(controlType)
--@debug@
    checkobject(self, Player, 'setController', 'self')
    checkuserdata(controlType, 'mapcontrol', 'setController', 1)
--@end-debug@
    return Native.SetPlayerController(getUd(self), controlType)
end

---setName
---@param name string
---@return void
function Player:setName(name)
--@debug@
    checkobject(self, Player, 'setName', 'self')
    checktype(name, 'string', 'setName', 1)
--@end-debug@
    return Native.SetPlayerName(getUd(self), name)
end

---setOnScoreScreen
---@param flag boolean
---@return void
function Player:setOnScoreScreen(flag)
--@debug@
    checkobject(self, Player, 'setOnScoreScreen', 'self')
    checktype(flag, 'boolean', 'setOnScoreScreen', 1)
--@end-debug@
    return Native.SetPlayerOnScoreScreen(getUd(self), flag)
end

---getTeam
---@return integer
function Player:getTeam()
--@debug@
    checkobject(self, Player, 'getTeam', 'self')
--@end-debug@
    return Native.GetPlayerTeam(getUd(self))
end

---getStartLocation
---@return integer
function Player:getStartLocation()
--@debug@
    checkobject(self, Player, 'getStartLocation', 'self')
--@end-debug@
    return Native.GetPlayerStartLocation(getUd(self))
end

---getColor
---@return PlayerColor
function Player:getColor()
--@debug@
    checkobject(self, Player, 'getColor', 'self')
--@end-debug@
    return Native.GetPlayerColor(getUd(self))
end

---getSelectable
---@return boolean
function Player:getSelectable()
--@debug@
    checkobject(self, Player, 'getSelectable', 'self')
--@end-debug@
    return Native.GetPlayerSelectable(getUd(self))
end

---getController
---@return MapControl
function Player:getController()
--@debug@
    checkobject(self, Player, 'getController', 'self')
--@end-debug@
    return Native.GetPlayerController(getUd(self))
end

---getSlotState
---@return PlayerSlotState
function Player:getSlotState()
--@debug@
    checkobject(self, Player, 'getSlotState', 'self')
--@end-debug@
    return Native.GetPlayerSlotState(getUd(self))
end

---getPlayerTaxRate
---@param otherPlayer Player
---@param resource PlayerState
---@return integer
function Player:getPlayerTaxRate(otherPlayer, resource)
--@debug@
    checkobject(self, Player, 'getPlayerTaxRate', 'self')
    checkobject(otherPlayer, require('lib.stdlib.oop.player'), 'getPlayerTaxRate', 1)
    checkuserdata(resource, 'playerstate', 'getPlayerTaxRate', 2)
--@end-debug@
    return Native.GetPlayerTaxRate(getUd(self), getUd(otherPlayer), resource)
end

---isRacePrefSet
---@param pref RacePreference
---@return boolean
function Player:isRacePrefSet(pref)
--@debug@
    checkobject(self, Player, 'isRacePrefSet', 'self')
    checkuserdata(pref, 'racepreference', 'isRacePrefSet', 1)
--@end-debug@
    return Native.IsPlayerRacePrefSet(getUd(self), pref)
end

---getName
---@return string
function Player:getName()
--@debug@
    checkobject(self, Player, 'getName', 'self')
--@end-debug@
    return Native.GetPlayerName(getUd(self))
end

---getTournamentScore
---@return integer
function Player:getTournamentScore()
--@debug@
    checkobject(self, Player, 'getTournamentScore', 'self')
--@end-debug@
    return Native.GetTournamentScore(getUd(self))
end

---issueNeutralImmediateOrder
---@param neutralStructure Unit
---@param unitToBuild string
---@return boolean
function Player:issueNeutralImmediateOrder(neutralStructure, unitToBuild)
--@debug@
    checkobject(self, Player, 'issueNeutralImmediateOrder', 'self')
    checkobject(neutralStructure, require('lib.stdlib.oop.unit'), 'issueNeutralImmediateOrder', 1)
    checktype(unitToBuild, 'string', 'issueNeutralImmediateOrder', 2)
--@end-debug@
    return Native.IssueNeutralImmediateOrder(getUd(self), getUd(neutralStructure), unitToBuild)
end

---issueNeutralImmediateOrderById
---@param neutralStructure Unit
---@param unitId integer
---@return boolean
function Player:issueNeutralImmediateOrderById(neutralStructure, unitId)
--@debug@
    checkobject(self, Player, 'issueNeutralImmediateOrderById', 'self')
    checkobject(neutralStructure, require('lib.stdlib.oop.unit'), 'issueNeutralImmediateOrderById', 1)
    checktype(unitId, 'integer', 'issueNeutralImmediateOrderById', 2)
--@end-debug@
    return Native.IssueNeutralImmediateOrderById(getUd(self), getUd(neutralStructure), unitId)
end

---issueNeutralPointOrder
---@overload fun(neutralStructure: Unit, unitToBuild: string, vec: Vector): boolean
---@param neutralStructure Unit
---@param unitToBuild string
---@param x float
---@param y float
---@return boolean
function Player:issueNeutralPointOrder(neutralStructure, unitToBuild, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Player, 'issueNeutralPointOrder', 'self')
    checkobject(neutralStructure, require('lib.stdlib.oop.unit'), 'issueNeutralPointOrder', 1)
    checktype(unitToBuild, 'string', 'issueNeutralPointOrder', 2)
    checktype(x, 'float', 'issueNeutralPointOrder', 3)
    checktype(y, 'float', 'issueNeutralPointOrder', 4)
--@end-debug@
    return Native.IssueNeutralPointOrder(getUd(self), getUd(neutralStructure), unitToBuild, x, y)
end

---issueNeutralPointOrderById
---@overload fun(neutralStructure: Unit, unitId: integer, vec: Vector): boolean
---@param neutralStructure Unit
---@param unitId integer
---@param x float
---@param y float
---@return boolean
function Player:issueNeutralPointOrderById(neutralStructure, unitId, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Player, 'issueNeutralPointOrderById', 'self')
    checkobject(neutralStructure, require('lib.stdlib.oop.unit'), 'issueNeutralPointOrderById', 1)
    checktype(unitId, 'integer', 'issueNeutralPointOrderById', 2)
    checktype(x, 'float', 'issueNeutralPointOrderById', 3)
    checktype(y, 'float', 'issueNeutralPointOrderById', 4)
--@end-debug@
    return Native.IssueNeutralPointOrderById(getUd(self), getUd(neutralStructure), unitId, x, y)
end

---issueNeutralTargetOrder
---@param neutralStructure Unit
---@param unitToBuild string
---@param target Widget
---@return boolean
function Player:issueNeutralTargetOrder(neutralStructure, unitToBuild, target)
--@debug@
    checkobject(self, Player, 'issueNeutralTargetOrder', 'self')
    checkobject(neutralStructure, require('lib.stdlib.oop.unit'), 'issueNeutralTargetOrder', 1)
    checktype(unitToBuild, 'string', 'issueNeutralTargetOrder', 2)
    checkobject(target, require('lib.stdlib.oop.widget'), 'issueNeutralTargetOrder', 3)
--@end-debug@
    return Native.IssueNeutralTargetOrder(getUd(self), getUd(neutralStructure), unitToBuild, getUd(target))
end

---issueNeutralTargetOrderById
---@param neutralStructure Unit
---@param unitId integer
---@param target Widget
---@return boolean
function Player:issueNeutralTargetOrderById(neutralStructure, unitId, target)
--@debug@
    checkobject(self, Player, 'issueNeutralTargetOrderById', 'self')
    checkobject(neutralStructure, require('lib.stdlib.oop.unit'), 'issueNeutralTargetOrderById', 1)
    checktype(unitId, 'integer', 'issueNeutralTargetOrderById', 2)
    checkobject(target, require('lib.stdlib.oop.widget'), 'issueNeutralTargetOrderById', 3)
--@end-debug@
    return Native.IssueNeutralTargetOrderById(getUd(self), getUd(neutralStructure), unitId, getUd(target))
end

---isPlayerAlly
---@param otherPlayer Player
---@return boolean
function Player:isPlayerAlly(otherPlayer)
--@debug@
    checkobject(self, Player, 'isPlayerAlly', 'self')
    checkobject(otherPlayer, require('lib.stdlib.oop.player'), 'isPlayerAlly', 1)
--@end-debug@
    return Native.IsPlayerAlly(getUd(self), getUd(otherPlayer))
end

---isPlayerEnemy
---@param otherPlayer Player
---@return boolean
function Player:isPlayerEnemy(otherPlayer)
--@debug@
    checkobject(self, Player, 'isPlayerEnemy', 'self')
    checkobject(otherPlayer, require('lib.stdlib.oop.player'), 'isPlayerEnemy', 1)
--@end-debug@
    return Native.IsPlayerEnemy(getUd(self), getUd(otherPlayer))
end

---isInForce
---@param force Force
---@return boolean
function Player:isInForce(force)
--@debug@
    checkobject(self, Player, 'isInForce', 'self')
    checkobject(force, require('lib.stdlib.oop.force'), 'isInForce', 1)
--@end-debug@
    return Native.IsPlayerInForce(getUd(self), getUd(force))
end

---isObserver
---@return boolean
function Player:isObserver()
--@debug@
    checkobject(self, Player, 'isObserver', 'self')
--@end-debug@
    return Native.IsPlayerObserver(getUd(self))
end

---getRace
---@return Race
function Player:getRace()
--@debug@
    checkobject(self, Player, 'getRace', 'self')
--@end-debug@
    return Native.GetPlayerRace(getUd(self))
end

---getId
---@return integer
function Player:getId()
--@debug@
    checkobject(self, Player, 'getId', 'self')
--@end-debug@
    return Native.GetPlayerId(getUd(self))
end

---getUnitCount
---@param includeIncomplete boolean
---@return integer
function Player:getUnitCount(includeIncomplete)
--@debug@
    checkobject(self, Player, 'getUnitCount', 'self')
    checktype(includeIncomplete, 'boolean', 'getUnitCount', 1)
--@end-debug@
    return Native.GetPlayerUnitCount(getUd(self), includeIncomplete)
end

---getTypedUnitCount
---@param unitName string
---@param includeIncomplete boolean
---@param includeUpgrades boolean
---@return integer
function Player:getTypedUnitCount(unitName, includeIncomplete, includeUpgrades)
--@debug@
    checkobject(self, Player, 'getTypedUnitCount', 'self')
    checktype(unitName, 'string', 'getTypedUnitCount', 1)
    checktype(includeIncomplete, 'boolean', 'getTypedUnitCount', 2)
    checktype(includeUpgrades, 'boolean', 'getTypedUnitCount', 3)
--@end-debug@
    return Native.GetPlayerTypedUnitCount(getUd(self), unitName, includeIncomplete, includeUpgrades)
end

---getStructureCount
---@param includeIncomplete boolean
---@return integer
function Player:getStructureCount(includeIncomplete)
--@debug@
    checkobject(self, Player, 'getStructureCount', 'self')
    checktype(includeIncomplete, 'boolean', 'getStructureCount', 1)
--@end-debug@
    return Native.GetPlayerStructureCount(getUd(self), includeIncomplete)
end

---getState
---@param playerState PlayerState
---@return integer
function Player:getState(playerState)
--@debug@
    checkobject(self, Player, 'getState', 'self')
    checkuserdata(playerState, 'playerstate', 'getState', 1)
--@end-debug@
    return Native.GetPlayerState(getUd(self), playerState)
end

---getScore
---@param playerScore PlayerScore
---@return integer
function Player:getScore(playerScore)
--@debug@
    checkobject(self, Player, 'getScore', 'self')
    checkuserdata(playerScore, 'playerscore', 'getScore', 1)
--@end-debug@
    return Native.GetPlayerScore(getUd(self), playerScore)
end

---getPlayerAlliance
---@param otherPlayer Player
---@param allianceSetting AllianceType
---@return boolean
function Player:getPlayerAlliance(otherPlayer, allianceSetting)
--@debug@
    checkobject(self, Player, 'getPlayerAlliance', 'self')
    checkobject(otherPlayer, require('lib.stdlib.oop.player'), 'getPlayerAlliance', 1)
    checkuserdata(allianceSetting, 'alliancetype', 'getPlayerAlliance', 2)
--@end-debug@
    return Native.GetPlayerAlliance(getUd(self), getUd(otherPlayer), allianceSetting)
end

---getHandicap
---@return float
function Player:getHandicap()
--@debug@
    checkobject(self, Player, 'getHandicap', 'self')
--@end-debug@
    return Native.GetPlayerHandicap(getUd(self))
end

---getHandicapXP
---@return float
function Player:getHandicapXP()
--@debug@
    checkobject(self, Player, 'getHandicapXP', 'self')
--@end-debug@
    return Native.GetPlayerHandicapXP(getUd(self))
end

---setHandicap
---@param handicap float
---@return void
function Player:setHandicap(handicap)
--@debug@
    checkobject(self, Player, 'setHandicap', 'self')
    checktype(handicap, 'float', 'setHandicap', 1)
--@end-debug@
    return Native.SetPlayerHandicap(getUd(self), handicap)
end

---setHandicapXP
---@param handicap float
---@return void
function Player:setHandicapXP(handicap)
--@debug@
    checkobject(self, Player, 'setHandicapXP', 'self')
    checktype(handicap, 'float', 'setHandicapXP', 1)
--@end-debug@
    return Native.SetPlayerHandicapXP(getUd(self), handicap)
end

---setTechMaxAllowed
---@param techid integer
---@param maximum integer
---@return void
function Player:setTechMaxAllowed(techid, maximum)
--@debug@
    checkobject(self, Player, 'setTechMaxAllowed', 'self')
    checktype(techid, 'integer', 'setTechMaxAllowed', 1)
    checktype(maximum, 'integer', 'setTechMaxAllowed', 2)
--@end-debug@
    return Native.SetPlayerTechMaxAllowed(getUd(self), techid, maximum)
end

---getTechMaxAllowed
---@param techid integer
---@return integer
function Player:getTechMaxAllowed(techid)
--@debug@
    checkobject(self, Player, 'getTechMaxAllowed', 'self')
    checktype(techid, 'integer', 'getTechMaxAllowed', 1)
--@end-debug@
    return Native.GetPlayerTechMaxAllowed(getUd(self), techid)
end

---addTechResearched
---@param techid integer
---@param levels integer
---@return void
function Player:addTechResearched(techid, levels)
--@debug@
    checkobject(self, Player, 'addTechResearched', 'self')
    checktype(techid, 'integer', 'addTechResearched', 1)
    checktype(levels, 'integer', 'addTechResearched', 2)
--@end-debug@
    return Native.AddPlayerTechResearched(getUd(self), techid, levels)
end

---setTechResearched
---@param techid integer
---@param setToLevel integer
---@return void
function Player:setTechResearched(techid, setToLevel)
--@debug@
    checkobject(self, Player, 'setTechResearched', 'self')
    checktype(techid, 'integer', 'setTechResearched', 1)
    checktype(setToLevel, 'integer', 'setTechResearched', 2)
--@end-debug@
    return Native.SetPlayerTechResearched(getUd(self), techid, setToLevel)
end

---getTechResearched
---@param techid integer
---@param specificonly boolean
---@return boolean
function Player:getTechResearched(techid, specificonly)
--@debug@
    checkobject(self, Player, 'getTechResearched', 'self')
    checktype(techid, 'integer', 'getTechResearched', 1)
    checktype(specificonly, 'boolean', 'getTechResearched', 2)
--@end-debug@
    return Native.GetPlayerTechResearched(getUd(self), techid, specificonly)
end

---getTechCount
---@param techid integer
---@param specificonly boolean
---@return integer
function Player:getTechCount(techid, specificonly)
--@debug@
    checkobject(self, Player, 'getTechCount', 'self')
    checktype(techid, 'integer', 'getTechCount', 1)
    checktype(specificonly, 'boolean', 'getTechCount', 2)
--@end-debug@
    return Native.GetPlayerTechCount(getUd(self), techid, specificonly)
end

---setUnitsOwner
---@param owner integer
---@return void
function Player:setUnitsOwner(owner)
--@debug@
    checkobject(self, Player, 'setUnitsOwner', 'self')
    checktype(owner, 'integer', 'setUnitsOwner', 1)
--@end-debug@
    return Native.SetPlayerUnitsOwner(getUd(self), owner)
end

---cripple
---@param toWhichPlayers Force
---@param flag boolean
---@return void
function Player:cripple(toWhichPlayers, flag)
--@debug@
    checkobject(self, Player, 'cripple', 'self')
    checkobject(toWhichPlayers, require('lib.stdlib.oop.force'), 'cripple', 1)
    checktype(flag, 'boolean', 'cripple', 2)
--@end-debug@
    return Native.CripplePlayer(getUd(self), getUd(toWhichPlayers), flag)
end

---setAbilityAvailable
---@param abilid integer
---@param avail boolean
---@return void
function Player:setAbilityAvailable(abilid, avail)
--@debug@
    checkobject(self, Player, 'setAbilityAvailable', 'self')
    checktype(abilid, 'integer', 'setAbilityAvailable', 1)
    checktype(avail, 'boolean', 'setAbilityAvailable', 2)
--@end-debug@
    return Native.SetPlayerAbilityAvailable(getUd(self), abilid, avail)
end

---setState
---@param playerState PlayerState
---@param value integer
---@return void
function Player:setState(playerState, value)
--@debug@
    checkobject(self, Player, 'setState', 'self')
    checkuserdata(playerState, 'playerstate', 'setState', 1)
    checktype(value, 'integer', 'setState', 2)
--@end-debug@
    return Native.SetPlayerState(getUd(self), playerState, value)
end

---remove
---@param gameResult PlayerGameResult
---@return void
function Player:remove(gameResult)
--@debug@
    checkobject(self, Player, 'remove', 'self')
    checkuserdata(gameResult, 'playergameresult', 'remove', 1)
--@end-debug@
    return Native.RemovePlayer(getUd(self), gameResult)
end

---cacheHeroData
---@return void
function Player:cacheHeroData()
--@debug@
    checkobject(self, Player, 'cacheHeroData', 'self')
--@end-debug@
    return Native.CachePlayerHeroData(getUd(self))
end

---setFogStateRect
---@param state FogState
---@param where Rect
---@param useSharedVision boolean
---@return void
function Player:setFogStateRect(state, where, useSharedVision)
--@debug@
    checkobject(self, Player, 'setFogStateRect', 'self')
    checkuserdata(state, 'fogstate', 'setFogStateRect', 1)
    checkobject(where, require('lib.stdlib.oop.rect'), 'setFogStateRect', 2)
    checktype(useSharedVision, 'boolean', 'setFogStateRect', 3)
--@end-debug@
    return Native.SetFogStateRect(getUd(self), state, getUd(where), useSharedVision)
end

---setFogStateRadius
---@overload fun(state: FogState, vec: Vector, radius: float, useSharedVision: boolean): void
---@param state FogState
---@param centerx float
---@param centerY float
---@param radius float
---@param useSharedVision boolean
---@return void
function Player:setFogStateRadius(state, centerx, centerY, radius, useSharedVision)
    if type(centerx) == 'table' then
        radius, useSharedVision = centerY, radius
        centerx, centerY = table.unpack(centerx)
    end
--@debug@
    checkobject(self, Player, 'setFogStateRadius', 'self')
    checkuserdata(state, 'fogstate', 'setFogStateRadius', 1)
    checktype(centerx, 'float', 'setFogStateRadius', 2)
    checktype(centerY, 'float', 'setFogStateRadius', 3)
    checktype(radius, 'float', 'setFogStateRadius', 4)
    checktype(useSharedVision, 'boolean', 'setFogStateRadius', 5)
--@end-debug@
    return Native.SetFogStateRadius(getUd(self), state, centerx, centerY, radius, useSharedVision)
end

---dialogDisplay
---@param dialog Dialog
---@param flag boolean
---@return void
function Player:dialogDisplay(dialog, flag)
--@debug@
    checkobject(self, Player, 'dialogDisplay', 'self')
    checkobject(dialog, require('lib.stdlib.oop.dialog'), 'dialogDisplay', 1)
    checktype(flag, 'boolean', 'dialogDisplay', 2)
--@end-debug@
    return Native.DialogDisplay(getUd(self), getUd(dialog), flag)
end

---displayTextTo
---@overload fun(vec: Vector, message: string): void
---@param x float
---@param y float
---@param message string
---@return void
function Player:displayTextTo(x, y, message)
    if type(x) == 'table' then
        message = y
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Player, 'displayTextTo', 'self')
    checktype(x, 'float', 'displayTextTo', 1)
    checktype(y, 'float', 'displayTextTo', 2)
    checktype(message, 'string', 'displayTextTo', 3)
--@end-debug@
    return Native.DisplayTextToPlayer(getUd(self), x, y, message)
end

---displayTimedTextTo
---@overload fun(vec: Vector, duration: float, message: string): void
---@param x float
---@param y float
---@param duration float
---@param message string
---@return void
function Player:displayTimedTextTo(x, y, duration, message)
    if type(x) == 'table' then
        duration, message = y, duration
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Player, 'displayTimedTextTo', 'self')
    checktype(x, 'float', 'displayTimedTextTo', 1)
    checktype(y, 'float', 'displayTimedTextTo', 2)
    checktype(duration, 'float', 'displayTimedTextTo', 3)
    checktype(message, 'string', 'displayTimedTextTo', 4)
--@end-debug@
    return Native.DisplayTimedTextToPlayer(getUd(self), x, y, duration, message)
end

---displayTimedTextFrom
---@overload fun(vec: Vector, duration: float, message: string): void
---@param x float
---@param y float
---@param duration float
---@param message string
---@return void
function Player:displayTimedTextFrom(x, y, duration, message)
    if type(x) == 'table' then
        duration, message = y, duration
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Player, 'displayTimedTextFrom', 'self')
    checktype(x, 'float', 'displayTimedTextFrom', 1)
    checktype(y, 'float', 'displayTimedTextFrom', 2)
    checktype(duration, 'float', 'displayTimedTextFrom', 3)
    checktype(message, 'string', 'displayTimedTextFrom', 4)
--@end-debug@
    return Native.DisplayTimedTextFromPlayer(getUd(self), x, y, duration, message)
end

---setLeaderboard
---@param lb LeaderBoard
---@return void
function Player:setLeaderboard(lb)
--@debug@
    checkobject(self, Player, 'setLeaderboard', 'self')
    checkobject(lb, require('lib.stdlib.oop.leaderboard'), 'setLeaderboard', 1)
--@end-debug@
    return Native.PlayerSetLeaderboard(getUd(self), getUd(lb))
end

---getLeaderboard
---@return LeaderBoard
function Player:getLeaderboard()
--@debug@
    checkobject(self, Player, 'getLeaderboard', 'self')
--@end-debug@
    return require('lib.stdlib.oop.leaderboard'):fromUd(Native.PlayerGetLeaderboard(getUd(self)))
end

---setBlight
---@overload fun(vec: Vector, radius: float, addBlight: boolean): void
---@param x float
---@param y float
---@param radius float
---@param addBlight boolean
---@return void
function Player:setBlight(x, y, radius, addBlight)
    if type(x) == 'table' then
        radius, addBlight = y, radius
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Player, 'setBlight', 'self')
    checktype(x, 'float', 'setBlight', 1)
    checktype(y, 'float', 'setBlight', 2)
    checktype(radius, 'float', 'setBlight', 3)
    checktype(addBlight, 'boolean', 'setBlight', 4)
--@end-debug@
    return Native.SetBlight(getUd(self), x, y, radius, addBlight)
end

---setBlightRect
---@param r Rect
---@param addBlight boolean
---@return void
function Player:setBlightRect(r, addBlight)
--@debug@
    checkobject(self, Player, 'setBlightRect', 'self')
    checkobject(r, require('lib.stdlib.oop.rect'), 'setBlightRect', 1)
    checktype(addBlight, 'boolean', 'setBlightRect', 2)
--@end-debug@
    return Native.SetBlightRect(getUd(self), getUd(r), addBlight)
end

---setBlightPoint
---@overload fun(vec: Vector, addBlight: boolean): void
---@param x float
---@param y float
---@param addBlight boolean
---@return void
function Player:setBlightPoint(x, y, addBlight)
    if type(x) == 'table' then
        addBlight = y
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Player, 'setBlightPoint', 'self')
    checktype(x, 'float', 'setBlightPoint', 1)
    checktype(y, 'float', 'setBlightPoint', 2)
    checktype(addBlight, 'boolean', 'setBlightPoint', 3)
--@end-debug@
    return Native.SetBlightPoint(getUd(self), x, y, addBlight)
end

---startMeleeAI
---@param script string
---@return void
function Player:startMeleeAI(script)
--@debug@
    checkobject(self, Player, 'startMeleeAI', 'self')
    checktype(script, 'string', 'startMeleeAI', 1)
--@end-debug@
    return Native.StartMeleeAI(getUd(self), script)
end

---startCampaignAI
---@param script string
---@return void
function Player:startCampaignAI(script)
--@debug@
    checkobject(self, Player, 'startCampaignAI', 'self')
    checktype(script, 'string', 'startCampaignAI', 1)
--@end-debug@
    return Native.StartCampaignAI(getUd(self), script)
end

---commandAI
---@param command integer
---@param data integer
---@return void
function Player:commandAI(command, data)
--@debug@
    checkobject(self, Player, 'commandAI', 'self')
    checktype(command, 'integer', 'commandAI', 1)
    checktype(data, 'integer', 'commandAI', 2)
--@end-debug@
    return Native.CommandAI(getUd(self), command, data)
end

---pauseCompAI
---@param pause boolean
---@return void
function Player:pauseCompAI(pause)
--@debug@
    checkobject(self, Player, 'pauseCompAI', 'self')
    checktype(pause, 'boolean', 'pauseCompAI', 1)
--@end-debug@
    return Native.PauseCompAI(getUd(self), pause)
end

---getAIDifficulty
---@return AiDifficulty
function Player:getAIDifficulty()
--@debug@
    checkobject(self, Player, 'getAIDifficulty', 'self')
--@end-debug@
    return Native.GetAIDifficulty(getUd(self))
end

---removeAllGuardPositions
---@return void
function Player:removeAllGuardPositions()
--@debug@
    checkobject(self, Player, 'removeAllGuardPositions', 'self')
--@end-debug@
    return Native.RemoveAllGuardPositions(getUd(self))
end

---decTechResearched
---@param techid integer
---@param levels integer
---@return void
function Player:decTechResearched(techid, levels)
--@debug@
    checkobject(self, Player, 'decTechResearched', 'self')
    checktype(techid, 'integer', 'decTechResearched', 1)
    checktype(levels, 'integer', 'decTechResearched', 2)
--@end-debug@
    return Native.BlzDecPlayerTechResearched(getUd(self), techid, levels)
end

---displayChatMessage
---@param recipient integer
---@param message string
---@return void
function Player:displayChatMessage(recipient, message)
--@debug@
    checkobject(self, Player, 'displayChatMessage', 'self')
    checktype(recipient, 'integer', 'displayChatMessage', 1)
    checktype(message, 'string', 'displayChatMessage', 2)
--@end-debug@
    return Native.BlzDisplayChatMessage(getUd(self), recipient, message)
end

return Player
