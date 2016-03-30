return Def.ActorFrame{
	LoadActor("_jump")..{
		InitCommand=cmd(x,-127+100;y,225+5;shadowlength,2);
		OnCommand=cmd(decelerate,0.3;y,125+5;zoom,0);
		OffCommand=cmd(linear,0.4;diffusealpha,0);
	};
	LoadActor("_hold")..{
		InitCommand=cmd(x,-102+100;y,225+5;shadowlength,2);
		OnCommand=cmd(sleep,0.1;decelerate,0.3;y,125+5;zoom,0);
		OffCommand=cmd(linear,0.4;diffusealpha,0);
	};
	LoadActor("_mine")..{
		InitCommand=cmd(x,-77+100;y,225+5;shadowlength,2);
		OnCommand=cmd(sleep,0.2;decelerate,0.3;y,125+5;zoom,0);
		OffCommand=cmd(linear,0.4;diffusealpha,0);
	};
	LoadActor("_hand")..{
		InitCommand=cmd(x,-52+100;y,225+5;shadowlength,2);
		OnCommand=cmd(sleep,0.3;decelerate,0.3;y,125+5;zoom,0);
		OffCommand=cmd(linear,0.4;diffusealpha,0);
	};
	LoadActor("_roll")..{
		InitCommand=cmd(x,-27+100;y,225+5;shadowlength,2);
		OnCommand=cmd(sleep,0.4;decelerate,0.3;y,125+5;zoom,0);
		OffCommand=cmd(linear,0.4;diffusealpha,0);
	};

};