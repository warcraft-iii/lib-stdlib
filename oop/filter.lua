local Filter = require('lib.stdlib.oop._generated._filter')

---@alias UnitFilter fun(unit: Unit): boolean
---@alias PlayerFilter fun(player: Player): boolean
---@alias DestructableFilter fun(destructable: Destructable): boolean
---@alias ItemFilter fun(item: Item): boolean

local function generateFilterCreator(cls, method)
    return function(_, filter)
        if not filter then
            return
        end

        return Filter:create(function()
            return filter(cls:fromUd(method()))
        end)
    end
end

---createUnitFilter
---@param filter UnitFilter
---@return Filter
Filter.createUnitFilter = generateFilterCreator(Unit, GetFilterUnit)

---createPlayerFilter
---@param filter PlayerFilter
---@return Filter
Filter.createPlayerFilter = generateFilterCreator(Player, GetFilterPlayer)

---createDestructableFilter
---@param filter DestructableFilter
---@return Filter
Filter.createDestructableFilter = generateFilterCreator(Destructable, GetFilterDestructable)

---createItemFilter
---@param filter ItemFilter
---@return Filter
Filter.createItemFilter = generateFilterCreator(Item, GetFilterItem)

return Filter
