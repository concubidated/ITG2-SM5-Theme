return Def.ActorFrame{
	LoadFont("_v 26px bold black")..{
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-16;diffusealpha,0;horizalign,center;shadowlength,0;zoom,.5;);
		OnCommand=cmd(linear,.4;diffusealpha,1;playcommand,"Refresh");
		RefreshCommand=function(self)
			if GAMESTATE:IsEventMode() then self:settext('') return end
			if GAMESTATE:GetCoinMode()=='CoinMode_Free' then self:settext('') return end
			if GAMESTATE:GetCoinMode()=='CoinMode_Home' then self:settext('') return end

			local coins=GAMESTATE:GetCoins()
			local coinsPerCredit=PREFSMAN:GetPreference('CoinsPerCredit')
			local credits=math.floor(coins/coinsPerCredit)
			local remainder=math.mod(coins,coinsPerCredit)
			local s='CREDIT(S) :  '
			if credits>0 then s=s..credits..'  ' end
			s=s..remainder..'/'..coinsPerCredit
			self:settext(s)
		end;
		SelectMenuOpenedMessageCommand=cmd(stoptweening;bounceend,0.2;diffusealpha,0;);
		SelectMenuClosedMessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,1;);
	};
	LoadActor("updatecoin")..{
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-16;diffusealpha,0;horizalign,center;shadowlength,2;zoom,0.5;);
		OnCommand=cmd(playcommand,"Refresh");
		RefreshCommand=function(self)
			self:diffusealpha(0);
			self:zoom(0);
			self:linear(0.08);
			self:zoom(0.5);
			self:diffusealpha(0.85);
			self:sleep(0.08);
			self:linear(0.1);
			self:diffusealpha(0)
		end;
		CoinInsertedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
	};
};