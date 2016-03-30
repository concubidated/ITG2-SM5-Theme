local t = Def.ActorFrame{
	Def.ActorFrame{
		InitCommand=cmd(y,SCREEN_CENTER_Y-159);
		LoadActor(THEME:GetPathG("_name","badge"),PLAYER_1)..{
			InitCommand=cmd(x,SCREEN_CENTER_X+52;addx,SCREEN_WIDTH*3/4;player,PLAYER_1);
			OnCommand=cmd(sleep,0.1;decelerate,0.3;addx,-SCREEN_WIDTH*3/4);
			OffCommand=cmd(accelerate,0.3;addx,SCREEN_WIDTH);
		};
		LoadActor(THEME:GetPathG("_name","badge"),PLAYER_2)..{
			InitCommand=cmd(x,SCREEN_CENTER_X+220;addx,SCREEN_WIDTH*3/4;player,PLAYER_2);
			OnCommand=cmd(sleep,0.2;decelerate,0.3;addx,-SCREEN_WIDTH*3/4);
			OffCommand=cmd(accelerate,0.3;addx,SCREEN_WIDTH);
		};
	};

	Def.Quad{
		InitCommand=cmd(FullScreen;visible,false);
		OffCommand=cmd(visible,true;diffusealpha,0;linear,0.1;diffusealpha,1;sleep,0.2;linear,0.3;diffusealpha,0);
	};
	Def.Quad{
		InitCommand=cmd(FullScreen;);
		OnCommand=cmd(diffusealpha,1;sleep,.2;linear,0.4;diffusealpha,0);
		OffCommand=cmd(visible,false);
	};
	LoadActor(THEME:GetPathB("","_coins"));
	
	LoadActor("../ScreenWithMenuElements underlay/_headerbar")..{
		InitCommand=cmd(draworder,-1;CenterX;y,SCREEN_TOP+25);
		OnCommand=cmd(ztest,true;zoomx,1;zoomy,0.7;cropright,1.3;faderight,0.1;sleep,0;linear,0.7;cropright,-0.3;zoomx,1;zoomy,0.7);
	};
	
};

t[#t+1] = Def.ActorFrame{
	LoadActor("../_Headers/_SelMod")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_TOP+25;draworder,1;);
		OnCommand=cmd(zoom,0.5;cropright,1.3;faderight,0.1;sleep,0;linear,0.7;cropright,-0.3;zoom,0.5);
	};
};

t[#t+1] = Def.ActorFrame{
	LoadActor("../ScreenTitleMenu background/_footer")..{
		InitCommand=cmd(draworder,45;CenterX;y,SCREEN_BOTTOM-34);
		OnCommand=cmd(zoomx,1;zoomy,0.8);
	};
};

return t;