function SongMods()
	--[[ oitg mods:
	19|tournament
	20|showstats
	22|orientation
	23|playfield
	25|screenfilter
	27|timingscale
	--]]

	local pm = GAMESTATE:GetPlayMode()
	local style = GAMESTATE:GetCurrentStyle()
	local styleType = style:GetStyleType()
	local doubles = (styleType == 'StyleType_OnePlayerTwoSides' or styleType == 'StyleType_TwoPlayersSharedSides')

	-- shared begin
	local options = "1,2,3,4,7,5,18,17,9,"

	-- differences
	if pm == 'PlayMode_Regular' then
		if doubles then
			--23,
			options = options .. "10,11,"
		else
			--22,23,
			options = options .. "10,11,"
		end
	elseif pm == 'PlayMode_Nonstop' then
		--22,23,
		options = options .. ""
	else
		-- survival/fallback
		options = options .. "10,11,"
	end

	-- next shared
	options = options .. "12,13,14,15,"

	-- differences 2 (should be "27,24," but timingscale is not in sm5)
	if pm == 'PlayMode_Regular' then
		options = options .. "19,25,24,BG,"
	elseif pm == 'PlayMode_Nonstop' then
		options = options .. "19,25,24,BG,"
	end

	-- ends on 16:
	options = options .. "16,SL,GH,"
	return options
end

function InitOptions()
	-- tournament
	setenv("HideScoreP1",false)
	setenv("HideScoreP2",false)
	setenv("HideLifeP1",false)
	setenv("HideLifeP2",false)
	setenv("HideComboP1",false)
	setenv("HideComboP2",false)

	-- mods display
	setenv("ShowModsP1",false)
	setenv("ShowModsP2",false)
	-- stats display
	setenv("StatsDisplayP1",false)
	setenv("StatsDisplayP2",false)
	-- screen filter
	setenv("ScreenFilterP1",0)
	setenv("ScreenFilterP2",0)
end

--[[ option rows ]]

-- tournament options
function OptionTournamentOptions()
	local t = {
		Name="TournamentOptions",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectMultiple",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = { "Hide Score", "Hide Combo", "Hide Lifebar" },
		LoadSelections = function(self, list, pn)
			local pNum = (pn == PLAYER_2 and 2 or 1)
			pNum = string.format("P%i",pNum)
			list[1] = getenv("HideScore"..pNum)
			list[2] = getenv("HideCombo"..pNum)
			list[3] = getenv("HideLife"..pNum)
		end,
		SaveSelections = function(self, list, pn)
			local pNum = (pn == PLAYER_2 and 2 or 1)
			pNum = string.format("P%i",pNum)
			setenv("HideScore"..pNum,list[1])
			setenv("HideCombo"..pNum,list[2])
			setenv("HideLife"..pNum,list[3])
		end,
	}
	setmetatable(t, t)
	return t
end

-- stats display
function OptionShowStats()
	local t = {
		Name="IngameStats",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectMultiple",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = { "Show In-game Statistics" },
		LoadSelections = function(self, list, pn)
			local pNum = (pn == PLAYER_2 and 2 or 1)
			local optName = string.format("StatsDisplayP%i",pNum)
			list[1] = getenv(optName)
		end,
		SaveSelections = function(self, list, pn)
			local pNum = (pn == PLAYER_2 and 2 or 1)
			local optName = string.format("StatsDisplayP%i",pNum)
			setenv(optName,list[1])
		end
	}
	setmetatable(t, t)
	return t
end

-- mods display
function OptionShowModifiers()
	local t = {
		Name="ShowModifiers",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectMultiple",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = { "Show Active Modifiers" },
		LoadSelections = function(self, list, pn)
			local pNum = (pn == PLAYER_2 and 2 or 1)
			local optName = string.format("ShowModsP%i",pNum)
			list[1] = getenv(optName)
		end,
		SaveSelections = function(self, list, pn)
			local pNum = (pn == PLAYER_2 and 2 or 1)
			local optName = string.format("ShowModsP%i",pNum)
			setenv(optName,list[1])
		end
	}
	setmetatable(t, t)
	return t
end

-- "DarkLink's Custom Mods"
-- i am ashamed to have to even put this code in the theme -f
local function AvailableArrowDirections()
	local dirs = { "Normal", "Left", "Right", "Upside-Down" }
	if GAMESTATE:GetNumPlayersEnabled() == 1 then dirs[#dirs+1] = "Solo-Centered" end
	return dirs
end

function OptionOrientation()
	local t = {
		Name = "Orientation",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		-- xxx: dumb shit
		Choices = { "Normal", "Left", "Right", "Upside-Down" },
		LoadSelections = function(self, list, pn)
			-- dicks
		end;
		SaveSelections = function(self, list, pn)
			-- dicks
		end;
	};
	setmetatable(t, t)
	return t
end

function OptionPlayfield()
	local t = {
		Name = "PlayfieldMods",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = { "Vibrate", "Spin Right", "Spin Left", "Bob", "Pulse", "Wag" },
		LoadSelections = function(self, list, pn)
			-- dicks
		end;
		SaveSelections = function(self, list, pn)
			-- dicks
		end;
	};
	setmetatable(t, t)
	return t
end
-- end of stuff I had to take from someone else

-- screen filter a la sm-ssc!
function OptionRowScreenFilter()
	local t = {
		Name="ScreenFilter",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = { THEME:GetString('OptionNames','Off'), '0.1', '0.2', '0.3', '0.4', '0.5', '0.6', '0.7', '0.8', '0.9', '1.0', },
		LoadSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			local filterValue = getenv("ScreenFilter"..pName)
			if filterValue ~= nil then
				local val = scale(tonumber(filterValue),0,1,1,#list )
				list[val] = true
			else
				setenv("ScreenFilter"..pName,0)
				list[1] = true
			end
		end,
		SaveSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			local found = false
			for i=1,#list do
				if not found then
					if list[i] == true then
						local val = scale(i,1,#list,0,1)
						setenv("ScreenFilter"..pName,val)
						found = true
					end
				end
			end
		end,
	};
	setmetatable(t, t)
	return t
end