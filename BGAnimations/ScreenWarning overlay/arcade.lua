return Def.ActorFrame{
	LoadActor(THEME:GetPathG("_platform","double"))..{
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y+140;zoom,1.4;);
		OnCommand=cmd(spin;effectmagnitude,0,60,0);
	};
};