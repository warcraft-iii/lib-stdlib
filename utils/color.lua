local Color = {}

---gradient
---@param text string
---@param ra integer @0~255
---@param ga integer @0~255
---@param ba integer @0~255
---@param rb integer @0~255
---@param gb integer @0~255
---@param bb integer @0~255
function Color:gradientText(text, ra, ga, ba, rb, gb, bb)

    local chars = {}
    local count = utf8.len(text)
    local hasColor = false

    for i, c in utf8.codes(text) do
        local char = utf8.char(c)
        if char ~= ' ' then
            char = string.format('|cff%02x%02x%02x%s', math.ceil(ra + (rb - ra) / count * i),
                                 math.ceil(ga + (gb - ga) / count * i), math.ceil(ba + (bb - ba) / count * i), char)
            hasColor = true
        end
        table.insert(chars, char)
    end

    if hasColor then
        table.insert(chars, '|r')
    end

    return table.concat(chars)

end

return Color
