local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class PlayerColor
local PlayerColor = {
    Red = 0, --PLAYER_COLOR_RED
    Blue = 1, --PLAYER_COLOR_BLUE
    Cyan = 2, --PLAYER_COLOR_CYAN
    Purple = 3, --PLAYER_COLOR_PURPLE
    Yellow = 4, --PLAYER_COLOR_YELLOW
    Orange = 5, --PLAYER_COLOR_ORANGE
    Green = 6, --PLAYER_COLOR_GREEN
    Pink = 7, --PLAYER_COLOR_PINK
    LightGray = 8, --PLAYER_COLOR_LIGHT_GRAY
    LightBlue = 9, --PLAYER_COLOR_LIGHT_BLUE
    Aqua = 10, --PLAYER_COLOR_AQUA
    Brown = 11, --PLAYER_COLOR_BROWN
    Maroon = 12, --PLAYER_COLOR_MAROON
    Navy = 13, --PLAYER_COLOR_NAVY
    Turquoise = 14, --PLAYER_COLOR_TURQUOISE
    Violet = 15, --PLAYER_COLOR_VIOLET
    Wheat = 16, --PLAYER_COLOR_WHEAT
    Peach = 17, --PLAYER_COLOR_PEACH
    Mint = 18, --PLAYER_COLOR_MINT
    Lavender = 19, --PLAYER_COLOR_LAVENDER
    Coal = 20, --PLAYER_COLOR_COAL
    Snow = 21, --PLAYER_COLOR_SNOW
    Emerald = 22, --PLAYER_COLOR_EMERALD
    Peanut = 23, --PLAYER_COLOR_PEANUT
}

PlayerColor = converter(Native.ConvertPlayerColor, PlayerColor)
return PlayerColor
