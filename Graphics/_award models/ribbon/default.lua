local itemColor = ... -- "blue", "green", "orange", "pink", "purple", "red"
assert(itemcolor,"[_award models/ribbon/] requires item color")

return Def.ActorFrame{
	Def.Model{
		Meshes=THEME:GetPathG("_award","models/ribbon/meshes.txt"),
		Materials=THEME:GetPathG("_award","models/ribbon/materials "..itemColor..".txt"),
		Bones=THEME:GetPathG("_award","models/bones.txt"),
		InitCommand=cmd(zoom,0.6;wag;effectmagnitude,0,15,0;effectperiod,8),
	};
};