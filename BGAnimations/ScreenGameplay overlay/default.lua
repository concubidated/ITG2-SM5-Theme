local t = Def.ActorFrame{

	-- rave names
	Def.ActorFrame{
		Name="RaveNames";
		InitCommand=cmd(CenterX;y,SCREEN_TOP+64;visible,GAMESTATE:GetPlayMode() == 'PlayMode_Rave';);
		OnCommand=cmd(addy,-100;sleep,0.5;decelerate,0.8;addy,100);
		OffCommand=cmd(accelerate,0.8;addy,-100);

		LoadFont("Common Normal")..{
			InitCommand=cmd(x,-250;zoom,0.5;shadowlength,0;maxwidth,150;);
			BeginCommand=function(self)
				if GAMESTATE:IsHumanPlayer(PLAYER_1) then
					self:settext(GAMESTATE:GetPlayerDisplayName(PLAYER_1));
					
					else self:settext("CPU");
				end
			end;
		};
		LoadFont("Common Normal")..{
			InitCommand=cmd(x,250;zoom,0.5;shadowlength,0;maxwidth,150;);
			BeginCommand=function(self)
				if GAMESTATE:IsHumanPlayer(PLAYER_2) then
					self:settext(GAMESTATE:GetPlayerDisplayName(PLAYER_2));
					
					else self:settext("CPU");
				end
			end;
		};
	};

	Def.Quad{
		InitCommand=cmd(Center;FullScreen;diffuse,color("0,0,0,1"));
		OnCommand=cmd(linear,0.3;diffusealpha,0);
	};

	LoadFont("_r bold 30px")..{
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y+147;maxwidth,SCREEN_WIDTH/8*7;shadowlength,2;horizalign,center;zoom,.5;diffusealpha,1;);
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			local text
			if song then
				text = song:GetDisplayFullTitle()
			else
				text = ""
			end
			self:settext(text)
		end;
		OnCommand=cmd(playcommand,"Set";sleep,1.5;linear,1;diffusealpha,0;);
	};
	LoadFont("_r bold 30px")..{
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y+167;maxwidth,SCREEN_WIDTH/8*6.8;shadowlength,2;horizalign,center;zoom,.4;diffusealpha,1;);
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			local text
			if song then
				text = song:GetDisplayArtist()
			else
				text = ""
			end
			self:settext(text)
		end;
		OnCommand=cmd(playcommand,"Set";sleep,1.5;linear,1;diffusealpha,0;);
	};

	Def.ActorFrame{
		Name="DemonstrationFrame";
		BeginCommand=cmd(visible,GAMESTATE:IsDemonstration() and SCREENMAN:GetTopScreen():GetName() ~= 'ScreenJukebox');

		LoadFont("Common Normal")..{
			Text="DEMO";
			InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y-180;zoom,1;);
			OnCommand=cmd(pulse;effectmagnitude,1.0,0.95,0;effectclock,'beat';effectperiod,1);
		};
	};
};

return t;