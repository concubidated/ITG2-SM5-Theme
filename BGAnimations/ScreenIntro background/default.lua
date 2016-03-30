return Def.ActorFrame{
	LoadActor("intro")..{ InitCommand=cmd(Center;zoomto,SCREEN_WIDTH,SCREEN_WIDTH/4*3;rate,.92;sleep,35;diffusealpha,0); };

	Def.Quad{
		InitCommand=cmd(CenterX;y,SCREEN_TOP;vertalign,top;zoomto,SCREEN_WIDTH,(SCREEN_WIDTH/4*.35)/2;diffuse,color("0,0,0,1"));
	};
	Def.Quad{
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM;vertalign,bottom;zoomto,SCREEN_WIDTH,(SCREEN_WIDTH/4*.35)/2;diffuse,color("0,0,0,1"));
	};

	Def.ActorFrame{
		InitCommand=cmd(Center);
		LoadActor("ring")..{
			OnCommand=cmd(rotationz,180;linear,1;rotationz,0;zoom,1.5;diffusealpha,0;linear,1;zoomx,1.1;zoomy,1;diffusealpha,1;linear,1;zoomx,1.0;zoomy,1;linear,0.3;diffusealpha,0);
		};

		LoadFont("Common Normal")..{
			Text="RoXoR Games Presents";
			InitCommand=cmd(cropright,1;faderight,1;);
			OnCommand=cmd(sleep,.1;linear,.2;cropright,0;faderight,0;sleep,2;linear,0.5;diffusealpha,0);
		};
	};
	
	Def.Quad{
		InitCommand=cmd(x,SCREEN_RIGHT+SCREEN_WIDTH/2;y,SCREEN_TOP+110;zoomtowidth,SCREEN_WIDTH;zoomtoheight,60;diffuse,1,1,1,0.5;sleep,4;bounceend,0.5;fadeleft,0.3;faderight,0.3;x,0;linear,3;addx,100;accelerate,0.5;addx,-SCREEN_WIDTH);
	};
	
	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_LEFT+200;y,SCREEN_TOP+110;sleep,2;linear,4;addx,30);
		LoadFont("Common Normal")..{
			Text="In The Groove 2";
			OnCommand=cmd(skewx,-0.2;shadowlength,4;diffusealpha,0;sleep,4.5;linear,0.3;diffusealpha,1;sleep,3;linear,0.3;diffusealpha,0);
		};
	};
	
	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y;sleep,5;linear,4;addx,30);
		LoadActor("2")..{
			OnCommand=cmd(horizalign,right;skewx,-0.05;diffusealpha,0;sleep,4;linear,0.5;diffusealpha,0.5;linear,3;linear,0.5;diffusealpha,0.0);
		};
	};

	LoadActor("songs");
	LoadActor("charts");
	LoadActor("courses");
	LoadActor("mods");

	Def.Quad{
		InitCommand=cmd(Center;FullScreen;diffusealpha,0;);
		OnCommand=cmd(hibernate,34.5;linear,0.5;diffusealpha,1;linear,0.5;diffusealpha,0);
	};
};