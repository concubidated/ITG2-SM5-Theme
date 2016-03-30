-- so much crap
local t = Def.ActorFrame{
	LoadFont("Common Normal")..{
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-14;zoom,0);
		OnCommand=cmd(diffuseshift;effectcolor1,color("#FFFFFF");effectcolor2,color("#FFFFFF");playcommand,"Refresh");
		OffCommand=cmd(stoptweening;linear,.2;diffusealpha,0);
		RefreshCommand=function(self)
			self:settext(Get2PlayerJoinMessage())
		end;
		JoinedCommand=cmd(linear,.2;diffusealpha,0);
		PlayerJoinedMessageCommand=cmd(playcommand,"Joined");
		CurrentStyleChangedMessageCommand=cmd(playcommand,"Refresh");
		CoinInsertedMessageCommand=cmd(playcommand,"Refresh");
		CoinModeChangedMessageCommand=cmd(playcommand,"Refresh");
	};

};

return t;