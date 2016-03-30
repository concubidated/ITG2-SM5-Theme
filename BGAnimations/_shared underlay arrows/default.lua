return Def.ActorFrame{
	
	Def.ActorFrame{
		Name="LeftArrow";
		InitCommand=cmd(x,SCREEN_LEFT-130;CenterY);
		OnCommand=cmd(queuecommand,"Bob");
		BobCommand=cmd(accelerate,.75;addx,-2;decelerate,.75;addx,-2;accelerate,.75;addx,2;decelerate,.75;addx,2;queuecommand,"Bob");

		LoadActor("arrow")..{
			InitCommand=cmd(zoom,1;addx,-200;);
			OnCommand=cmd(decelerate,0.5;addx,200);
			OffCommand=cmd(zbuffer,true;accelerate,0.5;addx,-300);
			BlinkCommand=cmd(finishtweening;zoom,1;glow,color("1,1,1,1");linear,0.2;glow,color("1,1,1,0");zoom,0.8);
			MenuLeftP1MessageCommand=cmd(playcommand,"Blink");
			MenuLeftP2MessageCommand=cmd(playcommand,"Blink");
			MadeChoiceP1MessageCommand=cmd(playcommand,"Off");
			MadeChoiceP2MessageCommand=cmd(playcommand,"Off");
		};

	};
	Def.ActorFrame{
		Name="RightArrow";
		InitCommand=cmd(x,SCREEN_CENTER_X+190;CenterY);
		OnCommand=cmd(queuecommand,"Bob");
		BobCommand=cmd(accelerate,.75;addx,-2;decelerate,.75;addx,-2;accelerate,.75;addx,2;decelerate,.75;addx,2;queuecommand,"Bob");

		LoadActor("arrow")..{
			InitCommand=cmd(rotationz,180;zoom,1;addx,200;);
			OnCommand=cmd(decelerate,0.5;addx,-200);
			OffCommand=cmd(zbuffer,true;accelerate,0.5;addx,300);
			BlinkCommand=cmd(finishtweening;zoom,1;glow,color("1,1,1,1");linear,0.2;glow,color("1,1,1,0");zoom,0.8);
			MenuRightP1MessageCommand=cmd(playcommand,"Blink");
			MenuRightP2MessageCommand=cmd(playcommand,"Blink");
			MadeChoiceP1MessageCommand=cmd(playcommand,"Off");
			MadeChoiceP2MessageCommand=cmd(playcommand,"Off");
		};

	};
};