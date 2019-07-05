---@type Player
local Player = require('lib.stdlib.oop._generated._player')
local PlayerState = require('lib.stdlib.enum.playerstate')
local Native = require('lib.stdlib.native.native')
local Group = require('lib.stdlib.oop.group')
local Vector = require('lib.stdlib.oop.vector')

---@type Player
local _localPlayer = Player:fromUd(Native.GetLocalPlayer())

---@type Player[]
local _players = {}
do
    for id = 0, bj_MAX_PLAYER_SLOTS - 1 do
        table.insert(_players, Player:fromUd(Native.Player(id)))
    end
end

---<static> get
---@param id integer
---@return Player
function Player:get(id)
    return _players[id + 1]
end

---<static> at
---@return Player
function Player:at(index)
    return _players[index]
end

---<static> getLocal
---@return Player
function Player:getLocal()
    return _localPlayer
end

---adjustState
---@param state PlayerState
---@param delta integer
---@return void
function Player:adjustState(state, delta)
    if delta > 0 then
        if state == PlayerState.ResourceGold then
            self:adjustState(PlayerState.GoldGathered, delta)
        elseif state == PlayerState.ResourceLumber then
            self:adjustState(PlayerState.LumberGathered, delta)
        end
    end
    return self:setState(state, self:getState(state) + delta)
end

---adjustGold
---@param delta integer
---@return void
function Player:adjustGold(delta)
    return self:adjustState(PlayerState.ResourceGold, delta)
end

---adjustLumber
---@param delta integer
---@return void
function Player:adjustLumber(delta)
    return self:adjustState(PlayerState.ResourceLumber, delta)
end

---iterateAll
---@return fun(): Player
function Player:iterateAll()
    return vipairs(_players)
end

---getUnits
---@param filter UnitFilter
---@return Unit[]
function Player:getUnits(filter)
    local group = Group:create()
    group:enumUnitsOfPlayer(self, filter)
    local units = group:getUnits()
    group:delete()
    return units
end

---iterateUnits
---@param filter UnitFilter
---@return fun(): Unit
function Player:iterateUnits(filter)
    return vipairs(self:getUnits(filter))
end

---clearSelected
---@return void
function Player:clearSelected()
    if self:isLocal() then
        Native.ClearSelection()
    end
end

---selectUnitSingle
---@param unit Unit
---@return void
function Player:selectUnitSingle(unit)
    self:clearSelected()
    self:selectUnit(unit)
end

---setUnitSelected
---@param unit Unit
---@param flag boolean
---@return void
function Player:setUnitSelected(unit, flag)
    if self:isLocal() then
        return unit:setSelected(flag)
    end
end

---selectUnit
---@param unit Unit
---@return void
function Player:selectUnit(unit)
    return self:setUnitSelected(unit, true)
end

---deselectUnit
---@param unit Unit
function Player:deselectUnit(unit)
    return self:setUnitSelected(unit, false)
end

---showDialog
---@param dialog Dialog
---@return void
function Player:showDialog(dialog)
    return self:dialogDisplay(dialog, true)
end

---hideDialog
---@param dialog Dialog
---@return void
function Player:hideDialog(dialog)
    return self:dialogDisplay(dialog, false)
end

---isLocal
---@return boolean
function Player:isLocal()
    return self == _localPlayer
end

---getStartPos
---@return float, float
function Player:getStartPos()
    local s = Native.GetPlayerStartLocation(self:getUd())
    return Vector:new(Native.GetStartLocationX(s), Native.GetStartLocationY(s))
end

return Player
