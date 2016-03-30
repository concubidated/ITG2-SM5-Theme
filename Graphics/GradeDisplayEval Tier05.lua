return Def.ActorFrame{
	InitCommand=cmd(zoom,0.8;rotationy,-90;spin;effectmagnitude,0,40,0);
	Def.Model{
		Materials=THEME:GetPathG("_grade","models/s.txt"),
		Meshes=THEME:GetPathG("_grade","models/s.txt"),
		Bones=THEME:GetPathG("_grade","models/s.txt"),
		OnCommand=cmd(x,-25);
	};
	Def.Model{
		Materials=THEME:GetPathG("_grade","models/smooth plus.txt"),
		Meshes=THEME:GetPathG("_grade","models/smooth plus.txt"),
		Bones=THEME:GetPathG("_grade","models/smooth plus.txt"),
		OnCommand=cmd(x,30);
	};
};