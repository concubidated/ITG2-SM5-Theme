local t = Def.ActorFrame{
	OnCommand=cmd(wag;effectmagnitude,0,5,0;effectperiod,12);
};

-- UPPER TOP DOTS
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(fov,105;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
	
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,-200;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.2,0,1.2,1;texcoordvelocity,-0.06,0;diffusealpha,0.1);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,-180;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.5,0,1.5,1;texcoordvelocity,0.03,0;diffusealpha,0.1);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,-160;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.8,0,1.8,1;texcoordvelocity,0.06,0;diffusealpha,0.15);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,-140;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.1,0,1.1,1;texcoordvelocity,0.06,0;diffusealpha,0.15);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,-160;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.1,0,1.1,1;texcoordvelocity,0.06,0;diffusealpha,0.2);
	};
};

-- LOWER TOP DOTS
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(fov,105;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
	
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,-100;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.4,0,1.4,1;texcoordvelocity,-0.06,0;diffusealpha,0.1);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,-80;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.7,0,1.7,1;texcoordvelocity,0.03,0;diffusealpha,0.1);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,-60;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.0,0,1.0,1;texcoordvelocity,0.06,0;diffusealpha,0.15);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,-40;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.3,0,1.3,1;texcoordvelocity,0.06,0;diffusealpha,0.15);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,-20;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.3,0,1.3,1;texcoordvelocity,0.06,0;diffusealpha,0.2);
	};
};

-- UPPER BOTTOM DOTS
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(fov,105;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
	
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,100;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.0,0,1.0,1;texcoordvelocity,-0.06,0;diffusealpha,0.1);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,80;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.3,0,1.3,1;texcoordvelocity,0.03,0;diffusealpha,0.1);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,60;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.6,0,1.6,1;texcoordvelocity,0.06,0;diffusealpha,0.15);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,40;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.9,0,1.9,1;texcoordvelocity,0.06,0;diffusealpha,0.15);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,20;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.9,0,1.9,1;texcoordvelocity,0.06,0;diffusealpha,0.2);
	};
};

-- LOWER BOTTOM DOTS
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(fov,105;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
	
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,200;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.8,0,1.8,1;texcoordvelocity,-0.06,0;diffusealpha,0.1);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,180;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.1,0,1.1,1;texcoordvelocity,0.03,0;diffusealpha,0.1);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,160;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.4,0,1.4,1;texcoordvelocity,0.06,0;diffusealpha,0.15);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,140;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.7,0,1.7,1;texcoordvelocity,0.06,0;diffusealpha,0.15);
	};
	LoadActor( "__dots" )..{
		OnCommand=cmd(zoom,1.5;y,120;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.7,0,1.7,1;texcoordvelocity,0.06,0;diffusealpha,0.2);
	};
};

-- TOP BLOCKS
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(fov,105;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
	
	LoadActor( "__blocks" )..{
		OnCommand=cmd(zoom,3;y,-100;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.3,0,1.3,1;texcoordvelocity,-0.06,0;diffusealpha,0.05);
	};
	LoadActor( "__arrows" )..{
		OnCommand=cmd(zoom,3;y,-100;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.6,0,1.6,1;texcoordvelocity,0.03,0;diffusealpha,0.1);
	};
	LoadActor( "__ticks" )..{
		OnCommand=cmd(zoom,3;y,-150;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.6,0,1.6,1;texcoordvelocity,0.03,0;diffusealpha,0.1);
	};
	LoadActor( "__arrows" )..{
		OnCommand=cmd(zoomx,1.5;zoomy,3;y,-200;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.9,0,1.4,1;texcoordvelocity,0.06,0;diffusealpha,0.2);
	};
	LoadActor( "__blocks" )..{
		OnCommand=cmd(zoom,3;y,-150;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.2,0,1.2,1;texcoordvelocity,0.06,0;diffusealpha,0.1);
	};
	LoadActor( "__ticks" )..{
		OnCommand=cmd(zoom,3;y,-50;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.9,0,1.9,1;texcoordvelocity,0.06,0;diffusealpha,0.1);
	};
};

-- BOTTOM BLOCKS
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(fov,105;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
	
	LoadActor( "__blocks" )..{
		OnCommand=cmd(zoom,3;y,100;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.5,0,1.5,1;texcoordvelocity,-0.06,0;diffusealpha,0.05);
	};
	LoadActor( "__arrows" )..{
		OnCommand=cmd(zoom,3;y,100;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.0,0,1.0,1;texcoordvelocity,0.03,0;diffusealpha,0.1);
	};
	LoadActor( "__ticks" )..{
		OnCommand=cmd(zoom,3;y,150;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.8,0,1.8,1;texcoordvelocity,0.03,0;diffusealpha,0.1);
	};
	LoadActor( "__arrows" )..{
		OnCommand=cmd(zoomx,1.5;zoomy,3;y,200;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.1,0,0.6,1;texcoordvelocity,0.06,0;diffusealpha,0.2);
	};
	LoadActor( "__blocks" )..{
		OnCommand=cmd(zoom,3;y,150;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.4,0,1.4,1;texcoordvelocity,0.06,0;diffusealpha,0.1);
	};
	LoadActor( "__ticks" )..{
		OnCommand=cmd(zoom,3;y,50;zoomtowidth,SCREEN_WIDTH;customtexturerect,0.8,0,1.8,1;texcoordvelocity,0.06,0;diffusealpha,0.1);
	};
};

return t;