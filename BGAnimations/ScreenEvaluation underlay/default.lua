local pm = GAMESTATE:GetPlayMode()

local t = Def.ActorFrame{

	LoadActor("evaluation banner mask")..{
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y-136;zwrite,true;blend,'BlendMode_NoEffect');
		OnCommand=cmd(ztest,true;zoomx,0.95;zoomy,0.7;cropright,1.3;faderight,0.1;sleep,3;linear,0.7;cropright,-0.3;zoomx,0.95;zoomy,0.7);
	};
	
	LoadActor("../ScreenWithMenuElements underlay/_headerbar")..{
		InitCommand=cmd(draworder,-1;CenterX;y,SCREEN_CENTER_Y-200);
		OnCommand=cmd(ztest,true;zoomx,1;zoomy,0.7;cropright,1.3;faderight,0.1;sleep,3;linear,0.7;cropright,-0.3;zoomx,1;zoomy,0.7);
	};

};

return t;