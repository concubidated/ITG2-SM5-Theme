local player = ...
assert(player,"[_name/default.lua] requires a player to be passed in.")
local iconName = "_icon p"..(player == PLAYER_1 and 1 or 2)

local t = Def.ActorFrame{
	InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y-263);
	LoadActor(THEME:GetPathG("_name","frame"))..{ InitCommand=cmd(xy,-100,5); };
	LoadFont("Common Normal")..{
		InitCommand=cmd(xy,-115,2;zoom,0.5;shadowlength,2;diffuse,PlayerColor(player));
		BeginCommand=function(self)
			if GAMESTATE:IsPlayerEnabled(player) then
				self:settext( GAMESTATE:GetPlayerDisplayName(player) )
			end
		end;
	};
	LoadActor(iconName)..{ InitCommand=cmd(xy,-43,4;shadowlength,2); };
};

return t;