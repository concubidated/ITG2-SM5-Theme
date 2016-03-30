return Def.ActorFrame{
	LoadActor("case")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-240;y,SCREEN_CENTER_Y;rotationy,-60;zoom,3;spin;effectmagnitude,0,40,0);
	};
	
	Def.ActorFrame{
		InitCommand=cmd(draworder,-1;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y;rotationy,-10);
		LoadActor("streak")..{
			InitCommand=cmd(zoom,0.5;fadeleft,0.3;faderight,0.3;cropleft,1.3;cropright,-0.3;linear,1;cropleft,-0.3;zoom,3;linear,11;zoom,2.8);
		};
	};
	
	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y-52);
		OnCommand=cmd(zoom,0.8;addx,600;sleep,0.5;decelerate,0.5;addx,-600);
			LoadActor("in")..{
				OnCommand=cmd(x,-240;y,-70;shadowlength,2);
			};
			LoadActor("the")..{
				OnCommand=cmd(x,-106;y,-70;shadowlength,2);
			};
			LoadActor("groove")..{
				OnCommand=cmd(x,-50;y,26;shadowlength,2);
			};
	};

	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y-52);
		OnCommand=cmd(zoom,0.8;addx,600;sleep,0.5;decelerate,0.5;addx,-600);
			LoadFont("Common Normal")..{
				Text="for PlayStation® 2";
				InitCommand=cmd(horizalign,right;x,170;y,110;shadowlength,2;zoom,1.4);
			};
	
			LoadFont("Common Normal")..{
				Text="In Stores Now";
				InitCommand=cmd(horizalign,right;x,170;y,150;shadowlength,2;zoom,1.4);
			};
	
			LoadFont("_big glow")..{
				Text="www.inthegroove.com";
				InitCommand=cmd(x,-48;y,200;shadowlength,2;zoom,1.0);
			};
	};

	Def.Quad{
		InitCommand=cmd(Center;FullScreen;diffusealpha,1;);
		OnCommand=cmd(sleep,0.1;accelerate,0.5;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("ScreenAttract","overlay"));
};