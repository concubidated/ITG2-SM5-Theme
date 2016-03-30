return Def.ActorFrame{
	Def.ActorFrame{
		Name="DangerP1";
		Def.ActorFrame{
			Name="Single";
			BeginCommand=function(self)
				local style = GAMESTATE:GetCurrentStyle()
				local styleType = style:GetStyleType()
				local bDoubles = (styleType == 'StyleType_OnePlayerTwoSides' or styleType == 'StyleType_TwoPlayersSharedSides')
				self:visible(not bDoubles)
			end;
			HealthStateChangedMessageCommand=function(self, param)
				if param.PlayerNumber == PLAYER_1 then
					if param.HealthState == "HealthState_Danger" then
						self:RunCommandsOnChildren(cmd(playcommand,"Show"))
					else
						self:RunCommandsOnChildren(cmd(playcommand,"Hide"))
					end
				end
			end;
			Def.Quad{
				InitCommand=cmd(faderight,0.3;stretchto,SCREEN_LEFT,SCREEN_TOP,SCREEN_CENTER_X,SCREEN_BOTTOM;diffusealpha,0;);
				ShowCommand=cmd(linear,.3;diffusealpha,0.5;diffuseshift;effectcolor1,color("#FF0000");effectcolor2,color("#00FF00"));
				HideCommand=cmd(stopeffect;stoptweening;linear,.5;diffusealpha,0);
			};
		};
		--[[
		Def.ActorFrame{
			Name="Double";
			BeginCommand=function(self)
				local style = GAMESTATE:GetCurrentStyle()
				local styleType = style:GetStyleType()
				local bDoubles = (styleType == 'StyleType_OnePlayerTwoSides' or styleType == 'StyleType_TwoPlayersSharedSides')
				self:visible(bDoubles)
			end;
			LoadActor(THEME:GetPathB("_shared","danger/double"))..{
				InitCommand=cmd();
			};
			Def.Quad{
				InitCommand=cmd();
			};
			LoadActor(THEME:GetPathB("_shared","danger/_danger text"))..{
				InitCommand=cmd();
			};
			LoadActor(THEME:GetPathB("_shared","danger/_danger glow"))..{
				InitCommand=cmd();
			};
		};
		--]]
	};
	Def.ActorFrame{
		Name="DangerP2";
		Def.ActorFrame{
			Name="Single";
			BeginCommand=function(self)
				local style = GAMESTATE:GetCurrentStyle()
				local styleType = style:GetStyleType()
				local bDoubles = (styleType == 'StyleType_OnePlayerTwoSides' or styleType == 'StyleType_TwoPlayersSharedSides')
				self:visible(not bDoubles)
			end;
			HealthStateChangedMessageCommand=function(self, param)
				if param.PlayerNumber == PLAYER_2 then
					if param.HealthState == "HealthState_Danger" then
						self:RunCommandsOnChildren(cmd(playcommand,"Show"))
					else
						self:RunCommandsOnChildren(cmd(playcommand,"Hide"))
					end
				end
			end;
			Def.Quad{
				InitCommand=cmd(fadeleft,0.3;stretchto,SCREEN_CENTER_X,SCREEN_TOP,SCREEN_RIGHT,SCREEN_BOTTOM;diffusealpha,0;);
				ShowCommand=cmd(linear,.3;diffusealpha,0.5;diffuseshift;effectcolor1,color("#FF0000");effectcolor2,color("#00FF00"));
				HideCommand=cmd(stopeffect;stoptweening;linear,.5;diffusealpha,0);
			};
		};
	};
};