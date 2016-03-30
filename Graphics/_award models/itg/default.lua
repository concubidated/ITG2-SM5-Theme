local itemColor = ... -- "gold", "silver", "blue"
assert(itemcolor,"[_award models/itg/] requires item color")

return Def.ActorFrame{
	Def.Model{
		Meshes=THEME:GetPathG("_award","models/itg/meshes.txt"),
		Materials=THEME:GetPathG("_award","models/itg/materials "..itemColor..".txt"),
		Bones=THEME:GetPathG("_award","models/bones.txt"),
		InitCommand=cmd(zoomx,1.2;zoomy,0.8;rotationy,-90;spin;effectmagnitude,0,40,0),
	};
};