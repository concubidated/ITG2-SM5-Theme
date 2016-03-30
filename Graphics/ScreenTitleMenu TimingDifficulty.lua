return Def.ActorFrame {

	LoadFont("Common Normal") .. {
		Text=GetTimingDifficulty();
		AltText="";
		InitCommand=cmd(x,-400;horizalign,left;zoom,1);
		OnCommand=cmd(shadowlength,1);
		BeginCommand=function(self)
			self:settextf( Screen.String("TimingDifficulty"), "" );
		end
	};
	LoadFont("Common Normal") .. {
		Text=GetTimingDifficulty();
		AltText="";
		InitCommand=cmd(x,1;zoom,1;halign,1);
		OnCommand=function(self)
			(cmd(shadowlength,1))(self);
			
			if GetTimingDifficulty() == 1 then
				self:settext("1 (Easiest)");
				(cmd(zoom,1))(self);
			end
			
			if GetTimingDifficulty() == 2 then
				self:settext("2 (Easier)");
				(cmd(zoom,1))(self);
			end
			
			if GetTimingDifficulty() == 3 then
				self:settext("3 (Easy)");
				(cmd(zoom,1))(self);
			end
			
			if GetTimingDifficulty() == 4 then
				self:settext("4 (Normal)");
				(cmd(zoom,1))(self);
			end
			
			if GetTimingDifficulty() == 5 then
				self:settext("5 (Difficulty)");
				(cmd(zoom,1))(self);
			end
			
			if GetTimingDifficulty() == 6 then
				self:settext("6 (Hard)");
				(cmd(zoom,1))(self);
			end
			
			if GetTimingDifficulty() == 7 then
				self:settext("7 (Harder)");
				(cmd(zoom,1))(self);
			end
			
			if GetTimingDifficulty() == 8 then
				self:settext("8 (Hardest)");
				(cmd(zoom,1))(self);
			end
			
			if GetTimingDifficulty() == 9 then
				self:settext("9 (Justice)");
				(cmd(zoom,1))(self);
			end
			
		end;
	};
	
};