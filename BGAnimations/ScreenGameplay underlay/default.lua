local t = Def.ActorFrame{

	LoadActor("ScreenFilter")..{
		InitCommand=function(self)
			local dm = GAMESTATE:IsDemonstration()
			if dm then
				self:visible(false)
			else
				self:visible(true)
			end
		end;
	};
	
	LoadActor("beginner")..{
		InitCommand=function(self)
			local pm = GAMESTATE:GetPlayMode()
			local isBeginner = GAMESTATE:GetEasiestStepsDifficulty() == 'Difficulty_Beginner'
			self:visible(pm == 'PlayMode_Regular' and isBeginner and ThemePrefs.Get("BeginnerHelper") == true )
		end;
	};
	
	LoadActor("danger");
	LoadActor("dead");
};

return t;