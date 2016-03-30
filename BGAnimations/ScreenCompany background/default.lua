return Def.ActorFrame{

	LoadActor("roxor")..{
		InitCommand=cmd(Center;FullScreen;sleep,6);
	};
};