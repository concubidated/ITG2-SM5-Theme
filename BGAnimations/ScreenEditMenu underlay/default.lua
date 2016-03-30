return Def.ActorFrame{
	
	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-5);
		LoadActor("main")..{
			OnCommand=cmd(zoomx,0.9;zoomy,1);
		};
	};
	
	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-5);
		LoadActor("explanation")..{
			OnCommand=cmd(zoomx,0.9;zoomy,1);
		};
	};

};