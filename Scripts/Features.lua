-------------------------------------------------------------------------------------------------------------------
-- REVISION 4 LUA Scripts (Ov3rHell3XoduZ)
-- Special Features for REVISION 4 on Beta 4
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- SurroundLife P1 OnCommands
-------------------------------------------------------------------------------------------------------------------
function SurroundLifeP1(self)

	-- Single Normal and Surround Life
	if ThemePrefs.Get("SurroundLife") == "On" then
		self:draworder(-1)
		self:rotationz(-90)
		self:zoomy(11)
		self:zoomx(1.77)
		self:diffuse(color("#000000"))
	else
		self:rotationz(-90)
		self:addx(-200)
		self:sleep(0.5)
		self:decelerate(0.8)
		self:addx(50)
		self:draworder(-1)
	end
	
	-- Double Surround Life
	if ThemePrefs.Get("SurroundLife") == "On" and GAMESTATE:GetCurrentStyle():GetStyleType() == 'StyleType_OnePlayerTwoSides' then
		self:draworder(-1)
		self:rotationz(-90)
		self:zoomy(23.7)
		self:zoomx(1.77)
		self:diffuse(color("#000000"))
	end
end

-------------------------------------------------------------------------------------------------------------------
-- SurroundLife P1 X Position
-------------------------------------------------------------------------------------------------------------------
function LifePosXP1()
	local PosX = SCREEN_CENTER_X
	
	if ThemePrefs.Get("SurroundLife") == "On" then
		PosX = SCREEN_CENTER_X-174
	else
		PosX = SCREEN_CENTER_X-250
	end
	
	if ThemePrefs.Get("SurroundLife") == "On" and GAMESTATE:GetCurrentStyle():GetStyleType() == 'StyleType_OnePlayerTwoSides' then
		PosX = SCREEN_CENTER_X+27
	end
	return PosX
end

-------------------------------------------------------------------------------------------------------------------
-- SurroundLife P1 Y Position
-------------------------------------------------------------------------------------------------------------------
function LifePosYP1()
	local PosY = SCREEN_CENTER_Y
	
	if ThemePrefs.Get("SurroundLife") == "On" then
		PosY = SCREEN_CENTER_Y
	else
		PosY = SCREEN_CENTER_Y+40
	end	
	return PosY
end

-------------------------------------------------------------------------------------------------------------------
-- SurroundLife P2 OnCommands
-------------------------------------------------------------------------------------------------------------------
function SurroundLifeP2(self)

	if ThemePrefs.Get("SurroundLife") == "On" then
		self:draworder(-1)
		self:rotationz(-90)
		self:zoomy(11)
		self:zoomx(1.77)
		self:diffuse(color("#000000"))
	else
		self:zoom(-1)
		self:rotationz(90)
		self:addx(200)
		self:sleep(0.5)
		self:decelerate(0.8)
		self:addx(-50)
		self:draworder(-1)
	end

	-- Double Surround Life
	if ThemePrefs.Get("SurroundLife") == "On" and GAMESTATE:GetCurrentStyle():GetStyleType() == 'StyleType_OnePlayerTwoSides' then
		self:draworder(-1)
		self:rotationz(-90)
		self:zoomy(23.7)
		self:zoomx(1.77)
		self:diffuse(color("#000000"))
	end
end

-------------------------------------------------------------------------------------------------------------------
-- SurroundLife P2 X Position
-------------------------------------------------------------------------------------------------------------------
function LifePosXP2()
	local PosX = SCREEN_CENTER_X
	
	if ThemePrefs.Get("SurroundLife") == "On" then
		PosX = SCREEN_CENTER_X+200
	else
		PosX = SCREEN_CENTER_X+250
	end
	
	if ThemePrefs.Get("SurroundLife") == "On" and GAMESTATE:GetCurrentStyle():GetStyleType() == 'StyleType_OnePlayerTwoSides' then
		PosX = SCREEN_CENTER_X+27
	end
	return PosX
end

-------------------------------------------------------------------------------------------------------------------
-- SurroundLife P2 Y Position
-------------------------------------------------------------------------------------------------------------------
function LifePosYP2()
	local PosY = SCREEN_CENTER_Y
	
	if ThemePrefs.Get("SurroundLife") == "On" then
		PosY = SCREEN_CENTER_Y
	else
		PosY = SCREEN_CENTER_Y+40
	end	
	return PosY
end

-------------------------------------------------------------------------------------------------------------------
-- If Force1PGamemode is ON, Versus Style will be disabled.
-------------------------------------------------------------------------------------------------------------------
function AvailableStyles()

	local Force1PGamemode = ThemePrefs.Get("Force1PGamemode") == "On"
	local options = "1,2,3,"
	
	if Force1PGamemode then
		options = "1,3,"
	else
		options = "1,2,3,"
	end
	return options
end

-------------------------------------------------------------------------------------------------------------------
-- If Force1PGamemode is ON, Battle Mode will be hidden.
-------------------------------------------------------------------------------------------------------------------
function AvailableTitleOptions()
	
	local TO = ThemePrefs.Get("Force1PGamemode") == "On"
	local options = "01,02,03,04,05,07,08,09,11"
	
	if TO then
		options = "01,03,04,05,07,08,09,11"
	else
		options = "01,02,03,04,05,07,08,09,11"
	end
	return options
end

-------------------------------------------------------------------------------------------------------------------
-- This will return the value for IntialValue that indicate the Start Life Value. (Locked for both Players).
-------------------------------------------------------------------------------------------------------------------
function GameplayHandicap()
	
	local GH = ThemePrefs.Get("GameplayHandicap")
	local value = 0.5
	
	if GH == "0.1" then
		value = 0.1
	elseif GH == "0.2" then
		value = 0.2
	elseif GH == "0.3" then
		value = 0.3
	elseif GH == "0.4" then
		value = 0.4
	elseif GH == "0.5" then
		value = 0.5
	elseif GH == "0.6" then
		value = 0.6
	elseif GH == "0.7" then
		value = 0.7
	elseif GH == "0.8" then
		value = 0.8
	elseif GH == "0.9" then
		value = 0.9
	elseif GH == "1.0" then
		value = 1.0
	end
	
	return value
end

-------------------------------------------------------------------------------------------------------------------
-- This will show the next possible Grade to get on ScreenEvaluation.
-- Table that contain all the values for each possible grade.
-------------------------------------------------------------------------------------------------------------------
local pGrades = {
	'Grade_Tier01',
	'Grade_Tier02',
	'Grade_Tier03',
	'Grade_Tier04',
	'Grade_Tier05',
	'Grade_Tier06',
	'Grade_Tier07',
	'Grade_Tier08',
	'Grade_Tier09',
	'Grade_Tier10',
	'Grade_Tier11',
	'Grade_Tier12',
	'Grade_Tier13',
	'Grade_Tier14',
	'Grade_Tier15',
	'Grade_Tier16',
	'Grade_Tier17',
	'Grade_Failed',
}

-------------------------------------------------------------------------------------------------------------------
-- NextGradeP1() LUA Stuffs
-------------------------------------------------------------------------------------------------------------------
function NextGradeP1()
	
	local nGrade = " "
	local sGrade = STATSMAN:GetCurStageStats():GetPlayerStageStats('PlayerNumber_P1',0)
	local cGrade = sGrade:GetGrade(pGrades)
	
	if cGrade == 'Grade_Tier01' then
		nGrade = THEME:GetPathB("","_none")
	elseif cGrade == 'Grade_Tier02' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier01")
	elseif cGrade == 'Grade_Tier03' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier02")
	elseif cGrade == 'Grade_Tier04' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier03")
	elseif cGrade == 'Grade_Tier05' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier04")
	elseif cGrade == 'Grade_Tier06' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier05")
	elseif cGrade == 'Grade_Tier07' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier06")
	elseif cGrade == 'Grade_Tier08' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier07")
	elseif cGrade == 'Grade_Tier09' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier08")
	elseif cGrade == 'Grade_Tier10' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier09")
	elseif cGrade == 'Grade_Tier11' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier10")
	elseif cGrade == 'Grade_Tier12' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier11")
	elseif cGrade == 'Grade_Tier13' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier12")
	elseif cGrade == 'Grade_Tier14' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier13")
	elseif cGrade == 'Grade_Tier15' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier14")
	elseif cGrade == 'Grade_Tier16' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier15")
	elseif cGrade == 'Grade_Tier17' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier16")
	elseif cGrade == 'Grade_Failed' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier17")
	end
	return nGrade
end

-------------------------------------------------------------------------------------------------------------------
-- NextGradeP2() LUA Stuffs
-------------------------------------------------------------------------------------------------------------------
function NextGradeP2()
	
	local nGrade = " "
	local sGrade = STATSMAN:GetCurStageStats():GetPlayerStageStats('PlayerNumber_P2',1)
	local cGrade = sGrade:GetGrade(pGrades)
	
	if cGrade == 'Grade_Tier01' then
		nGrade = THEME:GetPathB("","_none")
	elseif cGrade == 'Grade_Tier02' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier01")
	elseif cGrade == 'Grade_Tier03' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier02")
	elseif cGrade == 'Grade_Tier04' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier03")
	elseif cGrade == 'Grade_Tier05' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier04")
	elseif cGrade == 'Grade_Tier06' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier05")
	elseif cGrade == 'Grade_Tier07' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier06")
	elseif cGrade == 'Grade_Tier08' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier07")
	elseif cGrade == 'Grade_Tier09' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier08")
	elseif cGrade == 'Grade_Tier10' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier09")
	elseif cGrade == 'Grade_Tier11' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier10")
	elseif cGrade == 'Grade_Tier12' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier11")
	elseif cGrade == 'Grade_Tier13' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier12")
	elseif cGrade == 'Grade_Tier14' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier13")
	elseif cGrade == 'Grade_Tier15' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier14")
	elseif cGrade == 'Grade_Tier16' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier15")
	elseif cGrade == 'Grade_Tier17' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier16")
	elseif cGrade == 'Grade_Failed' then	
		nGrade = THEME:GetPathG("","GradeDisplayEval Tier17")
	end
	return nGrade
end











