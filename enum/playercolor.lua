local Native = require('lib.stdlib.native')

---@class PlayerColor
local PlayerColor = {
    Red = Native.ConvertPlayerColor(0), --PLAYER_COLOR_RED
    Blue = Native.ConvertPlayerColor(1), --PLAYER_COLOR_BLUE
    Cyan = Native.ConvertPlayerColor(2), --PLAYER_COLOR_CYAN
    Purple = Native.ConvertPlayerColor(3), --PLAYER_COLOR_PURPLE
    Yellow = Native.ConvertPlayerColor(4), --PLAYER_COLOR_YELLOW
    Orange = Native.ConvertPlayerColor(5), --PLAYER_COLOR_ORANGE
    Green = Native.ConvertPlayerColor(6), --PLAYER_COLOR_GREEN
    Pink = Native.ConvertPlayerColor(7), --PLAYER_COLOR_PINK
    LightGray = Native.ConvertPlayerColor(8), --PLAYER_COLOR_LIGHT_GRAY
    LightBlue = Native.ConvertPlayerColor(9), --PLAYER_COLOR_LIGHT_BLUE
    Aqua = Native.ConvertPlayerColor(10), --PLAYER_COLOR_AQUA
    Brown = Native.ConvertPlayerColor(11), --PLAYER_COLOR_BROWN
    Maroon = Native.ConvertPlayerColor(12), --PLAYER_COLOR_MAROON
    Navy = Native.ConvertPlayerColor(13), --PLAYER_COLOR_NAVY
    Turquoise = Native.ConvertPlayerColor(14), --PLAYER_COLOR_TURQUOISE
    Violet = Native.ConvertPlayerColor(15), --PLAYER_COLOR_VIOLET
    Wheat = Native.ConvertPlayerColor(16), --PLAYER_COLOR_WHEAT
    Peach = Native.ConvertPlayerColor(17), --PLAYER_COLOR_PEACH
    Mint = Native.ConvertPlayerColor(18), --PLAYER_COLOR_MINT
    Lavender = Native.ConvertPlayerColor(19), --PLAYER_COLOR_LAVENDER
    Coal = Native.ConvertPlayerColor(20), --PLAYER_COLOR_COAL
    Snow = Native.ConvertPlayerColor(21), --PLAYER_COLOR_SNOW
    Emerald = Native.ConvertPlayerColor(22), --PLAYER_COLOR_EMERALD
    Peanut = Native.ConvertPlayerColor(23), --PLAYER_COLOR_PEANUT
}
return PlayerColor
