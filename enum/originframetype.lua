local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class OriginFrameType
local OriginFrameType = {
    GameUi = 0, --ORIGIN_FRAME_GAME_UI
    CommandButton = 1, --ORIGIN_FRAME_COMMAND_BUTTON
    HeroBar = 2, --ORIGIN_FRAME_HERO_BAR
    HeroButton = 3, --ORIGIN_FRAME_HERO_BUTTON
    HeroHpBar = 4, --ORIGIN_FRAME_HERO_HP_BAR
    HeroManaBar = 5, --ORIGIN_FRAME_HERO_MANA_BAR
    HeroButtonIndicator = 6, --ORIGIN_FRAME_HERO_BUTTON_INDICATOR
    ItemButton = 7, --ORIGIN_FRAME_ITEM_BUTTON
    Minimap = 8, --ORIGIN_FRAME_MINIMAP
    MinimapButton = 9, --ORIGIN_FRAME_MINIMAP_BUTTON
    SystemButton = 10, --ORIGIN_FRAME_SYSTEM_BUTTON
    Tooltip = 11, --ORIGIN_FRAME_TOOLTIP
    Ubertooltip = 12, --ORIGIN_FRAME_UBERTOOLTIP
    ChatMsg = 13, --ORIGIN_FRAME_CHAT_MSG
    UnitMsg = 14, --ORIGIN_FRAME_UNIT_MSG
    TopMsg = 15, --ORIGIN_FRAME_TOP_MSG
    Portrait = 16, --ORIGIN_FRAME_PORTRAIT
    WorldFrame = 17, --ORIGIN_FRAME_WORLD_FRAME
    SimpleUiParent = 18, --ORIGIN_FRAME_SIMPLE_UI_PARENT
    PortraitHpText = 19, --ORIGIN_FRAME_PORTRAIT_HP_TEXT
    PortraitManaText = 20, --ORIGIN_FRAME_PORTRAIT_MANA_TEXT
    UnitPanelBuffBar = 21, --ORIGIN_FRAME_UNIT_PANEL_BUFF_BAR
    UnitPanelBuffBarLabel = 22, --ORIGIN_FRAME_UNIT_PANEL_BUFF_BAR_LABEL
}

OriginFrameType = converter(Native.ConvertOriginFrameType, OriginFrameType)
return OriginFrameType
