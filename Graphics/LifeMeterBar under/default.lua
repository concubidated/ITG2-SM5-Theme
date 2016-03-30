local under = ThemePrefs.Get("SurroundLife") == "On" and "Surround" or "Normal"

local t = Def.ActorFrame{

	LoadActor(under)
};

return t;