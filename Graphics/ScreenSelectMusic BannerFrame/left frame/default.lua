return Def.ActorFrame{

	InitCommand=cmd(Center);
		LoadActor( ThemePrefs.Get("ThemeColor") )..{
			OnCommand=cmd(x,-360;y,-1;zoomx,0.8;zoomy,0.85;);
		};

};