-------------------------------------------------------------------------------------------------------------------
-- REVISION 4 LUA Scripts (Ov3rHell3XoduZ)
-- Special Features for REVISION 4 on Beta 4
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- MusicWheel Transform Function
-------------------------------------------------------------------------------------------------------------------
function music_wheel_transform(self,offsetFromCenter,_fake1,_fake2) 

	local numItems = THEME:GetMetric("MusicWheel","NumWheelItems")
	local curve3D = THEME:GetMetric("MusicWheel", "CirclePercent")* 2 * math.pi
	local fRotX = scale(offsetFromCenter, -numItems/2,numItems/2, -curve3D/2,curve3D/2) 
	local radius = THEME:GetMetric("MusicWheel","Wheel3DRadius") 
	local spacingY = THEME:GetMetric("MusicWheel","ItemSpacingY")
	local curveX = "-9"
	
	if ThemePrefs.Get("CurvedMusicWheel") == "Off" then
	-- Linear MusicWheel
		self:x( (1-math.cos(offsetFromCenter/math.pi))*0 )
		self:y( offsetFromCenter*32 )
	else
	-- Curved MusicWheel
		self:x( (1-math.cos(offsetFromCenter/math.pi))*curveX )
		self:y( (offsetFromCenter*scale(math.abs(offsetFromCenter), 0.98,numItems/2, spacingY,spacingY*math.sin(0.82))) )
		self:z( -8*math.abs(offsetFromCenter*2.5) )
		self:rotationx((offsetFromCenter*13) * math.sin(180.1/math.pi))
	end
	
end;

-------------------------------------------------------------------------------------------------------------------
-- MusicWheel OnCommand
-------------------------------------------------------------------------------------------------------------------
function MusicOnCommand(self)

	if ThemePrefs.Get("CurvedMusicWheel") == "Off" then
		local DO = -150
		self:draworder(DO)
		self:rotationy(0)
		self:zoomx(1)
		self:zoomy(0.8)
	else
		local DO = -150
		self:draworder(DO)
		self:rotationy(67)
		self:zoomx(2.9)
		self:zoomy(1.1)
		self:zoomz(0.9)
	end
end

-------------------------------------------------------------------------------------------------------------------
-- Highlight OnCommand
-------------------------------------------------------------------------------------------------------------------
function HighlightOnCommand(self)

	if ThemePrefs.Get("CurvedMusicWheel") == "Off" then
		self:x(0)
	else
		self:x(20)
		self:zoomx(1)
	end
end

-------------------------------------------------------------------------------------------------------------------
-- MusicWheel X Position
-------------------------------------------------------------------------------------------------------------------
function MusicPosX()
	
	local PosX = SCREEN_CENTER_X
	
	if ThemePrefs.Get("CurvedMusicWheel") == "Off" then
		PosX = SCREEN_CENTER_X-200
	else
		PosX = SCREEN_CENTER_X-203
	end	
	
	return PosX
end

-------------------------------------------------------------------------------------------------------------------
-- MusicWheel Y Position
-------------------------------------------------------------------------------------------------------------------
function MusicPosY()
	
	local PosY = SCREEN_CENTER_Y
	
	if ThemePrefs.Get("CurvedMusicWheel") == "Off" then

		PosY = SCREEN_CENTER_Y-4
	else
		PosY = SCREEN_CENTER_Y
	end	
	
	return PosY
end

-------------------------------------------------------------------------------------------------------------------
-- Grade SetCommand
-------------------------------------------------------------------------------------------------------------------
function GradeSetCommand(self)
	
	if ThemePrefs.Get("CurvedMusicWheel") == "Off" then
		self:zoom(0.5)
	else
		self:visible(false)
		self:zoom(0)
	end
end