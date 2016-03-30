local t = Def.ActorFrame{
	InitCommand=cmd(runcommandsonleaves,cmd(ztest,true));
	LoadActor("_song frame");

	LoadFont("Common Normal")..{
		--maxwidth,264
		InitCommand=cmd(x,-292;halign,0;zoom,0.6;shadowlength,1;wrapwidthpixels,264;maxheight,58);
		SetCommand=function(self, params)
			if params.Song then
				self:settext( params.Song:GetDisplayFullTitle() );
			end
		end;
	};
};

local c
local Scores = Def.ActorFrame{
	InitCommand=function(self) c = self:GetChildren(); end;
};

for i=1,4 do
	Scores[#Scores+1] = LoadFont("Common Normal")..{
		Name="Name"..i;
		InitCommand=cmd(x,scale(i,1,4,-48,240);y,-8;zoom,0.625);
	};
	Scores[#Scores+1] = LoadFont("_futurist numbers metallic")..{
		Name="Score"..i;
		InitCommand=cmd(x,scale(i,1,4,-48,240);y,12;zoom,0.5);
	};
end

Scores.SetCommand=function(self,param)
	local profile = PROFILEMAN:GetMachineProfile();
	for name, child in pairs(c) do child:visible(false); end
	local sel = param.Song
	if not sel then return end

	for i, item in pairs(param.Entries) do
		if item then
			local hsl = profile:GetHighScoreList(sel, item);
			local hs = hsl and hsl:GetHighScores();

			assert(c["Name"..i])
			assert(c["Score"..i])

			c["Name"..i]:visible(true)
			c["Score"..i]:visible(true)
			if hs and #hs > 0 then
				c["Name"..i]:settext( hs[1]:GetName() );
				c["Score"..i]:settext( FormatPercentScore( hs[1]:GetPercentDP() ) );
			else
				c["Name"..i]:settext( "-----" );
				c["Score"..i]:settext( FormatPercentScore( 0 ) );
			end
		end
	end
end;

t[#t+1] = Scores

return t