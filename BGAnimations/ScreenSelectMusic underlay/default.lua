local mask = GAMESTATE:IsCourseMode() and "_course banner mask" or "_banner mask"

local t = Def.ActorFrame{

	LoadActor(mask)..{
		InitCommand=cmd(draworder,999;Center;zwrite,true;blend,'BlendMode_NoEffect');
		OnCommand=cmd(x,340;horizalign,left;zoomx,0.8;zoomy,0.85);
	};
	
	LoadActor("../_Headers/_SelectMusic")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_CENTER_Y-215;draworder,1;);
		OnCommand=cmd(zoomx,0;zoomy,3;bounceend,0.2;zoom,0.5);
	};

	LoadActor("../ScreenWithMenuElements underlay/_headerbar")..{
		InitCommand=cmd(draworder,-1;CenterX;y,SCREEN_TOP+25);
		OnCommand=cmd(zoomx,1;zoomy,0.7);
	};
	
	LoadActor("../ScreenTitleMenu background/_footer")..{
		InitCommand=cmd(draworder,45;CenterX;y,SCREEN_BOTTOM-35);
		OnCommand=cmd(zoomx,1;zoomy,0.8);
	};

};

return t;