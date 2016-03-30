return Def.ActorFrame{

	LoadActor( ThemePrefs.Get("ThemeColor") )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
	};

};