local t = LoadFallbackB();

-- Header Stuffs
t[#t+1] = Def.ActorFrame{
	LoadActor("black")..{
		InitCommand=cmd(Center;draworder,1;);
		OnCommand=cmd(zoom,1;diffusealpha,0.6);
	};
};

return t