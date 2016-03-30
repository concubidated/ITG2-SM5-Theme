local t = LoadFallbackB();

-- StepsDisplay
if ShowStandardDecoration("StepsDisplay") then
	for pn in ivalues(PlayerNumber) do
		local t2 = Def.ActorFrame{
			InitCommand=cmd(player,pn);
			LoadActor(THEME:GetPathG("_difficulty","icons"))..{
				InitCommand=cmd(zoomy,.8;animate,0;zoomx,(pn==PLAYER_2) and -0.8 or 0.8;playcommand,"Update");
				UpdateCommand=function(self)
					local steps = GAMESTATE:GetCurrentSteps(pn)
					if steps then
						self:setstate(DifficultyToState(steps:GetDifficulty()))
					end
				end;
			};
			Def.StepsDisplay {
				InitCommand=cmd(Load,"StepsDisplayEvaluation",pn;SetFromGameState,pn;);
				UpdateNetEvalStatsMessageCommand=function(self,param)
					if GAMESTATE:IsPlayerEnabled(pn) then
						self:SetFromSteps(param.Steps)
					end;
				end;
			};
		};
		t[#t+1] = StandardDecorationFromTable("StepsDisplay"..ToEnumShortString(pn), t2);
	end
end

-- records text
for pn in ivalues(PlayerNumber) do
	local MetricsName = "MachineRecord" .. PlayerNumberToString(pn);
	t[#t+1] = LoadActor(THEME:GetPathG(Var "LoadingScreen", "MachineRecord"), pn ) .. {
		InitCommand=function(self) 
			self:player(pn); 
			self:name(MetricsName); 
			ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen"); 
		end;
	};
end

for pn in ivalues(PlayerNumber) do
	local MetricsName = "PersonalRecord" .. PlayerNumberToString(pn);
	t[#t+1] = LoadActor(THEME:GetPathG(Var "LoadingScreen", "PersonalRecord"), pn)..{
		InitCommand=function(self) 
			self:player(pn); 
			self:name(MetricsName); 
			ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen"); 
		end;
	};
end

-- life graph
local function GraphDisplay(pn)
	local t = Def.ActorFrame {
		Def.GraphDisplay {
			InitCommand=cmd(Load,"GraphDisplay"..ToEnumShortString(pn););
			BeginCommand=function(self)
				local ss = SCREENMAN:GetTopScreen():GetStageStats();
				self:Set( ss, ss:GetPlayerStageStats(pn) );
				self:player( pn );
			end
		};
	};
	return t;
end

if ShowStandardDecoration("GraphDisplay") then
	for pn in ivalues(PlayerNumber) do
		t[#t+1] = StandardDecorationFromTable("GraphDisplay"..ToEnumShortString(pn), GraphDisplay(pn));
	end
end

-- combo graph
local function ComboGraph( pn )
	local t = Def.ActorFrame {
		Def.ComboGraph {
			InitCommand=cmd(Load,"ComboGraph"..ToEnumShortString(pn););
			BeginCommand=function(self)
				local ss = SCREENMAN:GetTopScreen():GetStageStats();
				self:Set( ss, ss:GetPlayerStageStats(pn) );
				self:player( pn );
			end
		};
	};
	return t;
end

if ShowStandardDecoration("ComboGraph") then
	for pn in ivalues(PlayerNumber) do
		t[#t+1] = StandardDecorationFromTable("ComboGraph"..ToEnumShortString(pn), ComboGraph(pn));
	end;
end;

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(draworder,20;y,15);
		LoadActor("ScreenSelectMusic decorations/sHeader")..{
		InitCommand=cmd(zoom,0;sleep,3;decelerate,0.3;zoom,1);
	};
};


t[#t+1] = Def.ActorFrame{
	LoadActor("_Headers/_Evaluation")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_CENTER_Y-200;draworder,1;);
		OnCommand=cmd(zoom,0.5;cropright,1.3;faderight,0.1;sleep,3;linear,0.7;cropright,-0.3;zoom,0.5);
	};
};

t[#t+1] = Def.ActorFrame{
	LoadActor("ScreenTitleMenu background/_footer")..{
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-34);
		OnCommand=cmd(zoomx,1;zoomy,0.8;cropright,1.3;faderight,0.1;sleep,3;linear,0.7;cropright,-0.3;zoomx,1.0;zoomy,0.8);
	};
};

t[#t+1] = StandardDecorationFromFileOptional("SongInformation","SongInformation") .. {
	BeginCommand=function(self)
		local SongOrCourse;
		if GAMESTATE:GetCurrentSong() then
			SongOrCourse = GAMESTATE:GetCurrentSong();
		elseif GAMESTATE:GetCurrentCourse() then
			SongOrCourse = GAMESTATE:GetCurrentCourse();
		else
			return
		end
		
		if SongOrCourse:HasBanner() then
			self:visible(true);
		else
			self:visible(true);
		end
	end;
	
	SetCommand=function(self)
		local c = self:GetChildren();
		local SongOrCourse;
		if GAMESTATE:GetCurrentSong() then
			SongOrCourse = GAMESTATE:GetCurrentSong();

			c.TextTitle:settext( SongOrCourse:GetDisplayMainTitle() or nil );
			c.TextSubtitle:settext( SongOrCourse:GetDisplaySubTitle() or nil );
			c.TextArtist:settext( SongOrCourse:GetDisplayArtist() or nil );

			if SongOrCourse:GetDisplaySubTitle() == "" then
				c.TextTitle:visible(true);
				c.TextSubtitle:visible(false);
				c.TextSubtitle:y(-4.5);
				c.TextArtist:visible(true);
			else
				c.TextTitle:visible(true);
				c.TextSubtitle:visible(true);
				c.TextSubtitle:y(7);
				c.TextArtist:visible(true);
			end
-- 			self:playcommand("Tick");
		elseif GAMESTATE:GetCurrentCourse() then
			SongOrCourse = GAMESTATE:GetCurrentCourse();
			
			c.TextTitle:settext( SongOrCourse:GetDisplayMainTitle() or nil );
			c.TextSubtitle:settext( SongOrCourse:GetDisplaySubTitle() or nil );
			c.TextArtist:settext( SongOrCourse:GetDisplayArtist() or nil );
			
-- 			self:playcommand("Tick");
		else
			SongOrCourse = nil;
			
			c.TextTitle:settext("");
			c.TextSubtitle:settext("");
			c.TextArtist:settext("");
			
			self:playcommand("Hide")
		end
	end;
-- 	OnCommand=cmd(playcommand,"Set");
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
	DisplayLanguageChangedMessageCommand=cmd(playcommand,"Set");
};

if ThemePrefs.Get("NextGrade") == "On" then
	t[#t+1] = Def.ActorFrame{
		LoadActor( NextGradeP1() )..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-130;x,SCREEN_CENTER_X-225;visible,GAMESTATE:IsHumanPlayer(PLAYER_1));
			OnCommand=cmd(diffusealpha,0;sleep,3;linear,0.5;diffusealpha,1;zoom,0.7);
		};
		
		LoadActor( "_NextGradeFrame" )..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-136;x,SCREEN_CENTER_X-225;visible,GAMESTATE:IsHumanPlayer(PLAYER_1));
			OnCommand=cmd(zoom,0.7;diffusealpha,0;sleep,3;linear,0.5;diffusealpha,1;zoom,0.7);
		};
	};

	t[#t+1] = Def.ActorFrame{
		LoadActor( NextGradeP2() )..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-130;x,SCREEN_CENTER_X+225;visible,GAMESTATE:IsHumanPlayer(PLAYER_2));
			OnCommand=cmd(diffusealpha,0;sleep,3;linear,0.5;diffusealpha,1;zoom,0.7);
		};
		
		LoadActor( "_NextGradeFrame" )..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-136;x,SCREEN_CENTER_X+225;visible,GAMESTATE:IsHumanPlayer(PLAYER_2));
			OnCommand=cmd(zoom,0.7;diffusealpha,0;sleep,3;linear,0.5;diffusealpha,1;zoom,0.7);
		};
	};
end

return t;