return Def.ActorFrame{
	InitCommand=cmd(zoom,0.7;rotationy,-90;spin;effectmagnitude,0,40,0);
	Def.Model{
		Materials=THEME:GetPathG("_grade","models/b.txt"),
		Meshes=THEME:GetPathG("_grade","models/b.txt"),
		Bones=THEME:GetPathG("_grade","models/b.txt"),
		OnCommand=cmd(x,-25);
	};
	Def.Model{
		Materials=THEME:GetPathG("_grade","models/yellow minus.txt"),
		Meshes=THEME:GetPathG("_grade","models/yellow minus.txt"),
		Bones=THEME:GetPathG("_grade","models/yellow minus.txt"),
		OnCommand=cmd(x,30);
	};
};