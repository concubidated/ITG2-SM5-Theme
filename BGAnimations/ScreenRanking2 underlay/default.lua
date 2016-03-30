return Def.ActorFrame{

	LoadActor(THEME:GetPathB("ScreenRanking","underlay/horiz-line"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-34.5;diffusealpha,0;zoomtowidth,0;);
		OnCommand=cmd(sleep,.2;decelerate,0.30;zoomx,.99;diffusealpha,1);
	};
	
	LoadActor(THEME:GetPathB("ScreenRanking","underlay/horiz-line"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+77;diffusealpha,0;zoomtowidth,0;);
		OnCommand=cmd(sleep,.2;decelerate,0.30;zoomx,.99;diffusealpha,1);
	};
	
	LoadActor(THEME:GetPathB("ScreenRanking","underlay/mask"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+2;zwrite,true;blend,'BlendMode_NoEffect';vertalign,bottom;);
	};
	Def.Quad{
		InitCommand=cmd(CenterX;y,SCREEN_TOP;valign,0;zoomto,SCREEN_WIDTH,78;zwrite,true;blend,'BlendMode_NoEffect';);
	};

	
	Def.ActorFrame{
		Name="Icons";
		LoadActor("dgrades")..{
			InitCommand=cmd(x,SCREEN_CENTER_X+100;y,SCREEN_TOP+35;);
		};
		LoadFont("_eurostile normal")..{
			Text="Normal";
			InitCommand=cmd(x,SCREEN_CENTER_X+152;y,SCREEN_TOP+34;shadowlength,2;zoom,0.5;diffuse,ContrastingDifficultyColor("Medium"));
		};
		LoadFont("_eurostile normal")..{
			Text="Intense";
			InitCommand=cmd(x,SCREEN_CENTER_X+255;y,SCREEN_TOP+34;shadowlength,2;zoom,0.5;diffuse,ContrastingDifficultyColor("Hard"));
		};
	};
};