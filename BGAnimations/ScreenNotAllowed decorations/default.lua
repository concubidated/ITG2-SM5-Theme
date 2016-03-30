local t = Def.ActorFrame{

	LoadActor("_footer")..{
		InitCommand=cmd(draworder,-5;CenterX;y,SCREEN_BOTTOM-30);
		OnCommand=cmd(zoomx,1;zoomy,0.80);
	};
	
	LoadFont("Common Normal")..{
	Text="What are you trying to do here? Leave and go to play Offline now!";
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y+210);
		OnCommand=cmd(zoom,0.7);
	};
	
	LoadActor("../ScreenWithMenuElements underlay/_headerbar")..{
		InitCommand=cmd(draworder,-1;CenterX;y,SCREEN_TOP+25);
		OnCommand=cmd(zoomx,1;zoomy,0.7);
	};
	
	LoadFont("Common Normal")..{
	Text="The Screen You are looking for has not been found.";
		InitCommand=cmd(CenterX;y,SCREEN_TOP+25);
		OnCommand=cmd(zoom,0.7);
	};
	
	LoadActor("_logobg")..{
		InitCommand=cmd(Center);
		OnCommand=cmd(zoom,1);
	};
	
	LoadActor("_prohibed")..{
		InitCommand=cmd(Center);
		OnCommand=cmd(zoom,0.8);
	};

};

return t;