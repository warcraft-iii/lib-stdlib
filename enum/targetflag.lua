local Native = require('lib.stdlib.native')

---@class TargetFlag
local TargetFlag = {
    None = Native.ConvertTargetFlag(1), --TARGET_FLAG_NONE
    Ground = Native.ConvertTargetFlag(2), --TARGET_FLAG_GROUND
    Air = Native.ConvertTargetFlag(4), --TARGET_FLAG_AIR
    Structure = Native.ConvertTargetFlag(8), --TARGET_FLAG_STRUCTURE
    Ward = Native.ConvertTargetFlag(16), --TARGET_FLAG_WARD
    Item = Native.ConvertTargetFlag(32), --TARGET_FLAG_ITEM
    Tree = Native.ConvertTargetFlag(64), --TARGET_FLAG_TREE
    Wall = Native.ConvertTargetFlag(128), --TARGET_FLAG_WALL
    Debris = Native.ConvertTargetFlag(256), --TARGET_FLAG_DEBRIS
    Decoration = Native.ConvertTargetFlag(512), --TARGET_FLAG_DECORATION
    Bridge = Native.ConvertTargetFlag(1024), --TARGET_FLAG_BRIDGE
}
return TargetFlag
