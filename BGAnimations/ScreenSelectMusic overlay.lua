local t = Def.ActorFrame{

	Def.ActorFrame{
		Name="SelButtonMenu";
		InitCommand=cmd(y,SCREEN_BOTTOM-31);
		LoadFont("Common Normal")..{
			Text="&START; Change Sort";
			InitCommand=cmd(CenterX;zoom,0.7;diffusealpha,0;shadowlength,2;visible,ModeMenuAvailable());
			OffCommand=cmd(linear,.3;diffusealpha,0);
			SelectMenuOpenedMessageCommand=cmd(stoptweening;bounceend,0.2;diffusealpha,1;zoomx,0.6);
			SelectMenuClosedMessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0;zoomx,0.3);
		};
		Def.ActorFrame{
			Name="Easier";
			InitCommand=function(self)
				self:x(SCREEN_CENTER_X-100)
			end;
			LoadFont("Common Normal")..{
				Text="&MENULEFT;";
				OnCommand=cmd(x,-50;horizalign,right;zoomx,.5;zoomy,.7;diffusealpha,0;shadowlength,0);
				OffCommand=cmd(linear,.3;diffusealpha,0);
				SelectMenuOpenedMessageCommand=cmd(stoptweening;bounceend,0.2;diffusealpha,1;zoomx,0.7);
				SelectMenuClosedMessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0;zoomx,0.5);
			};
			LoadFont("Common Normal")..{
				Text="Easier";
				OnCommand=cmd(x,-45;horizalign,left;zoomx,.5;zoomy,.7;diffusealpha,0;diffuseramp;effectperiod,1;effectoffset,0.20;effectclock,'beat';effectcolor1,color("#FFFFFF");effectcolor2,color("#20D020");shadowlength,0);
				OffCommand=cmd(linear,.3;diffusealpha,0);
				SelectMenuOpenedMessageCommand=cmd(stoptweening;bounceend,0.2;diffusealpha,1;zoomx,0.7);
				SelectMenuClosedMessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0;zoomx,0.5);
			};
		};
		Def.ActorFrame{
			Name="Harder";
			InitCommand=function(self)
				self:x(SCREEN_CENTER_X+100)
			end;
			LoadFont("Common Normal")..{
				Text="Harder";
				OnCommand=cmd(x,45;horizalign,right;zoomx,.5;zoomy,.7;diffusealpha,0;diffuseramp;effectperiod,1;effectoffset,0.20;effectclock,'beat';effectcolor1,color("#FFFFFF");effectcolor2,color("#E06060");shadowlength,0);
				OffCommand=cmd(linear,.3;diffusealpha,0);
				SelectMenuOpenedMessageCommand=cmd(stoptweening;bounceend,0.2;diffusealpha,1;zoomx,0.7);
				SelectMenuClosedMessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0;zoomx,0.5);
			};
			LoadFont("Common Normal")..{
				Text="&MENURIGHT;";
				OnCommand=cmd(x,55;horizalign,center;zoomx,.5;zoomy,.7;diffusealpha,0;shadowlength,0);
				OffCommand=cmd(linear,.3;diffusealpha,0);
				SelectMenuOpenedMessageCommand=cmd(stoptweening;bounceend,0.2;diffusealpha,1;zoomx,0.7);
				SelectMenuClosedMessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0;zoomx,0.5);
			};
		};
	};

	LoadActor(THEME:GetPathG("ScreenSelectMusic","OptionsMessage"))..{
		InitCommand=cmd(Center;pause;diffusealpha,0);
		ShowPressStartForOptionsCommand=cmd(zoom,1.15;diffusealpha,0;decelerate,.07;zoom,1;diffusealpha,1);
		ShowEnteringOptionsCommand=cmd(stoptweening;zoomy,0;setstate,1;accelerate,.07;zoomy,1;);
		HidePressStartForOptionsCommandCommand=cmd(stoptweening;linear,0.3;cropleft,1.3);
	};

	LoadActor(THEME:GetPathB("","_coins"));
};

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(draworder,1);
	LoadActor( "PaneDisplay under p1" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-229;y,SCREEN_CENTER_Y+147;);
		OnCommand=cmd(zoom,0.95;);
	};
};

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(draworder,1);
	LoadActor( "PaneDisplay under p2" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X+229;y,SCREEN_CENTER_Y+147;);
		OnCommand=cmd(zoom,0.95);
	};
};

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(draworder,1);
	LoadActor( "_ARTIST" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X+17;y,SCREEN_CENTER_Y-40;);
		OnCommand=cmd(zoom,0.45;);
	};
};

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(draworder,1);
	LoadActor( "_LENGTH" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X+350;y,SCREEN_CENTER_Y-40;);
		OnCommand=cmd(zoom,0.45;);
	};
};

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(draworder,1);
	LoadActor( "_BPM" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X+240;y,SCREEN_CENTER_Y-40;);
		OnCommand=cmd(zoom,0.45;);
	};
};

return t;