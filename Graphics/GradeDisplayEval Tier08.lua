return Def.ActorFrame{
	InitCommand=cmd(zoom,0.7;rotationy,-90;spin;effectmagnitude,0,40,0);
	Def.Model{
		Materials=THEME:GetPathG("_grade","models/a.txt"),
		Meshes=THEME:GetPathG("_grade","models/a.txt"),
		Bones=THEME:GetPathG("_grade","models/a.txt"),
		OnCommand=cmd(x,-25);
	};
	Def.Model{
		Materials=THEME:GetPathG("_grade","models/plus.txt"),
		Meshes=THEME:GetPathG("_grade","models/plus.txt"),
		Bones=THEME:GetPathG("_grade","models/plus.txt"),
		OnCommand=cmd(x,30);
	};
};