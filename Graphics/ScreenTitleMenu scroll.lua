local gc = Var("GameCommand");
local itemColors = {
	Dance = color("#f07878"),
	Battle = color("#f07878"),
	Marathon = color("#f07878"),
	Survival = color("#f07878"),
	Fitness = color("#f07878"),
	default = color("#f07878")
};

local itemColor = itemColors[gc:GetName()] or itemColors.default

return Def.ActorFrame{
	LoadFont("_ScreenTitleMenu choices")..{
		InitCommand=cmd(settext,gc:GetText();halign,0;);
		--effectperiod,2;effectcolor2,color("1,1,1,0")
		GainFocusCommand=cmd(diffuseshift;effectperiod,1;effectcolor1,itemColor;effectcolor2,Alpha(itemColor,1);zoom,1;);
		LoseFocusCommand=cmd(stoptweening;stopeffect;zoom,1);
		DisabledCommand=cmd(diffuse,color("0.5,0.5,0.5,1"));
	};
};