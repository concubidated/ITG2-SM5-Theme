return Def.ActorFrame{

	LoadActor("_Loading")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-120;CenterY;diffusealpha,0;);
		OnCommand=cmd(zoom,1);
	};
};