return Def.ActorFrame{

	Def.ActorFrame{
		Name="Page";
		InitCommand=cmd(Center);
		LoadActor(THEME:GetPathG("_mapcontrollers","page"));
		LoadActor(THEME:GetPathG("_mapcontrollers","line"))..{
			Name="LeftLine";
			InitCommand=cmd(x,-64;y,-25;);
		};
		LoadActor(THEME:GetPathG("_mapcontrollers","line"))..{
			Name="RightLine";
			InitCommand=cmd(x,64;y,-25;);
		};
	};
};