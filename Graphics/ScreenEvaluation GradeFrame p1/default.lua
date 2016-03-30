local t = Def.ActorFrame{
	Def.ActorFrame{
		Name="JudgeFrames";
		Def.ActorFrame{
			
			LoadFont("Common Normal")..{
				Text="Fantastic";
				InitCommand=cmd(x,-235;y,22;horizalign,left;);
				OnCommand=cmd(zoom,0.5;diffusebottomedge,color("#FFFFFF");cropright,1.3;faderight,0.1;sleep,3.60;linear,0.7;cropright,-0.3);
				OffCommand=cmd(linear,0.2;diffusealpha,0);
			};
		};
		Def.ActorFrame{

			LoadFont("Common Normal")..{
				Text="Excellent";
				InitCommand=cmd(x,-235;y,22+16;horizalign,left;);
				OnCommand=cmd(zoom,0.5;diffusebottomedge,color("#FFFFFF");cropright,1.3;faderight,0.1;sleep,3.60;linear,0.7;cropright,-0.3);
				OffCommand=cmd(linear,0.2;diffusealpha,0);
			};
		};
		Def.ActorFrame{

			LoadFont("Common Normal")..{
				Text="Great";
				InitCommand=cmd(x,-235;y,22+16*2;horizalign,left;);
				OnCommand=cmd(zoom,0.5;diffusebottomedge,color("#FFFFFF");cropright,1.3;faderight,0.1;sleep,3.60;linear,0.7;cropright,-0.3);
				OffCommand=cmd(linear,0.2;diffusealpha,0);
			};
		};
		Def.ActorFrame{

			LoadFont("Common Normal")..{
				Text="Decent";
				InitCommand=cmd(x,-235;y,22+16*3;horizalign,left;);
				OnCommand=cmd(zoom,0.5;diffusebottomedge,color("#FFFFFF");cropright,1.3;faderight,0.1;sleep,3.60;linear,0.7;cropright,-0.3);
				OffCommand=cmd(linear,0.2;diffusealpha,0);
			};
		};
		Def.ActorFrame{

			LoadFont("Common Normal")..{
				Text="Way Off";
				InitCommand=cmd(x,-235;y,22+16*4;horizalign,left;);
				OnCommand=cmd(zoom,0.5;diffusebottomedge,color("#FFFFFF");cropright,1.3;faderight,0.1;sleep,3.60;linear,0.7;cropright,-0.3);
				OffCommand=cmd(linear,0.2;diffusealpha,0);
			};
		};
		Def.ActorFrame{

			LoadFont("Common Normal")..{
				Text="Miss";
				InitCommand=cmd(x,-235;y,22+16*5;horizalign,left;);
				OnCommand=cmd(zoom,0.5;diffusebottomedge,color("#FFFFFF");cropright,1.3;faderight,0.1;sleep,3.60;linear,0.7;cropright,-0.3);
				OffCommand=cmd(linear,0.2;diffusealpha,0);
			};
		};
	};
	
	Def.ActorFrame{
		Name="LabelFrame";
		InitCommand=cmd(draworder,400;x,SCREEN_CENTER_X-300;y,SCREEN_CENTER_Y-300);

		LoadFont("Common Normal")..{
			Text="Jumps";
				InitCommand=cmd(x,-173;y,82;horizalign,left;);
				OnCommand=cmd(zoom,0.5;diffusebottomedge,color("#FFFFFF");cropright,1.3;faderight,0.1;sleep,3.60;linear,0.7;cropright,-0.3);
				OffCommand=cmd(linear,0.2;diffusealpha,0);
		};
		LoadFont("Common Normal")..{
			Text="Holds";
				InitCommand=cmd(x,-174;y,82+16;horizalign,left;);
				OnCommand=cmd(zoom,0.5;diffusebottomedge,color("#FFFFFF");cropright,1.3;faderight,0.1;sleep,3.60;linear,0.7;cropright,-0.3);
				OffCommand=cmd(linear,0.2;diffusealpha,0);
		};
		LoadFont("Common Normal")..{
			Text="Mines";
				InitCommand=cmd(x,-174;y,82+16*2;horizalign,left;);
				OnCommand=cmd(zoom,0.5;diffusebottomedge,color("#FFFFFF");cropright,1.3;faderight,0.1;sleep,3.60;linear,0.7;cropright,-0.3);
				OffCommand=cmd(linear,0.2;diffusealpha,0);
		};
		LoadFont("Common Normal")..{
			Text="Hands";
				InitCommand=cmd(x,-174;y,82+16*3;horizalign,left;);
				OnCommand=cmd(zoom,0.5;diffusebottomedge,color("#FFFFFF");cropright,1.3;faderight,0.1;sleep,3.60;linear,0.7;cropright,-0.3);
				OffCommand=cmd(linear,0.2;diffusealpha,0);
		};
		LoadFont("Common Normal")..{
			Text="Rolls";
				InitCommand=cmd(x,-174;y,82+16*4;horizalign,left;);
				OnCommand=cmd(zoom,0.5;diffusebottomedge,color("#FFFFFF");cropright,1.3;faderight,0.1;sleep,3.60;linear,0.7;cropright,-0.3);
				OffCommand=cmd(linear,0.2;diffusealpha,0);
		};
		LoadFont("Common Normal")..{
			Text="Max Combo";
				InitCommand=cmd(x,-174;y,82+16*5;horizalign,left;);
				OnCommand=cmd(zoom,0.5;diffusebottomedge,color("#FFFFFF");cropright,1.3;faderight,0.1;sleep,3.60;linear,0.7;cropright,-0.3);
				OffCommand=cmd(linear,0.2;diffusealpha,0);
		};
	};

	LoadActor( ThemePrefs.Get("ThemeColor") )..{
		InitCommand=cmd(draworder,-50;x,-52;y,-10;addx,-EvalTweenDistance(););
		OnCommand=cmd(sleep,3;decelerate,0.3;addx,EvalTweenDistance());
		OffCommand=cmd(accelerate,0.3;addx,-EvalTweenDistance());
	};
};

return t;