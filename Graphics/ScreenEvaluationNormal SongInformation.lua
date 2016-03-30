return Def.ActorFrame {
 	LoadFont("Common Normal") .. {
		Name="TextTitle";
		InitCommand=cmd(y,-15;zoom,1;maxwidth,565;);
		OnCommand=cmd(shadowlength,1);
-- 		TickCommand=cmd(finishtweening;diffusealpha,0;addx,-10;zoomx,1.25;zoomy,0;decelerate,0.25;diffusealpha,1;addx,10;zoom,1;sleep,0;glow,Color("White");decelerate,0.275;glow,Color("Invisible"));
	};
 	LoadFont("Common Normal") .. {
		Name="TextSubtitle";
		InitCommand=cmd(zoom,0.8;maxwidth,540);
		OnCommand=cmd(shadowlength,1);
-- 		TickCommand=cmd(finishtweening;diffusealpha,0;addy,-10;addx,10;decelerate,0.25;diffusealpha,1;addy,10;addx,-10);
	};
	LoadFont("Common Normal") .. {
		Name="TextArtist";
		InitCommand=cmd(y,103;zoom,0.9;maxwidth,540);
		OnCommand=cmd(shadowlength,1;skewx,-0.2);
-- 		TickCommand=cmd(finishtweening;diffusealpha,0;addy,10;addx,10;decelerate,0.25;diffusealpha,1;addy,-10;addx,-10);
	};
};