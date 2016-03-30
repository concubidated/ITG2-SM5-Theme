return Def.ActorFrame{
	LoadActor("bgoverlay")..{
		InitCommand=cmd(diffusealpha,0.3;stretchto,SCREEN_LEFT,SCREEN_TOP,SCREEN_RIGHT,SCREEN_BOTTOM);
	};
	LoadActor("nexuswave")..{
		InitCommand=cmd(diffusealpha,0.5;stretchto,SCREEN_LEFT,SCREEN_TOP,SCREEN_RIGHT,SCREEN_BOTTOM;blend,'BlendMode_Add');
	};
	LoadActor("shine1")..{
		InitCommand=cmd(horizalign,left;vertalign,top;x,SCREEN_LEFT;y,SCREEN_TOP;blend,'BlendMode_Add';diffuseshift;effectperiod,2;effectcolor2,1,1,1,0.5);
	};
	LoadActor("shine3")..{
		InitCommand=cmd(horizalign,right;vertalign,top;x,SCREEN_RIGHT;y,SCREEN_TOP;blend,'BlendMode_Add';diffuseshift;effectperiod,3;effectcolor2,1,1,1,0.5);
	};
};