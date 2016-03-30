local t = LoadFallbackB();

-- Header Stuffs
t[#t+1] = Def.ActorFrame{
	LoadActor("../_Headers/_OnlinePlay")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_CENTER_Y-200;draworder,1;);
		OnCommand=cmd(zoom,0.5);
	};
};

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(draworder,-20);
	LoadActor("../ScreenWithMenuElements underlay/_headerbar")..{
		InitCommand=cmd(draworder,-1;CenterX;y,SCREEN_TOP+40);
		OnCommand=cmd(zoomx,1;zoomy,0.7);
	};
};

return t