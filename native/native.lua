
local Native = {}

--@remove@

---@param i integer
---@return race
function Native.ConvertRace(i) end

---@param i integer
---@return alliancetype
function Native.ConvertAllianceType(i) end

---@param i integer
---@return racepreference
function Native.ConvertRacePref(i) end

---@param i integer
---@return igamestate
function Native.ConvertIGameState(i) end

---@param i integer
---@return fgamestate
function Native.ConvertFGameState(i) end

---@param i integer
---@return playerstate
function Native.ConvertPlayerState(i) end

---@param i integer
---@return playerscore
function Native.ConvertPlayerScore(i) end

---@param i integer
---@return playergameresult
function Native.ConvertPlayerGameResult(i) end

---@param i integer
---@return unitstate
function Native.ConvertUnitState(i) end

---@param i integer
---@return aidifficulty
function Native.ConvertAIDifficulty(i) end

---@param i integer
---@return gameevent
function Native.ConvertGameEvent(i) end

---@param i integer
---@return playerevent
function Native.ConvertPlayerEvent(i) end

---@param i integer
---@return playerunitevent
function Native.ConvertPlayerUnitEvent(i) end

---@param i integer
---@return widgetevent
function Native.ConvertWidgetEvent(i) end

---@param i integer
---@return dialogevent
function Native.ConvertDialogEvent(i) end

---@param i integer
---@return unitevent
function Native.ConvertUnitEvent(i) end

---@param i integer
---@return limitop
function Native.ConvertLimitOp(i) end

---@param i integer
---@return unittype
function Native.ConvertUnitType(i) end

---@param i integer
---@return gamespeed
function Native.ConvertGameSpeed(i) end

---@param i integer
---@return placement
function Native.ConvertPlacement(i) end

---@param i integer
---@return startlocprio
function Native.ConvertStartLocPrio(i) end

---@param i integer
---@return gamedifficulty
function Native.ConvertGameDifficulty(i) end

---@param i integer
---@return gametype
function Native.ConvertGameType(i) end

---@param i integer
---@return mapflag
function Native.ConvertMapFlag(i) end

---@param i integer
---@return mapvisibility
function Native.ConvertMapVisibility(i) end

---@param i integer
---@return mapsetting
function Native.ConvertMapSetting(i) end

---@param i integer
---@return mapdensity
function Native.ConvertMapDensity(i) end

---@param i integer
---@return mapcontrol
function Native.ConvertMapControl(i) end

---@param i integer
---@return playercolor
function Native.ConvertPlayerColor(i) end

---@param i integer
---@return playerslotstate
function Native.ConvertPlayerSlotState(i) end

---@param i integer
---@return volumegroup
function Native.ConvertVolumeGroup(i) end

---@param i integer
---@return camerafield
function Native.ConvertCameraField(i) end

---@param i integer
---@return blendmode
function Native.ConvertBlendMode(i) end

---@param i integer
---@return raritycontrol
function Native.ConvertRarityControl(i) end

---@param i integer
---@return texmapflags
function Native.ConvertTexMapFlags(i) end

---@param i integer
---@return fogstate
function Native.ConvertFogState(i) end

---@param i integer
---@return effecttype
function Native.ConvertEffectType(i) end

---@param i integer
---@return version
function Native.ConvertVersion(i) end

---@param i integer
---@return itemtype
function Native.ConvertItemType(i) end

---@param i integer
---@return attacktype
function Native.ConvertAttackType(i) end

---@param i integer
---@return damagetype
function Native.ConvertDamageType(i) end

---@param i integer
---@return weapontype
function Native.ConvertWeaponType(i) end

---@param i integer
---@return soundtype
function Native.ConvertSoundType(i) end

---@param i integer
---@return pathingtype
function Native.ConvertPathingType(i) end

---@param i integer
---@return mousebuttontype
function Native.ConvertMouseButtonType(i) end

---@param i integer
---@return animtype
function Native.ConvertAnimType(i) end

---@param i integer
---@return subanimtype
function Native.ConvertSubAnimType(i) end

---@param i integer
---@return originframetype
function Native.ConvertOriginFrameType(i) end

---@param i integer
---@return framepointtype
function Native.ConvertFramePointType(i) end

---@param i integer
---@return textaligntype
function Native.ConvertTextAlignType(i) end

---@param i integer
---@return frameeventtype
function Native.ConvertFrameEventType(i) end

---@param i integer
---@return oskeytype
function Native.ConvertOsKeyType(i) end

---@param i integer
---@return abilityintegerfield
function Native.ConvertAbilityIntegerField(i) end

---@param i integer
---@return abilityrealfield
function Native.ConvertAbilityRealField(i) end

---@param i integer
---@return abilitybooleanfield
function Native.ConvertAbilityBooleanField(i) end

---@param i integer
---@return abilitystringfield
function Native.ConvertAbilityStringField(i) end

---@param i integer
---@return abilityintegerlevelfield
function Native.ConvertAbilityIntegerLevelField(i) end

---@param i integer
---@return abilityreallevelfield
function Native.ConvertAbilityRealLevelField(i) end

---@param i integer
---@return abilitybooleanlevelfield
function Native.ConvertAbilityBooleanLevelField(i) end

---@param i integer
---@return abilitystringlevelfield
function Native.ConvertAbilityStringLevelField(i) end

---@param i integer
---@return abilityintegerlevelarrayfield
function Native.ConvertAbilityIntegerLevelArrayField(i) end

---@param i integer
---@return abilityreallevelarrayfield
function Native.ConvertAbilityRealLevelArrayField(i) end

---@param i integer
---@return abilitybooleanlevelarrayfield
function Native.ConvertAbilityBooleanLevelArrayField(i) end

---@param i integer
---@return abilitystringlevelarrayfield
function Native.ConvertAbilityStringLevelArrayField(i) end

---@param i integer
---@return unitintegerfield
function Native.ConvertUnitIntegerField(i) end

---@param i integer
---@return unitrealfield
function Native.ConvertUnitRealField(i) end

---@param i integer
---@return unitbooleanfield
function Native.ConvertUnitBooleanField(i) end

---@param i integer
---@return unitstringfield
function Native.ConvertUnitStringField(i) end

---@param i integer
---@return unitweaponintegerfield
function Native.ConvertUnitWeaponIntegerField(i) end

---@param i integer
---@return unitweaponrealfield
function Native.ConvertUnitWeaponRealField(i) end

---@param i integer
---@return unitweaponbooleanfield
function Native.ConvertUnitWeaponBooleanField(i) end

---@param i integer
---@return unitweaponstringfield
function Native.ConvertUnitWeaponStringField(i) end

---@param i integer
---@return itemintegerfield
function Native.ConvertItemIntegerField(i) end

---@param i integer
---@return itemrealfield
function Native.ConvertItemRealField(i) end

---@param i integer
---@return itembooleanfield
function Native.ConvertItemBooleanField(i) end

---@param i integer
---@return itemstringfield
function Native.ConvertItemStringField(i) end

---@param i integer
---@return movetype
function Native.ConvertMoveType(i) end

---@param i integer
---@return targetflag
function Native.ConvertTargetFlag(i) end

---@param i integer
---@return armortype
function Native.ConvertArmorType(i) end

---@param i integer
---@return heroattribute
function Native.ConvertHeroAttribute(i) end

---@param i integer
---@return defensetype
function Native.ConvertDefenseType(i) end

---@param i integer
---@return regentype
function Native.ConvertRegenType(i) end

---@param i integer
---@return unitcategory
function Native.ConvertUnitCategory(i) end

---@param i integer
---@return pathingflag
function Native.ConvertPathingFlag(i) end

---@param orderIdString string
---@return integer
function Native.OrderId(orderIdString) end

---@param orderId integer
---@return string
function Native.OrderId2String(orderId) end

---@param unitIdString string
---@return integer
function Native.UnitId(unitIdString) end

---@param unitId integer
---@return string
function Native.UnitId2String(unitId) end

---@param abilityIdString string
---@return integer
function Native.AbilityId(abilityIdString) end

---@param abilityId integer
---@return string
function Native.AbilityId2String(abilityId) end

---@param objectId integer
---@return string
function Native.GetObjectName(objectId) end

---@return integer
function Native.GetBJMaxPlayers() end

---@return integer
function Native.GetBJPlayerNeutralVictim() end

---@return integer
function Native.GetBJPlayerNeutralExtra() end

---@return integer
function Native.GetBJMaxPlayerSlots() end

---@return integer
function Native.GetPlayerNeutralPassive() end

---@return integer
function Native.GetPlayerNeutralAggressive() end

---@param degrees float
---@return float
function Native.Deg2Rad(degrees) end

---@param radians float
---@return float
function Native.Rad2Deg(radians) end

---@param radians float
---@return float
function Native.Sin(radians) end

---@param radians float
---@return float
function Native.Cos(radians) end

---@param radians float
---@return float
function Native.Tan(radians) end

---@param y float
---@return float
function Native.Asin(y) end

---@param x float
---@return float
function Native.Acos(x) end

---@param x float
---@return float
function Native.Atan(x) end

---@param y float
---@param x float
---@return float
function Native.Atan2(y, x) end

---@param x float
---@return float
function Native.SquareRoot(x) end

---@param x float
---@param power float
---@return float
function Native.Pow(x, power) end

---@param r float
---@return integer
function Native.MathRound(r) end

---@param i integer
---@return float
function Native.I2R(i) end

---@param r float
---@return integer
function Native.R2I(r) end

---@param i integer
---@return string
function Native.I2S(i) end

---@param r float
---@return string
function Native.R2S(r) end

---@param r float
---@param width integer
---@param precision integer
---@return string
function Native.R2SW(r, width, precision) end

---@param s string
---@return integer
function Native.S2I(s) end

---@param s string
---@return float
function Native.S2R(s) end

---@param h handle
---@return integer
function Native.GetHandleId(h) end

---@param source string
---@param start integer
---@param end_ integer
---@return string
function Native.SubString(source, start, end_) end

---@param s string
---@return integer
function Native.StringLength(s) end

---@param source string
---@param upper boolean
---@return string
function Native.StringCase(source, upper) end

---@param s string
---@return integer
function Native.StringHash(s) end

---@param source string
---@return string
function Native.GetLocalizedString(source) end

---@param source string
---@return integer
function Native.GetLocalizedHotkey(source) end

---@param name string
---@return void
function Native.SetMapName(name) end

---@param description string
---@return void
function Native.SetMapDescription(description) end

---@param teamcount integer
---@return void
function Native.SetTeams(teamcount) end

---@param playercount integer
---@return void
function Native.SetPlayers(playercount) end

---@param startLoc integer
---@param x float
---@param y float
---@return void
function Native.DefineStartLocation(startLoc, x, y) end

---@param startLoc integer
---@param loc location
---@return void
function Native.DefineStartLocationLoc(startLoc, loc) end

---@param startLoc integer
---@param prioSlotCount integer
---@return void
function Native.SetStartLocPrioCount(startLoc, prioSlotCount) end

---@param startLoc integer
---@param prioSlotIndex integer
---@param otherStartLocIndex integer
---@param priority startlocprio
---@return void
function Native.SetStartLocPrio(startLoc, prioSlotIndex, otherStartLocIndex, priority) end

---@param startLoc integer
---@param prioSlotIndex integer
---@return integer
function Native.GetStartLocPrioSlot(startLoc, prioSlotIndex) end

---@param startLoc integer
---@param prioSlotIndex integer
---@return startlocprio
function Native.GetStartLocPrio(startLoc, prioSlotIndex) end

---@param startLoc integer
---@param prioSlotCount integer
---@return void
function Native.SetEnemyStartLocPrioCount(startLoc, prioSlotCount) end

---@param startLoc integer
---@param prioSlotIndex integer
---@param otherStartLocIndex integer
---@param priority startlocprio
---@return void
function Native.SetEnemyStartLocPrio(startLoc, prioSlotIndex, otherStartLocIndex, priority) end

---@param gameType gametype
---@param value boolean
---@return void
function Native.SetGameTypeSupported(gameType, value) end

---@param mapFlag mapflag
---@param value boolean
---@return void
function Native.SetMapFlag(mapFlag, value) end

---@param placementType placement
---@return void
function Native.SetGamePlacement(placementType) end

---@param speed gamespeed
---@return void
function Native.SetGameSpeed(speed) end

---@param difficulty gamedifficulty
---@return void
function Native.SetGameDifficulty(difficulty) end

---@param density mapdensity
---@return void
function Native.SetResourceDensity(density) end

---@param density mapdensity
---@return void
function Native.SetCreatureDensity(density) end

---@return integer
function Native.GetTeams() end

---@return integer
function Native.GetPlayers() end

---@param gameType gametype
---@return boolean
function Native.IsGameTypeSupported(gameType) end

---@return gametype
function Native.GetGameTypeSelected() end

---@param mapFlag mapflag
---@return boolean
function Native.IsMapFlagSet(mapFlag) end

---@return placement
function Native.GetGamePlacement() end

---@return gamespeed
function Native.GetGameSpeed() end

---@return gamedifficulty
function Native.GetGameDifficulty() end

---@return mapdensity
function Native.GetResourceDensity() end

---@return mapdensity
function Native.GetCreatureDensity() end

---@param startLocation integer
---@return float
function Native.GetStartLocationX(startLocation) end

---@param startLocation integer
---@return float
function Native.GetStartLocationY(startLocation) end

---@param startLocation integer
---@return location
function Native.GetStartLocationLoc(startLocation) end

---@param player player
---@param team integer
---@return void
function Native.SetPlayerTeam(player, team) end

---@param player player
---@param startLocIndex integer
---@return void
function Native.SetPlayerStartLocation(player, startLocIndex) end

---@param player player
---@param startLocIndex integer
---@return void
function Native.ForcePlayerStartLocation(player, startLocIndex) end

---@param player player
---@param color playercolor
---@return void
function Native.SetPlayerColor(player, color) end

---@param sourcePlayer player
---@param otherPlayer player
---@param allianceSetting alliancetype
---@param value boolean
---@return void
function Native.SetPlayerAlliance(sourcePlayer, otherPlayer, allianceSetting, value) end

---@param sourcePlayer player
---@param otherPlayer player
---@param resource playerstate
---@param rate integer
---@return void
function Native.SetPlayerTaxRate(sourcePlayer, otherPlayer, resource, rate) end

---@param player player
---@param racePreference racepreference
---@return void
function Native.SetPlayerRacePreference(player, racePreference) end

---@param player player
---@param value boolean
---@return void
function Native.SetPlayerRaceSelectable(player, value) end

---@param player player
---@param controlType mapcontrol
---@return void
function Native.SetPlayerController(player, controlType) end

---@param player player
---@param name string
---@return void
function Native.SetPlayerName(player, name) end

---@param player player
---@param flag boolean
---@return void
function Native.SetPlayerOnScoreScreen(player, flag) end

---@param player player
---@return integer
function Native.GetPlayerTeam(player) end

---@param player player
---@return integer
function Native.GetPlayerStartLocation(player) end

---@param player player
---@return playercolor
function Native.GetPlayerColor(player) end

---@param player player
---@return boolean
function Native.GetPlayerSelectable(player) end

---@param player player
---@return mapcontrol
function Native.GetPlayerController(player) end

---@param player player
---@return playerslotstate
function Native.GetPlayerSlotState(player) end

---@param sourcePlayer player
---@param otherPlayer player
---@param resource playerstate
---@return integer
function Native.GetPlayerTaxRate(sourcePlayer, otherPlayer, resource) end

---@param player player
---@param pref racepreference
---@return boolean
function Native.IsPlayerRacePrefSet(player, pref) end

---@param player player
---@return string
function Native.GetPlayerName(player) end

---@return timer
function Native.CreateTimer() end

---@param timer timer
---@return void
function Native.DestroyTimer(timer) end

---@param timer timer
---@param timeout float
---@param periodic boolean
---@param handlerFunc function
---@return void
function Native.TimerStart(timer, timeout, periodic, handlerFunc) end

---@param timer timer
---@return float
function Native.TimerGetElapsed(timer) end

---@param timer timer
---@return float
function Native.TimerGetRemaining(timer) end

---@param timer timer
---@return float
function Native.TimerGetTimeout(timer) end

---@param timer timer
---@return void
function Native.PauseTimer(timer) end

---@param timer timer
---@return void
function Native.ResumeTimer(timer) end

---@return timer
function Native.GetExpiredTimer() end

---@return group
function Native.CreateGroup() end

---@param group group
---@return void
function Native.DestroyGroup(group) end

---@param group group
---@param unit unit
---@return boolean
function Native.GroupAddUnit(group, unit) end

---@param group group
---@param unit unit
---@return boolean
function Native.GroupRemoveUnit(group, unit) end

---@param group group
---@param addGroup group
---@return integer
function Native.BlzGroupAddGroupFast(group, addGroup) end

---@param group group
---@param removeGroup group
---@return integer
function Native.BlzGroupRemoveGroupFast(group, removeGroup) end

---@param group group
---@return void
function Native.GroupClear(group) end

---@param group group
---@return integer
function Native.BlzGroupGetSize(group) end

---@param group group
---@param index integer
---@return unit
function Native.BlzGroupUnitAt(group, index) end

---@param group group
---@param unitname string
---@param filter boolexpr
---@return void
function Native.GroupEnumUnitsOfType(group, unitname, filter) end

---@param group group
---@param player player
---@param filter boolexpr
---@return void
function Native.GroupEnumUnitsOfPlayer(group, player, filter) end

---@param group group
---@param unitname string
---@param filter boolexpr
---@param countLimit integer
---@return void
function Native.GroupEnumUnitsOfTypeCounted(group, unitname, filter, countLimit) end

---@param group group
---@param r rect
---@param filter boolexpr
---@return void
function Native.GroupEnumUnitsInRect(group, r, filter) end

---@param group group
---@param r rect
---@param filter boolexpr
---@param countLimit integer
---@return void
function Native.GroupEnumUnitsInRectCounted(group, r, filter, countLimit) end

---@param group group
---@param x float
---@param y float
---@param radius float
---@param filter boolexpr
---@return void
function Native.GroupEnumUnitsInRange(group, x, y, radius, filter) end

---@param group group
---@param loc location
---@param radius float
---@param filter boolexpr
---@return void
function Native.GroupEnumUnitsInRangeOfLoc(group, loc, radius, filter) end

---@param group group
---@param x float
---@param y float
---@param radius float
---@param filter boolexpr
---@param countLimit integer
---@return void
function Native.GroupEnumUnitsInRangeCounted(group, x, y, radius, filter, countLimit) end

---@param group group
---@param loc location
---@param radius float
---@param filter boolexpr
---@param countLimit integer
---@return void
function Native.GroupEnumUnitsInRangeOfLocCounted(group, loc, radius, filter, countLimit) end

---@param group group
---@param player player
---@param filter boolexpr
---@return void
function Native.GroupEnumUnitsSelected(group, player, filter) end

---@param group group
---@param order string
---@return boolean
function Native.GroupImmediateOrder(group, order) end

---@param group group
---@param order integer
---@return boolean
function Native.GroupImmediateOrderById(group, order) end

---@param group group
---@param order string
---@param x float
---@param y float
---@return boolean
function Native.GroupPointOrder(group, order, x, y) end

---@param group group
---@param order string
---@param loc location
---@return boolean
function Native.GroupPointOrderLoc(group, order, loc) end

---@param group group
---@param order integer
---@param x float
---@param y float
---@return boolean
function Native.GroupPointOrderById(group, order, x, y) end

---@param group group
---@param order integer
---@param loc location
---@return boolean
function Native.GroupPointOrderByIdLoc(group, order, loc) end

---@param group group
---@param order string
---@param targetWidget widget
---@return boolean
function Native.GroupTargetOrder(group, order, targetWidget) end

---@param group group
---@param order integer
---@param targetWidget widget
---@return boolean
function Native.GroupTargetOrderById(group, order, targetWidget) end

---@param group group
---@param callback function
---@return void
function Native.ForGroup(group, callback) end

---@param group group
---@return unit
function Native.FirstOfGroup(group) end

---@return force
function Native.CreateForce() end

---@param force force
---@return void
function Native.DestroyForce(force) end

---@param force force
---@param player player
---@return void
function Native.ForceAddPlayer(force, player) end

---@param force force
---@param player player
---@return void
function Native.ForceRemovePlayer(force, player) end

---@param force force
---@param player player
---@return boolean
function Native.BlzForceHasPlayer(force, player) end

---@param force force
---@return void
function Native.ForceClear(force) end

---@param force force
---@param filter boolexpr
---@return void
function Native.ForceEnumPlayers(force, filter) end

---@param force force
---@param filter boolexpr
---@param countLimit integer
---@return void
function Native.ForceEnumPlayersCounted(force, filter, countLimit) end

---@param force force
---@param player player
---@param filter boolexpr
---@return void
function Native.ForceEnumAllies(force, player, filter) end

---@param force force
---@param player player
---@param filter boolexpr
---@return void
function Native.ForceEnumEnemies(force, player, filter) end

---@param force force
---@param callback function
---@return void
function Native.ForForce(force, callback) end

---@param minx float
---@param miny float
---@param maxx float
---@param maxy float
---@return rect
function Native.Rect(minx, miny, maxx, maxy) end

---@param min location
---@param max location
---@return rect
function Native.RectFromLoc(min, max) end

---@param rect rect
---@return void
function Native.RemoveRect(rect) end

---@param rect rect
---@param minx float
---@param miny float
---@param maxx float
---@param maxy float
---@return void
function Native.SetRect(rect, minx, miny, maxx, maxy) end

---@param rect rect
---@param min location
---@param max location
---@return void
function Native.SetRectFromLoc(rect, min, max) end

---@param rect rect
---@param centerX float
---@param centerY float
---@return void
function Native.MoveRectTo(rect, centerX, centerY) end

---@param rect rect
---@param centerLoc location
---@return void
function Native.MoveRectToLoc(rect, centerLoc) end

---@param rect rect
---@return float
function Native.GetRectCenterX(rect) end

---@param rect rect
---@return float
function Native.GetRectCenterY(rect) end

---@param rect rect
---@return float
function Native.GetRectMinX(rect) end

---@param rect rect
---@return float
function Native.GetRectMinY(rect) end

---@param rect rect
---@return float
function Native.GetRectMaxX(rect) end

---@param rect rect
---@return float
function Native.GetRectMaxY(rect) end

---@return region
function Native.CreateRegion() end

---@param region region
---@return void
function Native.RemoveRegion(region) end

---@param region region
---@param r rect
---@return void
function Native.RegionAddRect(region, r) end

---@param region region
---@param r rect
---@return void
function Native.RegionClearRect(region, r) end

---@param region region
---@param x float
---@param y float
---@return void
function Native.RegionAddCell(region, x, y) end

---@param region region
---@param loc location
---@return void
function Native.RegionAddCellAtLoc(region, loc) end

---@param region region
---@param x float
---@param y float
---@return void
function Native.RegionClearCell(region, x, y) end

---@param region region
---@param loc location
---@return void
function Native.RegionClearCellAtLoc(region, loc) end

---@param x float
---@param y float
---@return location
function Native.Location(x, y) end

---@param loc location
---@return void
function Native.RemoveLocation(loc) end

---@param loc location
---@param x float
---@param y float
---@return void
function Native.MoveLocation(loc, x, y) end

---@param loc location
---@return float
function Native.GetLocationX(loc) end

---@param loc location
---@return float
function Native.GetLocationY(loc) end

---@param loc location
---@return float
function Native.GetLocationZ(loc) end

---@param region region
---@param unit unit
---@return boolean
function Native.IsUnitInRegion(region, unit) end

---@param region region
---@param x float
---@param y float
---@return boolean
function Native.IsPointInRegion(region, x, y) end

---@param region region
---@param loc location
---@return boolean
function Native.IsLocationInRegion(region, loc) end

---@return rect
function Native.GetWorldBounds() end

---@return trigger
function Native.CreateTrigger() end

---@param trigger trigger
---@return void
function Native.DestroyTrigger(trigger) end

---@param trigger trigger
---@return void
function Native.ResetTrigger(trigger) end

---@param trigger trigger
---@return void
function Native.EnableTrigger(trigger) end

---@param trigger trigger
---@return void
function Native.DisableTrigger(trigger) end

---@param trigger trigger
---@return boolean
function Native.IsTriggerEnabled(trigger) end

---@param trigger trigger
---@param flag boolean
---@return void
function Native.TriggerWaitOnSleeps(trigger, flag) end

---@param trigger trigger
---@return boolean
function Native.IsTriggerWaitOnSleeps(trigger) end

---@return unit
function Native.GetFilterUnit() end

---@return unit
function Native.GetEnumUnit() end

---@return destructable
function Native.GetFilterDestructable() end

---@return destructable
function Native.GetEnumDestructable() end

---@return item
function Native.GetFilterItem() end

---@return item
function Native.GetEnumItem() end

---@param taggedString string
---@return string
function Native.ParseTags(taggedString) end

---@return player
function Native.GetFilterPlayer() end

---@return player
function Native.GetEnumPlayer() end

---@return trigger
function Native.GetTriggeringTrigger() end

---@return eventid
function Native.GetTriggerEventId() end

---@param trigger trigger
---@return integer
function Native.GetTriggerEvalCount(trigger) end

---@param trigger trigger
---@return integer
function Native.GetTriggerExecCount(trigger) end

---@param funcName string
---@return void
function Native.ExecuteFunc(funcName) end

---@param operandA boolexpr
---@param operandB boolexpr
---@return boolexpr
function Native.And(operandA, operandB) end

---@param operandA boolexpr
---@param operandB boolexpr
---@return boolexpr
function Native.Or(operandA, operandB) end

---@param operand boolexpr
---@return boolexpr
function Native.Not(operand) end

---@param func function
---@return conditionfunc
function Native.Condition(func) end

---@param c conditionfunc
---@return void
function Native.DestroyCondition(c) end

---@param func function
---@return filterfunc
function Native.Filter(func) end

---@param f filterfunc
---@return void
function Native.DestroyFilter(f) end

---@param e boolexpr
---@return void
function Native.DestroyBoolExpr(e) end

---@param trigger trigger
---@param varName string
---@param opcode limitop
---@param limitval float
---@return event
function Native.TriggerRegisterVariableEvent(trigger, varName, opcode, limitval) end

---@param trigger trigger
---@param timeout float
---@param periodic boolean
---@return event
function Native.TriggerRegisterTimerEvent(trigger, timeout, periodic) end

---@param trigger trigger
---@param t timer
---@return event
function Native.TriggerRegisterTimerExpireEvent(trigger, t) end

---@param trigger trigger
---@param state gamestate
---@param opcode limitop
---@param limitval float
---@return event
function Native.TriggerRegisterGameStateEvent(trigger, state, opcode, limitval) end

---@param trigger trigger
---@param dialog dialog
---@return event
function Native.TriggerRegisterDialogEvent(trigger, dialog) end

---@param trigger trigger
---@param button button
---@return event
function Native.TriggerRegisterDialogButtonEvent(trigger, button) end

---@return gamestate
function Native.GetEventGameState() end

---@param trigger trigger
---@param gameEvent gameevent
---@return event
function Native.TriggerRegisterGameEvent(trigger, gameEvent) end

---@return player
function Native.GetWinningPlayer() end

---@param trigger trigger
---@param region region
---@param filter boolexpr
---@return event
function Native.TriggerRegisterEnterRegion(trigger, region, filter) end

---@return region
function Native.GetTriggeringRegion() end

---@return unit
function Native.GetEnteringUnit() end

---@param trigger trigger
---@param region region
---@param filter boolexpr
---@return event
function Native.TriggerRegisterLeaveRegion(trigger, region, filter) end

---@return unit
function Native.GetLeavingUnit() end

---@param trigger trigger
---@param t trackable
---@return event
function Native.TriggerRegisterTrackableHitEvent(trigger, t) end

---@param trigger trigger
---@param t trackable
---@return event
function Native.TriggerRegisterTrackableTrackEvent(trigger, t) end

---@param trigger trigger
---@param ability integer
---@param order string
---@return event
function Native.TriggerRegisterCommandEvent(trigger, ability, order) end

---@param trigger trigger
---@param upgrade integer
---@return event
function Native.TriggerRegisterUpgradeCommandEvent(trigger, upgrade) end

---@return trackable
function Native.GetTriggeringTrackable() end

---@return button
function Native.GetClickedButton() end

---@return dialog
function Native.GetClickedDialog() end

---@return float
function Native.GetTournamentFinishSoonTimeRemaining() end

---@return integer
function Native.GetTournamentFinishNowRule() end

---@return player
function Native.GetTournamentFinishNowPlayer() end

---@param player player
---@return integer
function Native.GetTournamentScore(player) end

---@return string
function Native.GetSaveBasicFilename() end

---@param trigger trigger
---@param player player
---@param playerEvent playerevent
---@return event
function Native.TriggerRegisterPlayerEvent(trigger, player, playerEvent) end

---@return player
function Native.GetTriggerPlayer() end

---@param trigger trigger
---@param player player
---@param playerUnitEvent playerunitevent
---@param filter boolexpr
---@return event
function Native.TriggerRegisterPlayerUnitEvent(trigger, player, playerUnitEvent, filter) end

---@return unit
function Native.GetLevelingUnit() end

---@return unit
function Native.GetLearningUnit() end

---@return integer
function Native.GetLearnedSkill() end

---@return integer
function Native.GetLearnedSkillLevel() end

---@return unit
function Native.GetRevivableUnit() end

---@return unit
function Native.GetRevivingUnit() end

---@return unit
function Native.GetAttacker() end

---@return unit
function Native.GetRescuer() end

---@return unit
function Native.GetDyingUnit() end

---@return unit
function Native.GetKillingUnit() end

---@return unit
function Native.GetDecayingUnit() end

---@return unit
function Native.GetConstructingStructure() end

---@return unit
function Native.GetCancelledStructure() end

---@return unit
function Native.GetConstructedStructure() end

---@return unit
function Native.GetResearchingUnit() end

---@return integer
function Native.GetResearched() end

---@return integer
function Native.GetTrainedUnitType() end

---@return unit
function Native.GetTrainedUnit() end

---@return unit
function Native.GetDetectedUnit() end

---@return unit
function Native.GetSummoningUnit() end

---@return unit
function Native.GetSummonedUnit() end

---@return unit
function Native.GetTransportUnit() end

---@return unit
function Native.GetLoadedUnit() end

---@return unit
function Native.GetSellingUnit() end

---@return unit
function Native.GetSoldUnit() end

---@return unit
function Native.GetBuyingUnit() end

---@return item
function Native.GetSoldItem() end

---@return unit
function Native.GetChangingUnit() end

---@return player
function Native.GetChangingUnitPrevOwner() end

---@return unit
function Native.GetManipulatingUnit() end

---@return item
function Native.GetManipulatedItem() end

---@return item
function Native.BlzGetAbsorbingItem() end

---@return boolean
function Native.BlzGetManipulatedItemWasAbsorbed() end

---@return item
function Native.BlzGetStackingItemSource() end

---@return item
function Native.BlzGetStackingItemTarget() end

---@return integer
function Native.BlzGetStackingItemTargetPreviousCharges() end

---@return unit
function Native.GetOrderedUnit() end

---@return integer
function Native.GetIssuedOrderId() end

---@return float
function Native.GetOrderPointX() end

---@return float
function Native.GetOrderPointY() end

---@return location
function Native.GetOrderPointLoc() end

---@return widget
function Native.GetOrderTarget() end

---@return destructable
function Native.GetOrderTargetDestructable() end

---@return item
function Native.GetOrderTargetItem() end

---@return unit
function Native.GetOrderTargetUnit() end

---@return unit
function Native.GetSpellAbilityUnit() end

---@return integer
function Native.GetSpellAbilityId() end

---@return ability
function Native.GetSpellAbility() end

---@return location
function Native.GetSpellTargetLoc() end

---@return float
function Native.GetSpellTargetX() end

---@return float
function Native.GetSpellTargetY() end

---@return destructable
function Native.GetSpellTargetDestructable() end

---@return item
function Native.GetSpellTargetItem() end

---@return unit
function Native.GetSpellTargetUnit() end

---@param trigger trigger
---@param player player
---@param alliance alliancetype
---@return event
function Native.TriggerRegisterPlayerAllianceChange(trigger, player, alliance) end

---@param trigger trigger
---@param player player
---@param state playerstate
---@param opcode limitop
---@param limitval float
---@return event
function Native.TriggerRegisterPlayerStateEvent(trigger, player, state, opcode, limitval) end

---@return playerstate
function Native.GetEventPlayerState() end

---@param trigger trigger
---@param player player
---@param chatMessageToDetect string
---@param exactMatchOnly boolean
---@return event
function Native.TriggerRegisterPlayerChatEvent(trigger, player, chatMessageToDetect, exactMatchOnly) end

---@return string
function Native.GetEventPlayerChatString() end

---@return string
function Native.GetEventPlayerChatStringMatched() end

---@param trigger trigger
---@param widget widget
---@return event
function Native.TriggerRegisterDeathEvent(trigger, widget) end

---@return unit
function Native.GetTriggerUnit() end

---@param trigger trigger
---@param unit unit
---@param state unitstate
---@param opcode limitop
---@param limitval float
---@return event
function Native.TriggerRegisterUnitStateEvent(trigger, unit, state, opcode, limitval) end

---@return unitstate
function Native.GetEventUnitState() end

---@param trigger trigger
---@param unit unit
---@param event unitevent
---@return event
function Native.TriggerRegisterUnitEvent(trigger, unit, event) end

---@return float
function Native.GetEventDamage() end

---@return unit
function Native.GetEventDamageSource() end

---@return player
function Native.GetEventDetectingPlayer() end

---@param trigger trigger
---@param unit unit
---@param event unitevent
---@param filter boolexpr
---@return event
function Native.TriggerRegisterFilterUnitEvent(trigger, unit, event, filter) end

---@return unit
function Native.GetEventTargetUnit() end

---@param trigger trigger
---@param unit unit
---@param range float
---@param filter boolexpr
---@return event
function Native.TriggerRegisterUnitInRange(trigger, unit, range, filter) end

---@param trigger trigger
---@param condition boolexpr
---@return triggercondition
function Native.TriggerAddCondition(trigger, condition) end

---@param trigger trigger
---@param condition triggercondition
---@return void
function Native.TriggerRemoveCondition(trigger, condition) end

---@param trigger trigger
---@return void
function Native.TriggerClearConditions(trigger) end

---@param trigger trigger
---@param actionFunc function
---@return triggeraction
function Native.TriggerAddAction(trigger, actionFunc) end

---@param trigger trigger
---@param action triggeraction
---@return void
function Native.TriggerRemoveAction(trigger, action) end

---@param trigger trigger
---@return void
function Native.TriggerClearActions(trigger) end

---@param timeout float
---@return void
function Native.TriggerSleepAction(timeout) end

---@param s sound
---@param offset float
---@return void
function Native.TriggerWaitForSound(s, offset) end

---@param trigger trigger
---@return boolean
function Native.TriggerEvaluate(trigger) end

---@param trigger trigger
---@return void
function Native.TriggerExecute(trigger) end

---@param trigger trigger
---@return void
function Native.TriggerExecuteWait(trigger) end

---@return void
function Native.TriggerSyncStart() end

---@return void
function Native.TriggerSyncReady() end

---@param widget widget
---@return float
function Native.GetWidgetLife(widget) end

---@param widget widget
---@param life float
---@return void
function Native.SetWidgetLife(widget, life) end

---@param widget widget
---@return float
function Native.GetWidgetX(widget) end

---@param widget widget
---@return float
function Native.GetWidgetY(widget) end

---@return widget
function Native.GetTriggerWidget() end

---@param objectid integer
---@param x float
---@param y float
---@param face float
---@param scale float
---@param variation integer
---@return destructable
function Native.CreateDestructable(objectid, x, y, face, scale, variation) end

---@param objectid integer
---@param x float
---@param y float
---@param z float
---@param face float
---@param scale float
---@param variation integer
---@return destructable
function Native.CreateDestructableZ(objectid, x, y, z, face, scale, variation) end

---@param objectid integer
---@param x float
---@param y float
---@param face float
---@param scale float
---@param variation integer
---@return destructable
function Native.CreateDeadDestructable(objectid, x, y, face, scale, variation) end

---@param objectid integer
---@param x float
---@param y float
---@param z float
---@param face float
---@param scale float
---@param variation integer
---@return destructable
function Native.CreateDeadDestructableZ(objectid, x, y, z, face, scale, variation) end

---@param d destructable
---@return void
function Native.RemoveDestructable(d) end

---@param d destructable
---@return void
function Native.KillDestructable(d) end

---@param d destructable
---@param flag boolean
---@return void
function Native.SetDestructableInvulnerable(d, flag) end

---@param d destructable
---@return boolean
function Native.IsDestructableInvulnerable(d) end

---@param r rect
---@param filter boolexpr
---@param actionFunc function
---@return void
function Native.EnumDestructablesInRect(r, filter, actionFunc) end

---@param d destructable
---@return integer
function Native.GetDestructableTypeId(d) end

---@param d destructable
---@return float
function Native.GetDestructableX(d) end

---@param d destructable
---@return float
function Native.GetDestructableY(d) end

---@param d destructable
---@param life float
---@return void
function Native.SetDestructableLife(d, life) end

---@param d destructable
---@return float
function Native.GetDestructableLife(d) end

---@param d destructable
---@param max float
---@return void
function Native.SetDestructableMaxLife(d, max) end

---@param d destructable
---@return float
function Native.GetDestructableMaxLife(d) end

---@param d destructable
---@param life float
---@param birth boolean
---@return void
function Native.DestructableRestoreLife(d, life, birth) end

---@param d destructable
---@param animation string
---@return void
function Native.QueueDestructableAnimation(d, animation) end

---@param d destructable
---@param animation string
---@return void
function Native.SetDestructableAnimation(d, animation) end

---@param d destructable
---@param speedFactor float
---@return void
function Native.SetDestructableAnimationSpeed(d, speedFactor) end

---@param d destructable
---@param flag boolean
---@return void
function Native.ShowDestructable(d, flag) end

---@param d destructable
---@return float
function Native.GetDestructableOccluderHeight(d) end

---@param d destructable
---@param height float
---@return void
function Native.SetDestructableOccluderHeight(d, height) end

---@param d destructable
---@return string
function Native.GetDestructableName(d) end

---@return destructable
function Native.GetTriggerDestructable() end

---@param itemid integer
---@param x float
---@param y float
---@return item
function Native.CreateItem(itemid, x, y) end

---@param item item
---@return void
function Native.RemoveItem(item) end

---@param item item
---@return player
function Native.GetItemPlayer(item) end

---@param i item
---@return integer
function Native.GetItemTypeId(i) end

---@param i item
---@return float
function Native.GetItemX(i) end

---@param i item
---@return float
function Native.GetItemY(i) end

---@param i item
---@param x float
---@param y float
---@return void
function Native.SetItemPosition(i, x, y) end

---@param item item
---@param flag boolean
---@return void
function Native.SetItemDropOnDeath(item, flag) end

---@param i item
---@param flag boolean
---@return void
function Native.SetItemDroppable(i, flag) end

---@param i item
---@param flag boolean
---@return void
function Native.SetItemPawnable(i, flag) end

---@param item item
---@param player player
---@param changeColor boolean
---@return void
function Native.SetItemPlayer(item, player, changeColor) end

---@param item item
---@param flag boolean
---@return void
function Native.SetItemInvulnerable(item, flag) end

---@param item item
---@return boolean
function Native.IsItemInvulnerable(item) end

---@param item item
---@param show boolean
---@return void
function Native.SetItemVisible(item, show) end

---@param item item
---@return boolean
function Native.IsItemVisible(item) end

---@param item item
---@return boolean
function Native.IsItemOwned(item) end

---@param item item
---@return boolean
function Native.IsItemPowerup(item) end

---@param item item
---@return boolean
function Native.IsItemSellable(item) end

---@param item item
---@return boolean
function Native.IsItemPawnable(item) end

---@param itemId integer
---@return boolean
function Native.IsItemIdPowerup(itemId) end

---@param itemId integer
---@return boolean
function Native.IsItemIdSellable(itemId) end

---@param itemId integer
---@return boolean
function Native.IsItemIdPawnable(itemId) end

---@param r rect
---@param filter boolexpr
---@param actionFunc function
---@return void
function Native.EnumItemsInRect(r, filter, actionFunc) end

---@param item item
---@return integer
function Native.GetItemLevel(item) end

---@param item item
---@return itemtype
function Native.GetItemType(item) end

---@param item item
---@param unitId integer
---@return void
function Native.SetItemDropID(item, unitId) end

---@param item item
---@return string
function Native.GetItemName(item) end

---@param item item
---@return integer
function Native.GetItemCharges(item) end

---@param item item
---@param charges integer
---@return void
function Native.SetItemCharges(item, charges) end

---@param item item
---@return integer
function Native.GetItemUserData(item) end

---@param item item
---@param data integer
---@return void
function Native.SetItemUserData(item, data) end

---@param id player
---@param unitid integer
---@param x float
---@param y float
---@param face float
---@return unit
function Native.CreateUnit(id, unitid, x, y, face) end

---@param player player
---@param unitname string
---@param x float
---@param y float
---@param face float
---@return unit
function Native.CreateUnitByName(player, unitname, x, y, face) end

---@param id player
---@param unitid integer
---@param loc location
---@param face float
---@return unit
function Native.CreateUnitAtLoc(id, unitid, loc, face) end

---@param id player
---@param unitname string
---@param loc location
---@param face float
---@return unit
function Native.CreateUnitAtLocByName(id, unitname, loc, face) end

---@param player player
---@param unitid integer
---@param x float
---@param y float
---@param face float
---@return unit
function Native.CreateCorpse(player, unitid, x, y, face) end

---@param unit unit
---@return void
function Native.KillUnit(unit) end

---@param unit unit
---@return void
function Native.RemoveUnit(unit) end

---@param unit unit
---@param show boolean
---@return void
function Native.ShowUnit(unit, show) end

---@param unit unit
---@param unitState unitstate
---@param val float
---@return void
function Native.SetUnitState(unit, unitState, val) end

---@param unit unit
---@param x float
---@return void
function Native.SetUnitX(unit, x) end

---@param unit unit
---@param y float
---@return void
function Native.SetUnitY(unit, y) end

---@param unit unit
---@param x float
---@param y float
---@return void
function Native.SetUnitPosition(unit, x, y) end

---@param unit unit
---@param loc location
---@return void
function Native.SetUnitPositionLoc(unit, loc) end

---@param unit unit
---@param facingAngle float
---@return void
function Native.SetUnitFacing(unit, facingAngle) end

---@param unit unit
---@param facingAngle float
---@param duration float
---@return void
function Native.SetUnitFacingTimed(unit, facingAngle, duration) end

---@param unit unit
---@param speed float
---@return void
function Native.SetUnitMoveSpeed(unit, speed) end

---@param unit unit
---@param height float
---@param rate float
---@return void
function Native.SetUnitFlyHeight(unit, height, rate) end

---@param unit unit
---@param turnSpeed float
---@return void
function Native.SetUnitTurnSpeed(unit, turnSpeed) end

---@param unit unit
---@param propWindowAngle float
---@return void
function Native.SetUnitPropWindow(unit, propWindowAngle) end

---@param unit unit
---@param acquireRange float
---@return void
function Native.SetUnitAcquireRange(unit, acquireRange) end

---@param unit unit
---@param creepGuard boolean
---@return void
function Native.SetUnitCreepGuard(unit, creepGuard) end

---@param unit unit
---@return float
function Native.GetUnitAcquireRange(unit) end

---@param unit unit
---@return float
function Native.GetUnitTurnSpeed(unit) end

---@param unit unit
---@return float
function Native.GetUnitPropWindow(unit) end

---@param unit unit
---@return float
function Native.GetUnitFlyHeight(unit) end

---@param unit unit
---@return float
function Native.GetUnitDefaultAcquireRange(unit) end

---@param unit unit
---@return float
function Native.GetUnitDefaultTurnSpeed(unit) end

---@param unit unit
---@return float
function Native.GetUnitDefaultPropWindow(unit) end

---@param unit unit
---@return float
function Native.GetUnitDefaultFlyHeight(unit) end

---@param unit unit
---@param player player
---@param changeColor boolean
---@return void
function Native.SetUnitOwner(unit, player, changeColor) end

---@param unit unit
---@param color playercolor
---@return void
function Native.SetUnitColor(unit, color) end

---@param unit unit
---@param scaleX float
---@param scaleY float
---@param scaleZ float
---@return void
function Native.SetUnitScale(unit, scaleX, scaleY, scaleZ) end

---@param unit unit
---@param timeScale float
---@return void
function Native.SetUnitTimeScale(unit, timeScale) end

---@param unit unit
---@param blendTime float
---@return void
function Native.SetUnitBlendTime(unit, blendTime) end

---@param unit unit
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.SetUnitVertexColor(unit, red, green, blue, alpha) end

---@param unit unit
---@param animation string
---@return void
function Native.QueueUnitAnimation(unit, animation) end

---@param unit unit
---@param animation string
---@return void
function Native.SetUnitAnimation(unit, animation) end

---@param unit unit
---@param animation integer
---@return void
function Native.SetUnitAnimationByIndex(unit, animation) end

---@param unit unit
---@param animation string
---@param rarity raritycontrol
---@return void
function Native.SetUnitAnimationWithRarity(unit, animation, rarity) end

---@param unit unit
---@param animProperties string
---@param add boolean
---@return void
function Native.AddUnitAnimationProperties(unit, animProperties, add) end

---@param unit unit
---@param bone string
---@param lookAtTarget unit
---@param offsetX float
---@param offsetY float
---@param offsetZ float
---@return void
function Native.SetUnitLookAt(unit, bone, lookAtTarget, offsetX, offsetY, offsetZ) end

---@param unit unit
---@return void
function Native.ResetUnitLookAt(unit) end

---@param unit unit
---@param byWhichPlayer player
---@param flag boolean
---@return void
function Native.SetUnitRescuable(unit, byWhichPlayer, flag) end

---@param unit unit
---@param range float
---@return void
function Native.SetUnitRescueRange(unit, range) end

---@param hero unit
---@param str integer
---@param permanent boolean
---@return void
function Native.SetHeroStr(hero, str, permanent) end

---@param hero unit
---@param agi integer
---@param permanent boolean
---@return void
function Native.SetHeroAgi(hero, agi, permanent) end

---@param hero unit
---@param int integer
---@param permanent boolean
---@return void
function Native.SetHeroInt(hero, int, permanent) end

---@param hero unit
---@param includeBonuses boolean
---@return integer
function Native.GetHeroStr(hero, includeBonuses) end

---@param hero unit
---@param includeBonuses boolean
---@return integer
function Native.GetHeroAgi(hero, includeBonuses) end

---@param hero unit
---@param includeBonuses boolean
---@return integer
function Native.GetHeroInt(hero, includeBonuses) end

---@param hero unit
---@param howManyLevels integer
---@return boolean
function Native.UnitStripHeroLevel(hero, howManyLevels) end

---@param hero unit
---@return integer
function Native.GetHeroXP(hero) end

---@param hero unit
---@param xpVal integer
---@param showEyeCandy boolean
---@return void
function Native.SetHeroXP(hero, xpVal, showEyeCandy) end

---@param hero unit
---@return integer
function Native.GetHeroSkillPoints(hero) end

---@param hero unit
---@param skillPointDelta integer
---@return boolean
function Native.UnitModifySkillPoints(hero, skillPointDelta) end

---@param hero unit
---@param xpToAdd integer
---@param showEyeCandy boolean
---@return void
function Native.AddHeroXP(hero, xpToAdd, showEyeCandy) end

---@param hero unit
---@param level integer
---@param showEyeCandy boolean
---@return void
function Native.SetHeroLevel(hero, level, showEyeCandy) end

---@param hero unit
---@return integer
function Native.GetHeroLevel(hero) end

---@param unit unit
---@return integer
function Native.GetUnitLevel(unit) end

---@param hero unit
---@return string
function Native.GetHeroProperName(hero) end

---@param hero unit
---@param flag boolean
---@return void
function Native.SuspendHeroXP(hero, flag) end

---@param hero unit
---@return boolean
function Native.IsSuspendedXP(hero) end

---@param hero unit
---@param abilcode integer
---@return void
function Native.SelectHeroSkill(hero, abilcode) end

---@param unit unit
---@param abilcode integer
---@return integer
function Native.GetUnitAbilityLevel(unit, abilcode) end

---@param unit unit
---@param abilcode integer
---@return integer
function Native.DecUnitAbilityLevel(unit, abilcode) end

---@param unit unit
---@param abilcode integer
---@return integer
function Native.IncUnitAbilityLevel(unit, abilcode) end

---@param unit unit
---@param abilcode integer
---@param level integer
---@return integer
function Native.SetUnitAbilityLevel(unit, abilcode, level) end

---@param hero unit
---@param x float
---@param y float
---@param doEyecandy boolean
---@return boolean
function Native.ReviveHero(hero, x, y, doEyecandy) end

---@param hero unit
---@param loc location
---@param doEyecandy boolean
---@return boolean
function Native.ReviveHeroLoc(hero, loc, doEyecandy) end

---@param unit unit
---@param exploded boolean
---@return void
function Native.SetUnitExploded(unit, exploded) end

---@param unit unit
---@param flag boolean
---@return void
function Native.SetUnitInvulnerable(unit, flag) end

---@param unit unit
---@param flag boolean
---@return void
function Native.PauseUnit(unit, flag) end

---@param hero unit
---@return boolean
function Native.IsUnitPaused(hero) end

---@param unit unit
---@param flag boolean
---@return void
function Native.SetUnitPathing(unit, flag) end

---@return void
function Native.ClearSelection() end

---@param unit unit
---@param flag boolean
---@return void
function Native.SelectUnit(unit, flag) end

---@param unit unit
---@return integer
function Native.GetUnitPointValue(unit) end

---@param unitType integer
---@return integer
function Native.GetUnitPointValueByType(unitType) end

---@param unit unit
---@param item item
---@return boolean
function Native.UnitAddItem(unit, item) end

---@param unit unit
---@param itemId integer
---@return item
function Native.UnitAddItemById(unit, itemId) end

---@param unit unit
---@param itemId integer
---@param itemSlot integer
---@return boolean
function Native.UnitAddItemToSlotById(unit, itemId, itemSlot) end

---@param unit unit
---@param item item
---@return void
function Native.UnitRemoveItem(unit, item) end

---@param unit unit
---@param itemSlot integer
---@return item
function Native.UnitRemoveItemFromSlot(unit, itemSlot) end

---@param unit unit
---@param item item
---@return boolean
function Native.UnitHasItem(unit, item) end

---@param unit unit
---@param itemSlot integer
---@return item
function Native.UnitItemInSlot(unit, itemSlot) end

---@param unit unit
---@return integer
function Native.UnitInventorySize(unit) end

---@param unit unit
---@param item item
---@param x float
---@param y float
---@return boolean
function Native.UnitDropItemPoint(unit, item, x, y) end

---@param unit unit
---@param item item
---@param slot integer
---@return boolean
function Native.UnitDropItemSlot(unit, item, slot) end

---@param unit unit
---@param item item
---@param target widget
---@return boolean
function Native.UnitDropItemTarget(unit, item, target) end

---@param unit unit
---@param item item
---@return boolean
function Native.UnitUseItem(unit, item) end

---@param unit unit
---@param item item
---@param x float
---@param y float
---@return boolean
function Native.UnitUseItemPoint(unit, item, x, y) end

---@param unit unit
---@param item item
---@param target widget
---@return boolean
function Native.UnitUseItemTarget(unit, item, target) end

---@param unit unit
---@return float
function Native.GetUnitX(unit) end

---@param unit unit
---@return float
function Native.GetUnitY(unit) end

---@param unit unit
---@return location
function Native.GetUnitLoc(unit) end

---@param unit unit
---@return float
function Native.GetUnitFacing(unit) end

---@param unit unit
---@return float
function Native.GetUnitMoveSpeed(unit) end

---@param unit unit
---@return float
function Native.GetUnitDefaultMoveSpeed(unit) end

---@param unit unit
---@param unitState unitstate
---@return float
function Native.GetUnitState(unit, unitState) end

---@param unit unit
---@return player
function Native.GetOwningPlayer(unit) end

---@param unit unit
---@return integer
function Native.GetUnitTypeId(unit) end

---@param unit unit
---@return race
function Native.GetUnitRace(unit) end

---@param unit unit
---@return string
function Native.GetUnitName(unit) end

---@param unit unit
---@return integer
function Native.GetUnitFoodUsed(unit) end

---@param unit unit
---@return integer
function Native.GetUnitFoodMade(unit) end

---@param unitId integer
---@return integer
function Native.GetFoodMade(unitId) end

---@param unitId integer
---@return integer
function Native.GetFoodUsed(unitId) end

---@param unit unit
---@param useFood boolean
---@return void
function Native.SetUnitUseFood(unit, useFood) end

---@param unit unit
---@return location
function Native.GetUnitRallyPoint(unit) end

---@param unit unit
---@return unit
function Native.GetUnitRallyUnit(unit) end

---@param unit unit
---@return destructable
function Native.GetUnitRallyDestructable(unit) end

---@param unit unit
---@param group group
---@return boolean
function Native.IsUnitInGroup(unit, group) end

---@param unit unit
---@param force force
---@return boolean
function Native.IsUnitInForce(unit, force) end

---@param unit unit
---@param player player
---@return boolean
function Native.IsUnitOwnedByPlayer(unit, player) end

---@param unit unit
---@param player player
---@return boolean
function Native.IsUnitAlly(unit, player) end

---@param unit unit
---@param player player
---@return boolean
function Native.IsUnitEnemy(unit, player) end

---@param unit unit
---@param player player
---@return boolean
function Native.IsUnitVisible(unit, player) end

---@param unit unit
---@param player player
---@return boolean
function Native.IsUnitDetected(unit, player) end

---@param unit unit
---@param player player
---@return boolean
function Native.IsUnitInvisible(unit, player) end

---@param unit unit
---@param player player
---@return boolean
function Native.IsUnitFogged(unit, player) end

---@param unit unit
---@param player player
---@return boolean
function Native.IsUnitMasked(unit, player) end

---@param unit unit
---@param player player
---@return boolean
function Native.IsUnitSelected(unit, player) end

---@param unit unit
---@param race race
---@return boolean
function Native.IsUnitRace(unit, race) end

---@param unit unit
---@param unitType unittype
---@return boolean
function Native.IsUnitType(unit, unitType) end

---@param unit unit
---@param specifiedUnit unit
---@return boolean
function Native.IsUnit(unit, specifiedUnit) end

---@param unit unit
---@param otherUnit unit
---@param distance float
---@return boolean
function Native.IsUnitInRange(unit, otherUnit, distance) end

---@param unit unit
---@param x float
---@param y float
---@param distance float
---@return boolean
function Native.IsUnitInRangeXY(unit, x, y, distance) end

---@param unit unit
---@param loc location
---@param distance float
---@return boolean
function Native.IsUnitInRangeLoc(unit, loc, distance) end

---@param unit unit
---@return boolean
function Native.IsUnitHidden(unit) end

---@param unit unit
---@return boolean
function Native.IsUnitIllusion(unit) end

---@param unit unit
---@param transport unit
---@return boolean
function Native.IsUnitInTransport(unit, transport) end

---@param unit unit
---@return boolean
function Native.IsUnitLoaded(unit) end

---@param unitId integer
---@return boolean
function Native.IsHeroUnitId(unitId) end

---@param unitId integer
---@param unitType unittype
---@return boolean
function Native.IsUnitIdType(unitId, unitType) end

---@param unit unit
---@param player player
---@param share boolean
---@return void
function Native.UnitShareVision(unit, player, share) end

---@param unit unit
---@param suspend boolean
---@return void
function Native.UnitSuspendDecay(unit, suspend) end

---@param unit unit
---@param unitType unittype
---@return boolean
function Native.UnitAddType(unit, unitType) end

---@param unit unit
---@param unitType unittype
---@return boolean
function Native.UnitRemoveType(unit, unitType) end

---@param unit unit
---@param abilityId integer
---@return boolean
function Native.UnitAddAbility(unit, abilityId) end

---@param unit unit
---@param abilityId integer
---@return boolean
function Native.UnitRemoveAbility(unit, abilityId) end

---@param unit unit
---@param permanent boolean
---@param abilityId integer
---@return boolean
function Native.UnitMakeAbilityPermanent(unit, permanent, abilityId) end

---@param unit unit
---@param removePositive boolean
---@param removeNegative boolean
---@return void
function Native.UnitRemoveBuffs(unit, removePositive, removeNegative) end

---@param unit unit
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
---@return void
function Native.UnitRemoveBuffsEx(unit, removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel) end

---@param unit unit
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
---@return boolean
function Native.UnitHasBuffsEx(unit, removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel) end

---@param unit unit
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
---@return integer
function Native.UnitCountBuffsEx(unit, removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel) end

---@param unit unit
---@param add boolean
---@return void
function Native.UnitAddSleep(unit, add) end

---@param unit unit
---@return boolean
function Native.UnitCanSleep(unit) end

---@param unit unit
---@param add boolean
---@return void
function Native.UnitAddSleepPerm(unit, add) end

---@param unit unit
---@return boolean
function Native.UnitCanSleepPerm(unit) end

---@param unit unit
---@return boolean
function Native.UnitIsSleeping(unit) end

---@param unit unit
---@return void
function Native.UnitWakeUp(unit) end

---@param unit unit
---@param buffId integer
---@param duration float
---@return void
function Native.UnitApplyTimedLife(unit, buffId, duration) end

---@param unit unit
---@param flag boolean
---@return boolean
function Native.UnitIgnoreAlarm(unit, flag) end

---@param unit unit
---@return boolean
function Native.UnitIgnoreAlarmToggled(unit) end

---@param unit unit
---@return void
function Native.UnitResetCooldown(unit) end

---@param unit unit
---@param constructionPercentage integer
---@return void
function Native.UnitSetConstructionProgress(unit, constructionPercentage) end

---@param unit unit
---@param upgradePercentage integer
---@return void
function Native.UnitSetUpgradeProgress(unit, upgradePercentage) end

---@param unit unit
---@param flag boolean
---@return void
function Native.UnitPauseTimedLife(unit, flag) end

---@param unit unit
---@param flag boolean
---@return void
function Native.UnitSetUsesAltIcon(unit, flag) end

---@param unit unit
---@param delay float
---@param radius float
---@param x float
---@param y float
---@param amount float
---@param attack boolean
---@param ranged boolean
---@param attackType attacktype
---@param damageType damagetype
---@param weaponType weapontype
---@return boolean
function Native.UnitDamagePoint(unit, delay, radius, x, y, amount, attack, ranged, attackType, damageType, weaponType) end

---@param unit unit
---@param target widget
---@param amount float
---@param attack boolean
---@param ranged boolean
---@param attackType attacktype
---@param damageType damagetype
---@param weaponType weapontype
---@return boolean
function Native.UnitDamageTarget(unit, target, amount, attack, ranged, attackType, damageType, weaponType) end

---@param unit unit
---@param order string
---@return boolean
function Native.IssueImmediateOrder(unit, order) end

---@param unit unit
---@param order integer
---@return boolean
function Native.IssueImmediateOrderById(unit, order) end

---@param unit unit
---@param order string
---@param x float
---@param y float
---@return boolean
function Native.IssuePointOrder(unit, order, x, y) end

---@param unit unit
---@param order string
---@param loc location
---@return boolean
function Native.IssuePointOrderLoc(unit, order, loc) end

---@param unit unit
---@param order integer
---@param x float
---@param y float
---@return boolean
function Native.IssuePointOrderById(unit, order, x, y) end

---@param unit unit
---@param order integer
---@param loc location
---@return boolean
function Native.IssuePointOrderByIdLoc(unit, order, loc) end

---@param unit unit
---@param order string
---@param targetWidget widget
---@return boolean
function Native.IssueTargetOrder(unit, order, targetWidget) end

---@param unit unit
---@param order integer
---@param targetWidget widget
---@return boolean
function Native.IssueTargetOrderById(unit, order, targetWidget) end

---@param unit unit
---@param order string
---@param x float
---@param y float
---@param instantTargetWidget widget
---@return boolean
function Native.IssueInstantPointOrder(unit, order, x, y, instantTargetWidget) end

---@param unit unit
---@param order integer
---@param x float
---@param y float
---@param instantTargetWidget widget
---@return boolean
function Native.IssueInstantPointOrderById(unit, order, x, y, instantTargetWidget) end

---@param unit unit
---@param order string
---@param targetWidget widget
---@param instantTargetWidget widget
---@return boolean
function Native.IssueInstantTargetOrder(unit, order, targetWidget, instantTargetWidget) end

---@param unit unit
---@param order integer
---@param targetWidget widget
---@param instantTargetWidget widget
---@return boolean
function Native.IssueInstantTargetOrderById(unit, order, targetWidget, instantTargetWidget) end

---@param peon unit
---@param unitToBuild string
---@param x float
---@param y float
---@return boolean
function Native.IssueBuildOrder(peon, unitToBuild, x, y) end

---@param peon unit
---@param unitId integer
---@param x float
---@param y float
---@return boolean
function Native.IssueBuildOrderById(peon, unitId, x, y) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitToBuild string
---@return boolean
function Native.IssueNeutralImmediateOrder(forWhichPlayer, neutralStructure, unitToBuild) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitId integer
---@return boolean
function Native.IssueNeutralImmediateOrderById(forWhichPlayer, neutralStructure, unitId) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitToBuild string
---@param x float
---@param y float
---@return boolean
function Native.IssueNeutralPointOrder(forWhichPlayer, neutralStructure, unitToBuild, x, y) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitId integer
---@param x float
---@param y float
---@return boolean
function Native.IssueNeutralPointOrderById(forWhichPlayer, neutralStructure, unitId, x, y) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitToBuild string
---@param target widget
---@return boolean
function Native.IssueNeutralTargetOrder(forWhichPlayer, neutralStructure, unitToBuild, target) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitId integer
---@param target widget
---@return boolean
function Native.IssueNeutralTargetOrderById(forWhichPlayer, neutralStructure, unitId, target) end

---@param unit unit
---@return integer
function Native.GetUnitCurrentOrder(unit) end

---@param unit unit
---@param amount integer
---@return void
function Native.SetResourceAmount(unit, amount) end

---@param unit unit
---@param amount integer
---@return void
function Native.AddResourceAmount(unit, amount) end

---@param unit unit
---@return integer
function Native.GetResourceAmount(unit) end

---@param waygate unit
---@return float
function Native.WaygateGetDestinationX(waygate) end

---@param waygate unit
---@return float
function Native.WaygateGetDestinationY(waygate) end

---@param waygate unit
---@param x float
---@param y float
---@return void
function Native.WaygateSetDestination(waygate, x, y) end

---@param waygate unit
---@param activate boolean
---@return void
function Native.WaygateActivate(waygate, activate) end

---@param waygate unit
---@return boolean
function Native.WaygateIsActive(waygate) end

---@param itemId integer
---@param currentStock integer
---@param stockMax integer
---@return void
function Native.AddItemToAllStock(itemId, currentStock, stockMax) end

---@param unit unit
---@param itemId integer
---@param currentStock integer
---@param stockMax integer
---@return void
function Native.AddItemToStock(unit, itemId, currentStock, stockMax) end

---@param unitId integer
---@param currentStock integer
---@param stockMax integer
---@return void
function Native.AddUnitToAllStock(unitId, currentStock, stockMax) end

---@param unit unit
---@param unitId integer
---@param currentStock integer
---@param stockMax integer
---@return void
function Native.AddUnitToStock(unit, unitId, currentStock, stockMax) end

---@param itemId integer
---@return void
function Native.RemoveItemFromAllStock(itemId) end

---@param unit unit
---@param itemId integer
---@return void
function Native.RemoveItemFromStock(unit, itemId) end

---@param unitId integer
---@return void
function Native.RemoveUnitFromAllStock(unitId) end

---@param unit unit
---@param unitId integer
---@return void
function Native.RemoveUnitFromStock(unit, unitId) end

---@param slots integer
---@return void
function Native.SetAllItemTypeSlots(slots) end

---@param slots integer
---@return void
function Native.SetAllUnitTypeSlots(slots) end

---@param unit unit
---@param slots integer
---@return void
function Native.SetItemTypeSlots(unit, slots) end

---@param unit unit
---@param slots integer
---@return void
function Native.SetUnitTypeSlots(unit, slots) end

---@param unit unit
---@return integer
function Native.GetUnitUserData(unit) end

---@param unit unit
---@param data integer
---@return void
function Native.SetUnitUserData(unit, data) end

---@param number integer
---@return player
function Native.Player(number) end

---@return player
function Native.GetLocalPlayer() end

---@param player player
---@param otherPlayer player
---@return boolean
function Native.IsPlayerAlly(player, otherPlayer) end

---@param player player
---@param otherPlayer player
---@return boolean
function Native.IsPlayerEnemy(player, otherPlayer) end

---@param player player
---@param force force
---@return boolean
function Native.IsPlayerInForce(player, force) end

---@param player player
---@return boolean
function Native.IsPlayerObserver(player) end

---@param x float
---@param y float
---@param player player
---@return boolean
function Native.IsVisibleToPlayer(x, y, player) end

---@param loc location
---@param player player
---@return boolean
function Native.IsLocationVisibleToPlayer(loc, player) end

---@param x float
---@param y float
---@param player player
---@return boolean
function Native.IsFoggedToPlayer(x, y, player) end

---@param loc location
---@param player player
---@return boolean
function Native.IsLocationFoggedToPlayer(loc, player) end

---@param x float
---@param y float
---@param player player
---@return boolean
function Native.IsMaskedToPlayer(x, y, player) end

---@param loc location
---@param player player
---@return boolean
function Native.IsLocationMaskedToPlayer(loc, player) end

---@param player player
---@return race
function Native.GetPlayerRace(player) end

---@param player player
---@return integer
function Native.GetPlayerId(player) end

---@param player player
---@param includeIncomplete boolean
---@return integer
function Native.GetPlayerUnitCount(player, includeIncomplete) end

---@param player player
---@param unitName string
---@param includeIncomplete boolean
---@param includeUpgrades boolean
---@return integer
function Native.GetPlayerTypedUnitCount(player, unitName, includeIncomplete, includeUpgrades) end

---@param player player
---@param includeIncomplete boolean
---@return integer
function Native.GetPlayerStructureCount(player, includeIncomplete) end

---@param player player
---@param playerState playerstate
---@return integer
function Native.GetPlayerState(player, playerState) end

---@param player player
---@param playerScore playerscore
---@return integer
function Native.GetPlayerScore(player, playerScore) end

---@param sourcePlayer player
---@param otherPlayer player
---@param allianceSetting alliancetype
---@return boolean
function Native.GetPlayerAlliance(sourcePlayer, otherPlayer, allianceSetting) end

---@param player player
---@return float
function Native.GetPlayerHandicap(player) end

---@param player player
---@return float
function Native.GetPlayerHandicapXP(player) end

---@param player player
---@return float
function Native.GetPlayerHandicapReviveTime(player) end

---@param player player
---@return float
function Native.GetPlayerHandicapDamage(player) end

---@param player player
---@param handicap float
---@return void
function Native.SetPlayerHandicap(player, handicap) end

---@param player player
---@param handicap float
---@return void
function Native.SetPlayerHandicapXP(player, handicap) end

---@param player player
---@param handicap float
---@return void
function Native.SetPlayerHandicapReviveTime(player, handicap) end

---@param player player
---@param handicap float
---@return void
function Native.SetPlayerHandicapDamage(player, handicap) end

---@param player player
---@param techid integer
---@param maximum integer
---@return void
function Native.SetPlayerTechMaxAllowed(player, techid, maximum) end

---@param player player
---@param techid integer
---@return integer
function Native.GetPlayerTechMaxAllowed(player, techid) end

---@param player player
---@param techid integer
---@param levels integer
---@return void
function Native.AddPlayerTechResearched(player, techid, levels) end

---@param player player
---@param techid integer
---@param setToLevel integer
---@return void
function Native.SetPlayerTechResearched(player, techid, setToLevel) end

---@param player player
---@param techid integer
---@param specificonly boolean
---@return boolean
function Native.GetPlayerTechResearched(player, techid, specificonly) end

---@param player player
---@param techid integer
---@param specificonly boolean
---@return integer
function Native.GetPlayerTechCount(player, techid, specificonly) end

---@param player player
---@param owner integer
---@return void
function Native.SetPlayerUnitsOwner(player, owner) end

---@param player player
---@param toWhichPlayers force
---@param flag boolean
---@return void
function Native.CripplePlayer(player, toWhichPlayers, flag) end

---@param player player
---@param abilid integer
---@param avail boolean
---@return void
function Native.SetPlayerAbilityAvailable(player, abilid, avail) end

---@param player player
---@param playerState playerstate
---@param value integer
---@return void
function Native.SetPlayerState(player, playerState, value) end

---@param player player
---@param gameResult playergameresult
---@return void
function Native.RemovePlayer(player, gameResult) end

---@param player player
---@return void
function Native.CachePlayerHeroData(player) end

---@param forWhichPlayer player
---@param state fogstate
---@param where rect
---@param useSharedVision boolean
---@return void
function Native.SetFogStateRect(forWhichPlayer, state, where, useSharedVision) end

---@param forWhichPlayer player
---@param state fogstate
---@param centerx float
---@param centerY float
---@param radius float
---@param useSharedVision boolean
---@return void
function Native.SetFogStateRadius(forWhichPlayer, state, centerx, centerY, radius, useSharedVision) end

---@param forWhichPlayer player
---@param state fogstate
---@param center location
---@param radius float
---@param useSharedVision boolean
---@return void
function Native.SetFogStateRadiusLoc(forWhichPlayer, state, center, radius, useSharedVision) end

---@param enable boolean
---@return void
function Native.FogMaskEnable(enable) end

---@return boolean
function Native.IsFogMaskEnabled() end

---@param enable boolean
---@return void
function Native.FogEnable(enable) end

---@return boolean
function Native.IsFogEnabled() end

---@param forWhichPlayer player
---@param state fogstate
---@param where rect
---@param useSharedVision boolean
---@param afterUnits boolean
---@return fogmodifier
function Native.CreateFogModifierRect(forWhichPlayer, state, where, useSharedVision, afterUnits) end

---@param forWhichPlayer player
---@param state fogstate
---@param centerx float
---@param centerY float
---@param radius float
---@param useSharedVision boolean
---@param afterUnits boolean
---@return fogmodifier
function Native.CreateFogModifierRadius(forWhichPlayer, state, centerx, centerY, radius, useSharedVision, afterUnits) end

---@param forWhichPlayer player
---@param state fogstate
---@param center location
---@param radius float
---@param useSharedVision boolean
---@param afterUnits boolean
---@return fogmodifier
function Native.CreateFogModifierRadiusLoc(forWhichPlayer, state, center, radius, useSharedVision, afterUnits) end

---@param fogModifier fogmodifier
---@return void
function Native.DestroyFogModifier(fogModifier) end

---@param fogModifier fogmodifier
---@return void
function Native.FogModifierStart(fogModifier) end

---@param fogModifier fogmodifier
---@return void
function Native.FogModifierStop(fogModifier) end

---@return version
function Native.VersionGet() end

---@param version version
---@return boolean
function Native.VersionCompatible(version) end

---@param version version
---@return boolean
function Native.VersionSupported(version) end

---@param doScoreScreen boolean
---@return void
function Native.EndGame(doScoreScreen) end

---@param level string
---@param doScoreScreen boolean
---@return void
function Native.ChangeLevel(level, doScoreScreen) end

---@param doScoreScreen boolean
---@return void
function Native.RestartGame(doScoreScreen) end

---@return void
function Native.ReloadGame() end

---@param r race
---@return void
function Native.SetCampaignMenuRace(r) end

---@param campaignIndex integer
---@return void
function Native.SetCampaignMenuRaceEx(campaignIndex) end

---@return void
function Native.ForceCampaignSelectScreen() end

---@param saveFileName string
---@param doScoreScreen boolean
---@return void
function Native.LoadGame(saveFileName, doScoreScreen) end

---@param saveFileName string
---@return void
function Native.SaveGame(saveFileName) end

---@param sourceDirName string
---@param destDirName string
---@return boolean
function Native.RenameSaveDirectory(sourceDirName, destDirName) end

---@param sourceDirName string
---@return boolean
function Native.RemoveSaveDirectory(sourceDirName) end

---@param sourceSaveName string
---@param destSaveName string
---@return boolean
function Native.CopySaveGame(sourceSaveName, destSaveName) end

---@param saveName string
---@return boolean
function Native.SaveGameExists(saveName) end

---@param maxCheckpointSaves integer
---@return void
function Native.SetMaxCheckpointSaves(maxCheckpointSaves) end

---@param saveFileName string
---@param showWindow boolean
---@return void
function Native.SaveGameCheckpoint(saveFileName, showWindow) end

---@return void
function Native.SyncSelections() end

---@param floatGameState fgamestate
---@param value float
---@return void
function Native.SetFloatGameState(floatGameState, value) end

---@param floatGameState fgamestate
---@return float
function Native.GetFloatGameState(floatGameState) end

---@param integerGameState igamestate
---@param value integer
---@return void
function Native.SetIntegerGameState(integerGameState, value) end

---@param integerGameState igamestate
---@return integer
function Native.GetIntegerGameState(integerGameState) end

---@param cleared boolean
---@return void
function Native.SetTutorialCleared(cleared) end

---@param campaignNumber integer
---@param missionNumber integer
---@param available boolean
---@return void
function Native.SetMissionAvailable(campaignNumber, missionNumber, available) end

---@param campaignNumber integer
---@param available boolean
---@return void
function Native.SetCampaignAvailable(campaignNumber, available) end

---@param campaignNumber integer
---@param available boolean
---@return void
function Native.SetOpCinematicAvailable(campaignNumber, available) end

---@param campaignNumber integer
---@param available boolean
---@return void
function Native.SetEdCinematicAvailable(campaignNumber, available) end

---@return gamedifficulty
function Native.GetDefaultDifficulty() end

---@param g gamedifficulty
---@return void
function Native.SetDefaultDifficulty(g) end

---@param button integer
---@param visible boolean
---@return void
function Native.SetCustomCampaignButtonVisible(button, visible) end

---@param button integer
---@return boolean
function Native.GetCustomCampaignButtonVisible(button) end

---@return void
function Native.DoNotSaveReplay() end

---@return dialog
function Native.DialogCreate() end

---@param dialog dialog
---@return void
function Native.DialogDestroy(dialog) end

---@param dialog dialog
---@return void
function Native.DialogClear(dialog) end

---@param dialog dialog
---@param messageText string
---@return void
function Native.DialogSetMessage(dialog, messageText) end

---@param dialog dialog
---@param buttonText string
---@param hotkey integer
---@return button
function Native.DialogAddButton(dialog, buttonText, hotkey) end

---@param dialog dialog
---@param doScoreScreen boolean
---@param buttonText string
---@param hotkey integer
---@return button
function Native.DialogAddQuitButton(dialog, doScoreScreen, buttonText, hotkey) end

---@param player player
---@param dialog dialog
---@param flag boolean
---@return void
function Native.DialogDisplay(player, dialog, flag) end

---@return boolean
function Native.ReloadGameCachesFromDisk() end

---@param campaignFile string
---@return gamecache
function Native.InitGameCache(campaignFile) end

---@param cache gamecache
---@return boolean
function Native.SaveGameCache(cache) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param value integer
---@return void
function Native.StoreInteger(cache, missionKey, key, value) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param value float
---@return void
function Native.StoreReal(cache, missionKey, key, value) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param value boolean
---@return void
function Native.StoreBoolean(cache, missionKey, key, value) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param unit unit
---@return boolean
function Native.StoreUnit(cache, missionKey, key, unit) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param value string
---@return boolean
function Native.StoreString(cache, missionKey, key, value) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return void
function Native.SyncStoredInteger(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return void
function Native.SyncStoredReal(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return void
function Native.SyncStoredBoolean(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return void
function Native.SyncStoredUnit(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return void
function Native.SyncStoredString(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function Native.HaveStoredInteger(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function Native.HaveStoredReal(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function Native.HaveStoredBoolean(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function Native.HaveStoredUnit(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function Native.HaveStoredString(cache, missionKey, key) end

---@param cache gamecache
---@return void
function Native.FlushGameCache(cache) end

---@param cache gamecache
---@param missionKey string
---@return void
function Native.FlushStoredMission(cache, missionKey) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return void
function Native.FlushStoredInteger(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return void
function Native.FlushStoredReal(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return void
function Native.FlushStoredBoolean(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return void
function Native.FlushStoredUnit(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return void
function Native.FlushStoredString(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return integer
function Native.GetStoredInteger(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return float
function Native.GetStoredReal(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function Native.GetStoredBoolean(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return string
function Native.GetStoredString(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param forWhichPlayer player
---@param x float
---@param y float
---@param facing float
---@return unit
function Native.RestoreUnit(cache, missionKey, key, forWhichPlayer, x, y, facing) end

---@return hashtable
function Native.InitHashtable() end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param value integer
---@return void
function Native.SaveInteger(table, parentKey, childKey, value) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param value float
---@return void
function Native.SaveReal(table, parentKey, childKey, value) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param value boolean
---@return void
function Native.SaveBoolean(table, parentKey, childKey, value) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param value string
---@return boolean
function Native.SaveStr(table, parentKey, childKey, value) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param player player
---@return boolean
function Native.SavePlayerHandle(table, parentKey, childKey, player) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param widget widget
---@return boolean
function Native.SaveWidgetHandle(table, parentKey, childKey, widget) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param destructable destructable
---@return boolean
function Native.SaveDestructableHandle(table, parentKey, childKey, destructable) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param item item
---@return boolean
function Native.SaveItemHandle(table, parentKey, childKey, item) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param unit unit
---@return boolean
function Native.SaveUnitHandle(table, parentKey, childKey, unit) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param ability ability
---@return boolean
function Native.SaveAbilityHandle(table, parentKey, childKey, ability) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param timer timer
---@return boolean
function Native.SaveTimerHandle(table, parentKey, childKey, timer) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param trigger trigger
---@return boolean
function Native.SaveTriggerHandle(table, parentKey, childKey, trigger) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param triggercondition triggercondition
---@return boolean
function Native.SaveTriggerConditionHandle(table, parentKey, childKey, triggercondition) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param triggeraction triggeraction
---@return boolean
function Native.SaveTriggerActionHandle(table, parentKey, childKey, triggeraction) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param event event
---@return boolean
function Native.SaveTriggerEventHandle(table, parentKey, childKey, event) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param force force
---@return boolean
function Native.SaveForceHandle(table, parentKey, childKey, force) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param group group
---@return boolean
function Native.SaveGroupHandle(table, parentKey, childKey, group) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param loc location
---@return boolean
function Native.SaveLocationHandle(table, parentKey, childKey, loc) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param rect rect
---@return boolean
function Native.SaveRectHandle(table, parentKey, childKey, rect) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param boolexpr boolexpr
---@return boolean
function Native.SaveBooleanExprHandle(table, parentKey, childKey, boolexpr) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param sound sound
---@return boolean
function Native.SaveSoundHandle(table, parentKey, childKey, sound) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param effect effect
---@return boolean
function Native.SaveEffectHandle(table, parentKey, childKey, effect) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param unitpool unitpool
---@return boolean
function Native.SaveUnitPoolHandle(table, parentKey, childKey, unitpool) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param itempool itempool
---@return boolean
function Native.SaveItemPoolHandle(table, parentKey, childKey, itempool) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param quest quest
---@return boolean
function Native.SaveQuestHandle(table, parentKey, childKey, quest) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param questitem questitem
---@return boolean
function Native.SaveQuestItemHandle(table, parentKey, childKey, questitem) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param defeatcondition defeatcondition
---@return boolean
function Native.SaveDefeatConditionHandle(table, parentKey, childKey, defeatcondition) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param timerdialog timerdialog
---@return boolean
function Native.SaveTimerDialogHandle(table, parentKey, childKey, timerdialog) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param leaderboard leaderboard
---@return boolean
function Native.SaveLeaderboardHandle(table, parentKey, childKey, leaderboard) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param multiboard multiboard
---@return boolean
function Native.SaveMultiboardHandle(table, parentKey, childKey, multiboard) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param multiboarditem multiboarditem
---@return boolean
function Native.SaveMultiboardItemHandle(table, parentKey, childKey, multiboarditem) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param trackable trackable
---@return boolean
function Native.SaveTrackableHandle(table, parentKey, childKey, trackable) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param dialog dialog
---@return boolean
function Native.SaveDialogHandle(table, parentKey, childKey, dialog) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param button button
---@return boolean
function Native.SaveButtonHandle(table, parentKey, childKey, button) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param texttag texttag
---@return boolean
function Native.SaveTextTagHandle(table, parentKey, childKey, texttag) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param lightning lightning
---@return boolean
function Native.SaveLightningHandle(table, parentKey, childKey, lightning) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param image image
---@return boolean
function Native.SaveImageHandle(table, parentKey, childKey, image) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param ubersplat ubersplat
---@return boolean
function Native.SaveUbersplatHandle(table, parentKey, childKey, ubersplat) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param region region
---@return boolean
function Native.SaveRegionHandle(table, parentKey, childKey, region) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param fogState fogstate
---@return boolean
function Native.SaveFogStateHandle(table, parentKey, childKey, fogState) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param fogModifier fogmodifier
---@return boolean
function Native.SaveFogModifierHandle(table, parentKey, childKey, fogModifier) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param agent agent
---@return boolean
function Native.SaveAgentHandle(table, parentKey, childKey, agent) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param hashtable hashtable
---@return boolean
function Native.SaveHashtableHandle(table, parentKey, childKey, hashtable) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param frameHandle framehandle
---@return boolean
function Native.SaveFrameHandle(table, parentKey, childKey, frameHandle) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return integer
function Native.LoadInteger(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return float
function Native.LoadReal(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function Native.LoadBoolean(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return string
function Native.LoadStr(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return player
function Native.LoadPlayerHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return widget
function Native.LoadWidgetHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return destructable
function Native.LoadDestructableHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return item
function Native.LoadItemHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return unit
function Native.LoadUnitHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return ability
function Native.LoadAbilityHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return timer
function Native.LoadTimerHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return trigger
function Native.LoadTriggerHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return triggercondition
function Native.LoadTriggerConditionHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return triggeraction
function Native.LoadTriggerActionHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return event
function Native.LoadTriggerEventHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return force
function Native.LoadForceHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return group
function Native.LoadGroupHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return location
function Native.LoadLocationHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return rect
function Native.LoadRectHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolexpr
function Native.LoadBooleanExprHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return sound
function Native.LoadSoundHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return effect
function Native.LoadEffectHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return unitpool
function Native.LoadUnitPoolHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return itempool
function Native.LoadItemPoolHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return quest
function Native.LoadQuestHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return questitem
function Native.LoadQuestItemHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return defeatcondition
function Native.LoadDefeatConditionHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return timerdialog
function Native.LoadTimerDialogHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return leaderboard
function Native.LoadLeaderboardHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return multiboard
function Native.LoadMultiboardHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return multiboarditem
function Native.LoadMultiboardItemHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return trackable
function Native.LoadTrackableHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return dialog
function Native.LoadDialogHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return button
function Native.LoadButtonHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return texttag
function Native.LoadTextTagHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return lightning
function Native.LoadLightningHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return image
function Native.LoadImageHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return ubersplat
function Native.LoadUbersplatHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return region
function Native.LoadRegionHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return fogstate
function Native.LoadFogStateHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return fogmodifier
function Native.LoadFogModifierHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return hashtable
function Native.LoadHashtableHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return framehandle
function Native.LoadFrameHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function Native.HaveSavedInteger(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function Native.HaveSavedReal(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function Native.HaveSavedBoolean(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function Native.HaveSavedString(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function Native.HaveSavedHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return void
function Native.RemoveSavedInteger(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return void
function Native.RemoveSavedReal(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return void
function Native.RemoveSavedBoolean(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return void
function Native.RemoveSavedString(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return void
function Native.RemoveSavedHandle(table, parentKey, childKey) end

---@param table hashtable
---@return void
function Native.FlushParentHashtable(table) end

---@param table hashtable
---@param parentKey integer
---@return void
function Native.FlushChildHashtable(table, parentKey) end

---@param lowBound integer
---@param highBound integer
---@return integer
function Native.GetRandomInt(lowBound, highBound) end

---@param lowBound float
---@param highBound float
---@return float
function Native.GetRandomReal(lowBound, highBound) end

---@return unitpool
function Native.CreateUnitPool() end

---@param pool unitpool
---@return void
function Native.DestroyUnitPool(pool) end

---@param pool unitpool
---@param unitId integer
---@param weight float
---@return void
function Native.UnitPoolAddUnitType(pool, unitId, weight) end

---@param pool unitpool
---@param unitId integer
---@return void
function Native.UnitPoolRemoveUnitType(pool, unitId) end

---@param pool unitpool
---@param forWhichPlayer player
---@param x float
---@param y float
---@param facing float
---@return unit
function Native.PlaceRandomUnit(pool, forWhichPlayer, x, y, facing) end

---@return itempool
function Native.CreateItemPool() end

---@param itemPool itempool
---@return void
function Native.DestroyItemPool(itemPool) end

---@param itemPool itempool
---@param itemId integer
---@param weight float
---@return void
function Native.ItemPoolAddItemType(itemPool, itemId, weight) end

---@param itemPool itempool
---@param itemId integer
---@return void
function Native.ItemPoolRemoveItemType(itemPool, itemId) end

---@param itemPool itempool
---@param x float
---@param y float
---@return item
function Native.PlaceRandomItem(itemPool, x, y) end

---@param level integer
---@return integer
function Native.ChooseRandomCreep(level) end

---@return integer
function Native.ChooseRandomNPBuilding() end

---@param level integer
---@return integer
function Native.ChooseRandomItem(level) end

---@param type itemtype
---@param level integer
---@return integer
function Native.ChooseRandomItemEx(type, level) end

---@param seed integer
---@return void
function Native.SetRandomSeed(seed) end

---@param a float
---@param b float
---@param c float
---@param d float
---@param e float
---@return void
function Native.SetTerrainFog(a, b, c, d, e) end

---@return void
function Native.ResetTerrainFog() end

---@param a float
---@param b float
---@param c float
---@param d float
---@param e float
---@return void
function Native.SetUnitFog(a, b, c, d, e) end

---@param style integer
---@param zstart float
---@param zend float
---@param density float
---@param red float
---@param green float
---@param blue float
---@return void
function Native.SetTerrainFogEx(style, zstart, zend, density, red, green, blue) end

---@param toPlayer player
---@param x float
---@param y float
---@param message string
---@return void
function Native.DisplayTextToPlayer(toPlayer, x, y, message) end

---@param toPlayer player
---@param x float
---@param y float
---@param duration float
---@param message string
---@return void
function Native.DisplayTimedTextToPlayer(toPlayer, x, y, duration, message) end

---@param toPlayer player
---@param x float
---@param y float
---@param duration float
---@param message string
---@return void
function Native.DisplayTimedTextFromPlayer(toPlayer, x, y, duration, message) end

---@return void
function Native.ClearTextMessages() end

---@param terrainDNCFile string
---@param unitDNCFile string
---@return void
function Native.SetDayNightModels(terrainDNCFile, unitDNCFile) end

---@param portraitDNCFile string
---@return void
function Native.SetPortraitLight(portraitDNCFile) end

---@param skyModelFile string
---@return void
function Native.SetSkyModel(skyModelFile) end

---@param b boolean
---@return void
function Native.EnableUserControl(b) end

---@param b boolean
---@return void
function Native.EnableUserUI(b) end

---@param b boolean
---@return void
function Native.SuspendTimeOfDay(b) end

---@param r float
---@return void
function Native.SetTimeOfDayScale(r) end

---@return float
function Native.GetTimeOfDayScale() end

---@param flag boolean
---@param fadeDuration float
---@return void
function Native.ShowInterface(flag, fadeDuration) end

---@param flag boolean
---@return void
function Native.PauseGame(flag) end

---@param unit unit
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.UnitAddIndicator(unit, red, green, blue, alpha) end

---@param widget widget
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.AddIndicator(widget, red, green, blue, alpha) end

---@param x float
---@param y float
---@param duration float
---@return void
function Native.PingMinimap(x, y, duration) end

---@param x float
---@param y float
---@param duration float
---@param red integer
---@param green integer
---@param blue integer
---@param extraEffects boolean
---@return void
function Native.PingMinimapEx(x, y, duration, red, green, blue, extraEffects) end

---@param unit unit
---@param red integer
---@param green integer
---@param blue integer
---@param pingPath string
---@param fogVisibility fogstate
---@return minimapicon
function Native.CreateMinimapIconOnUnit(unit, red, green, blue, pingPath, fogVisibility) end

---@param where location
---@param red integer
---@param green integer
---@param blue integer
---@param pingPath string
---@param fogVisibility fogstate
---@return minimapicon
function Native.CreateMinimapIconAtLoc(where, red, green, blue, pingPath, fogVisibility) end

---@param x float
---@param y float
---@param red integer
---@param green integer
---@param blue integer
---@param pingPath string
---@param fogVisibility fogstate
---@return minimapicon
function Native.CreateMinimapIcon(x, y, red, green, blue, pingPath, fogVisibility) end

---@param key string
---@return string
function Native.SkinManagerGetLocalPath(key) end

---@param pingId minimapicon
---@return void
function Native.DestroyMinimapIcon(pingId) end

---@param minimapIcon minimapicon
---@param visible boolean
---@return void
function Native.SetMinimapIconVisible(minimapIcon, visible) end

---@param minimapIcon minimapicon
---@param doDestroy boolean
---@return void
function Native.SetMinimapIconOrphanDestroy(minimapIcon, doDestroy) end

---@param flag boolean
---@return void
function Native.EnableOcclusion(flag) end

---@param introText string
---@return void
function Native.SetIntroShotText(introText) end

---@param introModelPath string
---@return void
function Native.SetIntroShotModel(introModelPath) end

---@param b boolean
---@return void
function Native.EnableWorldFogBoundary(b) end

---@param modelName string
---@return void
function Native.PlayModelCinematic(modelName) end

---@param movieName string
---@return void
function Native.PlayCinematic(movieName) end

---@param key string
---@return void
function Native.ForceUIKey(key) end

---@return void
function Native.ForceUICancel() end

---@return void
function Native.DisplayLoadDialog() end

---@param iconPath string
---@return void
function Native.SetAltMinimapIcon(iconPath) end

---@param flag boolean
---@return void
function Native.DisableRestartMission(flag) end

---@return texttag
function Native.CreateTextTag() end

---@param t texttag
---@return void
function Native.DestroyTextTag(t) end

---@param t texttag
---@param s string
---@param height float
---@return void
function Native.SetTextTagText(t, s, height) end

---@param t texttag
---@param x float
---@param y float
---@param heightOffset float
---@return void
function Native.SetTextTagPos(t, x, y, heightOffset) end

---@param t texttag
---@param unit unit
---@param heightOffset float
---@return void
function Native.SetTextTagPosUnit(t, unit, heightOffset) end

---@param t texttag
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.SetTextTagColor(t, red, green, blue, alpha) end

---@param t texttag
---@param xvel float
---@param yvel float
---@return void
function Native.SetTextTagVelocity(t, xvel, yvel) end

---@param t texttag
---@param flag boolean
---@return void
function Native.SetTextTagVisibility(t, flag) end

---@param t texttag
---@param flag boolean
---@return void
function Native.SetTextTagSuspended(t, flag) end

---@param t texttag
---@param flag boolean
---@return void
function Native.SetTextTagPermanent(t, flag) end

---@param t texttag
---@param age float
---@return void
function Native.SetTextTagAge(t, age) end

---@param t texttag
---@param lifespan float
---@return void
function Native.SetTextTagLifespan(t, lifespan) end

---@param t texttag
---@param fadepoint float
---@return void
function Native.SetTextTagFadepoint(t, fadepoint) end

---@param reserved integer
---@return void
function Native.SetReservedLocalHeroButtons(reserved) end

---@return integer
function Native.GetAllyColorFilterState() end

---@param state integer
---@return void
function Native.SetAllyColorFilterState(state) end

---@return boolean
function Native.GetCreepCampFilterState() end

---@param state boolean
---@return void
function Native.SetCreepCampFilterState(state) end

---@param enableAlly boolean
---@param enableCreep boolean
---@return void
function Native.EnableMinimapFilterButtons(enableAlly, enableCreep) end

---@param state boolean
---@param ui boolean
---@return void
function Native.EnableDragSelect(state, ui) end

---@param state boolean
---@param ui boolean
---@return void
function Native.EnablePreSelect(state, ui) end

---@param state boolean
---@param ui boolean
---@return void
function Native.EnableSelect(state, ui) end

---@param trackableModelPath string
---@param x float
---@param y float
---@param facing float
---@return trackable
function Native.CreateTrackable(trackableModelPath, x, y, facing) end

---@return quest
function Native.CreateQuest() end

---@param quest quest
---@return void
function Native.DestroyQuest(quest) end

---@param quest quest
---@param title string
---@return void
function Native.QuestSetTitle(quest, title) end

---@param quest quest
---@param description string
---@return void
function Native.QuestSetDescription(quest, description) end

---@param quest quest
---@param iconPath string
---@return void
function Native.QuestSetIconPath(quest, iconPath) end

---@param quest quest
---@param required boolean
---@return void
function Native.QuestSetRequired(quest, required) end

---@param quest quest
---@param completed boolean
---@return void
function Native.QuestSetCompleted(quest, completed) end

---@param quest quest
---@param discovered boolean
---@return void
function Native.QuestSetDiscovered(quest, discovered) end

---@param quest quest
---@param failed boolean
---@return void
function Native.QuestSetFailed(quest, failed) end

---@param quest quest
---@param enabled boolean
---@return void
function Native.QuestSetEnabled(quest, enabled) end

---@param quest quest
---@return boolean
function Native.IsQuestRequired(quest) end

---@param quest quest
---@return boolean
function Native.IsQuestCompleted(quest) end

---@param quest quest
---@return boolean
function Native.IsQuestDiscovered(quest) end

---@param quest quest
---@return boolean
function Native.IsQuestFailed(quest) end

---@param quest quest
---@return boolean
function Native.IsQuestEnabled(quest) end

---@param quest quest
---@return questitem
function Native.QuestCreateItem(quest) end

---@param questItem questitem
---@param description string
---@return void
function Native.QuestItemSetDescription(questItem, description) end

---@param questItem questitem
---@param completed boolean
---@return void
function Native.QuestItemSetCompleted(questItem, completed) end

---@param questItem questitem
---@return boolean
function Native.IsQuestItemCompleted(questItem) end

---@return defeatcondition
function Native.CreateDefeatCondition() end

---@param condition defeatcondition
---@return void
function Native.DestroyDefeatCondition(condition) end

---@param condition defeatcondition
---@param description string
---@return void
function Native.DefeatConditionSetDescription(condition, description) end

---@return void
function Native.FlashQuestDialogButton() end

---@return void
function Native.ForceQuestDialogUpdate() end

---@param t timer
---@return timerdialog
function Native.CreateTimerDialog(t) end

---@param dialog timerdialog
---@return void
function Native.DestroyTimerDialog(dialog) end

---@param dialog timerdialog
---@param title string
---@return void
function Native.TimerDialogSetTitle(dialog, title) end

---@param dialog timerdialog
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.TimerDialogSetTitleColor(dialog, red, green, blue, alpha) end

---@param dialog timerdialog
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.TimerDialogSetTimeColor(dialog, red, green, blue, alpha) end

---@param dialog timerdialog
---@param speedMultFactor float
---@return void
function Native.TimerDialogSetSpeed(dialog, speedMultFactor) end

---@param dialog timerdialog
---@param display boolean
---@return void
function Native.TimerDialogDisplay(dialog, display) end

---@param dialog timerdialog
---@return boolean
function Native.IsTimerDialogDisplayed(dialog) end

---@param dialog timerdialog
---@param timeRemaining float
---@return void
function Native.TimerDialogSetRealTimeRemaining(dialog, timeRemaining) end

---@return leaderboard
function Native.CreateLeaderboard() end

---@param lb leaderboard
---@return void
function Native.DestroyLeaderboard(lb) end

---@param lb leaderboard
---@param show boolean
---@return void
function Native.LeaderboardDisplay(lb, show) end

---@param lb leaderboard
---@return boolean
function Native.IsLeaderboardDisplayed(lb) end

---@param lb leaderboard
---@return integer
function Native.LeaderboardGetItemCount(lb) end

---@param lb leaderboard
---@param count integer
---@return void
function Native.LeaderboardSetSizeByItemCount(lb, count) end

---@param lb leaderboard
---@param label string
---@param value integer
---@param p player
---@return void
function Native.LeaderboardAddItem(lb, label, value, p) end

---@param lb leaderboard
---@param index integer
---@return void
function Native.LeaderboardRemoveItem(lb, index) end

---@param lb leaderboard
---@param p player
---@return void
function Native.LeaderboardRemovePlayerItem(lb, p) end

---@param lb leaderboard
---@return void
function Native.LeaderboardClear(lb) end

---@param lb leaderboard
---@param ascending boolean
---@return void
function Native.LeaderboardSortItemsByValue(lb, ascending) end

---@param lb leaderboard
---@param ascending boolean
---@return void
function Native.LeaderboardSortItemsByPlayer(lb, ascending) end

---@param lb leaderboard
---@param ascending boolean
---@return void
function Native.LeaderboardSortItemsByLabel(lb, ascending) end

---@param lb leaderboard
---@param p player
---@return boolean
function Native.LeaderboardHasPlayerItem(lb, p) end

---@param lb leaderboard
---@param p player
---@return integer
function Native.LeaderboardGetPlayerIndex(lb, p) end

---@param lb leaderboard
---@param label string
---@return void
function Native.LeaderboardSetLabel(lb, label) end

---@param lb leaderboard
---@return string
function Native.LeaderboardGetLabelText(lb) end

---@param toPlayer player
---@param lb leaderboard
---@return void
function Native.PlayerSetLeaderboard(toPlayer, lb) end

---@param toPlayer player
---@return leaderboard
function Native.PlayerGetLeaderboard(toPlayer) end

---@param lb leaderboard
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.LeaderboardSetLabelColor(lb, red, green, blue, alpha) end

---@param lb leaderboard
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.LeaderboardSetValueColor(lb, red, green, blue, alpha) end

---@param lb leaderboard
---@param showLabel boolean
---@param showNames boolean
---@param showValues boolean
---@param showIcons boolean
---@return void
function Native.LeaderboardSetStyle(lb, showLabel, showNames, showValues, showIcons) end

---@param lb leaderboard
---@param item integer
---@param val integer
---@return void
function Native.LeaderboardSetItemValue(lb, item, val) end

---@param lb leaderboard
---@param item integer
---@param val string
---@return void
function Native.LeaderboardSetItemLabel(lb, item, val) end

---@param lb leaderboard
---@param item integer
---@param showLabel boolean
---@param showValue boolean
---@param showIcon boolean
---@return void
function Native.LeaderboardSetItemStyle(lb, item, showLabel, showValue, showIcon) end

---@param lb leaderboard
---@param item integer
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.LeaderboardSetItemLabelColor(lb, item, red, green, blue, alpha) end

---@param lb leaderboard
---@param item integer
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.LeaderboardSetItemValueColor(lb, item, red, green, blue, alpha) end

---@return multiboard
function Native.CreateMultiboard() end

---@param lb multiboard
---@return void
function Native.DestroyMultiboard(lb) end

---@param lb multiboard
---@param show boolean
---@return void
function Native.MultiboardDisplay(lb, show) end

---@param lb multiboard
---@return boolean
function Native.IsMultiboardDisplayed(lb) end

---@param lb multiboard
---@param minimize boolean
---@return void
function Native.MultiboardMinimize(lb, minimize) end

---@param lb multiboard
---@return boolean
function Native.IsMultiboardMinimized(lb) end

---@param lb multiboard
---@return void
function Native.MultiboardClear(lb) end

---@param lb multiboard
---@param label string
---@return void
function Native.MultiboardSetTitleText(lb, label) end

---@param lb multiboard
---@return string
function Native.MultiboardGetTitleText(lb) end

---@param lb multiboard
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.MultiboardSetTitleTextColor(lb, red, green, blue, alpha) end

---@param lb multiboard
---@return integer
function Native.MultiboardGetRowCount(lb) end

---@param lb multiboard
---@return integer
function Native.MultiboardGetColumnCount(lb) end

---@param lb multiboard
---@param count integer
---@return void
function Native.MultiboardSetColumnCount(lb, count) end

---@param lb multiboard
---@param count integer
---@return void
function Native.MultiboardSetRowCount(lb, count) end

---@param lb multiboard
---@param showValues boolean
---@param showIcons boolean
---@return void
function Native.MultiboardSetItemsStyle(lb, showValues, showIcons) end

---@param lb multiboard
---@param value string
---@return void
function Native.MultiboardSetItemsValue(lb, value) end

---@param lb multiboard
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.MultiboardSetItemsValueColor(lb, red, green, blue, alpha) end

---@param lb multiboard
---@param width float
---@return void
function Native.MultiboardSetItemsWidth(lb, width) end

---@param lb multiboard
---@param iconPath string
---@return void
function Native.MultiboardSetItemsIcon(lb, iconPath) end

---@param lb multiboard
---@param row integer
---@param column integer
---@return multiboarditem
function Native.MultiboardGetItem(lb, row, column) end

---@param mbi multiboarditem
---@return void
function Native.MultiboardReleaseItem(mbi) end

---@param mbi multiboarditem
---@param showValue boolean
---@param showIcon boolean
---@return void
function Native.MultiboardSetItemStyle(mbi, showValue, showIcon) end

---@param mbi multiboarditem
---@param val string
---@return void
function Native.MultiboardSetItemValue(mbi, val) end

---@param mbi multiboarditem
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.MultiboardSetItemValueColor(mbi, red, green, blue, alpha) end

---@param mbi multiboarditem
---@param width float
---@return void
function Native.MultiboardSetItemWidth(mbi, width) end

---@param mbi multiboarditem
---@param iconFileName string
---@return void
function Native.MultiboardSetItemIcon(mbi, iconFileName) end

---@param flag boolean
---@return void
function Native.MultiboardSuppressDisplay(flag) end

---@param x float
---@param y float
---@return void
function Native.SetCameraPosition(x, y) end

---@param x float
---@param y float
---@return void
function Native.SetCameraQuickPosition(x, y) end

---@param x1 float
---@param y1 float
---@param x2 float
---@param y2 float
---@param x3 float
---@param y3 float
---@param x4 float
---@param y4 float
---@return void
function Native.SetCameraBounds(x1, y1, x2, y2, x3, y3, x4, y4) end

---@return void
function Native.StopCamera() end

---@param duration float
---@return void
function Native.ResetToGameCamera(duration) end

---@param x float
---@param y float
---@return void
function Native.PanCameraTo(x, y) end

---@param x float
---@param y float
---@param duration float
---@return void
function Native.PanCameraToTimed(x, y, duration) end

---@param x float
---@param y float
---@param zOffsetDest float
---@return void
function Native.PanCameraToWithZ(x, y, zOffsetDest) end

---@param x float
---@param y float
---@param zOffsetDest float
---@param duration float
---@return void
function Native.PanCameraToTimedWithZ(x, y, zOffsetDest, duration) end

---@param cameraModelFile string
---@return void
function Native.SetCinematicCamera(cameraModelFile) end

---@param x float
---@param y float
---@param radiansToSweep float
---@param duration float
---@return void
function Native.SetCameraRotateMode(x, y, radiansToSweep, duration) end

---@param field camerafield
---@param value float
---@param duration float
---@return void
function Native.SetCameraField(field, value, duration) end

---@param field camerafield
---@param offset float
---@param duration float
---@return void
function Native.AdjustCameraField(field, offset, duration) end

---@param unit unit
---@param xoffset float
---@param yoffset float
---@param inheritOrientation boolean
---@return void
function Native.SetCameraTargetController(unit, xoffset, yoffset, inheritOrientation) end

---@param unit unit
---@param xoffset float
---@param yoffset float
---@return void
function Native.SetCameraOrientController(unit, xoffset, yoffset) end

---@return camerasetup
function Native.CreateCameraSetup() end

---@param setup camerasetup
---@param field camerafield
---@param value float
---@param duration float
---@return void
function Native.CameraSetupSetField(setup, field, value, duration) end

---@param setup camerasetup
---@param field camerafield
---@return float
function Native.CameraSetupGetField(setup, field) end

---@param setup camerasetup
---@param x float
---@param y float
---@param duration float
---@return void
function Native.CameraSetupSetDestPosition(setup, x, y, duration) end

---@param setup camerasetup
---@return location
function Native.CameraSetupGetDestPositionLoc(setup) end

---@param setup camerasetup
---@return float
function Native.CameraSetupGetDestPositionX(setup) end

---@param setup camerasetup
---@return float
function Native.CameraSetupGetDestPositionY(setup) end

---@param setup camerasetup
---@param doPan boolean
---@param panTimed boolean
---@return void
function Native.CameraSetupApply(setup, doPan, panTimed) end

---@param setup camerasetup
---@param zDestOffset float
---@return void
function Native.CameraSetupApplyWithZ(setup, zDestOffset) end

---@param setup camerasetup
---@param doPan boolean
---@param forceDuration float
---@return void
function Native.CameraSetupApplyForceDuration(setup, doPan, forceDuration) end

---@param setup camerasetup
---@param zDestOffset float
---@param forceDuration float
---@return void
function Native.CameraSetupApplyForceDurationWithZ(setup, zDestOffset, forceDuration) end

---@param setup camerasetup
---@param label string
---@return void
function Native.BlzCameraSetupSetLabel(setup, label) end

---@param setup camerasetup
---@return string
function Native.BlzCameraSetupGetLabel(setup) end

---@param mag float
---@param velocity float
---@return void
function Native.CameraSetTargetNoise(mag, velocity) end

---@param mag float
---@param velocity float
---@return void
function Native.CameraSetSourceNoise(mag, velocity) end

---@param mag float
---@param velocity float
---@param vertOnly boolean
---@return void
function Native.CameraSetTargetNoiseEx(mag, velocity, vertOnly) end

---@param mag float
---@param velocity float
---@param vertOnly boolean
---@return void
function Native.CameraSetSourceNoiseEx(mag, velocity, vertOnly) end

---@param factor float
---@return void
function Native.CameraSetSmoothingFactor(factor) end

---@param distance float
---@return void
function Native.CameraSetFocalDistance(distance) end

---@param scale float
---@return void
function Native.CameraSetDepthOfFieldScale(scale) end

---@param filename string
---@return void
function Native.SetCineFilterTexture(filename) end

---@param mode blendmode
---@return void
function Native.SetCineFilterBlendMode(mode) end

---@param flags texmapflags
---@return void
function Native.SetCineFilterTexMapFlags(flags) end

---@param minu float
---@param minv float
---@param maxu float
---@param maxv float
---@return void
function Native.SetCineFilterStartUV(minu, minv, maxu, maxv) end

---@param minu float
---@param minv float
---@param maxu float
---@param maxv float
---@return void
function Native.SetCineFilterEndUV(minu, minv, maxu, maxv) end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.SetCineFilterStartColor(red, green, blue, alpha) end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.SetCineFilterEndColor(red, green, blue, alpha) end

---@param duration float
---@return void
function Native.SetCineFilterDuration(duration) end

---@param flag boolean
---@return void
function Native.DisplayCineFilter(flag) end

---@return boolean
function Native.IsCineFilterDisplayed() end

---@param portraitUnitId integer
---@param color playercolor
---@param speakerTitle string
---@param text string
---@param sceneDuration float
---@param voiceoverDuration float
---@return void
function Native.SetCinematicScene(portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration) end

---@return void
function Native.EndCinematicScene() end

---@param flag boolean
---@return void
function Native.ForceCinematicSubtitles(flag) end

---@param cinematicAudio boolean
---@return void
function Native.SetCinematicAudio(cinematicAudio) end

---@param margin integer
---@return float
function Native.GetCameraMargin(margin) end

---@return float
function Native.GetCameraBoundMinX() end

---@return float
function Native.GetCameraBoundMinY() end

---@return float
function Native.GetCameraBoundMaxX() end

---@return float
function Native.GetCameraBoundMaxY() end

---@param field camerafield
---@return float
function Native.GetCameraField(field) end

---@return float
function Native.GetCameraTargetPositionX() end

---@return float
function Native.GetCameraTargetPositionY() end

---@return float
function Native.GetCameraTargetPositionZ() end

---@return location
function Native.GetCameraTargetPositionLoc() end

---@return float
function Native.GetCameraEyePositionX() end

---@return float
function Native.GetCameraEyePositionY() end

---@return float
function Native.GetCameraEyePositionZ() end

---@return location
function Native.GetCameraEyePositionLoc() end

---@param environmentName string
---@return void
function Native.NewSoundEnvironment(environmentName) end

---@param fileName string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate integer
---@param fadeOutRate integer
---@param eaxSetting string
---@return sound
function Native.CreateSound(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, eaxSetting) end

---@param fileName string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate integer
---@param fadeOutRate integer
---@param SLKEntryName string
---@return sound
function Native.CreateSoundFilenameWithLabel(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, SLKEntryName) end

---@param soundLabel string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate integer
---@param fadeOutRate integer
---@return sound
function Native.CreateSoundFromLabel(soundLabel, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate) end

---@param soundLabel string
---@param fadeInRate integer
---@param fadeOutRate integer
---@return sound
function Native.CreateMIDISound(soundLabel, fadeInRate, fadeOutRate) end

---@param soundHandle sound
---@param soundLabel string
---@return void
function Native.SetSoundParamsFromLabel(soundHandle, soundLabel) end

---@param soundHandle sound
---@param cutoff float
---@return void
function Native.SetSoundDistanceCutoff(soundHandle, cutoff) end

---@param soundHandle sound
---@param channel integer
---@return void
function Native.SetSoundChannel(soundHandle, channel) end

---@param soundHandle sound
---@param volume integer
---@return void
function Native.SetSoundVolume(soundHandle, volume) end

---@param soundHandle sound
---@param pitch float
---@return void
function Native.SetSoundPitch(soundHandle, pitch) end

---@param soundHandle sound
---@param millisecs integer
---@return void
function Native.SetSoundPlayPosition(soundHandle, millisecs) end

---@param soundHandle sound
---@param minDist float
---@param maxDist float
---@return void
function Native.SetSoundDistances(soundHandle, minDist, maxDist) end

---@param soundHandle sound
---@param inside float
---@param outside float
---@param outsideVolume integer
---@return void
function Native.SetSoundConeAngles(soundHandle, inside, outside, outsideVolume) end

---@param soundHandle sound
---@param x float
---@param y float
---@param z float
---@return void
function Native.SetSoundConeOrientation(soundHandle, x, y, z) end

---@param soundHandle sound
---@param x float
---@param y float
---@param z float
---@return void
function Native.SetSoundPosition(soundHandle, x, y, z) end

---@param soundHandle sound
---@param x float
---@param y float
---@param z float
---@return void
function Native.SetSoundVelocity(soundHandle, x, y, z) end

---@param soundHandle sound
---@param unit unit
---@return void
function Native.AttachSoundToUnit(soundHandle, unit) end

---@param soundHandle sound
---@return void
function Native.StartSound(soundHandle) end

---@param soundHandle sound
---@param killWhenDone boolean
---@param fadeOut boolean
---@return void
function Native.StopSound(soundHandle, killWhenDone, fadeOut) end

---@param soundHandle sound
---@return void
function Native.KillSoundWhenDone(soundHandle) end

---@param musicName string
---@param random boolean
---@param index integer
---@return void
function Native.SetMapMusic(musicName, random, index) end

---@return void
function Native.ClearMapMusic() end

---@param musicName string
---@return void
function Native.PlayMusic(musicName) end

---@param musicName string
---@param frommsecs integer
---@param fadeinmsecs integer
---@return void
function Native.PlayMusicEx(musicName, frommsecs, fadeinmsecs) end

---@param fadeOut boolean
---@return void
function Native.StopMusic(fadeOut) end

---@return void
function Native.ResumeMusic() end

---@param musicFileName string
---@return void
function Native.PlayThematicMusic(musicFileName) end

---@param musicFileName string
---@param frommsecs integer
---@return void
function Native.PlayThematicMusicEx(musicFileName, frommsecs) end

---@return void
function Native.EndThematicMusic() end

---@param volume integer
---@return void
function Native.SetMusicVolume(volume) end

---@param millisecs integer
---@return void
function Native.SetMusicPlayPosition(millisecs) end

---@param volume integer
---@return void
function Native.SetThematicMusicVolume(volume) end

---@param millisecs integer
---@return void
function Native.SetThematicMusicPlayPosition(millisecs) end

---@param soundHandle sound
---@param duration integer
---@return void
function Native.SetSoundDuration(soundHandle, duration) end

---@param soundHandle sound
---@return integer
function Native.GetSoundDuration(soundHandle) end

---@param musicFileName string
---@return integer
function Native.GetSoundFileDuration(musicFileName) end

---@param vgroup volumegroup
---@param scale float
---@return void
function Native.VolumeGroupSetVolume(vgroup, scale) end

---@return void
function Native.VolumeGroupReset() end

---@param soundHandle sound
---@return boolean
function Native.GetSoundIsPlaying(soundHandle) end

---@param soundHandle sound
---@return boolean
function Native.GetSoundIsLoading(soundHandle) end

---@param soundHandle sound
---@param byPosition boolean
---@param rectwidth float
---@param rectheight float
---@return void
function Native.RegisterStackedSound(soundHandle, byPosition, rectwidth, rectheight) end

---@param soundHandle sound
---@param byPosition boolean
---@param rectwidth float
---@param rectheight float
---@return void
function Native.UnregisterStackedSound(soundHandle, byPosition, rectwidth, rectheight) end

---@param soundHandle sound
---@param animationLabel string
---@return boolean
function Native.SetSoundFacialAnimationLabel(soundHandle, animationLabel) end

---@param soundHandle sound
---@param groupLabel string
---@return boolean
function Native.SetSoundFacialAnimationGroupLabel(soundHandle, groupLabel) end

---@param soundHandle sound
---@param animationSetFilepath string
---@return boolean
function Native.SetSoundFacialAnimationSetFilepath(soundHandle, animationSetFilepath) end

---@param soundHandle sound
---@param speakerName string
---@return boolean
function Native.SetDialogueSpeakerNameKey(soundHandle, speakerName) end

---@param soundHandle sound
---@return string
function Native.GetDialogueSpeakerNameKey(soundHandle) end

---@param soundHandle sound
---@param dialogueText string
---@return boolean
function Native.SetDialogueTextKey(soundHandle, dialogueText) end

---@param soundHandle sound
---@return string
function Native.GetDialogueTextKey(soundHandle) end

---@param where rect
---@param effectID integer
---@return weathereffect
function Native.AddWeatherEffect(where, effectID) end

---@param effect weathereffect
---@return void
function Native.RemoveWeatherEffect(effect) end

---@param effect weathereffect
---@param enable boolean
---@return void
function Native.EnableWeatherEffect(effect, enable) end

---@param x float
---@param y float
---@param radius float
---@param depth float
---@param duration integer
---@param permanent boolean
---@return terraindeformation
function Native.TerrainDeformCrater(x, y, radius, depth, duration, permanent) end

---@param x float
---@param y float
---@param radius float
---@param depth float
---@param duration integer
---@param count integer
---@param spaceWaves float
---@param timeWaves float
---@param radiusStartPct float
---@param limitNeg boolean
---@return terraindeformation
function Native.TerrainDeformRipple(x, y, radius, depth, duration, count, spaceWaves, timeWaves, radiusStartPct, limitNeg) end

---@param x float
---@param y float
---@param dirX float
---@param dirY float
---@param distance float
---@param speed float
---@param radius float
---@param depth float
---@param trailTime integer
---@param count integer
---@return terraindeformation
function Native.TerrainDeformWave(x, y, dirX, dirY, distance, speed, radius, depth, trailTime, count) end

---@param x float
---@param y float
---@param radius float
---@param minDelta float
---@param maxDelta float
---@param duration integer
---@param updateInterval integer
---@return terraindeformation
function Native.TerrainDeformRandom(x, y, radius, minDelta, maxDelta, duration, updateInterval) end

---@param deformation terraindeformation
---@param duration integer
---@return void
function Native.TerrainDeformStop(deformation, duration) end

---@return void
function Native.TerrainDeformStopAll() end

---@param modelName string
---@param x float
---@param y float
---@return effect
function Native.AddSpecialEffect(modelName, x, y) end

---@param modelName string
---@param where location
---@return effect
function Native.AddSpecialEffectLoc(modelName, where) end

---@param modelName string
---@param targetWidget widget
---@param attachPointName string
---@return effect
function Native.AddSpecialEffectTarget(modelName, targetWidget, attachPointName) end

---@param effect effect
---@return void
function Native.DestroyEffect(effect) end

---@param abilityString string
---@param t effecttype
---@param x float
---@param y float
---@return effect
function Native.AddSpellEffect(abilityString, t, x, y) end

---@param abilityString string
---@param t effecttype
---@param where location
---@return effect
function Native.AddSpellEffectLoc(abilityString, t, where) end

---@param abilityId integer
---@param t effecttype
---@param x float
---@param y float
---@return effect
function Native.AddSpellEffectById(abilityId, t, x, y) end

---@param abilityId integer
---@param t effecttype
---@param where location
---@return effect
function Native.AddSpellEffectByIdLoc(abilityId, t, where) end

---@param modelName string
---@param t effecttype
---@param targetWidget widget
---@param attachPoint string
---@return effect
function Native.AddSpellEffectTarget(modelName, t, targetWidget, attachPoint) end

---@param abilityId integer
---@param t effecttype
---@param targetWidget widget
---@param attachPoint string
---@return effect
function Native.AddSpellEffectTargetById(abilityId, t, targetWidget, attachPoint) end

---@param codeName string
---@param checkVisibility boolean
---@param x1 float
---@param y1 float
---@param x2 float
---@param y2 float
---@return lightning
function Native.AddLightning(codeName, checkVisibility, x1, y1, x2, y2) end

---@param codeName string
---@param checkVisibility boolean
---@param x1 float
---@param y1 float
---@param z1 float
---@param x2 float
---@param y2 float
---@param z2 float
---@return lightning
function Native.AddLightningEx(codeName, checkVisibility, x1, y1, z1, x2, y2, z2) end

---@param bolt lightning
---@return boolean
function Native.DestroyLightning(bolt) end

---@param bolt lightning
---@param checkVisibility boolean
---@param x1 float
---@param y1 float
---@param x2 float
---@param y2 float
---@return boolean
function Native.MoveLightning(bolt, checkVisibility, x1, y1, x2, y2) end

---@param bolt lightning
---@param checkVisibility boolean
---@param x1 float
---@param y1 float
---@param z1 float
---@param x2 float
---@param y2 float
---@param z2 float
---@return boolean
function Native.MoveLightningEx(bolt, checkVisibility, x1, y1, z1, x2, y2, z2) end

---@param bolt lightning
---@return float
function Native.GetLightningColorA(bolt) end

---@param bolt lightning
---@return float
function Native.GetLightningColorR(bolt) end

---@param bolt lightning
---@return float
function Native.GetLightningColorG(bolt) end

---@param bolt lightning
---@return float
function Native.GetLightningColorB(bolt) end

---@param bolt lightning
---@param r float
---@param g float
---@param b float
---@param a float
---@return boolean
function Native.SetLightningColor(bolt, r, g, b, a) end

---@param abilityString string
---@param t effecttype
---@param index integer
---@return string
function Native.GetAbilityEffect(abilityString, t, index) end

---@param abilityId integer
---@param t effecttype
---@param index integer
---@return string
function Native.GetAbilityEffectById(abilityId, t, index) end

---@param abilityString string
---@param t soundtype
---@return string
function Native.GetAbilitySound(abilityString, t) end

---@param abilityId integer
---@param t soundtype
---@return string
function Native.GetAbilitySoundById(abilityId, t) end

---@param x float
---@param y float
---@return integer
function Native.GetTerrainCliffLevel(x, y) end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.SetWaterBaseColor(red, green, blue, alpha) end

---@param val boolean
---@return void
function Native.SetWaterDeforms(val) end

---@param x float
---@param y float
---@return integer
function Native.GetTerrainType(x, y) end

---@param x float
---@param y float
---@return integer
function Native.GetTerrainVariance(x, y) end

---@param x float
---@param y float
---@param terrainType integer
---@param variation integer
---@param area integer
---@param shape integer
---@return void
function Native.SetTerrainType(x, y, terrainType, variation, area, shape) end

---@param x float
---@param y float
---@param t pathingtype
---@return boolean
function Native.IsTerrainPathable(x, y, t) end

---@param x float
---@param y float
---@param t pathingtype
---@param flag boolean
---@return void
function Native.SetTerrainPathable(x, y, t, flag) end

---@param file string
---@param sizeX float
---@param sizeY float
---@param sizeZ float
---@param posX float
---@param posY float
---@param posZ float
---@param originX float
---@param originY float
---@param originZ float
---@param imageType integer
---@return image
function Native.CreateImage(file, sizeX, sizeY, sizeZ, posX, posY, posZ, originX, originY, originZ, imageType) end

---@param image image
---@return void
function Native.DestroyImage(image) end

---@param image image
---@param flag boolean
---@return void
function Native.ShowImage(image, flag) end

---@param image image
---@param flag boolean
---@param height float
---@return void
function Native.SetImageConstantHeight(image, flag, height) end

---@param image image
---@param x float
---@param y float
---@param z float
---@return void
function Native.SetImagePosition(image, x, y, z) end

---@param image image
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return void
function Native.SetImageColor(image, red, green, blue, alpha) end

---@param image image
---@param flag boolean
---@return void
function Native.SetImageRender(image, flag) end

---@param image image
---@param flag boolean
---@return void
function Native.SetImageRenderAlways(image, flag) end

---@param image image
---@param flag boolean
---@param useWaterAlpha boolean
---@return void
function Native.SetImageAboveWater(image, flag, useWaterAlpha) end

---@param image image
---@param imageType integer
---@return void
function Native.SetImageType(image, imageType) end

---@param x float
---@param y float
---@param name string
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param forcePaused boolean
---@param noBirthTime boolean
---@return ubersplat
function Native.CreateUbersplat(x, y, name, red, green, blue, alpha, forcePaused, noBirthTime) end

---@param splat ubersplat
---@return void
function Native.DestroyUbersplat(splat) end

---@param splat ubersplat
---@return void
function Native.ResetUbersplat(splat) end

---@param splat ubersplat
---@return void
function Native.FinishUbersplat(splat) end

---@param splat ubersplat
---@param flag boolean
---@return void
function Native.ShowUbersplat(splat, flag) end

---@param splat ubersplat
---@param flag boolean
---@return void
function Native.SetUbersplatRender(splat, flag) end

---@param splat ubersplat
---@param flag boolean
---@return void
function Native.SetUbersplatRenderAlways(splat, flag) end

---@param player player
---@param x float
---@param y float
---@param radius float
---@param addBlight boolean
---@return void
function Native.SetBlight(player, x, y, radius, addBlight) end

---@param player player
---@param r rect
---@param addBlight boolean
---@return void
function Native.SetBlightRect(player, r, addBlight) end

---@param player player
---@param x float
---@param y float
---@param addBlight boolean
---@return void
function Native.SetBlightPoint(player, x, y, addBlight) end

---@param player player
---@param loc location
---@param radius float
---@param addBlight boolean
---@return void
function Native.SetBlightLoc(player, loc, radius, addBlight) end

---@param id player
---@param x float
---@param y float
---@param face float
---@return unit
function Native.CreateBlightedGoldmine(id, x, y, face) end

---@param x float
---@param y float
---@return boolean
function Native.IsPointBlighted(x, y) end

---@param x float
---@param y float
---@param radius float
---@param doodadID integer
---@param nearestOnly boolean
---@param animName string
---@param animRandom boolean
---@return void
function Native.SetDoodadAnimation(x, y, radius, doodadID, nearestOnly, animName, animRandom) end

---@param r rect
---@param doodadID integer
---@param animName string
---@param animRandom boolean
---@return void
function Native.SetDoodadAnimationRect(r, doodadID, animName, animRandom) end

---@param num player
---@param script string
---@return void
function Native.StartMeleeAI(num, script) end

---@param num player
---@param script string
---@return void
function Native.StartCampaignAI(num, script) end

---@param num player
---@param command integer
---@param data integer
---@return void
function Native.CommandAI(num, command, data) end

---@param p player
---@param pause boolean
---@return void
function Native.PauseCompAI(p, pause) end

---@param num player
---@return aidifficulty
function Native.GetAIDifficulty(num) end

---@param hUnit unit
---@return void
function Native.RemoveGuardPosition(hUnit) end

---@param hUnit unit
---@return void
function Native.RecycleGuardPosition(hUnit) end

---@param num player
---@return void
function Native.RemoveAllGuardPositions(num) end

---@param cheatStr string
---@return void
function Native.Cheat(cheatStr) end

---@return boolean
function Native.IsNoVictoryCheat() end

---@return boolean
function Native.IsNoDefeatCheat() end

---@param filename string
---@return void
function Native.Preload(filename) end

---@param timeout float
---@return void
function Native.PreloadEnd(timeout) end

---@return void
function Native.PreloadStart() end

---@return void
function Native.PreloadRefresh() end

---@return void
function Native.PreloadEndEx() end

---@return void
function Native.PreloadGenClear() end

---@return void
function Native.PreloadGenStart() end

---@param filename string
---@return void
function Native.PreloadGenEnd(filename) end

---@param filename string
---@return void
function Native.Preloader(filename) end

---@param enable boolean
---@return void
function Native.BlzHideCinematicPanels(enable) end

---@param testType string
---@return void
function Native.AutomationSetTestType(testType) end

---@param testName string
---@return void
function Native.AutomationTestStart(testName) end

---@return void
function Native.AutomationTestEnd() end

---@return void
function Native.AutomationTestingFinished() end

---@return float
function Native.BlzGetTriggerPlayerMouseX() end

---@return float
function Native.BlzGetTriggerPlayerMouseY() end

---@return location
function Native.BlzGetTriggerPlayerMousePosition() end

---@return mousebuttontype
function Native.BlzGetTriggerPlayerMouseButton() end

---@param abilCode integer
---@param tooltip string
---@param level integer
---@return void
function Native.BlzSetAbilityTooltip(abilCode, tooltip, level) end

---@param abilCode integer
---@param tooltip string
---@param level integer
---@return void
function Native.BlzSetAbilityActivatedTooltip(abilCode, tooltip, level) end

---@param abilCode integer
---@param extendedTooltip string
---@param level integer
---@return void
function Native.BlzSetAbilityExtendedTooltip(abilCode, extendedTooltip, level) end

---@param abilCode integer
---@param extendedTooltip string
---@param level integer
---@return void
function Native.BlzSetAbilityActivatedExtendedTooltip(abilCode, extendedTooltip, level) end

---@param abilCode integer
---@param researchTooltip string
---@param level integer
---@return void
function Native.BlzSetAbilityResearchTooltip(abilCode, researchTooltip, level) end

---@param abilCode integer
---@param researchExtendedTooltip string
---@param level integer
---@return void
function Native.BlzSetAbilityResearchExtendedTooltip(abilCode, researchExtendedTooltip, level) end

---@param abilCode integer
---@param level integer
---@return string
function Native.BlzGetAbilityTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function Native.BlzGetAbilityActivatedTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function Native.BlzGetAbilityExtendedTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function Native.BlzGetAbilityActivatedExtendedTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function Native.BlzGetAbilityResearchTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function Native.BlzGetAbilityResearchExtendedTooltip(abilCode, level) end

---@param abilCode integer
---@param iconPath string
---@return void
function Native.BlzSetAbilityIcon(abilCode, iconPath) end

---@param abilCode integer
---@return string
function Native.BlzGetAbilityIcon(abilCode) end

---@param abilCode integer
---@param iconPath string
---@return void
function Native.BlzSetAbilityActivatedIcon(abilCode, iconPath) end

---@param abilCode integer
---@return string
function Native.BlzGetAbilityActivatedIcon(abilCode) end

---@param abilCode integer
---@return integer
function Native.BlzGetAbilityPosX(abilCode) end

---@param abilCode integer
---@return integer
function Native.BlzGetAbilityPosY(abilCode) end

---@param abilCode integer
---@param x integer
---@return void
function Native.BlzSetAbilityPosX(abilCode, x) end

---@param abilCode integer
---@param y integer
---@return void
function Native.BlzSetAbilityPosY(abilCode, y) end

---@param abilCode integer
---@return integer
function Native.BlzGetAbilityActivatedPosX(abilCode) end

---@param abilCode integer
---@return integer
function Native.BlzGetAbilityActivatedPosY(abilCode) end

---@param abilCode integer
---@param x integer
---@return void
function Native.BlzSetAbilityActivatedPosX(abilCode, x) end

---@param abilCode integer
---@param y integer
---@return void
function Native.BlzSetAbilityActivatedPosY(abilCode, y) end

---@param unit unit
---@return integer
function Native.BlzGetUnitMaxHP(unit) end

---@param unit unit
---@param hp integer
---@return void
function Native.BlzSetUnitMaxHP(unit, hp) end

---@param unit unit
---@return integer
function Native.BlzGetUnitMaxMana(unit) end

---@param unit unit
---@param mana integer
---@return void
function Native.BlzSetUnitMaxMana(unit, mana) end

---@param item item
---@param name string
---@return void
function Native.BlzSetItemName(item, name) end

---@param item item
---@param description string
---@return void
function Native.BlzSetItemDescription(item, description) end

---@param item item
---@return string
function Native.BlzGetItemDescription(item) end

---@param item item
---@param tooltip string
---@return void
function Native.BlzSetItemTooltip(item, tooltip) end

---@param item item
---@return string
function Native.BlzGetItemTooltip(item) end

---@param item item
---@param extendedTooltip string
---@return void
function Native.BlzSetItemExtendedTooltip(item, extendedTooltip) end

---@param item item
---@return string
function Native.BlzGetItemExtendedTooltip(item) end

---@param item item
---@param iconPath string
---@return void
function Native.BlzSetItemIconPath(item, iconPath) end

---@param item item
---@return string
function Native.BlzGetItemIconPath(item) end

---@param unit unit
---@param name string
---@return void
function Native.BlzSetUnitName(unit, name) end

---@param unit unit
---@param heroProperName string
---@return void
function Native.BlzSetHeroProperName(unit, heroProperName) end

---@param unit unit
---@param weaponIndex integer
---@return integer
function Native.BlzGetUnitBaseDamage(unit, weaponIndex) end

---@param unit unit
---@param baseDamage integer
---@param weaponIndex integer
---@return void
function Native.BlzSetUnitBaseDamage(unit, baseDamage, weaponIndex) end

---@param unit unit
---@param weaponIndex integer
---@return integer
function Native.BlzGetUnitDiceNumber(unit, weaponIndex) end

---@param unit unit
---@param diceNumber integer
---@param weaponIndex integer
---@return void
function Native.BlzSetUnitDiceNumber(unit, diceNumber, weaponIndex) end

---@param unit unit
---@param weaponIndex integer
---@return integer
function Native.BlzGetUnitDiceSides(unit, weaponIndex) end

---@param unit unit
---@param diceSides integer
---@param weaponIndex integer
---@return void
function Native.BlzSetUnitDiceSides(unit, diceSides, weaponIndex) end

---@param unit unit
---@param weaponIndex integer
---@return float
function Native.BlzGetUnitAttackCooldown(unit, weaponIndex) end

---@param unit unit
---@param cooldown float
---@param weaponIndex integer
---@return void
function Native.BlzSetUnitAttackCooldown(unit, cooldown, weaponIndex) end

---@param effect effect
---@param player player
---@return void
function Native.BlzSetSpecialEffectColorByPlayer(effect, player) end

---@param effect effect
---@param r integer
---@param g integer
---@param b integer
---@return void
function Native.BlzSetSpecialEffectColor(effect, r, g, b) end

---@param effect effect
---@param alpha integer
---@return void
function Native.BlzSetSpecialEffectAlpha(effect, alpha) end

---@param effect effect
---@param scale float
---@return void
function Native.BlzSetSpecialEffectScale(effect, scale) end

---@param effect effect
---@param x float
---@param y float
---@param z float
---@return void
function Native.BlzSetSpecialEffectPosition(effect, x, y, z) end

---@param effect effect
---@param height float
---@return void
function Native.BlzSetSpecialEffectHeight(effect, height) end

---@param effect effect
---@param timeScale float
---@return void
function Native.BlzSetSpecialEffectTimeScale(effect, timeScale) end

---@param effect effect
---@param time float
---@return void
function Native.BlzSetSpecialEffectTime(effect, time) end

---@param effect effect
---@param yaw float
---@param pitch float
---@param roll float
---@return void
function Native.BlzSetSpecialEffectOrientation(effect, yaw, pitch, roll) end

---@param effect effect
---@param yaw float
---@return void
function Native.BlzSetSpecialEffectYaw(effect, yaw) end

---@param effect effect
---@param pitch float
---@return void
function Native.BlzSetSpecialEffectPitch(effect, pitch) end

---@param effect effect
---@param roll float
---@return void
function Native.BlzSetSpecialEffectRoll(effect, roll) end

---@param effect effect
---@param x float
---@return void
function Native.BlzSetSpecialEffectX(effect, x) end

---@param effect effect
---@param y float
---@return void
function Native.BlzSetSpecialEffectY(effect, y) end

---@param effect effect
---@param z float
---@return void
function Native.BlzSetSpecialEffectZ(effect, z) end

---@param effect effect
---@param loc location
---@return void
function Native.BlzSetSpecialEffectPositionLoc(effect, loc) end

---@param effect effect
---@return float
function Native.BlzGetLocalSpecialEffectX(effect) end

---@param effect effect
---@return float
function Native.BlzGetLocalSpecialEffectY(effect) end

---@param effect effect
---@return float
function Native.BlzGetLocalSpecialEffectZ(effect) end

---@param effect effect
---@return void
function Native.BlzSpecialEffectClearSubAnimations(effect) end

---@param effect effect
---@param subAnim subanimtype
---@return void
function Native.BlzSpecialEffectRemoveSubAnimation(effect, subAnim) end

---@param effect effect
---@param subAnim subanimtype
---@return void
function Native.BlzSpecialEffectAddSubAnimation(effect, subAnim) end

---@param effect effect
---@param anim animtype
---@return void
function Native.BlzPlaySpecialEffect(effect, anim) end

---@param effect effect
---@param anim animtype
---@param timeScale float
---@return void
function Native.BlzPlaySpecialEffectWithTimeScale(effect, anim, timeScale) end

---@param anim animtype
---@return string
function Native.BlzGetAnimName(anim) end

---@param unit unit
---@return float
function Native.BlzGetUnitArmor(unit) end

---@param unit unit
---@param armorAmount float
---@return void
function Native.BlzSetUnitArmor(unit, armorAmount) end

---@param unit unit
---@param abilId integer
---@param flag boolean
---@return void
function Native.BlzUnitHideAbility(unit, abilId, flag) end

---@param unit unit
---@param abilId integer
---@param flag boolean
---@param hideUI boolean
---@return void
function Native.BlzUnitDisableAbility(unit, abilId, flag, hideUI) end

---@param unit unit
---@return void
function Native.BlzUnitCancelTimedLife(unit) end

---@param unit unit
---@return boolean
function Native.BlzIsUnitSelectable(unit) end

---@param unit unit
---@return boolean
function Native.BlzIsUnitInvulnerable(unit) end

---@param unit unit
---@return void
function Native.BlzUnitInterruptAttack(unit) end

---@param unit unit
---@return float
function Native.BlzGetUnitCollisionSize(unit) end

---@param abilId integer
---@param level integer
---@return integer
function Native.BlzGetAbilityManaCost(abilId, level) end

---@param abilId integer
---@param level integer
---@return float
function Native.BlzGetAbilityCooldown(abilId, level) end

---@param unit unit
---@param abilId integer
---@param level integer
---@param cooldown float
---@return void
function Native.BlzSetUnitAbilityCooldown(unit, abilId, level, cooldown) end

---@param unit unit
---@param abilId integer
---@param level integer
---@return float
function Native.BlzGetUnitAbilityCooldown(unit, abilId, level) end

---@param unit unit
---@param abilId integer
---@return float
function Native.BlzGetUnitAbilityCooldownRemaining(unit, abilId) end

---@param unit unit
---@param abilCode integer
---@return void
function Native.BlzEndUnitAbilityCooldown(unit, abilCode) end

---@param unit unit
---@param abilCode integer
---@param cooldown float
---@return void
function Native.BlzStartUnitAbilityCooldown(unit, abilCode, cooldown) end

---@param unit unit
---@param abilId integer
---@param level integer
---@return integer
function Native.BlzGetUnitAbilityManaCost(unit, abilId, level) end

---@param unit unit
---@param abilId integer
---@param level integer
---@param manaCost integer
---@return void
function Native.BlzSetUnitAbilityManaCost(unit, abilId, level, manaCost) end

---@param unit unit
---@return float
function Native.BlzGetLocalUnitZ(unit) end

---@param player player
---@param techid integer
---@param levels integer
---@return void
function Native.BlzDecPlayerTechResearched(player, techid, levels) end

---@param damage float
---@return void
function Native.BlzSetEventDamage(damage) end

---@return unit
function Native.BlzGetEventDamageTarget() end

---@return attacktype
function Native.BlzGetEventAttackType() end

---@return damagetype
function Native.BlzGetEventDamageType() end

---@return weapontype
function Native.BlzGetEventWeaponType() end

---@param attackType attacktype
---@return boolean
function Native.BlzSetEventAttackType(attackType) end

---@param damageType damagetype
---@return boolean
function Native.BlzSetEventDamageType(damageType) end

---@param weaponType weapontype
---@return boolean
function Native.BlzSetEventWeaponType(weaponType) end

---@return boolean
function Native.BlzGetEventIsAttack() end

---@param dataType integer
---@param player player
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 integer
---@param param5 integer
---@param param6 integer
---@return integer
function Native.RequestExtraIntegerData(dataType, player, param1, param2, param3, param4, param5, param6) end

---@param dataType integer
---@param player player
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 integer
---@param param5 integer
---@param param6 integer
---@return boolean
function Native.RequestExtraBooleanData(dataType, player, param1, param2, param3, param4, param5, param6) end

---@param dataType integer
---@param player player
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 integer
---@param param5 integer
---@param param6 integer
---@return string
function Native.RequestExtraStringData(dataType, player, param1, param2, param3, param4, param5, param6) end

---@param dataType integer
---@param player player
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 integer
---@param param5 integer
---@param param6 integer
---@return float
function Native.RequestExtraRealData(dataType, player, param1, param2, param3, param4, param5, param6) end

---@param unit unit
---@return float
function Native.BlzGetUnitZ(unit) end

---@param enableSelection boolean
---@param enableSelectionCircle boolean
---@return void
function Native.BlzEnableSelections(enableSelection, enableSelectionCircle) end

---@return boolean
function Native.BlzIsSelectionEnabled() end

---@return boolean
function Native.BlzIsSelectionCircleEnabled() end

---@param setup camerasetup
---@param doPan boolean
---@param forcedDuration float
---@param easeInDuration float
---@param easeOutDuration float
---@param smoothFactor float
---@return void
function Native.BlzCameraSetupApplyForceDurationSmooth(setup, doPan, forcedDuration, easeInDuration, easeOutDuration, smoothFactor) end

---@param enable boolean
---@return void
function Native.BlzEnableTargetIndicator(enable) end

---@return boolean
function Native.BlzIsTargetIndicatorEnabled() end

---@param show boolean
---@return void
function Native.BlzShowTerrain(show) end

---@param show boolean
---@return void
function Native.BlzShowSkyBox(show) end

---@param fps integer
---@return void
function Native.BlzStartRecording(fps) end

---@return void
function Native.BlzEndRecording() end

---@param unit unit
---@param show boolean
---@return void
function Native.BlzShowUnitTeamGlow(unit, show) end

---@param frameType originframetype
---@param index integer
---@return framehandle
function Native.BlzGetOriginFrame(frameType, index) end

---@param enable boolean
---@return void
function Native.BlzEnableUIAutoPosition(enable) end

---@param enable boolean
---@return void
function Native.BlzHideOriginFrames(enable) end

---@param a integer
---@param r integer
---@param g integer
---@param b integer
---@return integer
function Native.BlzConvertColor(a, r, g, b) end

---@param TOCFile string
---@return boolean
function Native.BlzLoadTOCFile(TOCFile) end

---@param name string
---@param owner framehandle
---@param priority integer
---@param createContext integer
---@return framehandle
function Native.BlzCreateFrame(name, owner, priority, createContext) end

---@param name string
---@param owner framehandle
---@param createContext integer
---@return framehandle
function Native.BlzCreateSimpleFrame(name, owner, createContext) end

---@param typeName string
---@param name string
---@param owner framehandle
---@param inherits string
---@param createContext integer
---@return framehandle
function Native.BlzCreateFrameByType(typeName, name, owner, inherits, createContext) end

---@param frame framehandle
---@return void
function Native.BlzDestroyFrame(frame) end

---@param frame framehandle
---@param point framepointtype
---@param relative framehandle
---@param relativePoint framepointtype
---@param x float
---@param y float
---@return void
function Native.BlzFrameSetPoint(frame, point, relative, relativePoint, x, y) end

---@param frame framehandle
---@param point framepointtype
---@param x float
---@param y float
---@return void
function Native.BlzFrameSetAbsPoint(frame, point, x, y) end

---@param frame framehandle
---@return void
function Native.BlzFrameClearAllPoints(frame) end

---@param frame framehandle
---@param relative framehandle
---@return void
function Native.BlzFrameSetAllPoints(frame, relative) end

---@param frame framehandle
---@param visible boolean
---@return void
function Native.BlzFrameSetVisible(frame, visible) end

---@param frame framehandle
---@return boolean
function Native.BlzFrameIsVisible(frame) end

---@param name string
---@param createContext integer
---@return framehandle
function Native.BlzGetFrameByName(name, createContext) end

---@param frame framehandle
---@return string
function Native.BlzFrameGetName(frame) end

---@param frame framehandle
---@return void
function Native.BlzFrameClick(frame) end

---@param frame framehandle
---@param text string
---@return void
function Native.BlzFrameSetText(frame, text) end

---@param frame framehandle
---@return string
function Native.BlzFrameGetText(frame) end

---@param frame framehandle
---@param text string
---@return void
function Native.BlzFrameAddText(frame, text) end

---@param frame framehandle
---@param size integer
---@return void
function Native.BlzFrameSetTextSizeLimit(frame, size) end

---@param frame framehandle
---@return integer
function Native.BlzFrameGetTextSizeLimit(frame) end

---@param frame framehandle
---@param color integer
---@return void
function Native.BlzFrameSetTextColor(frame, color) end

---@param frame framehandle
---@param flag boolean
---@return void
function Native.BlzFrameSetFocus(frame, flag) end

---@param frame framehandle
---@param modelFile string
---@param cameraIndex integer
---@return void
function Native.BlzFrameSetModel(frame, modelFile, cameraIndex) end

---@param frame framehandle
---@param enabled boolean
---@return void
function Native.BlzFrameSetEnable(frame, enabled) end

---@param frame framehandle
---@return boolean
function Native.BlzFrameGetEnable(frame) end

---@param frame framehandle
---@param alpha integer
---@return void
function Native.BlzFrameSetAlpha(frame, alpha) end

---@param frame framehandle
---@return integer
function Native.BlzFrameGetAlpha(frame) end

---@param frame framehandle
---@param primaryProp integer
---@param flags integer
---@return void
function Native.BlzFrameSetSpriteAnimate(frame, primaryProp, flags) end

---@param frame framehandle
---@param texFile string
---@param flag integer
---@param blend boolean
---@return void
function Native.BlzFrameSetTexture(frame, texFile, flag, blend) end

---@param frame framehandle
---@param scale float
---@return void
function Native.BlzFrameSetScale(frame, scale) end

---@param frame framehandle
---@param tooltip framehandle
---@return void
function Native.BlzFrameSetTooltip(frame, tooltip) end

---@param frame framehandle
---@param enable boolean
---@return void
function Native.BlzFrameCageMouse(frame, enable) end

---@param frame framehandle
---@param value float
---@return void
function Native.BlzFrameSetValue(frame, value) end

---@param frame framehandle
---@return float
function Native.BlzFrameGetValue(frame) end

---@param frame framehandle
---@param minValue float
---@param maxValue float
---@return void
function Native.BlzFrameSetMinMaxValue(frame, minValue, maxValue) end

---@param frame framehandle
---@param stepSize float
---@return void
function Native.BlzFrameSetStepSize(frame, stepSize) end

---@param frame framehandle
---@param width float
---@param height float
---@return void
function Native.BlzFrameSetSize(frame, width, height) end

---@param frame framehandle
---@param color integer
---@return void
function Native.BlzFrameSetVertexColor(frame, color) end

---@param frame framehandle
---@param level integer
---@return void
function Native.BlzFrameSetLevel(frame, level) end

---@param frame framehandle
---@param parent framehandle
---@return void
function Native.BlzFrameSetParent(frame, parent) end

---@param frame framehandle
---@return framehandle
function Native.BlzFrameGetParent(frame) end

---@param frame framehandle
---@return float
function Native.BlzFrameGetHeight(frame) end

---@param frame framehandle
---@return float
function Native.BlzFrameGetWidth(frame) end

---@param frame framehandle
---@param fileName string
---@param height float
---@param flags integer
---@return void
function Native.BlzFrameSetFont(frame, fileName, height, flags) end

---@param frame framehandle
---@param vert textaligntype
---@param horz textaligntype
---@return void
function Native.BlzFrameSetTextAlignment(frame, vert, horz) end

---@param frame framehandle
---@return integer
function Native.BlzFrameGetChildrenCount(frame) end

---@param frame framehandle
---@param index integer
---@return framehandle
function Native.BlzFrameGetChild(frame, index) end

---@param trigger trigger
---@param frame framehandle
---@param eventId frameeventtype
---@return event
function Native.BlzTriggerRegisterFrameEvent(trigger, frame, eventId) end

---@return framehandle
function Native.BlzGetTriggerFrame() end

---@return frameeventtype
function Native.BlzGetTriggerFrameEvent() end

---@return float
function Native.BlzGetTriggerFrameValue() end

---@return string
function Native.BlzGetTriggerFrameText() end

---@param trigger trigger
---@param player player
---@param prefix string
---@param fromServer boolean
---@return event
function Native.BlzTriggerRegisterPlayerSyncEvent(trigger, player, prefix, fromServer) end

---@param prefix string
---@param data string
---@return boolean
function Native.BlzSendSyncData(prefix, data) end

---@return string
function Native.BlzGetTriggerSyncPrefix() end

---@return string
function Native.BlzGetTriggerSyncData() end

---@param trigger trigger
---@param player player
---@param key oskeytype
---@param metaKey integer
---@param keyDown boolean
---@return event
function Native.BlzTriggerRegisterPlayerKeyEvent(trigger, player, key, metaKey, keyDown) end

---@return oskeytype
function Native.BlzGetTriggerPlayerKey() end

---@return integer
function Native.BlzGetTriggerPlayerMetaKey() end

---@return boolean
function Native.BlzGetTriggerPlayerIsKeyDown() end

---@param enable boolean
---@return void
function Native.BlzEnableCursor(enable) end

---@param x integer
---@param y integer
---@return void
function Native.BlzSetMousePos(x, y) end

---@return integer
function Native.BlzGetLocalClientWidth() end

---@return integer
function Native.BlzGetLocalClientHeight() end

---@return boolean
function Native.BlzIsLocalClientActive() end

---@return unit
function Native.BlzGetMouseFocusUnit() end

---@param texFile string
---@return boolean
function Native.BlzChangeMinimapTerrainTex(texFile) end

---@return string
function Native.BlzGetLocale() end

---@param effect effect
---@return float
function Native.BlzGetSpecialEffectScale(effect) end

---@param effect effect
---@param x float
---@param y float
---@param z float
---@return void
function Native.BlzSetSpecialEffectMatrixScale(effect, x, y, z) end

---@param effect effect
---@return void
function Native.BlzResetSpecialEffectMatrix(effect) end

---@param unit unit
---@param abilId integer
---@return ability
function Native.BlzGetUnitAbility(unit, abilId) end

---@param unit unit
---@param index integer
---@return ability
function Native.BlzGetUnitAbilityByIndex(unit, index) end

---@param player player
---@param recipient integer
---@param message string
---@return void
function Native.BlzDisplayChatMessage(player, recipient, message) end

---@param unit unit
---@param flag boolean
---@return void
function Native.BlzPauseUnitEx(unit, flag) end

---@param unit unit
---@param facingAngle float
---@return void
function Native.BlzSetUnitFacingEx(unit, facingAngle) end

---@param abilityId integer
---@param order string
---@return commandbuttoneffect
function Native.CreateCommandButtonEffect(abilityId, order) end

---@param uprgade integer
---@return commandbuttoneffect
function Native.CreateUpgradeCommandButtonEffect(uprgade) end

---@param abilityId integer
---@return commandbuttoneffect
function Native.CreateLearnCommandButtonEffect(abilityId) end

---@param effect commandbuttoneffect
---@return void
function Native.DestroyCommandButtonEffect(effect) end

---@param x integer
---@param y integer
---@return integer
function Native.BlzBitOr(x, y) end

---@param x integer
---@param y integer
---@return integer
function Native.BlzBitAnd(x, y) end

---@param x integer
---@param y integer
---@return integer
function Native.BlzBitXor(x, y) end

---@param ability ability
---@param field abilitybooleanfield
---@return boolean
function Native.BlzGetAbilityBooleanField(ability, field) end

---@param ability ability
---@param field abilityintegerfield
---@return integer
function Native.BlzGetAbilityIntegerField(ability, field) end

---@param ability ability
---@param field abilityrealfield
---@return float
function Native.BlzGetAbilityRealField(ability, field) end

---@param ability ability
---@param field abilitystringfield
---@return string
function Native.BlzGetAbilityStringField(ability, field) end

---@param ability ability
---@param field abilitybooleanlevelfield
---@param level integer
---@return boolean
function Native.BlzGetAbilityBooleanLevelField(ability, field, level) end

---@param ability ability
---@param field abilityintegerlevelfield
---@param level integer
---@return integer
function Native.BlzGetAbilityIntegerLevelField(ability, field, level) end

---@param ability ability
---@param field abilityreallevelfield
---@param level integer
---@return float
function Native.BlzGetAbilityRealLevelField(ability, field, level) end

---@param ability ability
---@param field abilitystringlevelfield
---@param level integer
---@return string
function Native.BlzGetAbilityStringLevelField(ability, field, level) end

---@param ability ability
---@param field abilitybooleanlevelarrayfield
---@param level integer
---@param index integer
---@return boolean
function Native.BlzGetAbilityBooleanLevelArrayField(ability, field, level, index) end

---@param ability ability
---@param field abilityintegerlevelarrayfield
---@param level integer
---@param index integer
---@return integer
function Native.BlzGetAbilityIntegerLevelArrayField(ability, field, level, index) end

---@param ability ability
---@param field abilityreallevelarrayfield
---@param level integer
---@param index integer
---@return float
function Native.BlzGetAbilityRealLevelArrayField(ability, field, level, index) end

---@param ability ability
---@param field abilitystringlevelarrayfield
---@param level integer
---@param index integer
---@return string
function Native.BlzGetAbilityStringLevelArrayField(ability, field, level, index) end

---@param ability ability
---@param field abilitybooleanfield
---@param value boolean
---@return boolean
function Native.BlzSetAbilityBooleanField(ability, field, value) end

---@param ability ability
---@param field abilityintegerfield
---@param value integer
---@return boolean
function Native.BlzSetAbilityIntegerField(ability, field, value) end

---@param ability ability
---@param field abilityrealfield
---@param value float
---@return boolean
function Native.BlzSetAbilityRealField(ability, field, value) end

---@param ability ability
---@param field abilitystringfield
---@param value string
---@return boolean
function Native.BlzSetAbilityStringField(ability, field, value) end

---@param ability ability
---@param field abilitybooleanlevelfield
---@param level integer
---@param value boolean
---@return boolean
function Native.BlzSetAbilityBooleanLevelField(ability, field, level, value) end

---@param ability ability
---@param field abilityintegerlevelfield
---@param level integer
---@param value integer
---@return boolean
function Native.BlzSetAbilityIntegerLevelField(ability, field, level, value) end

---@param ability ability
---@param field abilityreallevelfield
---@param level integer
---@param value float
---@return boolean
function Native.BlzSetAbilityRealLevelField(ability, field, level, value) end

---@param ability ability
---@param field abilitystringlevelfield
---@param level integer
---@param value string
---@return boolean
function Native.BlzSetAbilityStringLevelField(ability, field, level, value) end

---@param ability ability
---@param field abilitybooleanlevelarrayfield
---@param level integer
---@param index integer
---@param value boolean
---@return boolean
function Native.BlzSetAbilityBooleanLevelArrayField(ability, field, level, index, value) end

---@param ability ability
---@param field abilityintegerlevelarrayfield
---@param level integer
---@param index integer
---@param value integer
---@return boolean
function Native.BlzSetAbilityIntegerLevelArrayField(ability, field, level, index, value) end

---@param ability ability
---@param field abilityreallevelarrayfield
---@param level integer
---@param index integer
---@param value float
---@return boolean
function Native.BlzSetAbilityRealLevelArrayField(ability, field, level, index, value) end

---@param ability ability
---@param field abilitystringlevelarrayfield
---@param level integer
---@param index integer
---@param value string
---@return boolean
function Native.BlzSetAbilityStringLevelArrayField(ability, field, level, index, value) end

---@param ability ability
---@param field abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return boolean
function Native.BlzAddAbilityBooleanLevelArrayField(ability, field, level, value) end

---@param ability ability
---@param field abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return boolean
function Native.BlzAddAbilityIntegerLevelArrayField(ability, field, level, value) end

---@param ability ability
---@param field abilityreallevelarrayfield
---@param level integer
---@param value float
---@return boolean
function Native.BlzAddAbilityRealLevelArrayField(ability, field, level, value) end

---@param ability ability
---@param field abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return boolean
function Native.BlzAddAbilityStringLevelArrayField(ability, field, level, value) end

---@param ability ability
---@param field abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return boolean
function Native.BlzRemoveAbilityBooleanLevelArrayField(ability, field, level, value) end

---@param ability ability
---@param field abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return boolean
function Native.BlzRemoveAbilityIntegerLevelArrayField(ability, field, level, value) end

---@param ability ability
---@param field abilityreallevelarrayfield
---@param level integer
---@param value float
---@return boolean
function Native.BlzRemoveAbilityRealLevelArrayField(ability, field, level, value) end

---@param ability ability
---@param field abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return boolean
function Native.BlzRemoveAbilityStringLevelArrayField(ability, field, level, value) end

---@param item item
---@param index integer
---@return ability
function Native.BlzGetItemAbilityByIndex(item, index) end

---@param item item
---@param abilCode integer
---@return ability
function Native.BlzGetItemAbility(item, abilCode) end

---@param item item
---@param abilCode integer
---@return boolean
function Native.BlzItemAddAbility(item, abilCode) end

---@param item item
---@param field itembooleanfield
---@return boolean
function Native.BlzGetItemBooleanField(item, field) end

---@param item item
---@param field itemintegerfield
---@return integer
function Native.BlzGetItemIntegerField(item, field) end

---@param item item
---@param field itemrealfield
---@return float
function Native.BlzGetItemRealField(item, field) end

---@param item item
---@param field itemstringfield
---@return string
function Native.BlzGetItemStringField(item, field) end

---@param item item
---@param field itembooleanfield
---@param value boolean
---@return boolean
function Native.BlzSetItemBooleanField(item, field, value) end

---@param item item
---@param field itemintegerfield
---@param value integer
---@return boolean
function Native.BlzSetItemIntegerField(item, field, value) end

---@param item item
---@param field itemrealfield
---@param value float
---@return boolean
function Native.BlzSetItemRealField(item, field, value) end

---@param item item
---@param field itemstringfield
---@param value string
---@return boolean
function Native.BlzSetItemStringField(item, field, value) end

---@param item item
---@param abilCode integer
---@return boolean
function Native.BlzItemRemoveAbility(item, abilCode) end

---@param unit unit
---@param field unitbooleanfield
---@return boolean
function Native.BlzGetUnitBooleanField(unit, field) end

---@param unit unit
---@param field unitintegerfield
---@return integer
function Native.BlzGetUnitIntegerField(unit, field) end

---@param unit unit
---@param field unitrealfield
---@return float
function Native.BlzGetUnitRealField(unit, field) end

---@param unit unit
---@param field unitstringfield
---@return string
function Native.BlzGetUnitStringField(unit, field) end

---@param unit unit
---@param field unitbooleanfield
---@param value boolean
---@return boolean
function Native.BlzSetUnitBooleanField(unit, field, value) end

---@param unit unit
---@param field unitintegerfield
---@param value integer
---@return boolean
function Native.BlzSetUnitIntegerField(unit, field, value) end

---@param unit unit
---@param field unitrealfield
---@param value float
---@return boolean
function Native.BlzSetUnitRealField(unit, field, value) end

---@param unit unit
---@param field unitstringfield
---@param value string
---@return boolean
function Native.BlzSetUnitStringField(unit, field, value) end

---@param unit unit
---@param field unitweaponbooleanfield
---@param index integer
---@return boolean
function Native.BlzGetUnitWeaponBooleanField(unit, field, index) end

---@param unit unit
---@param field unitweaponintegerfield
---@param index integer
---@return integer
function Native.BlzGetUnitWeaponIntegerField(unit, field, index) end

---@param unit unit
---@param field unitweaponrealfield
---@param index integer
---@return float
function Native.BlzGetUnitWeaponRealField(unit, field, index) end

---@param unit unit
---@param field unitweaponstringfield
---@param index integer
---@return string
function Native.BlzGetUnitWeaponStringField(unit, field, index) end

---@param unit unit
---@param field unitweaponbooleanfield
---@param index integer
---@param value boolean
---@return boolean
function Native.BlzSetUnitWeaponBooleanField(unit, field, index, value) end

---@param unit unit
---@param field unitweaponintegerfield
---@param index integer
---@param value integer
---@return boolean
function Native.BlzSetUnitWeaponIntegerField(unit, field, index, value) end

---@param unit unit
---@param field unitweaponrealfield
---@param index integer
---@param value float
---@return boolean
function Native.BlzSetUnitWeaponRealField(unit, field, index, value) end

---@param unit unit
---@param field unitweaponstringfield
---@param index integer
---@param value string
---@return boolean
function Native.BlzSetUnitWeaponStringField(unit, field, index, value) end

---@param unit unit
---@return integer
function Native.BlzGetUnitSkin(unit) end

---@param item item
---@return integer
function Native.BlzGetItemSkin(item) end

---@param unit unit
---@param skinId integer
---@return void
function Native.BlzSetUnitSkin(unit, skinId) end

---@param item item
---@param skinId integer
---@return void
function Native.BlzSetItemSkin(item, skinId) end

---@param itemid integer
---@param x float
---@param y float
---@param skinId integer
---@return item
function Native.BlzCreateItemWithSkin(itemid, x, y, skinId) end

---@param id player
---@param unitid integer
---@param x float
---@param y float
---@param face float
---@param skinId integer
---@return unit
function Native.BlzCreateUnitWithSkin(id, unitid, x, y, face, skinId) end

---@param objectid integer
---@param x float
---@param y float
---@param face float
---@param scale float
---@param variation integer
---@param skinId integer
---@return destructable
function Native.BlzCreateDestructableWithSkin(objectid, x, y, face, scale, variation, skinId) end

---@param objectid integer
---@param x float
---@param y float
---@param z float
---@param face float
---@param scale float
---@param variation integer
---@param skinId integer
---@return destructable
function Native.BlzCreateDestructableZWithSkin(objectid, x, y, z, face, scale, variation, skinId) end

---@param objectid integer
---@param x float
---@param y float
---@param face float
---@param scale float
---@param variation integer
---@param skinId integer
---@return destructable
function Native.BlzCreateDeadDestructableWithSkin(objectid, x, y, face, scale, variation, skinId) end

---@param objectid integer
---@param x float
---@param y float
---@param z float
---@param face float
---@param scale float
---@param variation integer
---@param skinId integer
---@return destructable
function Native.BlzCreateDeadDestructableZWithSkin(objectid, x, y, z, face, scale, variation, skinId) end

---@param player player
---@return integer
function Native.BlzGetPlayerTownHallCount(player) end

---@type boolean
Native.FALSE = nil

---@type boolean
Native.TRUE = nil

---@type integer
Native.JASS_MAX_ARRAY_SIZE = nil

---@type integer
Native.PLAYER_NEUTRAL_PASSIVE = nil

---@type integer
Native.PLAYER_NEUTRAL_AGGRESSIVE = nil

---@type playercolor
Native.PLAYER_COLOR_RED = nil

---@type playercolor
Native.PLAYER_COLOR_BLUE = nil

---@type playercolor
Native.PLAYER_COLOR_CYAN = nil

---@type playercolor
Native.PLAYER_COLOR_PURPLE = nil

---@type playercolor
Native.PLAYER_COLOR_YELLOW = nil

---@type playercolor
Native.PLAYER_COLOR_ORANGE = nil

---@type playercolor
Native.PLAYER_COLOR_GREEN = nil

---@type playercolor
Native.PLAYER_COLOR_PINK = nil

---@type playercolor
Native.PLAYER_COLOR_LIGHT_GRAY = nil

---@type playercolor
Native.PLAYER_COLOR_LIGHT_BLUE = nil

---@type playercolor
Native.PLAYER_COLOR_AQUA = nil

---@type playercolor
Native.PLAYER_COLOR_BROWN = nil

---@type playercolor
Native.PLAYER_COLOR_MAROON = nil

---@type playercolor
Native.PLAYER_COLOR_NAVY = nil

---@type playercolor
Native.PLAYER_COLOR_TURQUOISE = nil

---@type playercolor
Native.PLAYER_COLOR_VIOLET = nil

---@type playercolor
Native.PLAYER_COLOR_WHEAT = nil

---@type playercolor
Native.PLAYER_COLOR_PEACH = nil

---@type playercolor
Native.PLAYER_COLOR_MINT = nil

---@type playercolor
Native.PLAYER_COLOR_LAVENDER = nil

---@type playercolor
Native.PLAYER_COLOR_COAL = nil

---@type playercolor
Native.PLAYER_COLOR_SNOW = nil

---@type playercolor
Native.PLAYER_COLOR_EMERALD = nil

---@type playercolor
Native.PLAYER_COLOR_PEANUT = nil

---@type race
Native.RACE_HUMAN = nil

---@type race
Native.RACE_ORC = nil

---@type race
Native.RACE_UNDEAD = nil

---@type race
Native.RACE_NIGHTELF = nil

---@type race
Native.RACE_DEMON = nil

---@type race
Native.RACE_OTHER = nil

---@type playergameresult
Native.PLAYER_GAME_RESULT_VICTORY = nil

---@type playergameresult
Native.PLAYER_GAME_RESULT_DEFEAT = nil

---@type playergameresult
Native.PLAYER_GAME_RESULT_TIE = nil

---@type playergameresult
Native.PLAYER_GAME_RESULT_NEUTRAL = nil

---@type alliancetype
Native.ALLIANCE_PASSIVE = nil

---@type alliancetype
Native.ALLIANCE_HELP_REQUEST = nil

---@type alliancetype
Native.ALLIANCE_HELP_RESPONSE = nil

---@type alliancetype
Native.ALLIANCE_SHARED_XP = nil

---@type alliancetype
Native.ALLIANCE_SHARED_SPELLS = nil

---@type alliancetype
Native.ALLIANCE_SHARED_VISION = nil

---@type alliancetype
Native.ALLIANCE_SHARED_CONTROL = nil

---@type alliancetype
Native.ALLIANCE_SHARED_ADVANCED_CONTROL = nil

---@type alliancetype
Native.ALLIANCE_RESCUABLE = nil

---@type alliancetype
Native.ALLIANCE_SHARED_VISION_FORCED = nil

---@type version
Native.VERSION_REIGN_OF_CHAOS = nil

---@type version
Native.VERSION_FROZEN_THRONE = nil

---@type attacktype
Native.ATTACK_TYPE_NORMAL = nil

---@type attacktype
Native.ATTACK_TYPE_MELEE = nil

---@type attacktype
Native.ATTACK_TYPE_PIERCE = nil

---@type attacktype
Native.ATTACK_TYPE_SIEGE = nil

---@type attacktype
Native.ATTACK_TYPE_MAGIC = nil

---@type attacktype
Native.ATTACK_TYPE_CHAOS = nil

---@type attacktype
Native.ATTACK_TYPE_HERO = nil

---@type damagetype
Native.DAMAGE_TYPE_UNKNOWN = nil

---@type damagetype
Native.DAMAGE_TYPE_NORMAL = nil

---@type damagetype
Native.DAMAGE_TYPE_ENHANCED = nil

---@type damagetype
Native.DAMAGE_TYPE_FIRE = nil

---@type damagetype
Native.DAMAGE_TYPE_COLD = nil

---@type damagetype
Native.DAMAGE_TYPE_LIGHTNING = nil

---@type damagetype
Native.DAMAGE_TYPE_POISON = nil

---@type damagetype
Native.DAMAGE_TYPE_DISEASE = nil

---@type damagetype
Native.DAMAGE_TYPE_DIVINE = nil

---@type damagetype
Native.DAMAGE_TYPE_MAGIC = nil

---@type damagetype
Native.DAMAGE_TYPE_SONIC = nil

---@type damagetype
Native.DAMAGE_TYPE_ACID = nil

---@type damagetype
Native.DAMAGE_TYPE_FORCE = nil

---@type damagetype
Native.DAMAGE_TYPE_DEATH = nil

---@type damagetype
Native.DAMAGE_TYPE_MIND = nil

---@type damagetype
Native.DAMAGE_TYPE_PLANT = nil

---@type damagetype
Native.DAMAGE_TYPE_DEFENSIVE = nil

---@type damagetype
Native.DAMAGE_TYPE_DEMOLITION = nil

---@type damagetype
Native.DAMAGE_TYPE_SLOW_POISON = nil

---@type damagetype
Native.DAMAGE_TYPE_SPIRIT_LINK = nil

---@type damagetype
Native.DAMAGE_TYPE_SHADOW_STRIKE = nil

---@type damagetype
Native.DAMAGE_TYPE_UNIVERSAL = nil

---@type weapontype
Native.WEAPON_TYPE_WHOKNOWS = nil

---@type weapontype
Native.WEAPON_TYPE_METAL_LIGHT_CHOP = nil

---@type weapontype
Native.WEAPON_TYPE_METAL_MEDIUM_CHOP = nil

---@type weapontype
Native.WEAPON_TYPE_METAL_HEAVY_CHOP = nil

---@type weapontype
Native.WEAPON_TYPE_METAL_LIGHT_SLICE = nil

---@type weapontype
Native.WEAPON_TYPE_METAL_MEDIUM_SLICE = nil

---@type weapontype
Native.WEAPON_TYPE_METAL_HEAVY_SLICE = nil

---@type weapontype
Native.WEAPON_TYPE_METAL_MEDIUM_BASH = nil

---@type weapontype
Native.WEAPON_TYPE_METAL_HEAVY_BASH = nil

---@type weapontype
Native.WEAPON_TYPE_METAL_MEDIUM_STAB = nil

---@type weapontype
Native.WEAPON_TYPE_METAL_HEAVY_STAB = nil

---@type weapontype
Native.WEAPON_TYPE_WOOD_LIGHT_SLICE = nil

---@type weapontype
Native.WEAPON_TYPE_WOOD_MEDIUM_SLICE = nil

---@type weapontype
Native.WEAPON_TYPE_WOOD_HEAVY_SLICE = nil

---@type weapontype
Native.WEAPON_TYPE_WOOD_LIGHT_BASH = nil

---@type weapontype
Native.WEAPON_TYPE_WOOD_MEDIUM_BASH = nil

---@type weapontype
Native.WEAPON_TYPE_WOOD_HEAVY_BASH = nil

---@type weapontype
Native.WEAPON_TYPE_WOOD_LIGHT_STAB = nil

---@type weapontype
Native.WEAPON_TYPE_WOOD_MEDIUM_STAB = nil

---@type weapontype
Native.WEAPON_TYPE_CLAW_LIGHT_SLICE = nil

---@type weapontype
Native.WEAPON_TYPE_CLAW_MEDIUM_SLICE = nil

---@type weapontype
Native.WEAPON_TYPE_CLAW_HEAVY_SLICE = nil

---@type weapontype
Native.WEAPON_TYPE_AXE_MEDIUM_CHOP = nil

---@type weapontype
Native.WEAPON_TYPE_ROCK_HEAVY_BASH = nil

---@type pathingtype
Native.PATHING_TYPE_ANY = nil

---@type pathingtype
Native.PATHING_TYPE_WALKABILITY = nil

---@type pathingtype
Native.PATHING_TYPE_FLYABILITY = nil

---@type pathingtype
Native.PATHING_TYPE_BUILDABILITY = nil

---@type pathingtype
Native.PATHING_TYPE_PEONHARVESTPATHING = nil

---@type pathingtype
Native.PATHING_TYPE_BLIGHTPATHING = nil

---@type pathingtype
Native.PATHING_TYPE_FLOATABILITY = nil

---@type pathingtype
Native.PATHING_TYPE_AMPHIBIOUSPATHING = nil

---@type mousebuttontype
Native.MOUSE_BUTTON_TYPE_LEFT = nil

---@type mousebuttontype
Native.MOUSE_BUTTON_TYPE_MIDDLE = nil

---@type mousebuttontype
Native.MOUSE_BUTTON_TYPE_RIGHT = nil

---@type animtype
Native.ANIM_TYPE_BIRTH = nil

---@type animtype
Native.ANIM_TYPE_DEATH = nil

---@type animtype
Native.ANIM_TYPE_DECAY = nil

---@type animtype
Native.ANIM_TYPE_DISSIPATE = nil

---@type animtype
Native.ANIM_TYPE_STAND = nil

---@type animtype
Native.ANIM_TYPE_WALK = nil

---@type animtype
Native.ANIM_TYPE_ATTACK = nil

---@type animtype
Native.ANIM_TYPE_MORPH = nil

---@type animtype
Native.ANIM_TYPE_SLEEP = nil

---@type animtype
Native.ANIM_TYPE_SPELL = nil

---@type animtype
Native.ANIM_TYPE_PORTRAIT = nil

---@type subanimtype
Native.SUBANIM_TYPE_ROOTED = nil

---@type subanimtype
Native.SUBANIM_TYPE_ALTERNATE_EX = nil

---@type subanimtype
Native.SUBANIM_TYPE_LOOPING = nil

---@type subanimtype
Native.SUBANIM_TYPE_SLAM = nil

---@type subanimtype
Native.SUBANIM_TYPE_THROW = nil

---@type subanimtype
Native.SUBANIM_TYPE_SPIKED = nil

---@type subanimtype
Native.SUBANIM_TYPE_FAST = nil

---@type subanimtype
Native.SUBANIM_TYPE_SPIN = nil

---@type subanimtype
Native.SUBANIM_TYPE_READY = nil

---@type subanimtype
Native.SUBANIM_TYPE_CHANNEL = nil

---@type subanimtype
Native.SUBANIM_TYPE_DEFEND = nil

---@type subanimtype
Native.SUBANIM_TYPE_VICTORY = nil

---@type subanimtype
Native.SUBANIM_TYPE_TURN = nil

---@type subanimtype
Native.SUBANIM_TYPE_LEFT = nil

---@type subanimtype
Native.SUBANIM_TYPE_RIGHT = nil

---@type subanimtype
Native.SUBANIM_TYPE_FIRE = nil

---@type subanimtype
Native.SUBANIM_TYPE_FLESH = nil

---@type subanimtype
Native.SUBANIM_TYPE_HIT = nil

---@type subanimtype
Native.SUBANIM_TYPE_WOUNDED = nil

---@type subanimtype
Native.SUBANIM_TYPE_LIGHT = nil

---@type subanimtype
Native.SUBANIM_TYPE_MODERATE = nil

---@type subanimtype
Native.SUBANIM_TYPE_SEVERE = nil

---@type subanimtype
Native.SUBANIM_TYPE_CRITICAL = nil

---@type subanimtype
Native.SUBANIM_TYPE_COMPLETE = nil

---@type subanimtype
Native.SUBANIM_TYPE_GOLD = nil

---@type subanimtype
Native.SUBANIM_TYPE_LUMBER = nil

---@type subanimtype
Native.SUBANIM_TYPE_WORK = nil

---@type subanimtype
Native.SUBANIM_TYPE_TALK = nil

---@type subanimtype
Native.SUBANIM_TYPE_FIRST = nil

---@type subanimtype
Native.SUBANIM_TYPE_SECOND = nil

---@type subanimtype
Native.SUBANIM_TYPE_THIRD = nil

---@type subanimtype
Native.SUBANIM_TYPE_FOURTH = nil

---@type subanimtype
Native.SUBANIM_TYPE_FIFTH = nil

---@type subanimtype
Native.SUBANIM_TYPE_ONE = nil

---@type subanimtype
Native.SUBANIM_TYPE_TWO = nil

---@type subanimtype
Native.SUBANIM_TYPE_THREE = nil

---@type subanimtype
Native.SUBANIM_TYPE_FOUR = nil

---@type subanimtype
Native.SUBANIM_TYPE_FIVE = nil

---@type subanimtype
Native.SUBANIM_TYPE_SMALL = nil

---@type subanimtype
Native.SUBANIM_TYPE_MEDIUM = nil

---@type subanimtype
Native.SUBANIM_TYPE_LARGE = nil

---@type subanimtype
Native.SUBANIM_TYPE_UPGRADE = nil

---@type subanimtype
Native.SUBANIM_TYPE_DRAIN = nil

---@type subanimtype
Native.SUBANIM_TYPE_FILL = nil

---@type subanimtype
Native.SUBANIM_TYPE_CHAINLIGHTNING = nil

---@type subanimtype
Native.SUBANIM_TYPE_EATTREE = nil

---@type subanimtype
Native.SUBANIM_TYPE_PUKE = nil

---@type subanimtype
Native.SUBANIM_TYPE_FLAIL = nil

---@type subanimtype
Native.SUBANIM_TYPE_OFF = nil

---@type subanimtype
Native.SUBANIM_TYPE_SWIM = nil

---@type subanimtype
Native.SUBANIM_TYPE_ENTANGLE = nil

---@type subanimtype
Native.SUBANIM_TYPE_BERSERK = nil

---@type racepreference
Native.RACE_PREF_HUMAN = nil

---@type racepreference
Native.RACE_PREF_ORC = nil

---@type racepreference
Native.RACE_PREF_NIGHTELF = nil

---@type racepreference
Native.RACE_PREF_UNDEAD = nil

---@type racepreference
Native.RACE_PREF_DEMON = nil

---@type racepreference
Native.RACE_PREF_RANDOM = nil

---@type racepreference
Native.RACE_PREF_USER_SELECTABLE = nil

---@type mapcontrol
Native.MAP_CONTROL_USER = nil

---@type mapcontrol
Native.MAP_CONTROL_COMPUTER = nil

---@type mapcontrol
Native.MAP_CONTROL_RESCUABLE = nil

---@type mapcontrol
Native.MAP_CONTROL_NEUTRAL = nil

---@type mapcontrol
Native.MAP_CONTROL_CREEP = nil

---@type mapcontrol
Native.MAP_CONTROL_NONE = nil

---@type gametype
Native.GAME_TYPE_MELEE = nil

---@type gametype
Native.GAME_TYPE_FFA = nil

---@type gametype
Native.GAME_TYPE_USE_MAP_SETTINGS = nil

---@type gametype
Native.GAME_TYPE_BLIZ = nil

---@type gametype
Native.GAME_TYPE_ONE_ON_ONE = nil

---@type gametype
Native.GAME_TYPE_TWO_TEAM_PLAY = nil

---@type gametype
Native.GAME_TYPE_THREE_TEAM_PLAY = nil

---@type gametype
Native.GAME_TYPE_FOUR_TEAM_PLAY = nil

---@type mapflag
Native.MAP_FOG_HIDE_TERRAIN = nil

---@type mapflag
Native.MAP_FOG_MAP_EXPLORED = nil

---@type mapflag
Native.MAP_FOG_ALWAYS_VISIBLE = nil

---@type mapflag
Native.MAP_USE_HANDICAPS = nil

---@type mapflag
Native.MAP_OBSERVERS = nil

---@type mapflag
Native.MAP_OBSERVERS_ON_DEATH = nil

---@type mapflag
Native.MAP_FIXED_COLORS = nil

---@type mapflag
Native.MAP_LOCK_RESOURCE_TRADING = nil

---@type mapflag
Native.MAP_RESOURCE_TRADING_ALLIES_ONLY = nil

---@type mapflag
Native.MAP_LOCK_ALLIANCE_CHANGES = nil

---@type mapflag
Native.MAP_ALLIANCE_CHANGES_HIDDEN = nil

---@type mapflag
Native.MAP_CHEATS = nil

---@type mapflag
Native.MAP_CHEATS_HIDDEN = nil

---@type mapflag
Native.MAP_LOCK_SPEED = nil

---@type mapflag
Native.MAP_LOCK_RANDOM_SEED = nil

---@type mapflag
Native.MAP_SHARED_ADVANCED_CONTROL = nil

---@type mapflag
Native.MAP_RANDOM_HERO = nil

---@type mapflag
Native.MAP_RANDOM_RACES = nil

---@type mapflag
Native.MAP_RELOADED = nil

---@type placement
Native.MAP_PLACEMENT_RANDOM = nil

---@type placement
Native.MAP_PLACEMENT_FIXED = nil

---@type placement
Native.MAP_PLACEMENT_USE_MAP_SETTINGS = nil

---@type placement
Native.MAP_PLACEMENT_TEAMS_TOGETHER = nil

---@type startlocprio
Native.MAP_LOC_PRIO_LOW = nil

---@type startlocprio
Native.MAP_LOC_PRIO_HIGH = nil

---@type startlocprio
Native.MAP_LOC_PRIO_NOT = nil

---@type mapdensity
Native.MAP_DENSITY_NONE = nil

---@type mapdensity
Native.MAP_DENSITY_LIGHT = nil

---@type mapdensity
Native.MAP_DENSITY_MEDIUM = nil

---@type mapdensity
Native.MAP_DENSITY_HEAVY = nil

---@type gamedifficulty
Native.MAP_DIFFICULTY_EASY = nil

---@type gamedifficulty
Native.MAP_DIFFICULTY_NORMAL = nil

---@type gamedifficulty
Native.MAP_DIFFICULTY_HARD = nil

---@type gamedifficulty
Native.MAP_DIFFICULTY_INSANE = nil

---@type gamespeed
Native.MAP_SPEED_SLOWEST = nil

---@type gamespeed
Native.MAP_SPEED_SLOW = nil

---@type gamespeed
Native.MAP_SPEED_NORMAL = nil

---@type gamespeed
Native.MAP_SPEED_FAST = nil

---@type gamespeed
Native.MAP_SPEED_FASTEST = nil

---@type playerslotstate
Native.PLAYER_SLOT_STATE_EMPTY = nil

---@type playerslotstate
Native.PLAYER_SLOT_STATE_PLAYING = nil

---@type playerslotstate
Native.PLAYER_SLOT_STATE_LEFT = nil

---@type volumegroup
Native.SOUND_VOLUMEGROUP_UNITMOVEMENT = nil

---@type volumegroup
Native.SOUND_VOLUMEGROUP_UNITSOUNDS = nil

---@type volumegroup
Native.SOUND_VOLUMEGROUP_COMBAT = nil

---@type volumegroup
Native.SOUND_VOLUMEGROUP_SPELLS = nil

---@type volumegroup
Native.SOUND_VOLUMEGROUP_UI = nil

---@type volumegroup
Native.SOUND_VOLUMEGROUP_MUSIC = nil

---@type volumegroup
Native.SOUND_VOLUMEGROUP_AMBIENTSOUNDS = nil

---@type volumegroup
Native.SOUND_VOLUMEGROUP_FIRE = nil

---@type igamestate
Native.GAME_STATE_DIVINE_INTERVENTION = nil

---@type igamestate
Native.GAME_STATE_DISCONNECTED = nil

---@type fgamestate
Native.GAME_STATE_TIME_OF_DAY = nil

---@type playerstate
Native.PLAYER_STATE_GAME_RESULT = nil

---@type playerstate
Native.PLAYER_STATE_RESOURCE_GOLD = nil

---@type playerstate
Native.PLAYER_STATE_RESOURCE_LUMBER = nil

---@type playerstate
Native.PLAYER_STATE_RESOURCE_HERO_TOKENS = nil

---@type playerstate
Native.PLAYER_STATE_RESOURCE_FOOD_CAP = nil

---@type playerstate
Native.PLAYER_STATE_RESOURCE_FOOD_USED = nil

---@type playerstate
Native.PLAYER_STATE_FOOD_CAP_CEILING = nil

---@type playerstate
Native.PLAYER_STATE_GIVES_BOUNTY = nil

---@type playerstate
Native.PLAYER_STATE_ALLIED_VICTORY = nil

---@type playerstate
Native.PLAYER_STATE_PLACED = nil

---@type playerstate
Native.PLAYER_STATE_OBSERVER_ON_DEATH = nil

---@type playerstate
Native.PLAYER_STATE_OBSERVER = nil

---@type playerstate
Native.PLAYER_STATE_UNFOLLOWABLE = nil

---@type playerstate
Native.PLAYER_STATE_GOLD_UPKEEP_RATE = nil

---@type playerstate
Native.PLAYER_STATE_LUMBER_UPKEEP_RATE = nil

---@type playerstate
Native.PLAYER_STATE_GOLD_GATHERED = nil

---@type playerstate
Native.PLAYER_STATE_LUMBER_GATHERED = nil

---@type playerstate
Native.PLAYER_STATE_NO_CREEP_SLEEP = nil

---@type unitstate
Native.UNIT_STATE_LIFE = nil

---@type unitstate
Native.UNIT_STATE_MAX_LIFE = nil

---@type unitstate
Native.UNIT_STATE_MANA = nil

---@type unitstate
Native.UNIT_STATE_MAX_MANA = nil

---@type aidifficulty
Native.AI_DIFFICULTY_NEWBIE = nil

---@type aidifficulty
Native.AI_DIFFICULTY_NORMAL = nil

---@type aidifficulty
Native.AI_DIFFICULTY_INSANE = nil

---@type playerscore
Native.PLAYER_SCORE_UNITS_TRAINED = nil

---@type playerscore
Native.PLAYER_SCORE_UNITS_KILLED = nil

---@type playerscore
Native.PLAYER_SCORE_STRUCT_BUILT = nil

---@type playerscore
Native.PLAYER_SCORE_STRUCT_RAZED = nil

---@type playerscore
Native.PLAYER_SCORE_TECH_PERCENT = nil

---@type playerscore
Native.PLAYER_SCORE_FOOD_MAXPROD = nil

---@type playerscore
Native.PLAYER_SCORE_FOOD_MAXUSED = nil

---@type playerscore
Native.PLAYER_SCORE_HEROES_KILLED = nil

---@type playerscore
Native.PLAYER_SCORE_ITEMS_GAINED = nil

---@type playerscore
Native.PLAYER_SCORE_MERCS_HIRED = nil

---@type playerscore
Native.PLAYER_SCORE_GOLD_MINED_TOTAL = nil

---@type playerscore
Native.PLAYER_SCORE_GOLD_MINED_UPKEEP = nil

---@type playerscore
Native.PLAYER_SCORE_GOLD_LOST_UPKEEP = nil

---@type playerscore
Native.PLAYER_SCORE_GOLD_LOST_TAX = nil

---@type playerscore
Native.PLAYER_SCORE_GOLD_GIVEN = nil

---@type playerscore
Native.PLAYER_SCORE_GOLD_RECEIVED = nil

---@type playerscore
Native.PLAYER_SCORE_LUMBER_TOTAL = nil

---@type playerscore
Native.PLAYER_SCORE_LUMBER_LOST_UPKEEP = nil

---@type playerscore
Native.PLAYER_SCORE_LUMBER_LOST_TAX = nil

---@type playerscore
Native.PLAYER_SCORE_LUMBER_GIVEN = nil

---@type playerscore
Native.PLAYER_SCORE_LUMBER_RECEIVED = nil

---@type playerscore
Native.PLAYER_SCORE_UNIT_TOTAL = nil

---@type playerscore
Native.PLAYER_SCORE_HERO_TOTAL = nil

---@type playerscore
Native.PLAYER_SCORE_RESOURCE_TOTAL = nil

---@type playerscore
Native.PLAYER_SCORE_TOTAL = nil

---@type gameevent
Native.EVENT_GAME_VICTORY = nil

---@type gameevent
Native.EVENT_GAME_END_LEVEL = nil

---@type gameevent
Native.EVENT_GAME_VARIABLE_LIMIT = nil

---@type gameevent
Native.EVENT_GAME_STATE_LIMIT = nil

---@type gameevent
Native.EVENT_GAME_TIMER_EXPIRED = nil

---@type gameevent
Native.EVENT_GAME_ENTER_REGION = nil

---@type gameevent
Native.EVENT_GAME_LEAVE_REGION = nil

---@type gameevent
Native.EVENT_GAME_TRACKABLE_HIT = nil

---@type gameevent
Native.EVENT_GAME_TRACKABLE_TRACK = nil

---@type gameevent
Native.EVENT_GAME_SHOW_SKILL = nil

---@type gameevent
Native.EVENT_GAME_BUILD_SUBMENU = nil

---@type playerevent
Native.EVENT_PLAYER_STATE_LIMIT = nil

---@type playerevent
Native.EVENT_PLAYER_ALLIANCE_CHANGED = nil

---@type playerevent
Native.EVENT_PLAYER_DEFEAT = nil

---@type playerevent
Native.EVENT_PLAYER_VICTORY = nil

---@type playerevent
Native.EVENT_PLAYER_LEAVE = nil

---@type playerevent
Native.EVENT_PLAYER_CHAT = nil

---@type playerevent
Native.EVENT_PLAYER_END_CINEMATIC = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_ATTACKED = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_RESCUED = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_DEATH = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_DECAY = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_DETECTED = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_HIDDEN = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_SELECTED = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_DESELECTED = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_CONSTRUCT_START = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_CONSTRUCT_FINISH = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_UPGRADE_START = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_UPGRADE_CANCEL = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_UPGRADE_FINISH = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_TRAIN_START = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_TRAIN_CANCEL = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_TRAIN_FINISH = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_RESEARCH_START = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_RESEARCH_CANCEL = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_RESEARCH_FINISH = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_ISSUED_ORDER = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER = nil

---@type playerunitevent
Native.EVENT_PLAYER_HERO_LEVEL = nil

---@type playerunitevent
Native.EVENT_PLAYER_HERO_SKILL = nil

---@type playerunitevent
Native.EVENT_PLAYER_HERO_REVIVABLE = nil

---@type playerunitevent
Native.EVENT_PLAYER_HERO_REVIVE_START = nil

---@type playerunitevent
Native.EVENT_PLAYER_HERO_REVIVE_CANCEL = nil

---@type playerunitevent
Native.EVENT_PLAYER_HERO_REVIVE_FINISH = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_SUMMON = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_DROP_ITEM = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_PICKUP_ITEM = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_USE_ITEM = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_LOADED = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_DAMAGED = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_DAMAGING = nil

---@type unitevent
Native.EVENT_UNIT_DAMAGED = nil

---@type unitevent
Native.EVENT_UNIT_DAMAGING = nil

---@type unitevent
Native.EVENT_UNIT_DEATH = nil

---@type unitevent
Native.EVENT_UNIT_DECAY = nil

---@type unitevent
Native.EVENT_UNIT_DETECTED = nil

---@type unitevent
Native.EVENT_UNIT_HIDDEN = nil

---@type unitevent
Native.EVENT_UNIT_SELECTED = nil

---@type unitevent
Native.EVENT_UNIT_DESELECTED = nil

---@type unitevent
Native.EVENT_UNIT_STATE_LIMIT = nil

---@type unitevent
Native.EVENT_UNIT_ACQUIRED_TARGET = nil

---@type unitevent
Native.EVENT_UNIT_TARGET_IN_RANGE = nil

---@type unitevent
Native.EVENT_UNIT_ATTACKED = nil

---@type unitevent
Native.EVENT_UNIT_RESCUED = nil

---@type unitevent
Native.EVENT_UNIT_CONSTRUCT_CANCEL = nil

---@type unitevent
Native.EVENT_UNIT_CONSTRUCT_FINISH = nil

---@type unitevent
Native.EVENT_UNIT_UPGRADE_START = nil

---@type unitevent
Native.EVENT_UNIT_UPGRADE_CANCEL = nil

---@type unitevent
Native.EVENT_UNIT_UPGRADE_FINISH = nil

---@type unitevent
Native.EVENT_UNIT_TRAIN_START = nil

---@type unitevent
Native.EVENT_UNIT_TRAIN_CANCEL = nil

---@type unitevent
Native.EVENT_UNIT_TRAIN_FINISH = nil

---@type unitevent
Native.EVENT_UNIT_RESEARCH_START = nil

---@type unitevent
Native.EVENT_UNIT_RESEARCH_CANCEL = nil

---@type unitevent
Native.EVENT_UNIT_RESEARCH_FINISH = nil

---@type unitevent
Native.EVENT_UNIT_ISSUED_ORDER = nil

---@type unitevent
Native.EVENT_UNIT_ISSUED_POINT_ORDER = nil

---@type unitevent
Native.EVENT_UNIT_ISSUED_TARGET_ORDER = nil

---@type unitevent
Native.EVENT_UNIT_HERO_LEVEL = nil

---@type unitevent
Native.EVENT_UNIT_HERO_SKILL = nil

---@type unitevent
Native.EVENT_UNIT_HERO_REVIVABLE = nil

---@type unitevent
Native.EVENT_UNIT_HERO_REVIVE_START = nil

---@type unitevent
Native.EVENT_UNIT_HERO_REVIVE_CANCEL = nil

---@type unitevent
Native.EVENT_UNIT_HERO_REVIVE_FINISH = nil

---@type unitevent
Native.EVENT_UNIT_SUMMON = nil

---@type unitevent
Native.EVENT_UNIT_DROP_ITEM = nil

---@type unitevent
Native.EVENT_UNIT_PICKUP_ITEM = nil

---@type unitevent
Native.EVENT_UNIT_USE_ITEM = nil

---@type unitevent
Native.EVENT_UNIT_LOADED = nil

---@type widgetevent
Native.EVENT_WIDGET_DEATH = nil

---@type dialogevent
Native.EVENT_DIALOG_BUTTON_CLICK = nil

---@type dialogevent
Native.EVENT_DIALOG_CLICK = nil

---@type gameevent
Native.EVENT_GAME_LOADED = nil

---@type gameevent
Native.EVENT_GAME_TOURNAMENT_FINISH_SOON = nil

---@type gameevent
Native.EVENT_GAME_TOURNAMENT_FINISH_NOW = nil

---@type gameevent
Native.EVENT_GAME_SAVE = nil

---@type gameevent
Native.EVENT_GAME_CUSTOM_UI_FRAME = nil

---@type playerevent
Native.EVENT_PLAYER_ARROW_LEFT_DOWN = nil

---@type playerevent
Native.EVENT_PLAYER_ARROW_LEFT_UP = nil

---@type playerevent
Native.EVENT_PLAYER_ARROW_RIGHT_DOWN = nil

---@type playerevent
Native.EVENT_PLAYER_ARROW_RIGHT_UP = nil

---@type playerevent
Native.EVENT_PLAYER_ARROW_DOWN_DOWN = nil

---@type playerevent
Native.EVENT_PLAYER_ARROW_DOWN_UP = nil

---@type playerevent
Native.EVENT_PLAYER_ARROW_UP_DOWN = nil

---@type playerevent
Native.EVENT_PLAYER_ARROW_UP_UP = nil

---@type playerevent
Native.EVENT_PLAYER_MOUSE_DOWN = nil

---@type playerevent
Native.EVENT_PLAYER_MOUSE_UP = nil

---@type playerevent
Native.EVENT_PLAYER_MOUSE_MOVE = nil

---@type playerevent
Native.EVENT_PLAYER_SYNC_DATA = nil

---@type playerevent
Native.EVENT_PLAYER_KEY = nil

---@type playerevent
Native.EVENT_PLAYER_KEY_DOWN = nil

---@type playerevent
Native.EVENT_PLAYER_KEY_UP = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_SELL = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_CHANGE_OWNER = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_SELL_ITEM = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_SPELL_CHANNEL = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_SPELL_CAST = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_SPELL_EFFECT = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_SPELL_FINISH = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_SPELL_ENDCAST = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_PAWN_ITEM = nil

---@type playerunitevent
Native.EVENT_PLAYER_UNIT_STACK_ITEM = nil

---@type unitevent
Native.EVENT_UNIT_SELL = nil

---@type unitevent
Native.EVENT_UNIT_CHANGE_OWNER = nil

---@type unitevent
Native.EVENT_UNIT_SELL_ITEM = nil

---@type unitevent
Native.EVENT_UNIT_SPELL_CHANNEL = nil

---@type unitevent
Native.EVENT_UNIT_SPELL_CAST = nil

---@type unitevent
Native.EVENT_UNIT_SPELL_EFFECT = nil

---@type unitevent
Native.EVENT_UNIT_SPELL_FINISH = nil

---@type unitevent
Native.EVENT_UNIT_SPELL_ENDCAST = nil

---@type unitevent
Native.EVENT_UNIT_PAWN_ITEM = nil

---@type unitevent
Native.EVENT_UNIT_STACK_ITEM = nil

---@type limitop
Native.LESS_THAN = nil

---@type limitop
Native.LESS_THAN_OR_EQUAL = nil

---@type limitop
Native.EQUAL = nil

---@type limitop
Native.GREATER_THAN_OR_EQUAL = nil

---@type limitop
Native.GREATER_THAN = nil

---@type limitop
Native.NOT_EQUAL = nil

---@type unittype
Native.UNIT_TYPE_HERO = nil

---@type unittype
Native.UNIT_TYPE_DEAD = nil

---@type unittype
Native.UNIT_TYPE_STRUCTURE = nil

---@type unittype
Native.UNIT_TYPE_FLYING = nil

---@type unittype
Native.UNIT_TYPE_GROUND = nil

---@type unittype
Native.UNIT_TYPE_ATTACKS_FLYING = nil

---@type unittype
Native.UNIT_TYPE_ATTACKS_GROUND = nil

---@type unittype
Native.UNIT_TYPE_MELEE_ATTACKER = nil

---@type unittype
Native.UNIT_TYPE_RANGED_ATTACKER = nil

---@type unittype
Native.UNIT_TYPE_GIANT = nil

---@type unittype
Native.UNIT_TYPE_SUMMONED = nil

---@type unittype
Native.UNIT_TYPE_STUNNED = nil

---@type unittype
Native.UNIT_TYPE_PLAGUED = nil

---@type unittype
Native.UNIT_TYPE_SNARED = nil

---@type unittype
Native.UNIT_TYPE_UNDEAD = nil

---@type unittype
Native.UNIT_TYPE_MECHANICAL = nil

---@type unittype
Native.UNIT_TYPE_PEON = nil

---@type unittype
Native.UNIT_TYPE_SAPPER = nil

---@type unittype
Native.UNIT_TYPE_TOWNHALL = nil

---@type unittype
Native.UNIT_TYPE_ANCIENT = nil

---@type unittype
Native.UNIT_TYPE_TAUREN = nil

---@type unittype
Native.UNIT_TYPE_POISONED = nil

---@type unittype
Native.UNIT_TYPE_POLYMORPHED = nil

---@type unittype
Native.UNIT_TYPE_SLEEPING = nil

---@type unittype
Native.UNIT_TYPE_RESISTANT = nil

---@type unittype
Native.UNIT_TYPE_ETHEREAL = nil

---@type unittype
Native.UNIT_TYPE_MAGIC_IMMUNE = nil

---@type itemtype
Native.ITEM_TYPE_PERMANENT = nil

---@type itemtype
Native.ITEM_TYPE_CHARGED = nil

---@type itemtype
Native.ITEM_TYPE_POWERUP = nil

---@type itemtype
Native.ITEM_TYPE_ARTIFACT = nil

---@type itemtype
Native.ITEM_TYPE_PURCHASABLE = nil

---@type itemtype
Native.ITEM_TYPE_CAMPAIGN = nil

---@type itemtype
Native.ITEM_TYPE_MISCELLANEOUS = nil

---@type itemtype
Native.ITEM_TYPE_UNKNOWN = nil

---@type itemtype
Native.ITEM_TYPE_ANY = nil

---@type itemtype
Native.ITEM_TYPE_TOME = nil

---@type camerafield
Native.CAMERA_FIELD_TARGET_DISTANCE = nil

---@type camerafield
Native.CAMERA_FIELD_FARZ = nil

---@type camerafield
Native.CAMERA_FIELD_ANGLE_OF_ATTACK = nil

---@type camerafield
Native.CAMERA_FIELD_FIELD_OF_VIEW = nil

---@type camerafield
Native.CAMERA_FIELD_ROLL = nil

---@type camerafield
Native.CAMERA_FIELD_ROTATION = nil

---@type camerafield
Native.CAMERA_FIELD_ZOFFSET = nil

---@type camerafield
Native.CAMERA_FIELD_NEARZ = nil

---@type camerafield
Native.CAMERA_FIELD_LOCAL_PITCH = nil

---@type camerafield
Native.CAMERA_FIELD_LOCAL_YAW = nil

---@type camerafield
Native.CAMERA_FIELD_LOCAL_ROLL = nil

---@type blendmode
Native.BLEND_MODE_NONE = nil

---@type blendmode
Native.BLEND_MODE_DONT_CARE = nil

---@type blendmode
Native.BLEND_MODE_KEYALPHA = nil

---@type blendmode
Native.BLEND_MODE_BLEND = nil

---@type blendmode
Native.BLEND_MODE_ADDITIVE = nil

---@type blendmode
Native.BLEND_MODE_MODULATE = nil

---@type blendmode
Native.BLEND_MODE_MODULATE_2X = nil

---@type raritycontrol
Native.RARITY_FREQUENT = nil

---@type raritycontrol
Native.RARITY_RARE = nil

---@type texmapflags
Native.TEXMAP_FLAG_NONE = nil

---@type texmapflags
Native.TEXMAP_FLAG_WRAP_U = nil

---@type texmapflags
Native.TEXMAP_FLAG_WRAP_V = nil

---@type texmapflags
Native.TEXMAP_FLAG_WRAP_UV = nil

---@type fogstate
Native.FOG_OF_WAR_MASKED = nil

---@type fogstate
Native.FOG_OF_WAR_FOGGED = nil

---@type fogstate
Native.FOG_OF_WAR_VISIBLE = nil

---@type integer
Native.CAMERA_MARGIN_LEFT = nil

---@type integer
Native.CAMERA_MARGIN_RIGHT = nil

---@type integer
Native.CAMERA_MARGIN_TOP = nil

---@type integer
Native.CAMERA_MARGIN_BOTTOM = nil

---@type effecttype
Native.EFFECT_TYPE_EFFECT = nil

---@type effecttype
Native.EFFECT_TYPE_TARGET = nil

---@type effecttype
Native.EFFECT_TYPE_CASTER = nil

---@type effecttype
Native.EFFECT_TYPE_SPECIAL = nil

---@type effecttype
Native.EFFECT_TYPE_AREA_EFFECT = nil

---@type effecttype
Native.EFFECT_TYPE_MISSILE = nil

---@type effecttype
Native.EFFECT_TYPE_LIGHTNING = nil

---@type soundtype
Native.SOUND_TYPE_EFFECT = nil

---@type soundtype
Native.SOUND_TYPE_EFFECT_LOOPED = nil

---@type originframetype
Native.ORIGIN_FRAME_GAME_UI = nil

---@type originframetype
Native.ORIGIN_FRAME_COMMAND_BUTTON = nil

---@type originframetype
Native.ORIGIN_FRAME_HERO_BAR = nil

---@type originframetype
Native.ORIGIN_FRAME_HERO_BUTTON = nil

---@type originframetype
Native.ORIGIN_FRAME_HERO_HP_BAR = nil

---@type originframetype
Native.ORIGIN_FRAME_HERO_MANA_BAR = nil

---@type originframetype
Native.ORIGIN_FRAME_HERO_BUTTON_INDICATOR = nil

---@type originframetype
Native.ORIGIN_FRAME_ITEM_BUTTON = nil

---@type originframetype
Native.ORIGIN_FRAME_MINIMAP = nil

---@type originframetype
Native.ORIGIN_FRAME_MINIMAP_BUTTON = nil

---@type originframetype
Native.ORIGIN_FRAME_SYSTEM_BUTTON = nil

---@type originframetype
Native.ORIGIN_FRAME_TOOLTIP = nil

---@type originframetype
Native.ORIGIN_FRAME_UBERTOOLTIP = nil

---@type originframetype
Native.ORIGIN_FRAME_CHAT_MSG = nil

---@type originframetype
Native.ORIGIN_FRAME_UNIT_MSG = nil

---@type originframetype
Native.ORIGIN_FRAME_TOP_MSG = nil

---@type originframetype
Native.ORIGIN_FRAME_PORTRAIT = nil

---@type originframetype
Native.ORIGIN_FRAME_WORLD_FRAME = nil

---@type originframetype
Native.ORIGIN_FRAME_SIMPLE_UI_PARENT = nil

---@type originframetype
Native.ORIGIN_FRAME_PORTRAIT_HP_TEXT = nil

---@type originframetype
Native.ORIGIN_FRAME_PORTRAIT_MANA_TEXT = nil

---@type originframetype
Native.ORIGIN_FRAME_UNIT_PANEL_BUFF_BAR = nil

---@type originframetype
Native.ORIGIN_FRAME_UNIT_PANEL_BUFF_BAR_LABEL = nil

---@type framepointtype
Native.FRAMEPOINT_TOPLEFT = nil

---@type framepointtype
Native.FRAMEPOINT_TOP = nil

---@type framepointtype
Native.FRAMEPOINT_TOPRIGHT = nil

---@type framepointtype
Native.FRAMEPOINT_LEFT = nil

---@type framepointtype
Native.FRAMEPOINT_CENTER = nil

---@type framepointtype
Native.FRAMEPOINT_RIGHT = nil

---@type framepointtype
Native.FRAMEPOINT_BOTTOMLEFT = nil

---@type framepointtype
Native.FRAMEPOINT_BOTTOM = nil

---@type framepointtype
Native.FRAMEPOINT_BOTTOMRIGHT = nil

---@type textaligntype
Native.TEXT_JUSTIFY_TOP = nil

---@type textaligntype
Native.TEXT_JUSTIFY_MIDDLE = nil

---@type textaligntype
Native.TEXT_JUSTIFY_BOTTOM = nil

---@type textaligntype
Native.TEXT_JUSTIFY_LEFT = nil

---@type textaligntype
Native.TEXT_JUSTIFY_CENTER = nil

---@type textaligntype
Native.TEXT_JUSTIFY_RIGHT = nil

---@type frameeventtype
Native.FRAMEEVENT_CONTROL_CLICK = nil

---@type frameeventtype
Native.FRAMEEVENT_MOUSE_ENTER = nil

---@type frameeventtype
Native.FRAMEEVENT_MOUSE_LEAVE = nil

---@type frameeventtype
Native.FRAMEEVENT_MOUSE_UP = nil

---@type frameeventtype
Native.FRAMEEVENT_MOUSE_DOWN = nil

---@type frameeventtype
Native.FRAMEEVENT_MOUSE_WHEEL = nil

---@type frameeventtype
Native.FRAMEEVENT_CHECKBOX_CHECKED = nil

---@type frameeventtype
Native.FRAMEEVENT_CHECKBOX_UNCHECKED = nil

---@type frameeventtype
Native.FRAMEEVENT_EDITBOX_TEXT_CHANGED = nil

---@type frameeventtype
Native.FRAMEEVENT_POPUPMENU_ITEM_CHANGED = nil

---@type frameeventtype
Native.FRAMEEVENT_MOUSE_DOUBLECLICK = nil

---@type frameeventtype
Native.FRAMEEVENT_SPRITE_ANIM_UPDATE = nil

---@type frameeventtype
Native.FRAMEEVENT_SLIDER_VALUE_CHANGED = nil

---@type frameeventtype
Native.FRAMEEVENT_DIALOG_CANCEL = nil

---@type frameeventtype
Native.FRAMEEVENT_DIALOG_ACCEPT = nil

---@type frameeventtype
Native.FRAMEEVENT_EDITBOX_ENTER = nil

---@type oskeytype
Native.OSKEY_BACKSPACE = nil

---@type oskeytype
Native.OSKEY_TAB = nil

---@type oskeytype
Native.OSKEY_CLEAR = nil

---@type oskeytype
Native.OSKEY_RETURN = nil

---@type oskeytype
Native.OSKEY_SHIFT = nil

---@type oskeytype
Native.OSKEY_CONTROL = nil

---@type oskeytype
Native.OSKEY_ALT = nil

---@type oskeytype
Native.OSKEY_PAUSE = nil

---@type oskeytype
Native.OSKEY_CAPSLOCK = nil

---@type oskeytype
Native.OSKEY_KANA = nil

---@type oskeytype
Native.OSKEY_HANGUL = nil

---@type oskeytype
Native.OSKEY_JUNJA = nil

---@type oskeytype
Native.OSKEY_FINAL = nil

---@type oskeytype
Native.OSKEY_HANJA = nil

---@type oskeytype
Native.OSKEY_KANJI = nil

---@type oskeytype
Native.OSKEY_ESCAPE = nil

---@type oskeytype
Native.OSKEY_CONVERT = nil

---@type oskeytype
Native.OSKEY_NONCONVERT = nil

---@type oskeytype
Native.OSKEY_ACCEPT = nil

---@type oskeytype
Native.OSKEY_MODECHANGE = nil

---@type oskeytype
Native.OSKEY_SPACE = nil

---@type oskeytype
Native.OSKEY_PAGEUP = nil

---@type oskeytype
Native.OSKEY_PAGEDOWN = nil

---@type oskeytype
Native.OSKEY_END = nil

---@type oskeytype
Native.OSKEY_HOME = nil

---@type oskeytype
Native.OSKEY_LEFT = nil

---@type oskeytype
Native.OSKEY_UP = nil

---@type oskeytype
Native.OSKEY_RIGHT = nil

---@type oskeytype
Native.OSKEY_DOWN = nil

---@type oskeytype
Native.OSKEY_SELECT = nil

---@type oskeytype
Native.OSKEY_PRINT = nil

---@type oskeytype
Native.OSKEY_EXECUTE = nil

---@type oskeytype
Native.OSKEY_PRINTSCREEN = nil

---@type oskeytype
Native.OSKEY_INSERT = nil

---@type oskeytype
Native.OSKEY_DELETE = nil

---@type oskeytype
Native.OSKEY_HELP = nil

---@type oskeytype
Native.OSKEY_0 = nil

---@type oskeytype
Native.OSKEY_1 = nil

---@type oskeytype
Native.OSKEY_2 = nil

---@type oskeytype
Native.OSKEY_3 = nil

---@type oskeytype
Native.OSKEY_4 = nil

---@type oskeytype
Native.OSKEY_5 = nil

---@type oskeytype
Native.OSKEY_6 = nil

---@type oskeytype
Native.OSKEY_7 = nil

---@type oskeytype
Native.OSKEY_8 = nil

---@type oskeytype
Native.OSKEY_9 = nil

---@type oskeytype
Native.OSKEY_A = nil

---@type oskeytype
Native.OSKEY_B = nil

---@type oskeytype
Native.OSKEY_C = nil

---@type oskeytype
Native.OSKEY_D = nil

---@type oskeytype
Native.OSKEY_E = nil

---@type oskeytype
Native.OSKEY_F = nil

---@type oskeytype
Native.OSKEY_G = nil

---@type oskeytype
Native.OSKEY_H = nil

---@type oskeytype
Native.OSKEY_I = nil

---@type oskeytype
Native.OSKEY_J = nil

---@type oskeytype
Native.OSKEY_K = nil

---@type oskeytype
Native.OSKEY_L = nil

---@type oskeytype
Native.OSKEY_M = nil

---@type oskeytype
Native.OSKEY_N = nil

---@type oskeytype
Native.OSKEY_O = nil

---@type oskeytype
Native.OSKEY_P = nil

---@type oskeytype
Native.OSKEY_Q = nil

---@type oskeytype
Native.OSKEY_R = nil

---@type oskeytype
Native.OSKEY_S = nil

---@type oskeytype
Native.OSKEY_T = nil

---@type oskeytype
Native.OSKEY_U = nil

---@type oskeytype
Native.OSKEY_V = nil

---@type oskeytype
Native.OSKEY_W = nil

---@type oskeytype
Native.OSKEY_X = nil

---@type oskeytype
Native.OSKEY_Y = nil

---@type oskeytype
Native.OSKEY_Z = nil

---@type oskeytype
Native.OSKEY_LMETA = nil

---@type oskeytype
Native.OSKEY_RMETA = nil

---@type oskeytype
Native.OSKEY_APPS = nil

---@type oskeytype
Native.OSKEY_SLEEP = nil

---@type oskeytype
Native.OSKEY_NUMPAD0 = nil

---@type oskeytype
Native.OSKEY_NUMPAD1 = nil

---@type oskeytype
Native.OSKEY_NUMPAD2 = nil

---@type oskeytype
Native.OSKEY_NUMPAD3 = nil

---@type oskeytype
Native.OSKEY_NUMPAD4 = nil

---@type oskeytype
Native.OSKEY_NUMPAD5 = nil

---@type oskeytype
Native.OSKEY_NUMPAD6 = nil

---@type oskeytype
Native.OSKEY_NUMPAD7 = nil

---@type oskeytype
Native.OSKEY_NUMPAD8 = nil

---@type oskeytype
Native.OSKEY_NUMPAD9 = nil

---@type oskeytype
Native.OSKEY_MULTIPLY = nil

---@type oskeytype
Native.OSKEY_ADD = nil

---@type oskeytype
Native.OSKEY_SEPARATOR = nil

---@type oskeytype
Native.OSKEY_SUBTRACT = nil

---@type oskeytype
Native.OSKEY_DECIMAL = nil

---@type oskeytype
Native.OSKEY_DIVIDE = nil

---@type oskeytype
Native.OSKEY_F1 = nil

---@type oskeytype
Native.OSKEY_F2 = nil

---@type oskeytype
Native.OSKEY_F3 = nil

---@type oskeytype
Native.OSKEY_F4 = nil

---@type oskeytype
Native.OSKEY_F5 = nil

---@type oskeytype
Native.OSKEY_F6 = nil

---@type oskeytype
Native.OSKEY_F7 = nil

---@type oskeytype
Native.OSKEY_F8 = nil

---@type oskeytype
Native.OSKEY_F9 = nil

---@type oskeytype
Native.OSKEY_F10 = nil

---@type oskeytype
Native.OSKEY_F11 = nil

---@type oskeytype
Native.OSKEY_F12 = nil

---@type oskeytype
Native.OSKEY_F13 = nil

---@type oskeytype
Native.OSKEY_F14 = nil

---@type oskeytype
Native.OSKEY_F15 = nil

---@type oskeytype
Native.OSKEY_F16 = nil

---@type oskeytype
Native.OSKEY_F17 = nil

---@type oskeytype
Native.OSKEY_F18 = nil

---@type oskeytype
Native.OSKEY_F19 = nil

---@type oskeytype
Native.OSKEY_F20 = nil

---@type oskeytype
Native.OSKEY_F21 = nil

---@type oskeytype
Native.OSKEY_F22 = nil

---@type oskeytype
Native.OSKEY_F23 = nil

---@type oskeytype
Native.OSKEY_F24 = nil

---@type oskeytype
Native.OSKEY_NUMLOCK = nil

---@type oskeytype
Native.OSKEY_SCROLLLOCK = nil

---@type oskeytype
Native.OSKEY_OEM_NEC_EQUAL = nil

---@type oskeytype
Native.OSKEY_OEM_FJ_JISHO = nil

---@type oskeytype
Native.OSKEY_OEM_FJ_MASSHOU = nil

---@type oskeytype
Native.OSKEY_OEM_FJ_TOUROKU = nil

---@type oskeytype
Native.OSKEY_OEM_FJ_LOYA = nil

---@type oskeytype
Native.OSKEY_OEM_FJ_ROYA = nil

---@type oskeytype
Native.OSKEY_LSHIFT = nil

---@type oskeytype
Native.OSKEY_RSHIFT = nil

---@type oskeytype
Native.OSKEY_LCONTROL = nil

---@type oskeytype
Native.OSKEY_RCONTROL = nil

---@type oskeytype
Native.OSKEY_LALT = nil

---@type oskeytype
Native.OSKEY_RALT = nil

---@type oskeytype
Native.OSKEY_BROWSER_BACK = nil

---@type oskeytype
Native.OSKEY_BROWSER_FORWARD = nil

---@type oskeytype
Native.OSKEY_BROWSER_REFRESH = nil

---@type oskeytype
Native.OSKEY_BROWSER_STOP = nil

---@type oskeytype
Native.OSKEY_BROWSER_SEARCH = nil

---@type oskeytype
Native.OSKEY_BROWSER_FAVORITES = nil

---@type oskeytype
Native.OSKEY_BROWSER_HOME = nil

---@type oskeytype
Native.OSKEY_VOLUME_MUTE = nil

---@type oskeytype
Native.OSKEY_VOLUME_DOWN = nil

---@type oskeytype
Native.OSKEY_VOLUME_UP = nil

---@type oskeytype
Native.OSKEY_MEDIA_NEXT_TRACK = nil

---@type oskeytype
Native.OSKEY_MEDIA_PREV_TRACK = nil

---@type oskeytype
Native.OSKEY_MEDIA_STOP = nil

---@type oskeytype
Native.OSKEY_MEDIA_PLAY_PAUSE = nil

---@type oskeytype
Native.OSKEY_LAUNCH_MAIL = nil

---@type oskeytype
Native.OSKEY_LAUNCH_MEDIA_SELECT = nil

---@type oskeytype
Native.OSKEY_LAUNCH_APP1 = nil

---@type oskeytype
Native.OSKEY_LAUNCH_APP2 = nil

---@type oskeytype
Native.OSKEY_OEM_1 = nil

---@type oskeytype
Native.OSKEY_OEM_PLUS = nil

---@type oskeytype
Native.OSKEY_OEM_COMMA = nil

---@type oskeytype
Native.OSKEY_OEM_MINUS = nil

---@type oskeytype
Native.OSKEY_OEM_PERIOD = nil

---@type oskeytype
Native.OSKEY_OEM_2 = nil

---@type oskeytype
Native.OSKEY_OEM_3 = nil

---@type oskeytype
Native.OSKEY_OEM_4 = nil

---@type oskeytype
Native.OSKEY_OEM_5 = nil

---@type oskeytype
Native.OSKEY_OEM_6 = nil

---@type oskeytype
Native.OSKEY_OEM_7 = nil

---@type oskeytype
Native.OSKEY_OEM_8 = nil

---@type oskeytype
Native.OSKEY_OEM_AX = nil

---@type oskeytype
Native.OSKEY_OEM_102 = nil

---@type oskeytype
Native.OSKEY_ICO_HELP = nil

---@type oskeytype
Native.OSKEY_ICO_00 = nil

---@type oskeytype
Native.OSKEY_PROCESSKEY = nil

---@type oskeytype
Native.OSKEY_ICO_CLEAR = nil

---@type oskeytype
Native.OSKEY_PACKET = nil

---@type oskeytype
Native.OSKEY_OEM_RESET = nil

---@type oskeytype
Native.OSKEY_OEM_JUMP = nil

---@type oskeytype
Native.OSKEY_OEM_PA1 = nil

---@type oskeytype
Native.OSKEY_OEM_PA2 = nil

---@type oskeytype
Native.OSKEY_OEM_PA3 = nil

---@type oskeytype
Native.OSKEY_OEM_WSCTRL = nil

---@type oskeytype
Native.OSKEY_OEM_CUSEL = nil

---@type oskeytype
Native.OSKEY_OEM_ATTN = nil

---@type oskeytype
Native.OSKEY_OEM_FINISH = nil

---@type oskeytype
Native.OSKEY_OEM_COPY = nil

---@type oskeytype
Native.OSKEY_OEM_AUTO = nil

---@type oskeytype
Native.OSKEY_OEM_ENLW = nil

---@type oskeytype
Native.OSKEY_OEM_BACKTAB = nil

---@type oskeytype
Native.OSKEY_ATTN = nil

---@type oskeytype
Native.OSKEY_CRSEL = nil

---@type oskeytype
Native.OSKEY_EXSEL = nil

---@type oskeytype
Native.OSKEY_EREOF = nil

---@type oskeytype
Native.OSKEY_PLAY = nil

---@type oskeytype
Native.OSKEY_ZOOM = nil

---@type oskeytype
Native.OSKEY_NONAME = nil

---@type oskeytype
Native.OSKEY_PA1 = nil

---@type oskeytype
Native.OSKEY_OEM_CLEAR = nil

---@type abilityintegerfield
Native.ABILITY_IF_BUTTON_POSITION_NORMAL_X = nil

---@type abilityintegerfield
Native.ABILITY_IF_BUTTON_POSITION_NORMAL_Y = nil

---@type abilityintegerfield
Native.ABILITY_IF_BUTTON_POSITION_ACTIVATED_X = nil

---@type abilityintegerfield
Native.ABILITY_IF_BUTTON_POSITION_ACTIVATED_Y = nil

---@type abilityintegerfield
Native.ABILITY_IF_BUTTON_POSITION_RESEARCH_X = nil

---@type abilityintegerfield
Native.ABILITY_IF_BUTTON_POSITION_RESEARCH_Y = nil

---@type abilityintegerfield
Native.ABILITY_IF_MISSILE_SPEED = nil

---@type abilityintegerfield
Native.ABILITY_IF_TARGET_ATTACHMENTS = nil

---@type abilityintegerfield
Native.ABILITY_IF_CASTER_ATTACHMENTS = nil

---@type abilityintegerfield
Native.ABILITY_IF_PRIORITY = nil

---@type abilityintegerfield
Native.ABILITY_IF_LEVELS = nil

---@type abilityintegerfield
Native.ABILITY_IF_REQUIRED_LEVEL = nil

---@type abilityintegerfield
Native.ABILITY_IF_LEVEL_SKIP_REQUIREMENT = nil

---@type abilitybooleanfield
Native.ABILITY_BF_HERO_ABILITY = nil

---@type abilitybooleanfield
Native.ABILITY_BF_ITEM_ABILITY = nil

---@type abilitybooleanfield
Native.ABILITY_BF_CHECK_DEPENDENCIES = nil

---@type abilityrealfield
Native.ABILITY_RF_ARF_MISSILE_ARC = nil

---@type abilitystringfield
Native.ABILITY_SF_NAME = nil

---@type abilitystringfield
Native.ABILITY_SF_ICON_ACTIVATED = nil

---@type abilitystringfield
Native.ABILITY_SF_ICON_RESEARCH = nil

---@type abilitystringfield
Native.ABILITY_SF_EFFECT_SOUND = nil

---@type abilitystringfield
Native.ABILITY_SF_EFFECT_SOUND_LOOPING = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MANA_COST = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_WAVES = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_SHARDS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_UNITS_TELEPORTED = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SUMMONED_UNIT_COUNT_HWE2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_IMAGES = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_UAN1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MORPHING_FLAGS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_STRENGTH_BONUS_NRG5 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DEFENSE_BONUS_NRG6 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_TARGETS_HIT = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DETECTION_TYPE_OFS1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_OSF2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_EFN1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_HRE1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_STACK_FLAGS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MINIMUM_NUMBER_OF_UNITS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_NDP3 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_UNITS_CREATED_NRC2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SHIELD_LIFE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MANA_LOSS_AMS4 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_GOLD_PER_INTERVAL_BGM1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAX_NUMBER_OF_MINERS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_CARGO_CAPACITY = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_CREEP_LEVEL_DEV3 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAX_CREEP_LEVEL_DEV1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_GOLD_PER_INTERVAL_EGM1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DEFENSE_REDUCTION = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DETECTION_TYPE_FLA1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_FLARE_COUNT = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAX_GOLD = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MINING_CAPACITY = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_NUMBER_OF_CORPSES_GYD1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DAMAGE_TO_TREE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_LUMBER_CAPACITY = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_GOLD_CAPACITY = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DEFENSE_INCREASE_INF2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_INTERACTION_TYPE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_GOLD_COST_NDT1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_LUMBER_COST_NDT2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DETECTION_TYPE_NDT3 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_STACKING_TYPE_POI4 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_STACKING_TYPE_POA5 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_CREEP_LEVEL_PLY1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_CREEP_LEVEL_POS1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MOVEMENT_UPDATE_FREQUENCY_PRG1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ATTACK_UPDATE_FREQUENCY_PRG2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MANA_LOSS_PRG6 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_UNITS_SUMMONED_TYPE_ONE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_UNITS_SUMMONED_TYPE_TWO = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAX_UNITS_SUMMONED = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ALLOW_WHEN_FULL_REJ3 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_UNITS_CHARGED_TO_CASTER = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_UNITS_AFFECTED = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DEFENSE_INCREASE_ROA2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAX_UNITS_ROA7 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ROOTED_WEAPONS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_UPROOTED_WEAPONS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_UPROOTED_DEFENSE_TYPE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ACCUMULATION_STEP = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_OWLS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_STACKING_TYPE_SPO4 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_UNITS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SPIDER_CAPACITY = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_INTERVALS_BEFORE_CHANGING_TREES = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_AGILITY_BONUS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_INTELLIGENCE_BONUS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_STRENGTH_BONUS_ISTR = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ATTACK_BONUS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DEFENSE_BONUS_IDEF = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SUMMON_1_AMOUNT = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SUMMON_2_AMOUNT = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_EXPERIENCE_GAINED = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_HIT_POINTS_GAINED_IHPG = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MANA_POINTS_GAINED_IMPG = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_HIT_POINTS_GAINED_IHP2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MANA_POINTS_GAINED_IMP2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DAMAGE_BONUS_DICE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ARMOR_PENALTY_IARP = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ENABLED_ATTACK_INDEX_IOB5 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_LEVELS_GAINED = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAX_LIFE_GAINED = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAX_MANA_GAINED = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_GOLD_GIVEN = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_LUMBER_GIVEN = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DETECTION_TYPE_IFA1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_CREEP_LEVEL_ICRE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MOVEMENT_SPEED_BONUS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_HIT_POINTS_REGENERATED_PER_SECOND = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SIGHT_RANGE_BONUS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DAMAGE_PER_DURATION = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MANA_USED_PER_SECOND = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_EXTRA_MANA_REQUIRED = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DETECTION_RADIUS_IDET = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MANA_LOSS_PER_UNIT_IDIM = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DAMAGE_TO_SUMMONED_UNITS_IDID = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_IREC = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DELAY_AFTER_DEATH_SECONDS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_RESTORED_LIFE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_RESTORED_MANA__1_FOR_CURRENT = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_HIT_POINTS_RESTORED = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MANA_POINTS_RESTORED = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_ITPM = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_CAD1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_TERRAIN_DEFORMATION_DURATION_MS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_UNITS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DETECTION_TYPE_DET1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_GOLD_COST_PER_STRUCTURE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_LUMBER_COST_PER_USE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DETECTION_TYPE_NSP3 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_SWARM_UNITS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAX_SWARM_UNITS_PER_TARGET = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_NBA2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_CREEP_LEVEL_NCH1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ATTACKS_PREVENTED = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_NUMBER_OF_TARGETS_EFK3 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_ESV1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_NUMBER_OF_CORPSES_EXH1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ITEM_CAPACITY = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_NUMBER_OF_TARGETS_SPL2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ALLOW_WHEN_FULL_IRL3 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_DISPELLED_UNITS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_LURES = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NEW_TIME_OF_DAY_HOUR = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NEW_TIME_OF_DAY_MINUTE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_UNITS_CREATED_MEC1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MINIMUM_SPELLS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_SPELLS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DISABLED_ATTACK_INDEX = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ENABLED_ATTACK_INDEX_GRA4 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAXIMUM_ATTACKS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_BUILDING_TYPES_ALLOWED_NPR1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_BUILDING_TYPES_ALLOWED_NSA1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ATTACK_MODIFICATION = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SUMMONED_UNIT_COUNT_NPA5 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_UPGRADE_LEVELS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_NDO2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_BEASTS_PER_SECOND = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_TARGET_TYPE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_OPTIONS = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ARMOR_PENALTY_NAB3 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_WAVE_COUNT_NHS6 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAX_CREEP_LEVEL_NTM3 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MISSILE_COUNT = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SPLIT_ATTACK_COUNT = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_GENERATION_COUNT = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ROCK_RING_COUNT = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_WAVE_COUNT_NVC2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_PREFER_HOSTILES_TAU1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_PREFER_FRIENDLIES_TAU2 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_MAX_UNITS_TAU3 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NUMBER_OF_PULSES = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SUMMONED_UNIT_TYPE_HWE1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SUMMONED_UNIT_UIN4 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SUMMONED_UNIT_OSF1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SUMMONED_UNIT_TYPE_EFNU = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SUMMONED_UNIT_TYPE_NBAU = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SUMMONED_UNIT_TYPE_NTOU = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SUMMONED_UNIT_TYPE_ESVU = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SUMMONED_UNIT_TYPES = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SUMMONED_UNIT_TYPE_NDOU = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ALTERNATE_FORM_UNIT_EMEU = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_PLAGUE_WARD_UNIT_TYPE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ALLOWED_UNIT_TYPE_BTL1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_NEW_UNIT_TYPE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_RESULTING_UNIT_TYPE_ENT1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_CORPSE_UNIT_TYPE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_ALLOWED_UNIT_TYPE_LOA1 = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_UNIT_TYPE_FOR_LIMIT_CHECK = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_WARD_UNIT_TYPE_STAU = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_EFFECT_ABILITY = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_CONVERSION_UNIT = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_UNIT_TO_PRESERVE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_UNIT_TYPE_ALLOWED = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SWARM_UNIT_TYPE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_RESULTING_UNIT_TYPE_COAU = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_UNIT_TYPE_EXHU = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_WARD_UNIT_TYPE_HWDU = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_LURE_UNIT_TYPE = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_UNIT_TYPE_IPMU = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_FACTORY_UNIT_ID = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_SPAWN_UNIT_ID_NFYU = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_DESTRUCTIBLE_ID = nil

---@type abilityintegerlevelfield
Native.ABILITY_ILF_UPGRADE_TYPE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CASTING_TIME = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DURATION_NORMAL = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DURATION_HERO = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_COOLDOWN = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AREA_OF_EFFECT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CAST_RANGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_HBZ2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BUILDING_REDUCTION_HBZ4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_HBZ5 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAXIMUM_DAMAGE_PER_WAVE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_REGENERATION_INCREASE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CASTING_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_OWW1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_OWW2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_CRITICAL_STRIKE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_MULTIPLIER_OCR2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_BONUS_OCR3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_EVADE_OCR4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_DEALT_PERCENT_OMI2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_TAKEN_PERCENT_OMI3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ANIMATION_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_TRANSITION_TIME = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_OWK2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BACKSTAB_DAMAGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AMOUNT_HEALED_DAMAGED_UDC1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_CONVERTED_TO_MANA = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_CONVERTED_TO_LIFE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_UAU1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_REGENERATION_INCREASE_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_EVADE_EEV1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_INTERVAL = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_DRAINED_PER_SECOND_EIM2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BUFFER_MANA_REQUIRED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAX_MANA_DRAINED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BOLT_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BOLT_LIFETIME = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ALTITUDE_ADJUSTMENT_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LANDING_DELAY_TIME = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ALTERNATE_FORM_HIT_POINT_BONUS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVE_SPEED_BONUS_INFO_PANEL_ONLY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_BONUS_INFO_PANEL_ONLY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_REGENERATION_RATE_PER_SECOND = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_STUN_DURATION_USL1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_DAMAGE_STOLEN_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_UCS1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAX_DAMAGE_UCS2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DISTANCE_UCS3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_FINAL_AREA_UCS4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_UIN1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_IMPACT_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_TARGET_OCL1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_REDUCTION_PER_TARGET = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_EFFECT_DELAY_OEQ1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_TO_BUILDINGS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_UNITS_SLOWED_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_FINAL_AREA_OEQ4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_EER1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_DEALT_TO_ATTACKERS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_HEALED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HEAL_INTERVAL = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BUILDING_REDUCTION_ETQ3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_INITIAL_IMMUNITY_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAX_LIFE_DRAINED_PER_SECOND_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BUILDING_REDUCTION_UDD2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ARMOR_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ARMOR_BONUS_UFA2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AREA_OF_EFFECT_DAMAGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SPECIFIC_TARGET_DAMAGE_UFN2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_BONUS_HFA1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_DEALT_ESF1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_INTERVAL_ESF2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BUILDING_REDUCTION_ESF3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_BONUS_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DEFENSE_BONUS_HAV1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HIT_POINT_BONUS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_BONUS_HAV3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_HAV4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_BASH = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_MULTIPLIER_HBH2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_BONUS_HBH3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_MISS_HBH4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_HTB1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AOE_DAMAGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SPECIFIC_TARGET_DAMAGE_HTC2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_HTC3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_HTC4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ARMOR_BONUS_HAD1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AMOUNT_HEALED_DAMAGED_HHB1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_EXTRA_DAMAGE_HCA1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_HCA2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_FACTOR_HCA3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_OAE1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_INCREASE_PERCENT_OAE2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_REINCARNATION_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_OSH1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAXIMUM_DAMAGE_OSH2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DISTANCE_OSH3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_FINAL_AREA_OSH4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_GRAPHIC_DELAY_NFD1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_GRAPHIC_DURATION_NFD2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_NFD3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SUMMONED_UNIT_DAMAGE_AMS1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_AMS2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AURA_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_APL2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DURATION_OF_PLAGUE_WARD = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AMOUNT_OF_HIT_POINTS_REGENERATED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_DAMAGE_INCREASE_AKB1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_LOSS_ADM1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SUMMONED_UNIT_DAMAGE_ADM2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_EXPANSION_AMOUNT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_INTERVAL_DURATION_BGM2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_RADIUS_OF_MINING_RING = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_INCREASE_PERCENT_BLO1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_BLO2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SCALING_FACTOR = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HIT_POINTS_PER_SECOND_CAN1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAX_HIT_POINTS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_DEV2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_UPDATE_FREQUENCY_CHD1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_UPDATE_FREQUENCY_CHD2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SUMMONED_UNIT_DAMAGE_CHD3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_CRI1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_CRI2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_REDUCTION_CRI3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_MISS_CRS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_FULL_DAMAGE_RADIUS_DDA1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_FULL_DAMAGE_AMOUNT_DDA2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_PARTIAL_DAMAGE_RADIUS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_PARTIAL_DAMAGE_AMOUNT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BUILDING_DAMAGE_FACTOR_SDS1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAX_DAMAGE_UCO5 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVE_SPEED_BONUS_UCO6 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_TAKEN_PERCENT_DEF1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_DEALT_PERCENT_DEF2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_DEF3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_FACTOR_DEF4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_DEF5 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_DEFLECT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DEFLECT_DAMAGE_TAKEN_PIERCING = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DEFLECT_DAMAGE_TAKEN_SPELLS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_RIP_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_EAT_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HIT_POINTS_GAINED_EAT3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AIR_UNIT_LOWER_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AIR_UNIT_HEIGHT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MELEE_ATTACK_RANGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_INTERVAL_DURATION_EGM2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_EFFECT_DELAY_FLA2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MINING_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_RADIUS_OF_GRAVESTONES = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_RADIUS_OF_CORPSES = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HIT_POINTS_GAINED_HEA1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_INCREASE_PERCENT_INF1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AUTOCAST_RANGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_REGEN_RATE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_GRAPHIC_DELAY_LIT1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_GRAPHIC_DURATION_LIT2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_LSH1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_GAINED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HIT_POINTS_GAINED_MBT2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AUTOCAST_REQUIREMENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_WATER_HEIGHT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ACTIVATION_DELAY_MIN1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_INVISIBILITY_TRANSITION_TIME = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ACTIVATION_RADIUS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AMOUNT_REGENERATED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_POI1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_FACTOR_POI2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_POI3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_EXTRA_DAMAGE_POA1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_POA2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_FACTOR_POA3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_POA4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_AMPLIFICATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_STOMP_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_DEALT_WAR2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_FULL_DAMAGE_RADIUS_WAR3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HALF_DAMAGE_RADIUS_WAR4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SUMMONED_UNIT_DAMAGE_PRG3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_UNIT_PAUSE_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HERO_PAUSE_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HIT_POINTS_GAINED_REJ1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_POINTS_GAINED_REJ2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MINIMUM_LIFE_REQUIRED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MINIMUM_MANA_REQUIRED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_REPAIR_COST_RATIO = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_REPAIR_TIME_RATIO = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_POWERBUILD_COST = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_POWERBUILD_RATE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_NAVAL_RANGE_BONUS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_INCREASE_PERCENT_ROA1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_REGENERATION_RATE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_REGEN = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_INCREASE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SALVAGE_COST_RATIO = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_IN_FLIGHT_SIGHT_RADIUS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HOVERING_SIGHT_RADIUS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HOVERING_HEIGHT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DURATION_OF_OWLS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_FADE_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAY_NIGHT_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ACTION_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_SLO1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_FACTOR_SLO2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_SPO1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_SPO2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_FACTOR_SPO3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ACTIVATION_DELAY_STA1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DETECTION_RADIUS_STA2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DETONATION_RADIUS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_STUN_DURATION_STA4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_BONUS_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_UHF2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LUMBER_PER_INTERVAL = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ART_ATTACHMENT_HEIGHT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_TELEPORT_AREA_WIDTH = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_TELEPORT_AREA_HEIGHT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_STOLEN_PER_ATTACK = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_BONUS_IDAM = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_HIT_UNITS_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_HIT_HEROS_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_HIT_SUMMONS_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DELAY_FOR_TARGET_EFFECT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_DEALT_PERCENT_OF_NORMAL = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_RECEIVED_MULTIPLIER = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_REGENERATION_BONUS_AS_FRACTION_OF_NORMAL = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_INCREASE_ISPI = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_IDPS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_DAMAGE_INCREASE_CAC1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_COR1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_INCREASE_ISX1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_WRS1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_TERRAIN_DEFORMATION_AMPLITUDE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_CTC1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_EXTRA_DAMAGE_TO_TARGET = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_CTC3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_REDUCTION_CTC4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_CTB1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CASTING_DELAY_SECONDS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_LOSS_PER_UNIT_DTN1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_TO_SUMMONED_UNITS_DTN2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_TRANSITION_TIME_SECONDS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_DRAINED_PER_SECOND_NMR1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_REDUCE_DAMAGE_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MINIMUM_DAMAGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_IGNORED_DAMAGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_FULL_DAMAGE_DEALT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_FULL_DAMAGE_INTERVAL = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HALF_DAMAGE_DEALT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HALF_DAMAGE_INTERVAL = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BUILDING_REDUCTION_HFS5 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAXIMUM_DAMAGE_HFS6 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_PER_HIT_POINT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_ABSORBED_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_WAVE_DISTANCE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_WAVE_TIME_SECONDS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_DEALT_UIM3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AIR_TIME_SECONDS_UIM4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_UNIT_RELEASE_INTERVAL_SECONDS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_RETURN_FACTOR = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_RETURN_THRESHOLD = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_RETURNED_DAMAGE_FACTOR = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_RECEIVED_DAMAGE_FACTOR = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DEFENSE_BONUS_UTS3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_BONUS_NBA1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SUMMONED_UNIT_DURATION_SECONDS_NBA3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_PER_SUMMONED_HITPOINT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHARGE_FOR_CURRENT_LIFE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HIT_POINTS_DRAINED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_POINTS_DRAINED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DRAIN_INTERVAL_SECONDS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_TRANSFERRED_PER_SECOND = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_TRANSFERRED_PER_SECOND = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BONUS_LIFE_FACTOR = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BONUS_LIFE_DECAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BONUS_MANA_FACTOR = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BONUS_MANA_DECAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_MISS_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_MODIFIER = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_MODIFIER = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_TDG1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MEDIUM_DAMAGE_RADIUS_TDG2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MEDIUM_DAMAGE_PER_SECOND = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SMALL_DAMAGE_RADIUS_TDG4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SMALL_DAMAGE_PER_SECOND = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_AIR_TIME_SECONDS_TSP1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MINIMUM_HIT_INTERVAL_SECONDS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_NBF5 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAXIMUM_RANGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MINIMUM_RANGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_TARGET_EFK1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAXIMUM_TOTAL_DAMAGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAXIMUM_SPEED_ADJUSTMENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DECAYING_DAMAGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_ESH2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_FACTOR_ESH3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DECAY_POWER = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_INITIAL_DAMAGE_ESH5 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAXIMUM_LIFE_ABSORBED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAXIMUM_MANA_ABSORBED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_INCREASE_BSK1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_INCREASE_BSK2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_TAKEN_INCREASE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_PER_UNIT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_PER_UNIT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_PER_BUFF = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_PER_BUFF = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SUMMONED_UNIT_DAMAGE_DVM5 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_BONUS_FAK1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MEDIUM_DAMAGE_FACTOR_FAK2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SMALL_DAMAGE_FACTOR_FAK3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_FULL_DAMAGE_RADIUS_FAK4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HALF_DAMAGE_RADIUS_FAK5 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_EXTRA_DAMAGE_PER_SECOND = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_LIQ2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_REDUCTION_LIQ3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAGIC_DAMAGE_FACTOR = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_UNIT_DAMAGE_PER_MANA_POINT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HERO_DAMAGE_PER_MANA_POINT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_UNIT_MAXIMUM_DAMAGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HERO_MAXIMUM_DAMAGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_COOLDOWN = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DISTRIBUTED_DAMAGE_FACTOR_SPL1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_REGENERATED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_REGENERATED = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_LOSS_PER_UNIT_IDC1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SUMMONED_UNIT_DAMAGE_IDC2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ACTIVATION_DELAY_IMO2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LURE_INTERVAL_SECONDS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_BONUS_ISR1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_REDUCTION_ISR2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_BONUS_IPV1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_STEAL_AMOUNT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_RESTORED_FACTOR = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MANA_RESTORED_FACTOR = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACH_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_REMOVE_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HERO_REGENERATION_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_UNIT_REGENERATION_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_NSA4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HIT_POINTS_PER_SECOND_NSA5 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_TO_SUMMONED_UNITS_IXS1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_IXS2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SUMMONED_UNIT_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SHIELD_COOLDOWN_TIME = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_NDO1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SUMMONED_UNIT_DURATION_SECONDS_NDO3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MEDIUM_DAMAGE_RADIUS_FLK1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SMALL_DAMAGE_RADIUS_FLK2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_FULL_DAMAGE_AMOUNT_FLK3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MEDIUM_DAMAGE_AMOUNT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SMALL_DAMAGE_AMOUNT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_HBN1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_HBN2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAX_MANA_DRAINED_UNITS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_RATIO_UNITS_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAX_MANA_DRAINED_HEROS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_RATIO_HEROS_PERCENT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SUMMONED_DAMAGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DISTRIBUTED_DAMAGE_FACTOR_NCA1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_INITIAL_DAMAGE_PXF1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_PXF2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PER_SECOND_MLS1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BEAST_COLLISION_RADIUS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_AMOUNT_NST3 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_RADIUS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_FOLLOW_THROUGH_TIME = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ART_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_NAB1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_NAB2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_PRIMARY_DAMAGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SECONDARY_DAMAGE = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_INTERVAL_NAB6 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_GOLD_COST_FACTOR = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LUMBER_COST_FACTOR = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVE_SPEED_BONUS_NEG1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_BONUS_NEG2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_AMOUNT_NCS1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_INTERVAL_NCS2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAX_DAMAGE_NCS4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BUILDING_DAMAGE_FACTOR_NCS5 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_EFFECT_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SPAWN_INTERVAL_NSY1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SPAWN_UNIT_DURATION = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SPAWN_UNIT_OFFSET = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LEASH_RANGE_NSY5 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SPAWN_INTERVAL_NFY1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LEASH_RANGE_NFY2 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_CHANCE_TO_DEMOLISH = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_MULTIPLIER_BUILDINGS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_MULTIPLIER_UNITS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_MULTIPLIER_HEROES = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BONUS_DAMAGE_MULTIPLIER = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DEATH_DAMAGE_FULL_AMOUNT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DEATH_DAMAGE_FULL_AREA = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DEATH_DAMAGE_HALF_AMOUNT = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DEATH_DAMAGE_HALF_AREA = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DEATH_DAMAGE_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_AMOUNT_NSO1 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PERIOD = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_DAMAGE_PENALTY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_NSO4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_NSO5 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_SPLIT_DELAY = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_MAX_HITPOINT_FACTOR = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_LIFE_DURATION_SPLIT_BONUS = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_WAVE_INTERVAL = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_BUILDING_DAMAGE_FACTOR_NVC4 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_FULL_DAMAGE_AMOUNT_NVC5 = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_HALF_DAMAGE_FACTOR = nil

---@type abilityreallevelfield
Native.ABILITY_RLF_INTERVAL_BETWEEN_PULSES = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_PERCENT_BONUS_HAB2 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_USE_TELEPORT_CLUSTERING_HMT3 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_NEVER_MISS_OCR5 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_EXCLUDE_ITEM_DAMAGE = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_BACKSTAB_DAMAGE = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_INHERIT_UPGRADES_UAN3 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_MANA_CONVERSION_AS_PERCENT = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_LIFE_CONVERSION_AS_PERCENT = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_LEAVE_TARGET_ALIVE = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_PERCENT_BONUS_UAU3 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_DAMAGE_IS_PERCENT_RECEIVED = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_MELEE_BONUS = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_RANGED_BONUS = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_FLAT_BONUS = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_NEVER_MISS_HBH5 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_PERCENT_BONUS_HAD2 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_CAN_DEACTIVATE = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_RAISED_UNITS_ARE_INVULNERABLE = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_PERCENTAGE_OAR2 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_SUMMON_BUSY_UNITS = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_CREATES_BLIGHT = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_EXPLODES_ON_DEATH = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_ALWAYS_AUTOCAST_FAE2 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_REGENERATE_ONLY_AT_NIGHT = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_SHOW_SELECT_UNIT_BUTTON = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_SHOW_UNIT_INDICATOR = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_CHARGE_OWNING_PLAYER = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_PERCENTAGE_ARM2 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_TARGET_IS_INVULNERABLE = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_TARGET_IS_MAGIC_IMMUNE = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_KILL_ON_CASTER_DEATH = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_NO_TARGET_REQUIRED_REJ4 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_ACCEPTS_GOLD = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_ACCEPTS_LUMBER = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_PREFER_HOSTILES_ROA5 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_PREFER_FRIENDLIES_ROA6 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_ROOTED_TURNING = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_ALWAYS_AUTOCAST_SLO3 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_HIDE_BUTTON = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_USE_TELEPORT_CLUSTERING_ITP2 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_IMMUNE_TO_MORPH_EFFECTS = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_DOES_NOT_BLOCK_BUILDINGS = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_AUTO_ACQUIRE_ATTACK_TARGETS = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_IMMUNE_TO_MORPH_EFFECTS_GHO2 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_DO_NOT_BLOCK_BUILDINGS = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_INCLUDE_RANGED_DAMAGE = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_INCLUDE_MELEE_DAMAGE = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_MOVE_TO_PARTNER = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_CAN_BE_DISPELLED = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_IGNORE_FRIENDLY_BUFFS = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_DROP_ITEMS_ON_DEATH = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_CAN_USE_ITEMS = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_CAN_GET_ITEMS = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_CAN_DROP_ITEMS = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_REPAIRS_ALLOWED = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_CASTER_ONLY_SPLASH = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_NO_TARGET_REQUIRED_IRL4 = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_DISPEL_ON_ATTACK = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_AMOUNT_IS_RAW_VALUE = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_SHARED_SPELL_COOLDOWN = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_SLEEP_ONCE = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_ALLOW_ON_ANY_PLAYER_SLOT = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_DISABLE_OTHER_ABILITIES = nil

---@type abilitybooleanlevelfield
Native.ABILITY_BLF_ALLOW_BOUNTY = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_ICON_NORMAL = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_CASTER = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_TARGET = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_SPECIAL = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_EFFECT = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_AREA_EFFECT = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_LIGHTNING_EFFECTS = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_MISSILE_ART = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_TOOLTIP_LEARN = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_TOOLTIP_LEARN_EXTENDED = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_TOOLTIP_NORMAL = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_TOOLTIP_TURN_OFF = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_TOOLTIP_NORMAL_EXTENDED = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_TOOLTIP_TURN_OFF_EXTENDED = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_NORMAL_FORM_UNIT_EME1 = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_SPAWNED_UNITS = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_ABILITY_FOR_UNIT_CREATION = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_NORMAL_FORM_UNIT_MIL1 = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_ALTERNATE_FORM_UNIT_MIL2 = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_BASE_ORDER_ID_ANS5 = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_MORPH_UNITS_GROUND = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_MORPH_UNITS_AIR = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_MORPH_UNITS_AMPHIBIOUS = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_MORPH_UNITS_WATER = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_UNIT_TYPE_ONE = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_UNIT_TYPE_TWO = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_UNIT_TYPE_SOD2 = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_SUMMON_1_UNIT_TYPE = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_SUMMON_2_UNIT_TYPE = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_RACE_TO_CONVERT = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_PARTNER_UNIT_TYPE = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_PARTNER_UNIT_TYPE_ONE = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_PARTNER_UNIT_TYPE_TWO = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_REQUIRED_UNIT_TYPE = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_CONVERTED_UNIT_TYPE = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_SPELL_LIST = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_BASE_ORDER_ID_SPB5 = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_BASE_ORDER_ID_NCL6 = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_ABILITY_UPGRADE_1 = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_ABILITY_UPGRADE_2 = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_ABILITY_UPGRADE_3 = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_ABILITY_UPGRADE_4 = nil

---@type abilitystringlevelfield
Native.ABILITY_SLF_SPAWN_UNIT_ID_NSY2 = nil

---@type itemintegerfield
Native.ITEM_IF_LEVEL = nil

---@type itemintegerfield
Native.ITEM_IF_NUMBER_OF_CHARGES = nil

---@type itemintegerfield
Native.ITEM_IF_COOLDOWN_GROUP = nil

---@type itemintegerfield
Native.ITEM_IF_MAX_HIT_POINTS = nil

---@type itemintegerfield
Native.ITEM_IF_HIT_POINTS = nil

---@type itemintegerfield
Native.ITEM_IF_PRIORITY = nil

---@type itemintegerfield
Native.ITEM_IF_ARMOR_TYPE = nil

---@type itemintegerfield
Native.ITEM_IF_TINTING_COLOR_RED = nil

---@type itemintegerfield
Native.ITEM_IF_TINTING_COLOR_GREEN = nil

---@type itemintegerfield
Native.ITEM_IF_TINTING_COLOR_BLUE = nil

---@type itemintegerfield
Native.ITEM_IF_TINTING_COLOR_ALPHA = nil

---@type itemrealfield
Native.ITEM_RF_SCALING_VALUE = nil

---@type itembooleanfield
Native.ITEM_BF_DROPPED_WHEN_CARRIER_DIES = nil

---@type itembooleanfield
Native.ITEM_BF_CAN_BE_DROPPED = nil

---@type itembooleanfield
Native.ITEM_BF_PERISHABLE = nil

---@type itembooleanfield
Native.ITEM_BF_INCLUDE_AS_RANDOM_CHOICE = nil

---@type itembooleanfield
Native.ITEM_BF_USE_AUTOMATICALLY_WHEN_ACQUIRED = nil

---@type itembooleanfield
Native.ITEM_BF_CAN_BE_SOLD_TO_MERCHANTS = nil

---@type itembooleanfield
Native.ITEM_BF_ACTIVELY_USED = nil

---@type itemstringfield
Native.ITEM_SF_MODEL_USED = nil

---@type unitintegerfield
Native.UNIT_IF_DEFENSE_TYPE = nil

---@type unitintegerfield
Native.UNIT_IF_ARMOR_TYPE = nil

---@type unitintegerfield
Native.UNIT_IF_LOOPING_FADE_IN_RATE = nil

---@type unitintegerfield
Native.UNIT_IF_LOOPING_FADE_OUT_RATE = nil

---@type unitintegerfield
Native.UNIT_IF_AGILITY = nil

---@type unitintegerfield
Native.UNIT_IF_INTELLIGENCE = nil

---@type unitintegerfield
Native.UNIT_IF_STRENGTH = nil

---@type unitintegerfield
Native.UNIT_IF_AGILITY_PERMANENT = nil

---@type unitintegerfield
Native.UNIT_IF_INTELLIGENCE_PERMANENT = nil

---@type unitintegerfield
Native.UNIT_IF_STRENGTH_PERMANENT = nil

---@type unitintegerfield
Native.UNIT_IF_AGILITY_WITH_BONUS = nil

---@type unitintegerfield
Native.UNIT_IF_INTELLIGENCE_WITH_BONUS = nil

---@type unitintegerfield
Native.UNIT_IF_STRENGTH_WITH_BONUS = nil

---@type unitintegerfield
Native.UNIT_IF_GOLD_BOUNTY_AWARDED_NUMBER_OF_DICE = nil

---@type unitintegerfield
Native.UNIT_IF_GOLD_BOUNTY_AWARDED_BASE = nil

---@type unitintegerfield
Native.UNIT_IF_GOLD_BOUNTY_AWARDED_SIDES_PER_DIE = nil

---@type unitintegerfield
Native.UNIT_IF_LUMBER_BOUNTY_AWARDED_NUMBER_OF_DICE = nil

---@type unitintegerfield
Native.UNIT_IF_LUMBER_BOUNTY_AWARDED_BASE = nil

---@type unitintegerfield
Native.UNIT_IF_LUMBER_BOUNTY_AWARDED_SIDES_PER_DIE = nil

---@type unitintegerfield
Native.UNIT_IF_LEVEL = nil

---@type unitintegerfield
Native.UNIT_IF_FORMATION_RANK = nil

---@type unitintegerfield
Native.UNIT_IF_ORIENTATION_INTERPOLATION = nil

---@type unitintegerfield
Native.UNIT_IF_ELEVATION_SAMPLE_POINTS = nil

---@type unitintegerfield
Native.UNIT_IF_TINTING_COLOR_RED = nil

---@type unitintegerfield
Native.UNIT_IF_TINTING_COLOR_GREEN = nil

---@type unitintegerfield
Native.UNIT_IF_TINTING_COLOR_BLUE = nil

---@type unitintegerfield
Native.UNIT_IF_TINTING_COLOR_ALPHA = nil

---@type unitintegerfield
Native.UNIT_IF_MOVE_TYPE = nil

---@type unitintegerfield
Native.UNIT_IF_TARGETED_AS = nil

---@type unitintegerfield
Native.UNIT_IF_UNIT_CLASSIFICATION = nil

---@type unitintegerfield
Native.UNIT_IF_HIT_POINTS_REGENERATION_TYPE = nil

---@type unitintegerfield
Native.UNIT_IF_PLACEMENT_PREVENTED_BY = nil

---@type unitintegerfield
Native.UNIT_IF_PRIMARY_ATTRIBUTE = nil

---@type unitrealfield
Native.UNIT_RF_STRENGTH_PER_LEVEL = nil

---@type unitrealfield
Native.UNIT_RF_AGILITY_PER_LEVEL = nil

---@type unitrealfield
Native.UNIT_RF_INTELLIGENCE_PER_LEVEL = nil

---@type unitrealfield
Native.UNIT_RF_HIT_POINTS_REGENERATION_RATE = nil

---@type unitrealfield
Native.UNIT_RF_MANA_REGENERATION = nil

---@type unitrealfield
Native.UNIT_RF_DEATH_TIME = nil

---@type unitrealfield
Native.UNIT_RF_FLY_HEIGHT = nil

---@type unitrealfield
Native.UNIT_RF_TURN_RATE = nil

---@type unitrealfield
Native.UNIT_RF_ELEVATION_SAMPLE_RADIUS = nil

---@type unitrealfield
Native.UNIT_RF_FOG_OF_WAR_SAMPLE_RADIUS = nil

---@type unitrealfield
Native.UNIT_RF_MAXIMUM_PITCH_ANGLE_DEGREES = nil

---@type unitrealfield
Native.UNIT_RF_MAXIMUM_ROLL_ANGLE_DEGREES = nil

---@type unitrealfield
Native.UNIT_RF_SCALING_VALUE = nil

---@type unitrealfield
Native.UNIT_RF_ANIMATION_RUN_SPEED = nil

---@type unitrealfield
Native.UNIT_RF_SELECTION_SCALE = nil

---@type unitrealfield
Native.UNIT_RF_SELECTION_CIRCLE_HEIGHT = nil

---@type unitrealfield
Native.UNIT_RF_SHADOW_IMAGE_HEIGHT = nil

---@type unitrealfield
Native.UNIT_RF_SHADOW_IMAGE_WIDTH = nil

---@type unitrealfield
Native.UNIT_RF_SHADOW_IMAGE_CENTER_X = nil

---@type unitrealfield
Native.UNIT_RF_SHADOW_IMAGE_CENTER_Y = nil

---@type unitrealfield
Native.UNIT_RF_ANIMATION_WALK_SPEED = nil

---@type unitrealfield
Native.UNIT_RF_DEFENSE = nil

---@type unitrealfield
Native.UNIT_RF_SIGHT_RADIUS = nil

---@type unitrealfield
Native.UNIT_RF_PRIORITY = nil

---@type unitrealfield
Native.UNIT_RF_SPEED = nil

---@type unitrealfield
Native.UNIT_RF_OCCLUDER_HEIGHT = nil

---@type unitrealfield
Native.UNIT_RF_HP = nil

---@type unitrealfield
Native.UNIT_RF_MANA = nil

---@type unitrealfield
Native.UNIT_RF_ACQUISITION_RANGE = nil

---@type unitrealfield
Native.UNIT_RF_CAST_BACK_SWING = nil

---@type unitrealfield
Native.UNIT_RF_CAST_POINT = nil

---@type unitrealfield
Native.UNIT_RF_MINIMUM_ATTACK_RANGE = nil

---@type unitbooleanfield
Native.UNIT_BF_RAISABLE = nil

---@type unitbooleanfield
Native.UNIT_BF_DECAYABLE = nil

---@type unitbooleanfield
Native.UNIT_BF_IS_A_BUILDING = nil

---@type unitbooleanfield
Native.UNIT_BF_USE_EXTENDED_LINE_OF_SIGHT = nil

---@type unitbooleanfield
Native.UNIT_BF_NEUTRAL_BUILDING_SHOWS_MINIMAP_ICON = nil

---@type unitbooleanfield
Native.UNIT_BF_HERO_HIDE_HERO_INTERFACE_ICON = nil

---@type unitbooleanfield
Native.UNIT_BF_HERO_HIDE_HERO_MINIMAP_DISPLAY = nil

---@type unitbooleanfield
Native.UNIT_BF_HERO_HIDE_HERO_DEATH_MESSAGE = nil

---@type unitbooleanfield
Native.UNIT_BF_HIDE_MINIMAP_DISPLAY = nil

---@type unitbooleanfield
Native.UNIT_BF_SCALE_PROJECTILES = nil

---@type unitbooleanfield
Native.UNIT_BF_SELECTION_CIRCLE_ON_WATER = nil

---@type unitbooleanfield
Native.UNIT_BF_HAS_WATER_SHADOW = nil

---@type unitstringfield
Native.UNIT_SF_NAME = nil

---@type unitstringfield
Native.UNIT_SF_PROPER_NAMES = nil

---@type unitstringfield
Native.UNIT_SF_GROUND_TEXTURE = nil

---@type unitstringfield
Native.UNIT_SF_SHADOW_IMAGE_UNIT = nil

---@type unitweaponintegerfield
Native.UNIT_WEAPON_IF_ATTACK_DAMAGE_NUMBER_OF_DICE = nil

---@type unitweaponintegerfield
Native.UNIT_WEAPON_IF_ATTACK_DAMAGE_BASE = nil

---@type unitweaponintegerfield
Native.UNIT_WEAPON_IF_ATTACK_DAMAGE_SIDES_PER_DIE = nil

---@type unitweaponintegerfield
Native.UNIT_WEAPON_IF_ATTACK_MAXIMUM_NUMBER_OF_TARGETS = nil

---@type unitweaponintegerfield
Native.UNIT_WEAPON_IF_ATTACK_ATTACK_TYPE = nil

---@type unitweaponintegerfield
Native.UNIT_WEAPON_IF_ATTACK_WEAPON_SOUND = nil

---@type unitweaponintegerfield
Native.UNIT_WEAPON_IF_ATTACK_AREA_OF_EFFECT_TARGETS = nil

---@type unitweaponintegerfield
Native.UNIT_WEAPON_IF_ATTACK_TARGETS_ALLOWED = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_BACKSWING_POINT = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_DAMAGE_POINT = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_BASE_COOLDOWN = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_DAMAGE_LOSS_FACTOR = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_MEDIUM = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_SMALL = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_DISTANCE = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_RADIUS = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_PROJECTILE_SPEED = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_PROJECTILE_ARC = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_FULL_DAMAGE = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_MEDIUM_DAMAGE = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_SMALL_DAMAGE = nil

---@type unitweaponrealfield
Native.UNIT_WEAPON_RF_ATTACK_RANGE = nil

---@type unitweaponbooleanfield
Native.UNIT_WEAPON_BF_ATTACK_SHOW_UI = nil

---@type unitweaponbooleanfield
Native.UNIT_WEAPON_BF_ATTACKS_ENABLED = nil

---@type unitweaponbooleanfield
Native.UNIT_WEAPON_BF_ATTACK_PROJECTILE_HOMING_ENABLED = nil

---@type unitweaponstringfield
Native.UNIT_WEAPON_SF_ATTACK_PROJECTILE_ART = nil

---@type movetype
Native.MOVE_TYPE_UNKNOWN = nil

---@type movetype
Native.MOVE_TYPE_FOOT = nil

---@type movetype
Native.MOVE_TYPE_FLY = nil

---@type movetype
Native.MOVE_TYPE_HORSE = nil

---@type movetype
Native.MOVE_TYPE_HOVER = nil

---@type movetype
Native.MOVE_TYPE_FLOAT = nil

---@type movetype
Native.MOVE_TYPE_AMPHIBIOUS = nil

---@type movetype
Native.MOVE_TYPE_UNBUILDABLE = nil

---@type targetflag
Native.TARGET_FLAG_NONE = nil

---@type targetflag
Native.TARGET_FLAG_GROUND = nil

---@type targetflag
Native.TARGET_FLAG_AIR = nil

---@type targetflag
Native.TARGET_FLAG_STRUCTURE = nil

---@type targetflag
Native.TARGET_FLAG_WARD = nil

---@type targetflag
Native.TARGET_FLAG_ITEM = nil

---@type targetflag
Native.TARGET_FLAG_TREE = nil

---@type targetflag
Native.TARGET_FLAG_WALL = nil

---@type targetflag
Native.TARGET_FLAG_DEBRIS = nil

---@type targetflag
Native.TARGET_FLAG_DECORATION = nil

---@type targetflag
Native.TARGET_FLAG_BRIDGE = nil

---@type defensetype
Native.DEFENSE_TYPE_LIGHT = nil

---@type defensetype
Native.DEFENSE_TYPE_MEDIUM = nil

---@type defensetype
Native.DEFENSE_TYPE_LARGE = nil

---@type defensetype
Native.DEFENSE_TYPE_FORT = nil

---@type defensetype
Native.DEFENSE_TYPE_NORMAL = nil

---@type defensetype
Native.DEFENSE_TYPE_HERO = nil

---@type defensetype
Native.DEFENSE_TYPE_DIVINE = nil

---@type defensetype
Native.DEFENSE_TYPE_NONE = nil

---@type heroattribute
Native.HERO_ATTRIBUTE_STR = nil

---@type heroattribute
Native.HERO_ATTRIBUTE_INT = nil

---@type heroattribute
Native.HERO_ATTRIBUTE_AGI = nil

---@type armortype
Native.ARMOR_TYPE_WHOKNOWS = nil

---@type armortype
Native.ARMOR_TYPE_FLESH = nil

---@type armortype
Native.ARMOR_TYPE_METAL = nil

---@type armortype
Native.ARMOR_TYPE_WOOD = nil

---@type armortype
Native.ARMOR_TYPE_ETHREAL = nil

---@type armortype
Native.ARMOR_TYPE_STONE = nil

---@type regentype
Native.REGENERATION_TYPE_NONE = nil

---@type regentype
Native.REGENERATION_TYPE_ALWAYS = nil

---@type regentype
Native.REGENERATION_TYPE_BLIGHT = nil

---@type regentype
Native.REGENERATION_TYPE_DAY = nil

---@type regentype
Native.REGENERATION_TYPE_NIGHT = nil

---@type unitcategory
Native.UNIT_CATEGORY_GIANT = nil

---@type unitcategory
Native.UNIT_CATEGORY_UNDEAD = nil

---@type unitcategory
Native.UNIT_CATEGORY_SUMMONED = nil

---@type unitcategory
Native.UNIT_CATEGORY_MECHANICAL = nil

---@type unitcategory
Native.UNIT_CATEGORY_PEON = nil

---@type unitcategory
Native.UNIT_CATEGORY_SAPPER = nil

---@type unitcategory
Native.UNIT_CATEGORY_TOWNHALL = nil

---@type unitcategory
Native.UNIT_CATEGORY_ANCIENT = nil

---@type unitcategory
Native.UNIT_CATEGORY_NEUTRAL = nil

---@type unitcategory
Native.UNIT_CATEGORY_WARD = nil

---@type unitcategory
Native.UNIT_CATEGORY_STANDON = nil

---@type unitcategory
Native.UNIT_CATEGORY_TAUREN = nil

---@type pathingflag
Native.PATHING_FLAG_UNWALKABLE = nil

---@type pathingflag
Native.PATHING_FLAG_UNFLYABLE = nil

---@type pathingflag
Native.PATHING_FLAG_UNBUILDABLE = nil

---@type pathingflag
Native.PATHING_FLAG_UNPEONHARVEST = nil

---@type pathingflag
Native.PATHING_FLAG_BLIGHTED = nil

---@type pathingflag
Native.PATHING_FLAG_UNFLOATABLE = nil

---@type pathingflag
Native.PATHING_FLAG_UNAMPHIBIOUS = nil

---@type pathingflag
Native.PATHING_FLAG_UNITEMPLACABLE = nil

--@end-remove@

for _, v in ipairs(require('lib.stdlib.native._generated._globals')) do
    Native[v] = _G[v]
end

return Native

