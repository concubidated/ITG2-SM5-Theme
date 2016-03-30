local t = Def.ActorFrame {
	-- Stage Manager
	LoadActor("_stage1")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-380;y,SCREEN_CENTER_Y-180;visible,GAMESTATE:GetCurrentStage() == "Stage_1st");
		OnCommand=cmd(zoom,0.7);
	};
	LoadActor("_stage2")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-380;y,SCREEN_CENTER_Y-180;visible,GAMESTATE:GetCurrentStage() == "Stage_2nd");
		OnCommand=cmd(zoom,0.7);
	};
	LoadActor("_stage3")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-380;y,SCREEN_CENTER_Y-180;visible,GAMESTATE:GetCurrentStage() == "Stage_3rd");
		OnCommand=cmd(zoom,0.7);
	};
	LoadActor("_stage4")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-380;y,SCREEN_CENTER_Y-180;visible,GAMESTATE:GetCurrentStage() == "Stage_4th");
		OnCommand=cmd(zoom,0.7);
	};
	LoadActor("_stage5")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-380;y,SCREEN_CENTER_Y-180;visible,GAMESTATE:GetCurrentStage() == "Stage_5th");
		OnCommand=cmd(zoom,0.7);
	};
	LoadActor("_stage6")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-380;y,SCREEN_CENTER_Y-180;visible,GAMESTATE:GetCurrentStage() == "Stage_6th");
		OnCommand=cmd(zoom,0.7);
	};
	LoadActor("_stageFinal")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-380;y,SCREEN_CENTER_Y-180;visible,GAMESTATE:GetCurrentStage() == "Stage_Final");
		OnCommand=cmd(zoom,0.7);
	};
	LoadActor("_stageEvent")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-380;y,SCREEN_CENTER_Y-180;visible,GAMESTATE:GetCurrentStage() == "Stage_Event");
		OnCommand=cmd(zoom,0.7);
	};
};

return t;