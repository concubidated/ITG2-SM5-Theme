-- ScreenSelectStyle Icon Choice1
return Def.ActorFrame{
	LoadFont("Common Normal")..{
		Text="One Player uses 4 Panels";
		InitCommand=cmd(x,SCREEN_CENTER_X+100;y,SCREEN_CENTER_Y+170;zoom,1;maxwidth,840;horizalign,center;shadowlength,0);
		GainFocusCommand=cmd(visible,true;finishtweening;cropright,1;linear,0.5;cropright,0);
		LoseFocusCommand=cmd(visible,false);
		OffCommand=cmd(linear,0.3;diffusealpha,0);
	};
};