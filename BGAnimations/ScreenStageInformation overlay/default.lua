local stageRemap = {
	Stage_1st	= 1, Stage_2nd	= 2, Stage_3rd	= 3,
	Stage_4th	= 4, Stage_5th	= 5, Stage_6th	= 6
}
local curStage = GAMESTATE:GetCurrentStage()
local songsPerPlay = PREFSMAN:GetPreference("SongsPerPlay")
if stageRemap[curStage] == songsPerPlay then
	curStage = 'Stage_Final'
end
if GAMESTATE:IsEventMode() then curStage = 'Stage_Event' end

curStage = ToEnumShortString(curStage)

local t = Def.ActorFrame{
	InitCommand=function(self)
		-- reset beginner stage
	end;

	Def.ActorFrame{
		Name="StageText";
		InitCommand=cmd(CenterX);
		Def.ActorFrame{
			Name="Main";
			InitCommand=cmd(y,SCREEN_CENTER_Y;zoom,0.8);
			LoadActor(THEME:GetPathG("_gameplay","stage "..curStage))..{
				InitCommand=cmd(horizalign,center;cropright,1.3;);
				OnCommand=cmd(sleep,.22;linear,1;cropright,-0.3);
			};
			LoadActor(THEME:GetPathG("_white","gameplay stage "..curStage))..{
				InitCommand=cmd(horizalign,center;cropleft,-0.3;cropright,1;faderight,.1;fadeleft,.1;);
				OnCommand=cmd(sleep,.22;linear,1;cropleft,1;cropright,-0.3);
			};
		};
		
	};
};

return t;