local Quest = require('stdlib.oop.quest')
local Trigger = require('stdlib.oop.trigger')
local CommandLine = require('stdlib.utils.commandline')
local Icons = require('stdlib.ui.icons')

---@class ChangeLog : object
---@field private major integer
---@field private minor integer
---@field private rev integer
---@field protected logs string[]
local ChangeLog = class('ChangeLog')

---@class table<string, ChangeLog>
local versionMap = {}

---@type ChangeLog[]
local versionList = {}

---@type Quest[]
local quests = {}

---LogType
ChangeLog.LogType = {
    Normal = 1, --
    Feature = 2, --
    Improve = 3, --
    Bug = 4, --
    Other = 5, --
    [1] = 'Normal',
    [2] = 'Feature',
    [3] = 'Improve',
    [4] = 'Bug',
    [5] = 'Other',
}

function ChangeLog:constructor()
    self.major = 0
    self.minor = 0
    self.rev = 0
    self.logs = {}
end

---<static> setVersion
---@param major integer
---@param minor integer
---@param rev integer
function ChangeLog:create(major, minor, rev)
    local cl = ChangeLog:new()
    cl.major = major
    cl.minor = minor
    cl.rev = rev
    versionMap[cl:getVersionString()] = cl
    table.insert(versionList, cl)
    return cl
end

---getVersionString
---@return string
function ChangeLog:getVersionString()
    return string.format('v%s.%s.%s', self.major, self.minor, self.rev)
end

---add
---@param logType LogType
---@param change string
function ChangeLog:add(logType, change)
    if logType == ChangeLog.LogType.Normal then
        table.insert(self.logs, change)
    else
        table.insert(self.logs, string.format(L['%s: %s'], ChangeLog.LogType[logType], change))
    end
    return self
end

---feature
---@param change string
function ChangeLog:feature(change)
    return self:add(ChangeLog.LogType.Feature, change)
end

---improve
---@param change string
function ChangeLog:improve(change)
    return self:add(ChangeLog.LogType.Improve, change)
end

---bug
---@param change string
function ChangeLog:bug(change)
    return self:add(ChangeLog.LogType.Bug, change)
end

---other
---@param change string
function ChangeLog:other(change)
    return self:add(ChangeLog.LogType.Other, change)
end

---normal
---@param change string
function ChangeLog:normal(change)
    return self:add(ChangeLog.LogType.Normal, change)
end

---<static> getVersion
---@param version string
---@return ChangeLog
function ChangeLog:getVersion(version)
    return versionMap[version]
end

---<static> getVersions
---@return ChangeLog[]
function ChangeLog:getVersions()
    table.sort(versionList, function(a, b)
        return a.major ~= b.major and b.major - a.major or a.minor ~= b.minor and b.minor - a.minor or b.rev - a.rev
    end)
    return versionList
end

CommandLine:addOptionAnyPlayer('-changelog|-cl', function(player, str)
    if not string.startswith(str, 'v') then
        str = 'v' .. str
    end
    local ver = ChangeLog:getVersion(str)
    if not ver then
        player:displayTimedTextTo(0, 0, 15, string.format(L["Not find version: %s"], str))
    else
        local title = string.format(L["|cff6495edChange Log for |cffffd700%s"], ver:getVersionString())
        player:displayTimedTextTo(0, 0, 15, title)
        for _, log in ipairs(ver.logs) do
            player:displayTimedTextTo(0, 0, 15, string.format("|cffb8860b - |r|cffc2e8eb%s", log))
        end
    end
end)

Timer:after(3, function()

    for _, changeLog in ipairs(ChangeLog:getVersions()) do
        local title = string.format(L["|cffff6347Change Log for |cffffd700%s"], changeLog:getVersionString())
        local changes = table.reduce(changeLog.logs, function(ret, str, i, t)
            return ret .. string.format("|cffb8860b - |r|cffc2e8eb%s|r|n", str)
        end, '')
        local quest = Quest:create()
        quest:setRequired(false)
        quest:setTitle(title)
        quest:setDescription(changes)
        quest:setIconPath(Icons.bTNTome)
        quest:setState(Quest.StateType.Discovered)
        table.insert(quests, quest)
    end

end)

return ChangeLog
