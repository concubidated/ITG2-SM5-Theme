local rv;
local t = Def.ActorFrame{};

local Players = {PLAYER_1,PLAYER_2};

local paneCategories = {
	'RadarCategory_TapsAndHolds',
	'RadarCategory_Jumps',
	'RadarCategory_Holds',
	'RadarCategory_Mines',
	'RadarCategory_Hands',
	'RadarCategory_Rolls'
};

local paneStrings = {
	THEME:GetString("RadarCategory","Taps"),
	THEME:GetString("RadarCategory","Jumps"),
	THEME:GetString("RadarCategory","Holds"),
	THEME:GetString("RadarCategory","Mines"),
	THEME:GetString("RadarCategory","Hands"),
	THEME:GetString("RadarCategory","Rolls")
};

for pn in ivalues(Players) do
			
	local pd = Def.ActorFrame{
		Name="PaneDisplay"..pn;
		InitCommand=function(self)
			self:Center();
			self:visible(false);
			if GAMESTATE:IsHumanPlayer(pn) then
				self:visible(true)
			end
			
			if pn == PLAYER_1 then
				self:addx(-20);
			elseif pn == PLAYER_2 then
				self:addx(217);
			end;
		end;

		PlayerJoinedMessageCommand=function(self, params)
						
			if pn==params.Player then
				self:visible(true);
				self:zoom(0);
				self:bounceend(0.3);
				self:zoom(1);
				self:playcommand("Set");
			end;
	 	end;
	
		CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
		CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
		CurrentStepsP1ChangedMessageCommand=function(self)
			if pn == PLAYER_1 then self:playcommand("Set"); end;				
		end;
		CurrentTrailP1ChangedMessageCommand=function(self)
			if pn == PLAYER_1 then self:playcommand("Set"); end;
		end;
		CurrentStepsP2ChangedMessageCommand=function(self)
			if pn == PLAYER_2 then self:playcommand("Set"); end;
		end;
		CurrentTrailP2ChangedMessageCommand=function(self)
			if pn == PLAYER_2 then self:playcommand("Set"); end;
		end;
	};
	
	for i=1,#paneCategories do

		pd[#pd+1] = Def.ActorFrame{

			Name=ToEnumShortString(pn)..paneStrings[i];
			OnCommand=cmd(addx, -SCREEN_WIDTH/20; addy,6 );

			-- chart difficulty meter
			LoadFont("Meter 80px")..{
				InitCommand=cmd(zoom,0.8;);
				SetCommand=function(self)		
								
					if GAMESTATE:IsCourseMode() then
						steps = GAMESTATE:GetCurrentTrail(pn);
					else
						steps = GAMESTATE:GetCurrentSteps(pn);
					end;
					
					self:xy(SCREEN_CENTER_X,SCREEN_CENTER_Y-35);
					self:diffuse(0,0,0,1);
				
					if steps then
						if steps:GetMeter() then				
							self:settext(steps:GetMeter());
						end
						
					-- NOVICE	
					if steps:GetDifficulty() == 'Difficulty_Beginner' then
						self:diffuse(Color("Novice"));
						self:diffusetopedge(Color("ToNovice"));
						end;
					
					-- EASY	
					if steps:GetDifficulty() == 'Difficulty_Easy' then
						self:diffuse(Color("Easy"));
						self:diffusetopedge(Color("ToEasy"));
						end;
						
					-- MEDIUM
					if steps:GetDifficulty() == 'Difficulty_Medium' then
						self:diffuse(Color("Medium"));
						self:diffusetopedge(Color("ToMedium"));
						end;
						
					-- 	HARD
					if steps:GetDifficulty() == 'Difficulty_Hard' then
						self:diffuse(Color("Hard"));
						self:diffusetopedge(Color("ToHard"));
						end;
						
					-- EXPERT
					if steps:GetDifficulty() == 'Difficulty_Challenge' then
						self:diffuse(Color("Expert"));
						self:diffusetopedge(Color("ToExpert"));
						end;
					
					-- EDIT
					if steps:GetDifficulty() == 'Difficulty_Edit' then
						self:diffuse(Color("Edit"));
						self:diffusetopedge(Color("ToEdit"));
						end;
					
					end

					local song = GAMESTATE:GetCurrentSong();
					local course = GAMESTATE:GetCurrentCourse();
				
					if not(song or course) then
						self:settext("")
					end
					
				
				end;
			};
			
			-- chart difficulty Description
			LoadFont("Common Normal")..{
				InitCommand=cmd(zoom,0.9;uppercase,true;maxwidth,110);
				SetCommand=function(self)
								
					if GAMESTATE:IsCourseMode() then
						steps = GAMESTATE:GetCurrentTrail(pn);
					else
						steps = GAMESTATE:GetCurrentSteps(pn);
					end;
					
					self:xy(SCREEN_CENTER_X,SCREEN_CENTER_Y);
					self:diffuse(Color("White"));
				
					if steps then
						if steps:GetMeter() then				
							self:settext(steps:GetDifficulty());
						end
						
					-- NOVICE	
					if self:GetText() == "DIFFICULTY_BEGINNER" then
						self:settext("NOVICE");
						end;
						
					if steps:GetDifficulty() == 'Difficulty_Beginner' then
						self:diffuse(Color("Novice"));
						end;
					
					-- EASY	
					if self:GetText() == "DIFFICULTY_EASY" then
						self:settext("EASY");
						end;
						
					if steps:GetDifficulty() == 'Difficulty_Easy' then
						self:diffuse(Color("Easy"));
						end;
					
					-- MEDIUM
					if self:GetText() == "DIFFICULTY_MEDIUM" then
						self:settext("MEDIUM");
						end;
						
					if steps:GetDifficulty() == 'Difficulty_Medium' then
						self:diffuse(Color("Medium"));
						end;
						
					-- HARD
					if self:GetText() == "DIFFICULTY_HARD" then
						self:settext("HARD");
						end;
						
					if steps:GetDifficulty() == 'Difficulty_Hard' then
						self:diffuse(Color("Hard"));
						end;
						
					-- EXPERT
					if self:GetText() == "DIFFICULTY_CHALLENGE" then
						self:settext("EXPERT");
						end;
						
					if steps:GetDifficulty() == 'Difficulty_Challenge' then
						self:diffuse(Color("Expert"));
						end;
					
					-- EDIT
					if self:GetText() == "DIFFICULTY_EDIT" then
						self:settext( steps:GetChartName() );
						end;
						
					if steps:GetDifficulty() == 'Difficulty_Edit' then
						self:diffuse(Color("Edit"));
						end;
					
					end

					local song = GAMESTATE:GetCurrentSong();
					local course = GAMESTATE:GetCurrentCourse();
				
					if not(song or course) then
						self:settext("")
					end
				
				end;
			};
		};

	end;

	t[#t+1] = pd;
			
end;


return t;