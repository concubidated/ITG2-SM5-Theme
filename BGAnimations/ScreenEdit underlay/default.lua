return Def.ActorFrame{

	LoadFont("Common Normal")..{
		InitCommand=cmd(x,SCREEN_LEFT+110;y,SCREEN_CENTER_Y-85;shadowlength,0;diffusealpha,0.8;zoom,1;maxwidth,184;playcommand,"Update";);
		UpdateCommand=function(self)
			local steps = GAMESTATE:GetCurrentSteps(GAMESTATE:GetMasterPlayerNumber())
			self:settext( GetCustomDifficulty(steps:GetStepsType(),steps:GetDifficulty(),nil) );
			self:sleep(0.5)
		end;
		CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Update");
	};
	
	LoadActor("../_Headers/_Editor")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_CENTER_Y-200);
		OnCommand=cmd(zoom,0.5);
	};
	
	Def.Banner{
		InitCommand=cmd(x,SCREEN_LEFT+110;y,SCREEN_CENTER_Y-40;diffusealpha,0;ztest,true);
		BeginCommand=function(self)
			self:LoadFromSong(GAMESTATE:GetCurrentSong())
			self:scaletoclipped(136,52)
		end;
		OnCommand=cmd(diffusealpha,1;);
	};

	-- abridged help
};