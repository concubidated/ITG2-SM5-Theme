return Def.ActorFrame{

	LoadActor("_Saving")..{
	BeginCommand=cmd(zoom,0.8);
		InitCommand=cmd(x,SCREEN_CENTER_X;CenterY);
		OnCommand=function(self)
			if SCREENMAN:GetTopScreen():HaveProfileToSave() then
				self:sleep(1)
				self:zoom(0.8)
			end
		end;
	};

	Def.Actor{
		BeginCommand=function(self)
			if SCREENMAN:GetTopScreen():HaveProfileToSave() then self:sleep(1.5); end;
			self:queuecommand("Load");
		end;
		LoadCommand=function() SCREENMAN:GetTopScreen():Continue(); end;
	};
};