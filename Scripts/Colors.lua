Color = {

	Black		=	color("0,0,0,1"),
	White		=	color("1,1,1,1"),
	Red			=	color("#ed1c24"),
	Blue		=	color("#00aeef"),
	Green		=	color("#39b54a"),
	Yellow		=	color("#fff200"),
	Orange		=	color("#f7941d"),
	Purple		=	color("#92278f"),
	Outline		=	color("0,0,0,0.5"),
	Invisible	=	color("1,1,1,0"),
	Stealth		=	color("0,0,0,0"),

	HoloBlue		= color("#33B5E5"),
	HoloDarkBlue	= color("#0099CC"),
	HoloPurple		= color("#AA66CC"),
	HoloDarkPurple	= color("#9933CC"),
	HoloGreen		= color("#99CC00"),
	HoloDarkGreen	= color("#669900"),
	HoloOrange		= color("#FFBB33"),
	HoloDarkOrange	= color("#FF8800"),
	HoloRed			= color("#FF4444"),
	HoloDarkRed		= color("#CC0000"),
	
	Novice			= color("#D05CF6"),
	Easy			= color("#09FF10"),
	Medium			= color("#F3F312"),
	Hard			= color("#EA3548"),
	Expert			= color("#16AFF3"),
	Edit			= color("#F7F7F7"),
	
	ToNovice		= color("#e0a2f5"),
	ToEasy			= color("#9effa2"),
	ToMedium		= color("#f2f29b"),
	ToHard			= color("#eb99a1"),
	ToExpert		= color("#9ad7f2"),
	ToEdit			= color("#f7f7f7"),

	Alpha = function(c, fAlpha)
		return { c[1],c[2],c[3], fAlpha }
	end
}

setmetatable(Color, { __call = function(self, c) return self[c] end })

function PlayerColor( pn )
	if pn == PLAYER_1 then return color("#FFDE00") end	-- oranged yellow
	if pn == PLAYER_2 then return color("#14FF00") end	-- green
	return color("1,1,1,1")
end

function DiffusePlayerColor( pn )
	if pn == PLAYER_1 then return color("#FFDE00") end	-- oranged yellow
	if pn == PLAYER_2 then return color("#14FF00") end	-- green
	return color("1,1,1,1")
end

function CustomDifficultyToColor( dc )
	if dc == "Beginner"		then return color("#D05CF6") end
	if dc == "Easy"			then return color("#09FF10") end
	if dc == "Medium"		then return color("#F3F312") end
	if dc == "Hard"			then return color("#EA3548") end
	if dc == "Challenge"	then return color("#16AFF3") end
	if dc == "Edit"			then return color("#F7F7F7") end
	return color("1,1,1,1")
end

function ContrastingDifficultyColor( dc )
	if dc == "Beginner"		then return color("#E2ABF5") end
	if dc == "Easy"			then return color("#B2FFB5") end
	if dc == "Medium"		then return color("#F2F2AA") end
	if dc == "Hard"			then return color("#EBA4AB") end
	if dc == "Challenge"	then return color("#AADCF2") end
	if dc == "Edit"			then return color("#F7F7F7") end
	return color("1,1,1,1")
end

function DifficultyToColor( dc )
	if dc == 'Difficulty_Beginner'	then return CustomDifficultyToColor("Beginner") end
	if dc == 'Difficulty_Easy'		then return CustomDifficultyToColor("Easy") end
	if dc == 'Difficulty_Medium'	then return CustomDifficultyToColor("Medium") end
	if dc == 'Difficulty_Hard'		then return CustomDifficultyToColor("Hard") end
	if dc == 'Difficulty_Expert'	then return CustomDifficultyToColor("Expert") end
	if dc == 'Difficulty_Edit'		then return CustomDifficultyToColor("Edit") end
	return color("1,1,1,1")
end