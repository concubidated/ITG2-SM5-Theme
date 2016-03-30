local t = LoadFallbackB();

t[#t+1] = StandardDecorationFromFileOptional("StageDisplay","StageDisplay")

if GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then

t[#t+1] = LoadActor("zrave")..{
	InitCommand=cmd(draworder,999;zoom,1;x,SCREEN_CENTER_X-427;y,SCREEN_TOP);
};

end

if GAMESTATE:GetPlayMode() ~= 'PlayMode_Rave' then

t[#t+1] = LoadActor("normal")..{
	InitCommand=cmd(draworder,999;zoom,1;x,SCREEN_CENTER_X-427;y,SCREEN_TOP;);
};

end

if ThemePrefs.Get("SurroundLife") == "On" then

	local OnePlayerOneSide = GAMESTATE:GetCurrentStyle():GetStyleType() == 'StyleType_OnePlayerOneSide'
	local TwoPlayersTwoSides = GAMESTATE:GetCurrentStyle():GetStyleType() == 'StyleType_TwoPlayersTwoSides'	

	if GAMESTATE:IsHumanPlayer('PlayerNumber_P1',0) and OnePlayerOneSide or TwoPlayersTwoSides then
		t[#t+1] = LoadActor("SurroundFrame")..{
			InitCommand=cmd(CenterY;x,SCREEN_CENTER_X-347);
			OnCommand=cmd(zoomx,0.4;zoomy,0.9);
		};

		t[#t+1] = LoadActor("SurroundFrame")..{
			InitCommand=cmd(CenterY;x,SCREEN_CENTER_X-25);
			OnCommand=cmd(zoomx,0.4;zoomy,0.9);
		};
	end

	if GAMESTATE:IsHumanPlayer('PlayerNumber_P2',1) and OnePlayerOneSide or TwoPlayersTwoSides then
		t[#t+1] = LoadActor("SurroundFrame")..{
			InitCommand=cmd(CenterY;x,SCREEN_CENTER_X+25);
			OnCommand=cmd(zoomx,0.4;zoomy,0.9);
		};

		t[#t+1] = LoadActor("SurroundFrame")..{
			InitCommand=cmd(CenterY;x,SCREEN_CENTER_X+347);
			OnCommand=cmd(zoomx,0.4;zoomy,0.9);
		};
	end
	
	-- Double
	if GAMESTATE:GetCurrentStyle():GetStyleType() == 'StyleType_OnePlayerTwoSides' then
		t[#t+1] = LoadActor("SurroundFrame")..{
			InitCommand=cmd(CenterY;x,SCREEN_CENTER_X-347);
			OnCommand=cmd(zoomx,0.6;zoomy,0.9);
		};

		t[#t+1] = LoadActor("SurroundFrame")..{
			InitCommand=cmd(CenterY;x,SCREEN_CENTER_X+347);
			OnCommand=cmd(zoomx,0.6;zoomy,0.9);
		};
	end

end

return t