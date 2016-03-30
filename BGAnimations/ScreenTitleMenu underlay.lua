InitUserPrefs();

local t = Def.ActorFrame {
	OnCommand=function(self)
		if not FILEMAN:DoesFileExist("Save/ThemePrefs.ini") then
			Trace("ThemePrefs doesn't exist; creating file")
			ThemePrefs.ForceSave()
		end

		ThemePrefs.Save()
	end;
};

t[#t+1] = StandardDecorationFromFileOptional("LifeDifficulty","LifeDifficulty");
t[#t+1] = StandardDecorationFromFileOptional("TimingDifficulty","TimingDifficulty");

t[#t+1] = StandardDecorationFromFileOptional("NumSongs","NumSongs") .. {
	SetCommand=function(self)
		local InstalledSongs, AdditionalSongs, InstalledCourses, AdditionalCourses, Groups, Unlocked = 0;
		if SONGMAN:GetRandomSong() then
			InstalledSongs, AdditionalSongs, InstalledCourses, AdditionalCourses, Groups, Unlocked =
				SONGMAN:GetNumSongs(),
				SONGMAN:GetNumAdditionalSongs(),
				SONGMAN:GetNumCourses(),
				SONGMAN:GetNumAdditionalCourses(),
				SONGMAN:GetNumSongGroups(),
				SONGMAN:GetNumUnlockedSongs();
		else
			return
		end

		self:settextf(THEME:GetString("ScreenTitleMenu","%i Songs (%i Groups), %i Courses"), InstalledSongs, Groups, InstalledCourses);
-- 		self:settextf("%i (+%i) Songs (%i Groups), %i (+%i) Courses", InstalledSongs, AdditionalSongs, Groups, InstalledCourses, AdditionalCourses);
	end;
};

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(draworder,700);
		LoadFont("Common Normal")..{
		Text="REVISION 4";
			InitCommand=cmd(x,SCREEN_CENTER_X+415;y,SCREEN_CENTER_Y-170;shadowlength,1;horizalign,right);
			OnCommand=cmd(zoom,0.4);
	};
};

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(draworder,700);
		LoadFont("Common Normal")..{
		Text="''ITG3 Theme Port By AJ 187'' Used as Base.";
			InitCommand=cmd(x,SCREEN_CENTER_X+415;y,SCREEN_CENTER_Y-170+15;shadowlength,1;horizalign,right);
			OnCommand=cmd(zoom,0.4);
	};
};

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(draworder,700);
		LoadFont("Common Normal")..{
		Text="OpenITG Theme used as Guide.";
			InitCommand=cmd(x,SCREEN_CENTER_X+415;y,SCREEN_CENTER_Y-170+15*2;shadowlength,1;horizalign,right);
			OnCommand=cmd(zoom,0.4);
	};
};

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(draworder,700);
		LoadFont("Common Normal")..{
		Text="© 2005-2009 Roxor Games, ITG2 Theme Port made by Ov3rHell3XoduZ for Stepmania 5";
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-10;shadowlength,1;);
			OnCommand=cmd(zoom,0.4);
	};
};

return t