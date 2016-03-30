return Def.ActorFrame{

	InitCommand=cmd(draworder,-20;visible,IsNetConnected());
	LoadActor("blackscreen")..{
		InitCommand=cmd(Center;diffusealpha,1);
		OnCommand=cmd(zoom,1);
	};

};