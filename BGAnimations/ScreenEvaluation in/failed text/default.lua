return Def.ActorFrame{

	LoadActor( ThemePrefs.Get("ThemeColor") )..{
			InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y+130;cropright,1.3;faderight,0.1;);
			OnCommand=cmd(sleep,0.35;linear,0.7;cropright,-0.3;sleep,1.95;linear,0.3;diffuse,color("0,0,0,0"));
	};

};