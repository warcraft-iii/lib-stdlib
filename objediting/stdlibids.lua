require('stdlib.objediting.ObjectIdGenerator')

---@class stdlibids
local id = {

    Abilities = { --
        --- UnitTracker
        UnitEnterLeaveDectect = ABIL_ID_GEN:next(), --

        --- DummyRecycler
        RootEnabler = ABIL_ID_GEN:next(), -- 
        DisableAutoAcquireAttackTargets = ABIL_ID_GEN:next(), --
    },

    Units = {
        --- DummyRecycler
        DummyUnit = UNIT_ID_GEN:next(), -- 
    },

}

return id
