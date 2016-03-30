return Def.ActorFrame {

	LoadFont("Common Normal") .. {
		Text=GetLifeDifficulty();
		AltText="";
		InitCommand=cmd(x,-400;horizalign,left;zoom,1);
		OnCommand=cmd(shadowlength,1);
		BeginCommand=function(self)
			self:settextf( Screen.String("LifeDifficulty"), "" );
		end
	};
	LoadFont("Common Normal") .. {
		Text=GetLifeDifficulty();
		AltText="";
		InitCommand=cmd(x,1;zoom,1;halign,1);
		OnCommand=function(self)
			(cmd(shadowlength,1))(self);
			
			if GetLifeDifficulty() == 1 then
				self:settext("1 (Easiest)");
				(cmd(zoom,1))(self);
			end
			
			if GetLifeDifficulty() == 2 then
				self:settext("2 (Easier)");
				(cmd(zoom,1))(self);
			end
			
			if GetLifeDifficulty() == 3 then
				self:settext("3 (Easy)");
				(cmd(zoom,1))(self);
			end
			
			if GetLifeDifficulty() == 4 then
				self:settext("4 (Normal)");
				(cmd(zoom,1))(self);
			end
			
			if GetLifeDifficulty() == 5 then
				self:settext("5 (Hard)");
				(cmd(zoom,1))(self);
			end
			
			if GetLifeDifficulty() == 6 then
				self:settext("6 (Harder)");
				(cmd(zoom,1))(self);
			end
			
			if GetLifeDifficulty() == 7 then
				self:settext("7 (Hardest)");
				(cmd(zoom,1))(self);
			end
			
		end;
	};
};