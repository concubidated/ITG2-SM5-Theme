local t = LoadFallbackB();

t[#t+1] = Def.ActorFrame{
	LoadActor("../_Headers/_EditManager")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_CENTER_Y-200;draworder,1;);
		OnCommand=cmd(zoom,0.5);
	};
};

t[#t+1] = Def.ActorFrame{
	LoadActor("../ScreenTitleMenu background/_footer")..{
		InitCommand=cmd(draworder,-5;CenterX;y,SCREEN_BOTTOM-30);
		OnCommand=cmd(zoomx,1;zoomy,0.80);
	};
};

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(draworder,-1);
	LoadActor("../ScreenWithMenuElements underlay/_headerbar")..{
		InitCommand=cmd(CenterX;y,SCREEN_TOP+40);
		OnCommand=cmd(zoomx,1;zoomy,0.7);
	};
};

return t