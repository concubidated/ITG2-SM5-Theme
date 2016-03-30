return Def.ActorFrame{

	LoadActor("../_Headers/_SelectStyle")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_CENTER_Y-200;draworder,1;);
		OnCommand=cmd(zoomx,0;zoomy,3;bounceend,0.2;zoom,0.5);
	};

	LoadActor("../ScreenWithMenuElements underlay/_headerbar")..{
		InitCommand=cmd(draworder,-1;CenterX;y,SCREEN_TOP+40);
		OnCommand=cmd(zoomx,1;zoomy,0.7);
	};
	
	LoadActor("../ScreenTitleMenu background/_footer")..{
		InitCommand=cmd(draworder,45;CenterX;y,SCREEN_BOTTOM-35);
		OnCommand=cmd(zoomx,1;zoomy,0.8);
	};

	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+13;z,-100;zoom,1.6);
		LoadActor("char")..{
			InitCommand=cmd(zoom,0.55;zbuffer,true;glow,color("1,1,1,0");diffusealpha,0;linear,0.3;glow,color("1,1,1,1");sleep,0.001;diffusealpha,1;linear,0.3;glow,color("1,1,1,0"));
			MadeChoiceP1MessageCommand=cmd(playcommand,"GoOff");
			MadeChoiceP2MessageCommand=cmd(playcommand,"GoOff");
			GoOffCommand=cmd(sleep,.2;linear,0.3;diffusealpha,0;);
		};
	};

	LoadActor(THEME:GetPathB("explanation","frame"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X+100;y,SCREEN_CENTER_Y+138;horizalign,center;diffusealpha,0;);
		OnCommand=cmd(linear,0.5;diffusealpha,0.8);
		MadeChoiceP1MessageCommand=cmd(playcommand,"GoOff");
		MadeChoiceP2MessageCommand=cmd(playcommand,"GoOff");
		GoOffCommand=cmd(linear,0.5;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("_shared","underlay arrows"))..{
		InitCommand=cmd(x,184);
	};
};