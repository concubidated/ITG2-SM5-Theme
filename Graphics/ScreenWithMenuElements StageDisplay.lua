-- there has to be a better way than this
local stageRemap = {
	Stage_1st	= 1,
	Stage_2nd	= 2,
	Stage_3rd	= 3,
	Stage_4th	= 4,
	Stage_5th	= 5,
	Stage_6th	= 6
}

return Def.ActorFrame{
	LoadFont("_eurostile blue glow")..{
		InitCommand=cmd(shadowlength,1);
		BeginCommand=cmd(playcommand,"Set";);
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set";);
		SetCommand=function(self)
			local Stage = GAMESTATE:GetCurrentStage();
			local StageIdx = GAMESTATE:GetCurrentStageIndex();

			local screen = SCREENMAN:GetTopScreen()
			if screen and screen.GetStageStats then
				local ss = screen:GetStageStats()
				Stage = ss:GetStage()
				StageIdx = ss:GetStageIndex()
			end

			local songsPerPlay = PREFSMAN:GetPreference("SongsPerPlay")
			if stageRemap[Stage] and stageRemap[Stage] == songsPerPlay then
				Stage = 'Stage_Final'
			end
			if GAMESTATE:IsEventMode() then Stage = 'Stage_Event' end
			Stage = ToEnumShortString(Stage)
			self:settext(THEME:GetString("Stages",Stage));
		end;
	};
};