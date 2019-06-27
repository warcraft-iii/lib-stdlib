local Native = require('lib.stdlib.native')
local LeaderBoard = require('lib.stdlib.oop.leaderboard')

---@class Player : Agent
local Player = class('Player', require('lib.stdlib.oop.agent'))

---- compact same name native function
local mt = table.shallowcopy(getmetatable(Player))
mt.__call = function(_, ...)
    return Native.Player(...)
end
setmetatable(Player, mt)

---<static> get
---@param number integer
---@return Player
function Player:get(number)
    return Player:fromUd(Native.Player(number))
end

---setTeam
---@param team integer
---@return void
function Player:setTeam(team)
    return Native.SetPlayerTeam(getUd(self), team)
end

---setStartLocation
---@param startLocIndex integer
---@return void
function Player:setStartLocation(startLocIndex)
    return Native.SetPlayerStartLocation(getUd(self), startLocIndex)
end

---forceStartLocation
---@param startLocIndex integer
---@return void
function Player:forceStartLocation(startLocIndex)
    return Native.ForcePlayerStartLocation(getUd(self), startLocIndex)
end

---setColor
---@param color PlayerColor
---@return void
function Player:setColor(color)
    return Native.SetPlayerColor(getUd(self), color)
end

---setPlayerAlliance
---@param otherPlayer Player
---@param allianceSetting AllianceType
---@param value boolean
---@return void
function Player:setPlayerAlliance(otherPlayer, allianceSetting, value)
    return Native.SetPlayerAlliance(getUd(self), getUd(otherPlayer), allianceSetting, value)
end

---setPlayerTaxRate
---@param otherPlayer Player
---@param resource PlayerState
---@param rate integer
---@return void
function Player:setPlayerTaxRate(otherPlayer, resource, rate)
    return Native.SetPlayerTaxRate(getUd(self), getUd(otherPlayer), resource, rate)
end

---setRacePreference
---@param racePreference RacePreference
---@return void
function Player:setRacePreference(racePreference)
    return Native.SetPlayerRacePreference(getUd(self), racePreference)
end

---setRaceSelectable
---@param value boolean
---@return void
function Player:setRaceSelectable(value)
    return Native.SetPlayerRaceSelectable(getUd(self), value)
end

---setController
---@param controlType MapControl
---@return void
function Player:setController(controlType)
    return Native.SetPlayerController(getUd(self), controlType)
end

---setName
---@param name string
---@return void
function Player:setName(name)
    return Native.SetPlayerName(getUd(self), name)
end

---setOnScoreScreen
---@param flag boolean
---@return void
function Player:setOnScoreScreen(flag)
    return Native.SetPlayerOnScoreScreen(getUd(self), flag)
end

---getTeam
---@return integer
function Player:getTeam()
    return Native.GetPlayerTeam(getUd(self))
end

---getStartLocation
---@return integer
function Player:getStartLocation()
    return Native.GetPlayerStartLocation(getUd(self))
end

---getColor
---@return PlayerColor
function Player:getColor()
    return Native.GetPlayerColor(getUd(self))
end

---getSelectable
---@return boolean
function Player:getSelectable()
    return Native.GetPlayerSelectable(getUd(self))
end

---getController
---@return MapControl
function Player:getController()
    return Native.GetPlayerController(getUd(self))
end

---getSlotState
---@return PlayerSlotState
function Player:getSlotState()
    return Native.GetPlayerSlotState(getUd(self))
end

---getPlayerTaxRate
---@param otherPlayer Player
---@param resource PlayerState
---@return integer
function Player:getPlayerTaxRate(otherPlayer, resource)
    return Native.GetPlayerTaxRate(getUd(self), getUd(otherPlayer), resource)
end

---isRacePrefSet
---@param pref RacePreference
---@return boolean
function Player:isRacePrefSet(pref)
    return Native.IsPlayerRacePrefSet(getUd(self), pref)
end

---getName
---@return string
function Player:getName()
    return Native.GetPlayerName(getUd(self))
end

---getTournamentScore
---@return integer
function Player:getTournamentScore()
    return Native.GetTournamentScore(getUd(self))
end

---issueNeutralImmediateOrder
---@param neutralStructure Unit
---@param unitToBuild string
---@return boolean
function Player:issueNeutralImmediateOrder(neutralStructure, unitToBuild)
    return Native.IssueNeutralImmediateOrder(getUd(self), getUd(neutralStructure), unitToBuild)
end

---issueNeutralImmediateOrderById
---@param neutralStructure Unit
---@param unitId integer
---@return boolean
function Player:issueNeutralImmediateOrderById(neutralStructure, unitId)
    return Native.IssueNeutralImmediateOrderById(getUd(self), getUd(neutralStructure), unitId)
end

---issueNeutralPointOrder
---@param neutralStructure Unit
---@param unitToBuild string
---@param x float
---@param y float
---@return boolean
function Player:issueNeutralPointOrder(neutralStructure, unitToBuild, x, y)
    return Native.IssueNeutralPointOrder(getUd(self), getUd(neutralStructure), unitToBuild, x, y)
end

---issueNeutralPointOrderById
---@param neutralStructure Unit
---@param unitId integer
---@param x float
---@param y float
---@return boolean
function Player:issueNeutralPointOrderById(neutralStructure, unitId, x, y)
    return Native.IssueNeutralPointOrderById(getUd(self), getUd(neutralStructure), unitId, x, y)
end

---issueNeutralTargetOrder
---@param neutralStructure Unit
---@param unitToBuild string
---@param target Widget
---@return boolean
function Player:issueNeutralTargetOrder(neutralStructure, unitToBuild, target)
    return Native.IssueNeutralTargetOrder(getUd(self), getUd(neutralStructure), unitToBuild, getUd(target))
end

---issueNeutralTargetOrderById
---@param neutralStructure Unit
---@param unitId integer
---@param target Widget
---@return boolean
function Player:issueNeutralTargetOrderById(neutralStructure, unitId, target)
    return Native.IssueNeutralTargetOrderById(getUd(self), getUd(neutralStructure), unitId, getUd(target))
end

---isPlayerAlly
---@param otherPlayer Player
---@return boolean
function Player:isPlayerAlly(otherPlayer)
    return Native.IsPlayerAlly(getUd(self), getUd(otherPlayer))
end

---isPlayerEnemy
---@param otherPlayer Player
---@return boolean
function Player:isPlayerEnemy(otherPlayer)
    return Native.IsPlayerEnemy(getUd(self), getUd(otherPlayer))
end

---isInForce
---@param force Force
---@return boolean
function Player:isInForce(force)
    return Native.IsPlayerInForce(getUd(self), getUd(force))
end

---isObserver
---@return boolean
function Player:isObserver()
    return Native.IsPlayerObserver(getUd(self))
end

---getRace
---@return Race
function Player:getRace()
    return Native.GetPlayerRace(getUd(self))
end

---getId
---@return integer
function Player:getId()
    return Native.GetPlayerId(getUd(self))
end

---getUnitCount
---@param includeIncomplete boolean
---@return integer
function Player:getUnitCount(includeIncomplete)
    return Native.GetPlayerUnitCount(getUd(self), includeIncomplete)
end

---getTypedUnitCount
---@param unitName string
---@param includeIncomplete boolean
---@param includeUpgrades boolean
---@return integer
function Player:getTypedUnitCount(unitName, includeIncomplete, includeUpgrades)
    return Native.GetPlayerTypedUnitCount(getUd(self), unitName, includeIncomplete, includeUpgrades)
end

---getStructureCount
---@param includeIncomplete boolean
---@return integer
function Player:getStructureCount(includeIncomplete)
    return Native.GetPlayerStructureCount(getUd(self), includeIncomplete)
end

---getState
---@param playerState PlayerState
---@return integer
function Player:getState(playerState)
    return Native.GetPlayerState(getUd(self), playerState)
end

---getScore
---@param playerScore PlayerScore
---@return integer
function Player:getScore(playerScore)
    return Native.GetPlayerScore(getUd(self), playerScore)
end

---getPlayerAlliance
---@param otherPlayer Player
---@param allianceSetting AllianceType
---@return boolean
function Player:getPlayerAlliance(otherPlayer, allianceSetting)
    return Native.GetPlayerAlliance(getUd(self), getUd(otherPlayer), allianceSetting)
end

---getHandicap
---@return float
function Player:getHandicap()
    return Native.GetPlayerHandicap(getUd(self))
end

---getHandicapXP
---@return float
function Player:getHandicapXP()
    return Native.GetPlayerHandicapXP(getUd(self))
end

---setHandicap
---@param handicap float
---@return void
function Player:setHandicap(handicap)
    return Native.SetPlayerHandicap(getUd(self), handicap)
end

---setHandicapXP
---@param handicap float
---@return void
function Player:setHandicapXP(handicap)
    return Native.SetPlayerHandicapXP(getUd(self), handicap)
end

---setTechMaxAllowed
---@param techid integer
---@param maximum integer
---@return void
function Player:setTechMaxAllowed(techid, maximum)
    return Native.SetPlayerTechMaxAllowed(getUd(self), techid, maximum)
end

---getTechMaxAllowed
---@param techid integer
---@return integer
function Player:getTechMaxAllowed(techid)
    return Native.GetPlayerTechMaxAllowed(getUd(self), techid)
end

---addTechResearched
---@param techid integer
---@param levels integer
---@return void
function Player:addTechResearched(techid, levels)
    return Native.AddPlayerTechResearched(getUd(self), techid, levels)
end

---setTechResearched
---@param techid integer
---@param setToLevel integer
---@return void
function Player:setTechResearched(techid, setToLevel)
    return Native.SetPlayerTechResearched(getUd(self), techid, setToLevel)
end

---getTechResearched
---@param techid integer
---@param specificonly boolean
---@return boolean
function Player:getTechResearched(techid, specificonly)
    return Native.GetPlayerTechResearched(getUd(self), techid, specificonly)
end

---getTechCount
---@param techid integer
---@param specificonly boolean
---@return integer
function Player:getTechCount(techid, specificonly)
    return Native.GetPlayerTechCount(getUd(self), techid, specificonly)
end

---setUnitsOwner
---@param owner integer
---@return void
function Player:setUnitsOwner(owner)
    return Native.SetPlayerUnitsOwner(getUd(self), owner)
end

---cripple
---@param toWhichPlayers Force
---@param flag boolean
---@return void
function Player:cripple(toWhichPlayers, flag)
    return Native.CripplePlayer(getUd(self), getUd(toWhichPlayers), flag)
end

---setAbilityAvailable
---@param abilid integer
---@param avail boolean
---@return void
function Player:setAbilityAvailable(abilid, avail)
    return Native.SetPlayerAbilityAvailable(getUd(self), abilid, avail)
end

---setState
---@param playerState PlayerState
---@param value integer
---@return void
function Player:setState(playerState, value)
    return Native.SetPlayerState(getUd(self), playerState, value)
end

---remove
---@param gameResult PlayerGameresult
---@return void
function Player:remove(gameResult)
    return Native.RemovePlayer(getUd(self), gameResult)
end

---cacheHeroData
---@return void
function Player:cacheHeroData()
    return Native.CachePlayerHeroData(getUd(self))
end

---setFogStateRect
---@param state FogState
---@param where Rect
---@param useSharedVision boolean
---@return void
function Player:setFogStateRect(state, where, useSharedVision)
    return Native.SetFogStateRect(getUd(self), state, getUd(where), useSharedVision)
end

---setFogStateRadius
---@param state FogState
---@param centerx float
---@param centerY float
---@param radius float
---@param useSharedVision boolean
---@return void
function Player:setFogStateRadius(state, centerx, centerY, radius, useSharedVision)
    return Native.SetFogStateRadius(getUd(self), state, centerx, centerY, radius, useSharedVision)
end

---setFogStateRadiusLoc
---@param state FogState
---@param center Location
---@param radius float
---@param useSharedVision boolean
---@return void
function Player:setFogStateRadiusLoc(state, center, radius, useSharedVision)
    return Native.SetFogStateRadiusLoc(getUd(self), state, getUd(center), radius, useSharedVision)
end

---dialogDisplay
---@param dialog Dialog
---@param flag boolean
---@return void
function Player:dialogDisplay(dialog, flag)
    return Native.DialogDisplay(getUd(self), getUd(dialog), flag)
end

---displayTextTo
---@param x float
---@param y float
---@param message string
---@return void
function Player:displayTextTo(x, y, message)
    return Native.DisplayTextToPlayer(getUd(self), x, y, message)
end

---displayTimedTextTo
---@param x float
---@param y float
---@param duration float
---@param message string
---@return void
function Player:displayTimedTextTo(x, y, duration, message)
    return Native.DisplayTimedTextToPlayer(getUd(self), x, y, duration, message)
end

---displayTimedTextFrom
---@param x float
---@param y float
---@param duration float
---@param message string
---@return void
function Player:displayTimedTextFrom(x, y, duration, message)
    return Native.DisplayTimedTextFromPlayer(getUd(self), x, y, duration, message)
end

---setLeaderboard
---@param lb LeaderBoard
---@return void
function Player:setLeaderboard(lb)
    return Native.PlayerSetLeaderboard(getUd(self), getUd(lb))
end

---getLeaderboard
---@return LeaderBoard
function Player:getLeaderboard()
    return LeaderBoard:fromUd(Native.PlayerGetLeaderboard(getUd(self)))
end

---setBlight
---@param x float
---@param y float
---@param radius float
---@param addBlight boolean
---@return void
function Player:setBlight(x, y, radius, addBlight)
    return Native.SetBlight(getUd(self), x, y, radius, addBlight)
end

---setBlightRect
---@param r Rect
---@param addBlight boolean
---@return void
function Player:setBlightRect(r, addBlight)
    return Native.SetBlightRect(getUd(self), getUd(r), addBlight)
end

---setBlightPoint
---@param x float
---@param y float
---@param addBlight boolean
---@return void
function Player:setBlightPoint(x, y, addBlight)
    return Native.SetBlightPoint(getUd(self), x, y, addBlight)
end

---setBlightLoc
---@param loc Location
---@param radius float
---@param addBlight boolean
---@return void
function Player:setBlightLoc(loc, radius, addBlight)
    return Native.SetBlightLoc(getUd(self), getUd(loc), radius, addBlight)
end

---startMeleeAI
---@param script string
---@return void
function Player:startMeleeAI(script)
    return Native.StartMeleeAI(getUd(self), script)
end

---startCampaignAI
---@param script string
---@return void
function Player:startCampaignAI(script)
    return Native.StartCampaignAI(getUd(self), script)
end

---commandAI
---@param command integer
---@param data integer
---@return void
function Player:commandAI(command, data)
    return Native.CommandAI(getUd(self), command, data)
end

---pauseCompAI
---@param pause boolean
---@return void
function Player:pauseCompAI(pause)
    return Native.PauseCompAI(getUd(self), pause)
end

---getAIDifficulty
---@return AiDifficulty
function Player:getAIDifficulty()
    return Native.GetAIDifficulty(getUd(self))
end

---removeAllGuardPositions
---@return void
function Player:removeAllGuardPositions()
    return Native.RemoveAllGuardPositions(getUd(self))
end

---decTechResearched
---@param techid integer
---@param levels integer
---@return void
function Player:decTechResearched(techid, levels)
    return Native.BlzDecPlayerTechResearched(getUd(self), techid, levels)
end

---displayChatMessage
---@param recipient integer
---@param message string
---@return void
function Player:displayChatMessage(recipient, message)
    return Native.BlzDisplayChatMessage(getUd(self), recipient, message)
end

return Player
