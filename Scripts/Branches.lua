function ScreenCleaning()
	if Hour() > 2 and Hour() < 7 and GetScreenCleaning() == true then return "ScreenNoise" end
	return "ScreenCompany";
end

Branch.TitleScreen = function()
	if GAMESTATE:GetCoinMode() == 'CoinMode_Home' then
		return "ScreenTitleMenu"
	end
	-- workout menu
	if MonthOfYear() == 4 and DayOfMonth() == 1 then
		return "ScreenTitleAlt"
	end
	return "ScreenTitleJoin"
end

Branch.StartGame = function()
	if GAMESTATE:GetCoinMode() == 'CoinMode_Home' then
		-- check game mode to pick Style/NumPlayers
		if GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then
			return "ScreenSelectNumPlayers"
		end
		return "ScreenSelectStyle"
	else
		-- arcade mode!
		if PREFSMAN:GetPreference("ShowCaution") then return "ScreenWarning" end
		return "ScreenSelectGameMode"
	end
	return "ScreenSelectGameMode"
end

Branch.AfterSelectStyle = function()
	if GAMESTATE:IsCourseMode() then return "ScreenSelectCourse" end
	if IsNetSMOnline() then return "ScreenNotAllowed" end
	if IsNetConnected() then return "ScreenNotAllowed" end
	return "ScreenSelectMusic"
end