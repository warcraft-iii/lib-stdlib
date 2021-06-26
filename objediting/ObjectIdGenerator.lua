--- Id Generator
---@class Generator
local Generator = class('IdGenerator')

function Generator:constructor(start)
    self.i1 = math.fmod(start, 256)
    self.i2 = math.floor(math.fmod(start, 65536) / 256)
    self.i3 = math.floor(math.fmod(start, 16777216) / 65536)
    self.i4 = math.floor(start / 16777216)
end

---isInvalid
---@param ch number
---@return boolean
function Generator:isInvalid(ch)
    return ch < 48 or (ch > 57 and ch < 97)
end

---next
---@return integer
function Generator:next()
    local ch = string.byte('c')
    local rt = string.byte('!')

    if self.i1 < ch then
        self.i1 = self.i1 + 1
        while self:isInvalid(self.i1) do
            self.i1 = self.i1 + 1
        end
    elseif self.i2 < ch then
        self.i1 = rt
        self.i2 = self.i2 + 1
        while self:isInvalid(self.i2) do
            self.i2 = self.i2 + 1
        end
    elseif self.i3 < ch then
        self.i1 = rt
        self.i2 = rt
        self.i3 = self.i3 + 1
        while self:isInvalid(self.i3) do
            self.i3 = self.i3 + 1
        end
    elseif self.i4 < ch then
        self.i1 = rt
        self.i2 = rt
        self.i3 = rt
        self.i4 = self.i4 + 1
        while self:isInvalid(self.i4) do
            self.i4 = self.i4 + 1
        end
    else
        assert(false, 'No valid id left')
        return 0
    end

    local id = self.i1 + (self.i2 * 256) + (self.i3 * 65536) + (self.i4 * 16777216)
    -- todo check id ok

    return id
end

UNIT_ID_GEN = Generator:new(string.unpack('>I', 'x000'))
HERO_ID_GEN = Generator:new(string.unpack('>I', 'HM00'))
ABIL_ID_GEN = Generator:new(string.unpack('>I', 'AM00'))
BUFF_ID_GEN = Generator:new(string.unpack('>I', 'BM00'))
ITEM_ID_GEN = Generator:new(string.unpack('>I', 'IM00'))
UPGD_ID_GEN = Generator:new(string.unpack('>I', 'RM00'))

