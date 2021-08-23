---@class TargetsAllowed
local TargetsAllowed = {
    -- Can only target air units.
    air = 'air',
    -- Can only target alive units (non-skeleton).
    alive = 'alive',
    -- Can only target allied units, but not units on the same team as casting unit.
    allies = 'allies',
    -- Can only target ancients i.e only the night elf buildings that can uproot.
    ancient = 'ancient',
    -- Can only target dead units (corpses, skeletons).
    dead = 'dead',
    -- Can only target debris, e.g crates.
    debris = 'debris',
    -- TODO: unknown what this target allows.
    decoration = 'decoration',
    -- Can only target enemy units.
    enemies = 'enemies',
    -- Can only target allied and own units.
    friend = 'friend',
    -- Can only target units without flying/hover movement type.
    ground = 'ground',
    -- Can only target hero units.
    hero = 'hero',
    -- Can only target invulnerable targets.
    invulnerable = 'invulnerable',
    -- Can only target items lying on the ground.
    item_t = 'item', -- Suffixed with _t to prevent collision with native type item
    -- Can only target mechanichal units catapults etc.
    mechanical = 'mechanical',
    -- Can only target units which belong to neutral players (Neutral Hostile, Neutral Passive)
    neutral = 'neutral',
    -- Can only target non-ancient units.
    nonancient = 'nonancient',
    -- No targets allowed.
    none = 'none',
    -- Can only target non-heroes.
    nonhero = 'nonhero',
    -- Can only target non-suicidal units.
    nonsapper = 'nonsapper',
    -- Cannot target casting unit.
    notself = 'notself',
    -- Can only target non-mechanical units.
    organic = 'organic',
    -- TOOD: this is unknown what it does.
    player_t = 'player', -- Suffixed with _t to prevent collision with native type player
    -- Only able to target units from the same player as casting unit.
    playerunits = 'playerunits',
    -- Can only target suicidal units such as Goblin Sapper.
    sapper = 'sapper',
    -- Can only target caster.
    self = 'self',
    -- Can target buildings.
    structure = 'structure',
    -- Can only target landscape such as grass, water or dirt.
    terrain = 'terrain',
    -- Can only target trees.
    tree = 'tree',
    -- Can only target units that can take damage.
    vulnerable = 'vulnerable',
    -- TODO: uncertain if this limits valid targets to gates.
    wall = 'wall',
    -- Limit to units which are wards (Statis Traps, etc).
    ward = 'ward',
}
return TargetsAllowed
