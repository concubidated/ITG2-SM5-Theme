local t = Def.ActorFrame{
	Def.ActorFrame{
		InitCommand=cmd(CenterX;y,SCREEN_TOP+19;addy,-100;);
		OnCommand=cmd(sleep,0.5;queuecommand,"TweenOn");
		OffCommand=cmd(queuecommand,"TweenOff");
		TweenOnCommand=cmd(decelerate,0.8;addy,100);
		-- xxx: if any player full comboed, sleep 3
		TweenOffCommand=cmd(accelerate,0.8;addy,-100);
		Def.SongMeterDisplay{
			InitCommand=cmd(SetStreamWidth,395;zoomy,1.4;y,3);
			Stream=LoadActor("meter stream");
			Tip=LoadActor("tip")..{
				OnCommand=cmd(zoom,0;sleep,1.8;zoom,1;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,.5");effectclock,"beat";effectperiod,4;);
			};
		};
	};

	Def.ActorFrame{
		OnCommand=cmd(addy,-100;sleep,0.5;queuecommand,"TweenOn");
		OffCommand=cmd(queuecommand,"TweenOff");
		TweenOnCommand=cmd(decelerate,0.8;addy,100);
		-- todo: full combo
		TweenOffCommand=cmd(accelerate,0.8;addy,-100);

		LoadActor("base")..{ InitCommand=cmd(CenterX;y,SCREEN_TOP+23;); };

		LoadFont("Common Normal")..{
			InitCommand=cmd(CenterX;y,SCREEN_TOP+20;maxwidth,540;diffusebottomedge,color("#dedede"));
			OnCommand=cmd(addy,3;zoom,.5;shadowlength,2;zoomy,0;sleep,2;decelerate,0.3;zoomy,.45;animate,0;playcommand,"Update");
			CurrentSongChangedMessageCommand=cmd(playcommand,"Update");
			UpdateCommand=function(self)
				local text = ""
				local song = GAMESTATE:GetCurrentSong()
				local course = GAMESTATE:GetCurrentCourse()
				if song then
					text = song:GetDisplayFullTitle()
				end
				if course then
					text = course:GetDisplayFullTitle() .. " - " .. text;
				end
				self:settext(text);
			end;
		};
	};

	-- difficulty
	Def.ActorFrame{
		OnCommand=cmd(draworder,1;sleep,0.5;queuecommand,"TweenOn");
		OffCommand=cmd(queuecommand,"Hide");
		ShowGameplayTopFrameMessageCommand=cmd(playcommand,"TweenOn");
		HideGameplayTopFrameMessageCommand=cmd(queuecommand,"Hide");
		HideCommand=function(self)
			--if AnyPlayerFullComboed() then self:sleep(3) end
			self:queuecommand('TweenOff')
		end;

		Def.ActorFrame{
			Name="Player1";
			OnCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-300;y,SCREEN_TOP+23;addx,-SCREEN_WIDTH/3);
			TweenOnCommand=cmd(sleep,1.5;decelerate,0.5;addx,SCREEN_WIDTH/3);
			TweenOffCommand=cmd(accelerate,0.8;addx,-SCREEN_WIDTH/3);

		--[[LoadActor(THEME:GetPathG("_difficulty","icons"))..{
				InitCommand=cmd(pause;playcommand,"Update");
				UpdateCommand=function(self)
					local steps = GAMESTATE:GetCurrentSteps(PLAYER_1)
					if steps then
						self:visible(true)
						self:setstate(DifficultyToState(steps:GetDifficulty()))
					else
						self:visible(false)
					end
				end;
			};]]

		};

		Def.ActorFrame{
			Name="Player2";
			OnCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+300;y,SCREEN_TOP+23;addx,SCREEN_WIDTH/3);
			TweenOnCommand=cmd(sleep,1.5;decelerate,0.5;addx,-SCREEN_WIDTH/3);
			TweenOffCommand=cmd(accelerate,0.8;addx,SCREEN_WIDTH/3);

			--[[LoadActor(THEME:GetPathG("_difficulty","icons"))..{
				InitCommand=cmd(pause;zoomx,-1;playcommand,"Update");
				UpdateCommand=function(self)
					local steps = GAMESTATE:GetCurrentSteps(PLAYER_2)
					if steps then
						self:visible(true)
						self:setstate(DifficultyToState(steps:GetDifficulty()))
					else
						self:visible(false)
					end
				end;
			};]]

		};
	};
};

if not GAMESTATE:IsDemonstration() then

t[#t+1] = LoadActor("BPMDisplay")..{
	InitCommand=cmd(draworder,999;CenterX;y,SCREEN_TOP+55);
	OnCommand=cmd(zoom,0;sleep,2;decelerate,1;zoom,1);
	OffCommand=cmd(zoom,1;sleep,0;decelerate,0.3;zoom,0);
};

end

return t;