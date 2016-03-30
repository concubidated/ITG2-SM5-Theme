-- ScreenSelectPlayMode Icon Choice1
return Def.ActorFrame{
	LoadActor(THEME:GetPathG("","blueflare"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-70;CenterY;blend,Blend.Add;diffusealpha,0);
		GainFocusCommand=cmd(finishtweening;zoom,0;diffusealpha,0;zoomx,7;zoomy,4;diffusealpha,1;linear,.2;zoomy,0;diffusealpha,0);
		LoseFocusCommand=cmd(diffusealpha,0);
		OffCommand=cmd(diffusealpha,0);
	};
	LoadActor(THEME:GetPathG("","blueflare"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-70;CenterY;blend,Blend.Add;diffusealpha,0);
		GainFocusCommand=cmd(finishtweening;zoom,0;diffusealpha,0;zoomx,7;zoomy,4;diffusealpha,1;linear,.4;zoomy,0;diffusealpha,0);
		LoseFocusCommand=cmd(diffusealpha,0);
		OffCommand=cmd(diffusealpha,0);
	};
	LoadFont("_r bold glow 30px")..{
		Text="Good clean dancing fun\nfor all players";
		InitCommand=cmd(x,SCREEN_CENTER_X-88;y,SCREEN_CENTER_Y+95;zoomx,.8;zoomy,.7;maxwidth,300;horizalign,center;shadowlength,0);
		GainFocusCommand=cmd(visible,true;finishtweening;cropright,1;linear,0.5;cropright,0);
		LoseFocusCommand=cmd(visible,false);
		OffCommand=cmd(linear,0.3;diffusealpha,0);
	};
	Def.ActorFrame{
		InitCommand=cmd(y,SCREEN_CENTER_Y+155-270;horizalign,right);
		LoadActor(THEME:GetPathG("_join","icons/dance_icon"))..{
			GainFocusCommand=cmd(accelerate,0.1;diffuse,color("#FFFFFF");x,SCREEN_RIGHT-130);
			LoseFocusCommand=cmd(finishtweening;decelerate,0.1;diffuse,color("#636363");x,SCREEN_RIGHT-110);
			OffFocusCommand=cmd(accelerate,0.4;addx,-SCREEN_WIDTH*.5);
		};
		LoadActor(THEME:GetPathG("_join","icons/gameglow"))..{
			InitCommand=cmd(blend,Blend.Add);
			GainFocusCommand=cmd(accelerate,0.1;diffusealpha,1;x,SCREEN_RIGHT-130;sleep,.07;linear,.2;diffusealpha,0);
			LoseFocusCommand=cmd(finishtweening;decelerate,0.1;x,SCREEN_RIGHT-110;diffusealpha,0);
			OffFocusCommand=cmd(accelerate,0.4;addx,-SCREEN_WIDTH*.5);
		};
	};
};