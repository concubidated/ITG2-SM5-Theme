local t = Def.ActorFrame{

	Def.Quad{
		InitCommand=cmd(stretchto,SCREEN_LEFT,SCREEN_TOP,SCREEN_RIGHT,SCREEN_BOTTOM;diffuse,color("#FFFFFF");diffusealpha,0;sleep,0.1;accelerate,0.5;diffusealpha,1;sleep,0.2;decelerate,0.5;diffusealpha,0);
	};

	LoadActor("titlebg")..{
		InitCommand=cmd(draworder,-50;Center;FullScreen;diffusealpha,0);
		OnCommand=cmd(linear,1.5;diffusealpha,1;);
	};

	Def.ActorFrame{
		Name="LogoFrame";
		InitCommand=cmd(Center);
		LoadActor( ThemePrefs.Get("ITG2Logo") )..{
			OnCommand=cmd(zoom,0;sleep,0.1;bounceend,0.4;zoom,0.55);
		};
	};
	
	Def.ActorFrame{
		Name="LogoFrame";
		LoadActor("_logobg")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;faderight,0.1;fadeleft,0.1;cropright,1.1;cropleft,-0.1;linear,1;cropright,-0.1);
		};
	};
	
	Def.ActorFrame{
		Name="Flare";
		LoadActor("flare")..{
			OnCommand=cmd(y,SCREEN_CENTER_Y-188;x,SCREEN_LEFT-64;rotationz,0;linear,1;x,SCREEN_RIGHT+64;rotationz,360);
		};
		
		LoadActor("flare")..{
			OnCommand=cmd(y,SCREEN_CENTER_Y+185;x,SCREEN_LEFT-64;rotationz,0;linear,1;x,SCREEN_RIGHT+64;rotationz,360);
		};
	};

	LoadActor("roxor")..{
		InitCommand=cmd(x,SCREEN_LEFT+80;y,SCREEN_TOP+23);
		OnCommand=cmd(zoomx,0.55;zoomy,0.4);
	};

	
	LoadActor("_footer")..{
		InitCommand=cmd(draworder,-5;CenterX;y,SCREEN_BOTTOM-30);
		OnCommand=cmd(zoomx,1;zoomy,0.80);
	};

};

return t;