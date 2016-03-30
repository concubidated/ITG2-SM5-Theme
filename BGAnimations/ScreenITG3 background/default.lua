local t = Def.ActorFrame{};

-- Background
t[#t+1] = Def.ActorFrame{
	OnCommand=cmd(fov,105;zoomy,1.3;zoomx,1.5);
	LoadActor( "../ScreenWithMenuElements background/_bg" )
};

t[#t+1] = Def.ActorFrame{
	OnCommand=cmd(fov,1);
	LoadActor( ThemePrefs.Get("ThemeColor") )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoom,0.8);
	};
};

-- Background
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(zoomx,1.2);
	LoadActor( "nostreak" )..{
		InitCommand=cmd(wag;effectmagnitude,10,0,0;effectperiod,8);
	};
};

-- Streak
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;wag;effectmagnitude,10,5,0;effectperiod,12);
	OnCommand=cmd(diffusealpha,0.2);
	
	LoadActor( "streak" )..{
		OnCommand=cmd(zoom,1.5;y,-200;z,-100;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.6,0,0.65,1;texcoordvelocity,0.16,0;diffuse,color("#DA7979");diffusealpha,0.1);
	};
	LoadActor( "streak" )..{
		OnCommand=cmd(zoom,1.5;y,-160;z,-200;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.9,0,0.95,1;texcoordvelocity,0.14,0;diffuse,color("#DA7979");diffusealpha,0.1);
	};
	LoadActor( "streak" )..{
		OnCommand=cmd(zoom,1.5;y,-120;z,-300;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.2,0,0.25,1;texcoordvelocity,0.12,0;diffuse,color("#DA7979");diffusealpha,0.2);
	};
	LoadActor( "streak" )..{
		OnCommand=cmd(zoom,1.5;y,-80;z,-400;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.5,0,0.55,1;texcoordvelocity,0.10,0;diffuse,color("#DA7979");diffusealpha,0.2);
	};
	LoadActor( "streak" )..{
		OnCommand=cmd(zoom,1.5;y,-40;z,-500;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.5,0,0.55,1;texcoordvelocity,0.08,0;diffuse,color("#DA7979");diffusealpha,0.3);
	};
	LoadActor( "streak" )..{
		OnCommand=cmd(zoom,1.5;y,0;z,-600;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.8,0,0.85,1;texcoordvelocity,0.07,0;diffuse,color("#DA7979");diffusealpha,0.3);
	};
	LoadActor( "streak" )..{
		OnCommand=cmd(zoom,1.5;y,40;z,-500;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.9,0,0.95,1;texcoordvelocity,0.09,0;diffuse,color("#DA7979");diffusealpha,0.3);
	};
	LoadActor( "streak" )..{
		OnCommand=cmd(zoom,1.5;y,80;z,-400;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.2,0,0.25,1;texcoordvelocity,0.11,0;diffuse,color("#DA7979");diffusealpha,0.2);
	};
	LoadActor( "streak" )..{
		OnCommand=cmd(zoom,1.5;y,120;z,-300;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.2,0,0.25,1;texcoordvelocity,0.13,0;diffuse,color("#DA7979");diffusealpha,0.2);
	};
	LoadActor( "streak" )..{
		OnCommand=cmd(zoom,1.5;y,160;z,-200;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.5,0,0.55,1;texcoordvelocity,0.15,0;diffuse,color("#DA7979");diffusealpha,0.1);
	};
	LoadActor( "streak" )..{
		OnCommand=cmd(zoom,1.5;y,200;z,-100;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.8,0,0.85,1;texcoordvelocity,0.17,0;diffuse,color("#DA7979");diffusealpha,0.1);
	};
};

return t;