local TextTag = require('lib.stdlib.oop.texttag')
local Player = require('lib.stdlib.oop.player')

---@class StandardTextTags
local StandardTextTags = {}

---Creates a text tag with default values matching standard built-in text tags
---@return TextTag
function StandardTextTags:create()
    local t = TextTag:create()
    t:setFadepoint(2.0)
    t:setLifespan(3.0)
    t:setVelocity(0, 0.03)
    t:setPermanent(false)
    t:setVisibility(true)
    return t
end

---@param pos Vector
---@param text string
---@return TextTag
function StandardTextTags:createAt(pos, text)
    local t = self:create()
    t:setStandardText(text)
    t:setPos(pos, 0)
    return t
end

---Create a texttag that matches the style of the standard warcraft 3 Critical
---Strike ability.
---@param u Unit
---@param damage integer
function StandardTextTags:createCriticalStrike(u, damage)
    local t = self:createAt(u:getPos(), damage .. '!')
    t:setColor(255, 0, 0, 255)
    t:setVelocity(0, 0.04)
    t:setLifespan(5.0)
    return t
end

---Create a texttag that matches the style of the standard warcraft 3 gold
---bounty.
---@param u Unit
---@param bounty integer
---@param killer player|nil
function StandardTextTags:createGoldBounty(u, bounty, killer)
    local t = self:createAt(u:getPos() - TextTag.Offset, '+' .. bounty)
    t:setColor(255, 220, 0, 255)
    if killer then
        t:setVisibility(Player:getLocal() == killer)
    end
    return t
end

---Create a texttag that matches the style of the standard warcraft 3 lumber
---bounty.
function StandardTextTags:createLumberBounty(u, bounty, killer)
    local t = self:createGoldBounty(u, bounty, killer)
    t:setColor(0, 200, 80, 255)
    return t
end

---Create a texttag that matches the style of the standard warcraft 3 Mana Burn
---ability.
---@param u Unit
---@param damage integer
function StandardTextTags:createManaBurn(u, damage)
    local t = self:createAt(u:getPos() - TextTag.Offset, '-' .. damage)
    t:setColor(82, 82, 255, 255)
    t:setVelocity(0, 0.04)
    t:setLifespan(5.0)
    return t
end

---Create a texttag that matches the style of the standard warcraft 3 attack
---miss indication.
---@param u Unit
function StandardTextTags:createMiss(u)
    local t = self:createAt(u:getPos(), 'miss')
    t:setColor(255, 0, 0, 255)
    t:setFadepoint(1.0)
    return t
end

---Create a texttag that matches the style of the standard warcraft 3 Shadow
---Strike ability.
---@param u Unit
---@param damage integer
---@param isInitialDamage boolean
function StandardTextTags:createShadowStrike(u, damage, isInitialDamage)
    local text = damage
    if isInitialDamage then
        text = text .. '!'
    end
    local t = self:createAt(u:getPos(), text)
    t:setColor(166, 255, 0, 255)
    t:setVelocity(0, 0.04)
    t:setLifespan(5.0)
    return t
end

return StandardTextTags
