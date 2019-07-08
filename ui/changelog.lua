local Quest = require('stdlib.oop.quest')
local Trigger = require('stdlib.oop.trigger')
local CommandLine = require('stdlib.utils.commandline')
local Icons = require('stdlib.ui.icons')
local Message = require('utils.message')

---@class ChangeLog : object
---@field private major integer
---@field private minor integer
---@field private rev integer
---@field protected logs string[]
---@field protected quest Quest
local ChangeLog = class('ChangeLog')

---@class table<string, ChangeLog>
local versionMap = {}

---@type ChangeLog[]
local versionList = {}

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
    for i, v in ipairs(ChangeLog.LogType) do
        self.logs[i] = {}
    end
end

function ChangeLog:destructor()
    versionMap[self:getVersionString()] = nil
    for i, v in ipairs(versionList) do
        if v == self then
            table.remove(versionList, i)
            break
        end
    end
    if self.quest then
        self.quest:delete()
    end
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
    self.logs[logType] = self.logs[logType] or {}
    table.insert(self.logs[logType], change)
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

---getLog
---@return string
function ChangeLog:getLog()
    local msg = {}
    for i, changes in ipairs(self.logs) do
        if #changes > 0 then
            table.insert(msg, ChangeLog.LogType[i])
            for _, change in ipairs(changes) do
                table.insert(msg, string.format('|cffb8860b - |r|cffc2e8eb%s|r', change))
            end
        end
    end
    return msg
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

---<static> update
function ChangeLog:update()
    for _, changeLog in ipairs(ChangeLog:getVersions()) do
        local title = string.format(L['|cffff6347Change Log for |cffffd700%s'], changeLog:getVersionString())
        local quest
        if not changeLog.quest then
            quest = Quest:create()
            changeLog.quest = quest
        else
            quest = changeLog.quest
        end
        quest:setRequired(false)
        quest:setTitle(title)
        quest:setDescription(table.concat(changeLog:getLog(), '|n'))
        quest:setIconPath(Icons.bTNTome)
        quest:setState(Quest.StateType.Discovered)
    end
end

CommandLine:addOptionToAll('-changelog|-cl', function(player, str)
    if not str then
        local versions = ChangeLog:getVersions()
        if not versions or #versions == 0 then
            Message:toPlayer(player, L['no valid change log'])
            return
        end
        str = versions[#versions]:getVersionString()
    elseif not string.startswith(str, 'v') then
        str = 'v' .. str
    end
    local ver = ChangeLog:getVersion(str)
    if not ver then
        Message:toPlayer(player, string.format(L['Not find version: %s'], str), 15)
    else
        local title = string.format(L['|cff6495edChange Log for |cffffd700%s'], ver:getVersionString())
        Message:toPlayer(player, title, 15)
        for _, msg in ipairs(ver:getLog()) do
            Message:toPlayer(player, msg)
        end
    end
end)

return ChangeLog
