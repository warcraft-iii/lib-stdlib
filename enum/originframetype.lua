local Native = require('lib.stdlib.native')

---@class OriginFrameType
local OriginFrameType = {
    GameUi = Native.ConvertOriginFrameType(0), --ORIGIN_FRAME_GAME_UI
    CommandButton = Native.ConvertOriginFrameType(1), --ORIGIN_FRAME_COMMAND_BUTTON
    HeroBar = Native.ConvertOriginFrameType(2), --ORIGIN_FRAME_HERO_BAR
    HeroButton = Native.ConvertOriginFrameType(3), --ORIGIN_FRAME_HERO_BUTTON
    HeroHpBar = Native.ConvertOriginFrameType(4), --ORIGIN_FRAME_HERO_HP_BAR
    HeroManaBar = Native.ConvertOriginFrameType(5), --ORIGIN_FRAME_HERO_MANA_BAR
    HeroButtonIndicator = Native.ConvertOriginFrameType(6), --ORIGIN_FRAME_HERO_BUTTON_INDICATOR
    ItemButton = Native.ConvertOriginFrameType(7), --ORIGIN_FRAME_ITEM_BUTTON
    Minimap = Native.ConvertOriginFrameType(8), --ORIGIN_FRAME_MINIMAP
    MinimapButton = Native.ConvertOriginFrameType(9), --ORIGIN_FRAME_MINIMAP_BUTTON
    SystemButton = Native.ConvertOriginFrameType(10), --ORIGIN_FRAME_SYSTEM_BUTTON
    Tooltip = Native.ConvertOriginFrameType(11), --ORIGIN_FRAME_TOOLTIP
    Ubertooltip = Native.ConvertOriginFrameType(12), --ORIGIN_FRAME_UBERTOOLTIP
    ChatMsg = Native.ConvertOriginFrameType(13), --ORIGIN_FRAME_CHAT_MSG
    UnitMsg = Native.ConvertOriginFrameType(14), --ORIGIN_FRAME_UNIT_MSG
    TopMsg = Native.ConvertOriginFrameType(15), --ORIGIN_FRAME_TOP_MSG
    Portrait = Native.ConvertOriginFrameType(16), --ORIGIN_FRAME_PORTRAIT
    WorldFrame = Native.ConvertOriginFrameType(17), --ORIGIN_FRAME_WORLD_FRAME
    SimpleUiParent = Native.ConvertOriginFrameType(18), --ORIGIN_FRAME_SIMPLE_UI_PARENT
    PortraitHpText = Native.ConvertOriginFrameType(19), --ORIGIN_FRAME_PORTRAIT_HP_TEXT
    PortraitManaText = Native.ConvertOriginFrameType(20), --ORIGIN_FRAME_PORTRAIT_MANA_TEXT
    UnitPanelBuffBar = Native.ConvertOriginFrameType(21), --ORIGIN_FRAME_UNIT_PANEL_BUFF_BAR
    UnitPanelBuffBarLabel = Native.ConvertOriginFrameType(22), --ORIGIN_FRAME_UNIT_PANEL_BUFF_BAR_LABEL
}
return OriginFrameType
