local Dialog = require("lib.stdlib.oop.dialog")
local Trigger = require("lib.stdlib.oop.trigger")
local Event = require("lib.stdlib.oop.event")
local Player = require("lib.stdlib.oop.player")

---@class DialogBox : object
---@field private title string
---@field private dlg Dialog
---@field private trig Trigger
---@field private buttons table<Button, integer>
---@field private callback fun(id: integer)
local DialogBox = class("DialogBox")

---DialogBoxCallback
---@type fun(id: integer)

function DialogBox:constructor()
    local dlg = Dialog:create()
    local trig = Trigger:create()
    trig:registerDialogEvent(dlg)
    trig:addAction(function()
        self:buttonClicked(Event:getClickedButton())
    end)
    self.dlg = dlg
    self.trig = trig
    self.buttons = {}
end

function DialogBox:destructor()
    for btn in pairs(self.buttons) do
        btn:delete()
    end

    self.dlg:clear()
    self.dlg:delete()
    self.trig:delete()
end

---setCallback
---@param cb fun(id: integer)
function DialogBox:setCallback(cb)
    self.callback = cb
end

---setTitle
---@param text string
function DialogBox:setTitle(text)
    self.title = text
    self.dlg:setMessage(text)
end

---addButton
---@param id integer
---@param text string
---@param hotkey integer
function DialogBox:addButton(id, text, hotkey)
    local btn = self.dlg:addButton(text, hotkey or 0)
    self.buttons[btn] = id
end

---addQuitButton
---@param doScoreScreen boolean
---@param text string
---@param hotkey integer
function DialogBox:addQuitButton(doScoreScreen, text, hotkey)
    local btn = self.dlg:addQuitButton(doScoreScreen, text, hotkey or 0)
    self.buttons[btn] = -1
end

---display
---@param player Player
---@param flag boolean
function DialogBox:display(player, flag)
    player:dialogDisplay(self.dlg, flag)
end

---displayToAllPlayers
---@param flag boolean
function DialogBox:displayToAllPlayers(flag)
    for player in Player:iterateAll() do
        self:display(player, flag)
    end
end

---getTitle
---@return string
function DialogBox:getTitle()
    return self.title
end

---buttonClicked
---@param btn Button
function DialogBox:buttonClicked(btn)
    local id = self.buttons[btn]
    if id ~= nil and self.callback then
        self.callback(id)
    end
end

---@class DialogItem : table
---@field text string
---@field value integer
---@field hotkey integer

---<static> question
---@overload fun(title: string, dialogItems: DialogItem[], callback: fun(dialogItem: DialogItem))
---@param player Player
---@param title string
---@param dialogItems DialogItem[]
---@param callback fun(dialogItem: DialogItem)
function DialogBox:question(player, title, dialogItems, callback)
    if not isInstanceOf(player, Player) then
        player, title, dialogItems, callback = nil, player, title, dialogItems
    end

    local dlgBox = DialogBox:new()
    dlgBox:setTitle(title)
    for i, v in ipairs(dialogItems) do
        dlgBox:addButton(i, v.text, v.hotkey)
    end

    dlgBox:setCallback(function(i)
        callback(dialogItems[i])
        dlgBox:delete()
    end)

    if player then
        dlgBox:display(player, true)
    else
        dlgBox:displayToAllPlayers(true)
    end

    return dlgBox
end

return DialogBox
