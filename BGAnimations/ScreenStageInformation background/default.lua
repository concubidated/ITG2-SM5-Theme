local t = Def.ActorFrame{
	Def.ActorFrame{
		Name="SongName";
		LoadFont("Common Normal")..{
			InitCommand=cmd(x,SCREEN_LEFT+70;y,SCREEN_CENTER_Y+150;shadowlength,2;horizalign,left;zoom,0.8);
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong()
				local text
				if song then
					text = song:GetDisplayFullTitle()
				else
					text = ""
				end
				self:settext(text)
			end;
			OnCommand=cmd(playcommand,"Set");
		};
	};
	
	Def.ActorFrame{
		Name="ArtistName";
		LoadFont("Common Normal")..{
			InitCommand=cmd(x,SCREEN_LEFT+70;y,SCREEN_CENTER_Y+170;shadowlength,2;horizalign,left;zoom,0.8);
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong()
				local text
				if song then
					text = song:GetDisplayArtist()
				else
					text = ""
				end
				self:settext(text)
			end;
			OnCommand=cmd(playcommand,"Set");
		};
	};
};

return t;