local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class TargetFlag
local TargetFlag = {
    None = 1, --TARGET_FLAG_NONE
    Ground = 2, --TARGET_FLAG_GROUND
    Air = 4, --TARGET_FLAG_AIR
    Structure = 8, --TARGET_FLAG_STRUCTURE
    Ward = 16, --TARGET_FLAG_WARD
    Item = 32, --TARGET_FLAG_ITEM
    Tree = 64, --TARGET_FLAG_TREE
    Wall = 128, --TARGET_FLAG_WALL
    Debris = 256, --TARGET_FLAG_DEBRIS
    Decoration = 512, --TARGET_FLAG_DECORATION
    Bridge = 1024, --TARGET_FLAG_BRIDGE
}

TargetFlag = converter(Native.ConvertTargetFlag, TargetFlag)
return TargetFlag
