-- ScreenSelectStyle Scroll Choice2
return Def.ActorFrame{
	MadeChoiceP1MessageCommand=cmd(playcommand,"GoOff");
	MadeChoiceP2MessageCommand=cmd(playcommand,"GoOff");
	GoOffCommand=function(self)
		self:linear(0.5);
		local bHasFocus=math.abs(self:GetZoomZ()-1.1)<0.01;
		if bHasFocus then
			self:x(0); self:y(0); self:z(200);
			self:diffuse(color("1,1,1,1"));
			self:zoom(1);
			self:glowblink();
			self:sleep(0.5);
			self:linear(0.5);
			self:zoom(0); 
		else
			self:x(0); self:y(0); self:z(0);
			self:zoom(0);
		end
		self:sleep(5)
	end;
	GainFocusCommand=cmd(zoom,1);
	LoseFocusCommand=cmd(zoom,0.6);
	Def.ActorFrame{
		InitCommand=cmd(x,-30;y,-50;ztest,1);
		GainFocusCommand=cmd(wag;effectmagnitude,0,10,0);
		LoseFocusCommand=cmd(stopeffect);
		LoadActor(THEME:GetPathG("_platform","home single"))..{
			InitCommand=cmd(zoom,1.2;rotationx,30);
		};
	};
	Def.ActorFrame{
		InitCommand=cmd(x,150;y,-50;ztest,1);
		GainFocusCommand=cmd(wag;effectmagnitude,0,10,0);
		LoseFocusCommand=cmd(stopeffect);
		LoadActor(THEME:GetPathG("_platform","home single"))..{
			InitCommand=cmd(zoom,1.2;rotationx,30);
		};
	};
	LoadActor("title")..{
		InitCommand=cmd(x,60;y,-120;z,30;shadowlength,4;ztest,true);
		EnabledCommand=cmd(stopeffect);
		DisabledCommand=cmd(diffuseshift;effectcolor1,color("0,0,0,1");effectcolor2,color("0,0,0,1"));
	};
};