-- ===========================================================================
--  Cheats.j
-- ===========================================================================
--  Debug-cheat globals
bj_DEBUG_CAMFIELD_SPEED      = 0    ---@type real
bj_DEBUG_CHAT_GIMME          = "gimme"    ---@type string
bj_DEBUG_CHAT_DEMO           = "demo"    ---@type string
bj_DEBUG_CHAT_TELEPORT       = "teleport"    ---@type string
bj_DEBUG_CHAT_TELEPORT2      = "ttt"    ---@type string
bj_DEBUG_CHAT_UNITINFO       = "unitinfo"    ---@type string
bj_DEBUG_CHAT_UNITINFO2      = "ui"    ---@type string
bj_DEBUG_CHAT_CAMINFO        = "caminfo"    ---@type string
bj_DEBUG_CHAT_CAMINFO2       = "ci"    ---@type string
bj_DEBUG_CHAT_CAMDIST        = "camdist"    ---@type string
bj_DEBUG_CHAT_CAMFARZ        = "camfarz"    ---@type string
bj_DEBUG_CHAT_CAMAOA         = "camaoa"    ---@type string
bj_DEBUG_CHAT_CAMFOV         = "camfov"    ---@type string
bj_DEBUG_CHAT_CAMROLL        = "camroll"    ---@type string
bj_DEBUG_CHAT_CAMROT         = "camrot"    ---@type string
bj_DEBUG_CHAT_CAMRESET       = "camreset"    ---@type string
bj_DEBUG_CHAT_CLONE          = "clone"    ---@type string
bj_DEBUG_CHAT_DISPEL         = "dispel"    ---@type string
bj_DEBUG_CHAT_GOTOX          = "gotox"    ---@type string
bj_DEBUG_CHAT_GOTOY          = "gotoy"    ---@type string
bj_DEBUG_CHAT_GOTOXY         = "gotoxy"    ---@type string
bj_DEBUG_CHAT_GOTOUNIT       = "gotounit"    ---@type string
bj_DEBUG_CHAT_BLACKMASK      = "blackmask"    ---@type string
bj_DEBUG_CHAT_BLACKMASK2     = "bm"    ---@type string
bj_DEBUG_CHAT_DIFFICULTY     = "difficulty"    ---@type string
bj_DEBUG_CHAT_FINGEROFDEATH  = "fingerofdeath"    ---@type string
-- bj_debugGimmeTrig	---@type trigger	
-- bj_debugDemoTrig	---@type trigger	
-- bj_debugTeleportTrig	---@type trigger	
-- bj_debugUnitInfoTrig	---@type trigger	
-- bj_debugCamInfoTrig	---@type trigger	
-- bj_debugCamDistTrig	---@type trigger	
-- bj_debugCamFarzTrig	---@type trigger	
-- bj_debugCamAoaTrig	---@type trigger	
-- bj_debugCamFovTrig	---@type trigger	
-- bj_debugCamRollTrig	---@type trigger	
-- bj_debugCamRotTrig	---@type trigger	
-- bj_debugCamResetTrig	---@type trigger	
-- bj_debugCloneTrig	---@type trigger	
-- bj_debugDispelTrig	---@type trigger	
-- bj_debugGotoXTrig	---@type trigger	
-- bj_debugGotoYTrig	---@type trigger	
-- bj_debugGotoXYTrig	---@type trigger	
-- bj_debugGotoUnitTrig	---@type trigger	
-- bj_debug_BlackMaskTrig	---@type trigger	
-- bj_debugDifficultyTrig	---@type trigger	
bj_debugFingerOfDeathTrig    = {}    ---@type trigger
bj_debugToolOfDeathTrig      = {}    ---@type trigger
bj_debugFingerOfDeathEnabled = {}    ---@type boolean
bj_debugGotoUnitX            = 0    ---@type real
bj_debugGotoUnitY            = 0    ---@type real
bj_debugGotoUnits            = 0    ---@type integer
-- ***************************************************************************
-- 
-- *  Debug cheats
-- 
-- ***************************************************************************
-- ===========================================================================
function DebugGimmeEnum()
	local thePlayer = GetEnumPlayer()
	DisplayTextToPlayer(thePlayer, 0, 0, "Player " .. I2S(GetPlayerId(GetTriggerPlayer()) + 1) .. " cheated: Give 5000 gold and 5000 lumber to all players")
	SetPlayerState(thePlayer, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(thePlayer, PLAYER_STATE_RESOURCE_GOLD) + 5000)
	SetPlayerState(thePlayer, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(thePlayer, PLAYER_STATE_RESOURCE_LUMBER) + 5000)
end
-- ===========================================================================
function DebugGimme()
	ForForce(bj_FORCE_ALL_PLAYERS, DebugGimmeEnum)
end
-- ===========================================================================
function DebugDemoEnum()
	local thePlayer = GetEnumPlayer()
	SetPlayerState(thePlayer, PLAYER_STATE_RESOURCE_GOLD, 0)
	SetPlayerState(thePlayer, PLAYER_STATE_RESOURCE_LUMBER, 0)
end
-- ===========================================================================
function DebugDemo()
	local thePlayer = GetTriggerPlayer()
	local gold      = GetRandomInt(750, 1500)
	local lumber    = GetRandomInt(200, 450)
	
	ForForce(bj_FORCE_ALL_PLAYERS, DebugDemoEnum)
	MultiboardSuppressDisplay(true)
	if (GetLocalPlayer() == GetTriggerPlayer()) then
		Cheat("warnings")
		Cheat("fastbuild")
		Cheat("techtree")
		Cheat("research")
		Cheat("food")
		Cheat("mana")
		Cheat("dawn")
		Cheat("gold " .. I2S(gold))
		Cheat("lumber " .. I2S(lumber))
	end
end
-- ===========================================================================
function DebugTeleportEnum()
	local u = GetEnumUnit()
	SetUnitPosition(u, GetCameraTargetPositionX(), GetCameraTargetPositionY())
end
-- ===========================================================================
function DebugTeleport()
	local g = CreateGroup()
	SyncSelections()
	GroupEnumUnitsSelected(g, GetTriggerPlayer(), nil)
	ForGroup(g, DebugTeleportEnum)
end
-- ===========================================================================

---@param expr boolean
---@param a string
---@param b string
---@return string
function TertiaryStringOp(expr, a, b)
	if (expr) then
		return a
	else
		return b
	end
end
-- ===========================================================================
--  Convert a integer id value into a 4-letter id code.
-- 

---@param value integer
---@return string
function DebugIdInteger2IdString(value)
	local charMap        = ".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................."
	local result         = ""
	local remainingValue = value
	local charValue
	local byteno
	
	byteno               = 0
	while true do
		charValue      = ModuloInteger(remainingValue, 256)
		remainingValue = remainingValue / 256
		result         = SubString(charMap, charValue, charValue + 1) .. result
		
		byteno         = byteno + 1
		if byteno == 4 then break end
	end
	return result
end
-- ===========================================================================
function DebugUnitInfoEnum()
	local thePlayer = GetTriggerPlayer()
	local theUnit   = GetEnumUnit()
	local message
	
	message         = "Player " .. I2S(GetPlayerId(GetOwningPlayer(theUnit)) + 1)
	message         = message .. " '" .. DebugIdInteger2IdString(GetUnitTypeId(theUnit)) .. "'"
	message         = message .. " " .. GetUnitName(theUnit)
	message         = message .. " (" .. R2SW(GetUnitX(theUnit), 0, 0) .. ", " .. R2SW(GetUnitY(theUnit), 0, 0)
	message         = message .. ": " .. R2SW(GetUnitFacing(theUnit), 0, 0) .. ") "
	message         = message .. TertiaryStringOp(IsUnitType(theUnit, UNIT_TYPE_HERO), " Hero", "")
	message         = message .. TertiaryStringOp(IsUnitType(theUnit, UNIT_TYPE_DEAD), " Dead", "")
	message         = message .. TertiaryStringOp(IsUnitType(theUnit, UNIT_TYPE_STRUCTURE), " Structure", "")
	message         = message .. TertiaryStringOp(IsUnitType(theUnit, UNIT_TYPE_GROUND), " Grnd", "")
	message         = message .. TertiaryStringOp(IsUnitType(theUnit, UNIT_TYPE_FLYING), " Air", "")
	message         = message .. TertiaryStringOp(IsUnitType(theUnit, UNIT_TYPE_ATTACKS_GROUND), " VsGrnd", "")
	message         = message .. TertiaryStringOp(IsUnitType(theUnit, UNIT_TYPE_ATTACKS_FLYING), " VsAir", "")
	message         = message .. TertiaryStringOp(IsUnitType(theUnit, UNIT_TYPE_MELEE_ATTACKER), " Melee", "")
	message         = message .. TertiaryStringOp(IsUnitType(theUnit, UNIT_TYPE_RANGED_ATTACKER), " Ranged", "")
	message         = message .. TertiaryStringOp(IsUnitType(theUnit, UNIT_TYPE_SUMMONED), " Summoned", "")
	
	DisplayTextToPlayer(thePlayer, 0, 0, message)
end
-- ===========================================================================
function DebugUnitInfo()
	local g = CreateGroup()
	SyncSelections()
	GroupEnumUnitsSelected(g, GetTriggerPlayer(), nil)
	ForGroup(g, DebugUnitInfoEnum)
end
-- ===========================================================================
function DebugCamInfo()
	local thePlayer = GetTriggerPlayer()
	local message
	
	message         = "Targ(" .. R2SW(GetCameraTargetPositionX(), 0, 0)
	message         = message .. "," .. R2SW(GetCameraTargetPositionY(), 0, 0)
	message         = message .. "," .. R2SW(GetCameraTargetPositionZ(), 0, 0)
	message         = message .. ")"
	message         = message .. ", Dist=" .. R2SW(GetCameraField(CAMERA_FIELD_TARGET_DISTANCE), 0, 0)
	message         = message .. ", FarZ=" .. R2SW(GetCameraField(CAMERA_FIELD_FARZ), 0, 0)
	message         = message .. ", AoA=" .. R2SW(GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK) * bj_RADTODEG, 0, 2)
	message         = message .. ", FoV=" .. R2SW(GetCameraField(CAMERA_FIELD_FIELD_OF_VIEW) * bj_RADTODEG, 0, 2)
	message         = message .. ", Roll=" .. R2SW(GetCameraField(CAMERA_FIELD_ROLL) * bj_RADTODEG, 0, 2)
	message         = message .. ", Rot=" .. R2SW(GetCameraField(CAMERA_FIELD_ROTATION) * bj_RADTODEG, 0, 2)
	message         = message .. ", LocalPitch=" .. R2SW(GetCameraField(CAMERA_FIELD_LOCAL_PITCH) * bj_RADTODEG, 0, 2)
	message         = message .. ", LocalYaw=" .. R2SW(GetCameraField(CAMERA_FIELD_LOCAL_YAW) * bj_RADTODEG, 0, 2)
	message         = message .. ", LocalRoll=" .. R2SW(GetCameraField(CAMERA_FIELD_LOCAL_ROLL) * bj_RADTODEG, 0, 2)
	
	DisplayTextToPlayer(thePlayer, 0, 0, message)
end
-- ===========================================================================

---@param whichField camerafield
---@param cheatLength integer
---@param defaultValue real
function DebugCamField(whichField, cheatLength, defaultValue)
	local param = SubString(GetEventPlayerChatString(), cheatLength, 50)
	local value = S2R(param)
	
	--  Remove any excess preceding whitespace
	while true do
		if not (SubString(param, 0, 1) == " ") then break end
		param = SubString(param, 1, 50)
	end
	
	if param == "" then
		value = defaultValue
	end
	if (whichField == CAMERA_FIELD_FARZ) and (value <= bj_CAMERA_MIN_FARZ) then
		return
	end
	SetCameraFieldForPlayer(GetTriggerPlayer(), whichField, value, bj_DEBUG_CAMFIELD_SPEED)
end
-- ===========================================================================
function DebugCamDist()
	DebugCamField(CAMERA_FIELD_TARGET_DISTANCE, 7, 1600)
end
-- ===========================================================================
function DebugCamFarZ()
	DebugCamField(CAMERA_FIELD_FARZ, 7, 4000)
end
-- ===========================================================================
function DebugCamFOV()
	DebugCamField(CAMERA_FIELD_FIELD_OF_VIEW, 6, 65)
end
-- ===========================================================================
function DebugCamAOA()
	DebugCamField(CAMERA_FIELD_ANGLE_OF_ATTACK, 6, 310)
end
-- ===========================================================================
function DebugCamRoll()
	DebugCamField(CAMERA_FIELD_ROLL, 7, 0)
end
-- ===========================================================================
function DebugCamRot()
	DebugCamField(CAMERA_FIELD_ROTATION, 6, 90)
end
-- ===========================================================================
function DebugCamReset()
	ResetToGameCamera(0)
	EnableUserControl(true)
end
-- ===========================================================================
function DebugCloneUnitEnum()
	local u = GetEnumUnit()
	CreateUnit(GetOwningPlayer(u), GetUnitTypeId(u), GetUnitX(u), GetUnitY(u), GetUnitFacing(u))
end
-- ===========================================================================
function DebugCloneUnit()
	local g = CreateGroup()
	SyncSelections()
	GroupEnumUnitsSelected(g, GetTriggerPlayer(), nil)
	ForGroup(g, DebugCloneUnitEnum)
end
-- ===========================================================================
function DebugDispelUnitEnum()
	UnitRemoveBuffs(GetEnumUnit(), true, true)
end
-- ===========================================================================
function DebugDispelUnit()
	local g = CreateGroup()
	SyncSelections()
	GroupEnumUnitsSelected(g, GetTriggerPlayer(), nil)
	ForGroup(g, DebugDispelUnitEnum)
end
-- ===========================================================================
function DebugGotoX()
	local chatString = GetEventPlayerChatString()
	
	if (bj_DEBUG_CHAT_GOTOX .. " " == SubString(chatString, 0, 6)) then
		SetCameraPositionForPlayer(GetTriggerPlayer(), S2R(SubString(chatString, 6, 50)), GetCameraTargetPositionY())
	end
end
-- ===========================================================================
function DebugGotoY()
	local chatString = GetEventPlayerChatString()
	
	if (bj_DEBUG_CHAT_GOTOY .. " " == SubString(chatString, 0, 6)) then
		SetCameraPositionForPlayer(GetTriggerPlayer(), GetCameraTargetPositionX(), S2R(SubString(chatString, 6, 50)))
	end
end
-- ===========================================================================
function DebugGotoXY()
	local chatString = GetEventPlayerChatString()
	local index
	local inParam1
	
	if (bj_DEBUG_CHAT_GOTOXY .. " " == SubString(chatString, 0, 7)) then
		inParam1 = false
		index    = 7
		while true do
			if (SubString(chatString, index, index + 1) ~= " ") then
				inParam1 = true
			end
			
			if (inParam1 and SubString(chatString, index, index + 1) == " ") then break end
			if index > 50 then break end
			index = index + 1
		end
		
		if (index > 50) then
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Usage:  GotoXY x y")
		else
			if (GetLocalPlayer() == GetTriggerPlayer()) then
				SetCameraPositionForPlayer(GetTriggerPlayer(), S2R(SubString(chatString, 7, index)), S2R(SubString(chatString, index, 50)))
			end
		end
	end
end
-- ===========================================================================
function DebugGotoUnitEnum()
	local u           = GetEnumUnit()
	
	bj_debugGotoUnitX = bj_debugGotoUnitX + GetUnitX(u)
	bj_debugGotoUnitY = bj_debugGotoUnitY + GetUnitY(u)
	bj_debugGotoUnits = bj_debugGotoUnits + 1
end
-- ===========================================================================
function DebugGotoUnit()
	local g           = CreateGroup()
	
	bj_debugGotoUnitX = 0
	bj_debugGotoUnitY = 0
	bj_debugGotoUnits = 0
	
	SyncSelections()
	GroupEnumUnitsSelected(g, GetTriggerPlayer(), nil)
	ForGroup(g, DebugGotoUnitEnum)
	
	if (bj_debugGotoUnits ~= 0) then
		bj_debugGotoUnitX = bj_debugGotoUnitX / bj_debugGotoUnits
		bj_debugGotoUnitY = bj_debugGotoUnitY / bj_debugGotoUnits
		SetCameraPositionForPlayer(GetTriggerPlayer(), bj_debugGotoUnitX, bj_debugGotoUnitY)
	end
end
-- ===========================================================================
function DebugBlackMask()
	SetFogStateRect(GetTriggerPlayer(), FOG_OF_WAR_MASKED, GetWorldBounds(), true)
end
-- ===========================================================================
function DebugDifficulty()
	local thePlayer = GetTriggerPlayer()
	local theDiff   = GetGameDifficulty()
	
	if (theDiff == MAP_DIFFICULTY_EASY) then
		DisplayTextToPlayer(thePlayer, 0, 0, "Easy Difficulty")
	elseif (theDiff == MAP_DIFFICULTY_NORMAL) then
		DisplayTextToPlayer(thePlayer, 0, 0, "Normal Difficulty")
	elseif (theDiff == MAP_DIFFICULTY_HARD) then
		DisplayTextToPlayer(thePlayer, 0, 0, "Hard Difficulty")
	else
		DisplayTextToPlayer(thePlayer, 0, 0, "ERROR!  Unrecognized Difficulty")
	end
end
-- ===========================================================================
function DebugToolOfDeath()
	KillUnit(GetTriggerUnit())
end
-- ===========================================================================
function DebugToggleFingerOfDeath()
	local index = GetPlayerId(GetTriggerPlayer())
	if (bj_debugFingerOfDeathEnabled[index]) then
		DisplayTextToPlayer(Player(index), 0, 0, "Finger Of Death Disabled")
		DisableTrigger(bj_debugToolOfDeathTrig[index])
	else
		DisplayTextToPlayer(Player(index), 0, 0, "Finger Of Death Enabled")
		EnableTrigger(bj_debugToolOfDeathTrig[index])
	end
	bj_debugFingerOfDeathEnabled[index] = not bj_debugFingerOfDeathEnabled[index]
end
-- ===========================================================================
---@return boolean
function InitDebugTriggers()
	local indexPlayer
	local index
	
	index = 0
	while true do
		indexPlayer = Player(index)
		if (GetPlayerSlotState(indexPlayer) == PLAYER_SLOT_STATE_PLAYING) then
			bj_debugGimmeTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugGimmeTrig, indexPlayer, bj_DEBUG_CHAT_GIMME, true)
			TriggerAddAction(bj_debugGimmeTrig, DebugGimme)
			
			bj_debugDemoTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugDemoTrig, indexPlayer, bj_DEBUG_CHAT_DEMO, true)
			TriggerAddAction(bj_debugDemoTrig, DebugDemo)
			
			bj_debugTeleportTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugTeleportTrig, indexPlayer, bj_DEBUG_CHAT_TELEPORT, true)
			TriggerRegisterPlayerChatEvent(bj_debugTeleportTrig, indexPlayer, bj_DEBUG_CHAT_TELEPORT2, true)
			TriggerAddAction(bj_debugTeleportTrig, DebugTeleport)
			
			bj_debugUnitInfoTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugUnitInfoTrig, indexPlayer, bj_DEBUG_CHAT_UNITINFO, true)
			TriggerRegisterPlayerChatEvent(bj_debugUnitInfoTrig, indexPlayer, bj_DEBUG_CHAT_UNITINFO2, true)
			TriggerAddAction(bj_debugUnitInfoTrig, DebugUnitInfo)
			
			bj_debugCamInfoTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugCamInfoTrig, indexPlayer, bj_DEBUG_CHAT_CAMINFO, true)
			TriggerRegisterPlayerChatEvent(bj_debugCamInfoTrig, indexPlayer, bj_DEBUG_CHAT_CAMINFO2, true)
			TriggerAddAction(bj_debugCamInfoTrig, DebugCamInfo)
			
			bj_debugCamDistTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugCamDistTrig, indexPlayer, bj_DEBUG_CHAT_CAMDIST, false)
			TriggerAddAction(bj_debugCamDistTrig, DebugCamDist)
			
			bj_debugCamFarzTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugCamFarzTrig, indexPlayer, bj_DEBUG_CHAT_CAMFARZ, false)
			TriggerAddAction(bj_debugCamFarzTrig, DebugCamFarZ)
			
			bj_debugCamFovTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugCamFovTrig, indexPlayer, bj_DEBUG_CHAT_CAMFOV, false)
			TriggerAddAction(bj_debugCamFovTrig, DebugCamFOV)
			
			bj_debugCamAoaTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugCamAoaTrig, indexPlayer, bj_DEBUG_CHAT_CAMAOA, false)
			TriggerAddAction(bj_debugCamAoaTrig, DebugCamAOA)
			
			bj_debugCamRollTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugCamRollTrig, indexPlayer, bj_DEBUG_CHAT_CAMROLL, false)
			TriggerAddAction(bj_debugCamRollTrig, DebugCamRoll)
			
			bj_debugCamRotTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugCamRotTrig, indexPlayer, bj_DEBUG_CHAT_CAMROT, false)
			TriggerAddAction(bj_debugCamRotTrig, DebugCamRot)
			
			bj_debugCamResetTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugCamResetTrig, indexPlayer, bj_DEBUG_CHAT_CAMRESET, true)
			TriggerAddAction(bj_debugCamResetTrig, DebugCamReset)
			
			bj_debugCloneTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugCloneTrig, indexPlayer, bj_DEBUG_CHAT_CLONE, true)
			TriggerAddAction(bj_debugCloneTrig, DebugCloneUnit)
			
			bj_debugDispelTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugDispelTrig, indexPlayer, bj_DEBUG_CHAT_DISPEL, true)
			TriggerAddAction(bj_debugDispelTrig, DebugDispelUnit)
			
			bj_debugGotoXTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugGotoXTrig, indexPlayer, bj_DEBUG_CHAT_GOTOX, false)
			TriggerAddAction(bj_debugGotoXTrig, DebugGotoX)
			
			bj_debugGotoYTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugGotoYTrig, indexPlayer, bj_DEBUG_CHAT_GOTOY, false)
			TriggerAddAction(bj_debugGotoYTrig, DebugGotoY)
			
			bj_debugGotoXYTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugGotoXYTrig, indexPlayer, bj_DEBUG_CHAT_GOTOXY, false)
			TriggerAddAction(bj_debugGotoXYTrig, DebugGotoXY)
			
			bj_debugGotoUnitTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugGotoUnitTrig, indexPlayer, bj_DEBUG_CHAT_GOTOUNIT, true)
			TriggerAddAction(bj_debugGotoUnitTrig, DebugGotoUnit)
			
			bj_debug_BlackMaskTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debug_BlackMaskTrig, indexPlayer, bj_DEBUG_CHAT_BLACKMASK, true)
			TriggerRegisterPlayerChatEvent(bj_debug_BlackMaskTrig, indexPlayer, bj_DEBUG_CHAT_BLACKMASK2, true)
			TriggerAddAction(bj_debug_BlackMaskTrig, DebugBlackMask)
			
			bj_debugDifficultyTrig = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugDifficultyTrig, indexPlayer, bj_DEBUG_CHAT_DIFFICULTY, true)
			TriggerAddAction(bj_debugDifficultyTrig, DebugDifficulty)
			
			bj_debugFingerOfDeathEnabled[index] = false
			
			bj_debugToolOfDeathTrig[index]      = CreateTrigger()
			TriggerRegisterPlayerUnitEvent(bj_debugToolOfDeathTrig[index], indexPlayer, EVENT_PLAYER_UNIT_SELECTED, nil)
			TriggerAddAction(bj_debugToolOfDeathTrig[index], DebugToolOfDeath)
			DisableTrigger(bj_debugToolOfDeathTrig[index])
			
			bj_debugFingerOfDeathTrig[index] = CreateTrigger()
			TriggerRegisterPlayerChatEvent(bj_debugFingerOfDeathTrig[index], indexPlayer, bj_DEBUG_CHAT_FINGEROFDEATH, true)
			TriggerAddAction(bj_debugFingerOfDeathTrig[index], DebugToggleFingerOfDeath)
		end
		
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
	
	return true
end
