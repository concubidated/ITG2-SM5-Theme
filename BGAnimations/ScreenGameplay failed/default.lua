return Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(Center;FullScreen;diffuse,color("#00000000"));
		OnCommand=cmd(linear,1.5;diffusealpha,1);
	};
	
	--[[LoadActor("pandemonium skull")..{
		InitCommand=cmd(Center);
		OnCommand=cmd(zoom,3.6;rotationz,-30;diffusealpha,0;sleep,3;linear,1;diffusealpha,1;zoom,3.2;linear,2;zoom,2.4;linear,1;diffusealpha,0;zoom,2.0);
	};]]

	LoadActor("../_red streak")..{
		InitCommand=cmd(Center);
		OnCommand=cmd(zoom,3.2;rotationz,-30;fadeleft,0.3;faderight,0.3;cropleft,1.3;cropright,-0.3;linear,1;cropleft,-0.3;zoom,2.8;linear,2;zoom,2.0;linear,1;cropright,1.3;zoom,1.6);
	};
	
	LoadActor(THEME:GetPathS( Var "LoadingScreen", "failed" ) ) .. {
		StartTransitioningCommand=cmd(play);
	};
	
	LoadActor("life")..{
		OnCommand=cmd(zoom,0.85;rotationz,-30;x,SCREEN_CENTER_X-42;y,SCREEN_CENTER_Y-32;addx,SCREEN_WIDTH*1.3;addy,-SCREEN_HEIGHT;decelerate,0.5;addx,-SCREEN_WIDTH*1.3;addy,SCREEN_HEIGHT;sleep,2;accelerate,0.5;addx,-SCREEN_WIDTH*1.3;addy,SCREEN_HEIGHT);
	};
	
	LoadActor("depleted")..{
		OnCommand=cmd(zoom,0.85;rotationz,-30;x,SCREEN_CENTER_X+42;y,SCREEN_CENTER_Y+32;addx,-SCREEN_WIDTH*1.3;addy,SCREEN_HEIGHT;decelerate,0.5;addx,SCREEN_WIDTH*1.3;addy,-SCREEN_HEIGHT;sleep,2;accelerate,0.5;addx,SCREEN_WIDTH*1.3;addy,-SCREEN_HEIGHT);
	};
	
	LoadActor("../_blue streak")..{
		InitCommand=cmd(Center);
		OnCommand=cmd(zoom,3.6;rotationz,-30;fadeleft,0.3;faderight,0.3;cropleft,1.3;cropright,-0.3;sleep,2.5;linear,1;cropleft,-0.3;zoom,3.2;linear,3;zoom,2.0;linear,1;cropright,1.3;zoom,1.6);
	};
	
	LoadActor("round")..{
		OnCommand=cmd(zoom,0.85;rotationz,-30;x,SCREEN_CENTER_X-90;y,SCREEN_CENTER_Y;addx,SCREEN_WIDTH*1.3;addy,-SCREEN_HEIGHT;sleep,2.5;decelerate,0.5;addx,-SCREEN_WIDTH*1.3;addy,SCREEN_HEIGHT;sleep,3;accelerate,0.5;addx,-SCREEN_WIDTH*1.3;addy,SCREEN_HEIGHT);
	};
	
	LoadActor("failed")..{
		OnCommand=cmd(zoom,0.85;rotationz,-30;x,SCREEN_CENTER_X+100;y,SCREEN_CENTER_Y;addx,-SCREEN_WIDTH*1.3;addy,SCREEN_HEIGHT;sleep,2.5;decelerate,0.5;addx,SCREEN_WIDTH*1.3;addy,-SCREEN_HEIGHT;sleep,3;accelerate,0.5;addx,SCREEN_WIDTH*1.3;addy,-SCREEN_HEIGHT);
	};
	
	Def.ActorFrame{
		InitCommand=cmd(rotationz,-30;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,6;accelerate,0.5;addx,SCREEN_WIDTH*1.3;addy,-SCREEN_HEIGHT);
		OnCommand=cmd(visible,GAMESTATE:GetCurrentSong() and GAMESTATE:GetCurrentSong() == SONGMAN:FindSong('In The Groove 2/VerTex^2'));
			LoadActor("2")..{
				OnCommand=cmd(x,290;y,10;zoomy,2;zoomx,0;diffusealpha,0;sleep,3.5;decelerate,1;accelerate,.2;diffusealpha,1;zoom,1);
			};
	};
	
	Def.Quad{
		InitCommand=cmd(Center;FullScreen;diffuse,color("#00000000"));
		OnCommand=cmd(sleep,6;linear,.3;diffusealpha,1);
	};
	
};