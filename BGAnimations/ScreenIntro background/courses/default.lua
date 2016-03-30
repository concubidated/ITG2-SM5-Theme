return Def.ActorFrame{
	Def.ActorFrame{
		Name="CourseList";
		InitCommand=cmd(x,SCREEN_RIGHT-20;y,SCREEN_BOTTOM-200;);
		OnCommand=cmd(sleep,19;linear,6;y,SCREEN_TOP+200);
		LoadFont("Common Normal")..{
			Text=GetRandomCourseNames(23);
			InitCommand=cmd(horizalign,right;zoom,0.8;diffusealpha,0;);
			OnCommand=cmd(sleep,19.5;linear,0.5;diffusealpha,0.3;linear,3;linear,0.5;diffusealpha,0.0);
		};
	};

	Def.Quad{
		InitCommand=cmd(x,SCREEN_RIGHT+SCREEN_WIDTH/2;y,SCREEN_TOP+110;zoomtowidth,SCREEN_WIDTH;zoomtoheight,60;diffuse,1,1,1,0.5;sleep,19;bounceend,0.5;fadeleft,0.3;faderight,0.3;x,0;linear,3;addx,100;accelerate,0.5;addx,-SCREEN_WIDTH);
	};
	
	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_LEFT+200;y,SCREEN_TOP+110;);
		LoadFont("Common Normal")..{
			Text="45 courses";
			OnCommand=cmd(skewx,-0.2;shadowlength,4;diffusealpha,0;sleep,19.5;linear,0.3;diffusealpha,1;sleep,3;linear,0.3;diffusealpha,0);
		};
	};
	
	Def.ActorFrame{
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y+150;sleep,19;linear,6;addx,-20;);
		LoadActor("45")..{
			InitCommand=cmd(x,-75;y,-80;diffusealpha,0;);
			OnCommand=cmd(sleep,19.5;linear,0.5;diffusealpha,1;sleep,3;linear,0.5;diffusealpha,0.0);
		};
	};
};