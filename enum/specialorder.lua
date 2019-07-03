-- specialorder.lua
-- @Author : Dencer (tdaddon@163.com)
-- @Link   : https://dengsir.github.io
-- @Date   : 7/4/2019, 3:26:37 AM

-- From https://github.com/wurstscript/WurstStdlib2/blob/master/wurst/_wurst/assets/Orders.wurst
-- Credits Shadow Daemon for cj_order.j from cJass

---@class SpecialOrder
local SpecialOrder = {

    -- This is an order with no target that opens up the build menu of a unit that can build structures.
    buildmenu = 851994,
    -- 851976 (cancel): This is an order with no target that is like a click on a cancel button.
    -- We used to be able to catch cancel clicks with this id back then but this id doesn't seem to work any more.
    cancel = 851976,
    -- An item targeted order that move the target item to a certain inventory slot of the ordered hero.
    itemdrag00 = 852002,
    -- An item targeted order that move the target item to a certain inventory slot of the ordered hero.
    itemdrag01 = 852003,
    -- An item targeted order that move the target item to a certain inventory slot of the ordered hero.
    itemdrag02 = 852004,
    -- An item targeted order that move the target item to a certain inventory slot of the ordered hero.
    itemdrag03 = 852005,
    -- An item targeted order that move the target item to a certain inventory slot of the ordered hero.
    itemdrag04 = 852006,
    -- An item targeted order that move the target item to a certain inventory slot of the ordered hero.
    itemdrag05 = 852007,
    -- An order that will make the ordered hero use the item in a certain inventory slot.
    -- If it's an order with no target or object or point targeted depends on the type of item.
    itemuse00 = 852008,
    -- An order that will make the ordered hero use the item in a certain inventory slot.
    -- If it's an order with no target or object or point targeted depends on the type of item.
    itemuse01 = 852009,
    -- An order that will make the ordered hero use the item in a certain inventory slot.
    -- If it's an order with no target or object or point targeted depends on the type of item.
    itemuse02 = 852010,
    -- An order that will make the ordered hero use the item in a certain inventory slot.
    -- If it's an order with no target or object or point targeted depends on the type of item.
    itemuse03 = 852011,
    -- An order that will make the ordered hero use the item in a certain inventory slot.
    -- If it's an order with no target or object or point targeted depends on the type of item.
    itemuse04 = 852012,
    -- An order that will make the ordered hero use the item in a certain inventory slot.
    -- If it's an order with no target or object or point targeted depends on the type of item.
    itemuse05 = 852013,
    -- Order for AIaa ability, which blizzard made for tome of attack, but never used it. But it can actually change caster's base attack!
    tomeOfAttack = 852259,
    -- This is a point or object targeted order that is like a right click.
    smart = 851971,
    -- This is an order with no target that opens the skill menu of heroes.
    -- If it is issued for a normal unit with triggers it will black out the command card for this unit, the command card will revert to normal after reselecting the unit.
    skillmenu = 852000,
    -- This order is issued to units that get stunned by a spell, for example War Stomp (AOws).
    -- This is probably a hold position + hold fire order. The ordered unit will be unable to move and attack.
    stunned = 851973,
    wandOfIllusion = 852274,
}

return SpecialOrder
