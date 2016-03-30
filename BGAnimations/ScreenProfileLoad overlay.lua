return Def.ActorFrame{

	LoadActor("_Loading")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;CenterY;);
		OnCommand=cmd(zoom,0.8);
	};

	Def.Actor{
		BeginCommand=function(self)
			if SCREENMAN:GetTopScreen():HaveProfileToLoad() then self:sleep(1.5); end;
			self:queuecommand("Load");
		end;
		LoadCommand=function() SCREENMAN:GetTopScreen():Continue(); end;
	};
};