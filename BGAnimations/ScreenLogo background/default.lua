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
		LoadActor("itg2logo")..{
			OnCommand=cmd(zoom,0;sleep,0.1;bounceend,0.4;zoom,0.55);
		};
	};


	LoadActor("roxor")..{
		InitCommand=cmd(x,SCREEN_LEFT+80;y,SCREEN_TOP+23);
		OnCommand=cmd(zoomx,0.55;zoomy,0.4);
	};

};

return t;