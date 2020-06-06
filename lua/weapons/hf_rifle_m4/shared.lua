SWEP.Base = "madfox3"


// Settings
SWEP.Category				= "Homefront"
SWEP.ViewModel				= Model("models/weapons/homefront/v_rifle_m4_nokey.mdl")
SWEP.WorldModel				= Model("models/weapons/homefront/w_rifle_m4.mdl")
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

// Primary
SWEP.Primary.Sound 			= Sound("Weapon_HFM4.Single")
SWEP.Primary.SoundEnd 		= Sound("Weapon_HFM4.SingleEnd")					
SWEP.Primary.Round 			= ("")		
SWEP.Primary.Damage			= 12							
SWEP.Primary.RPM			= 700					// This is in Rounds Per Minute
SWEP.Primary.ClipSize		= 30				// Size of a clip
SWEP.Primary.DefaultClip	= 90				// Default number of bullets in a clip

SWEP.Primary.KickUp			= 0.5					// Maximum up recoil (rise)
SWEP.Primary.KickDown		= -0.5				// Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 0.5					// Maximum side recoil (koolaid)

SWEP.Primary.Automatic		= true				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "ar2"			// What kind of ammo
SWEP.HoldType 				= "ar2"

SWEP.Secondary.DefaultClip	= 0					// Default number of bullets in a clip
SWEP.Secondary.Ammo			= ""



// Run Position
SWEP.RunSightsPos 			= Vector (0, 0, 0)
SWEP.RunSightsAng 			= Vector (0, 0, 0)

// Shells
SWEP.EjectsShells 		= true
SWEP.ShellDelay 		= 0
SWEP.ShellEffect 		= "sim_shelleject_fas_556"

// M4
SWEP.Burst			= false
SWEP.BranchReload 	= true
SWEP.UnderLauncher 	= false
SWEP.UnderKey		= false
SWEP.AnimDraw 		= ACT_VM_DRAW
SWEP.AnimDrawEmpty 	= ACT_VM_DRAW_EMPTY

SWEP.Offset = {
	Pos = 
	{
	Up = 1,  		-- Z Axis	(Up/Down)
	Right = 0.5, 		-- X Axis	(Left/Right)
	Forward = 1, 	-- Y Axis	(Back/Forward)
	},
	Ang = 
	{
	Up = 0,		-- Rotate	(Left/Right)
	Right = 0,		-- Rolling``	(Back/Forth)
	Forward = 0,	-- Rolling	(Left/Right)
	}
}


// Setup Bodygroups
function SWEP:Config()
	// Hands
	/*
	0 - homeless
	1 - gaming addiction
	2 - murican
	*/
	self.Owner:GetViewModel():SetBodygroup(1,2)
	
	// Sight
	/*
	0 - none
	1 - ironsight
	2 - dot
	3 - dot
	4 - dot
	5 - dot
	6 - dot
	7 - dot
	8 - acog 1
	9 - acog 2
	10 - acog 3
	*/
	self.Owner:GetViewModel():SetBodygroup(2,8) 
	
	// Frontsight
	/*
	0 - none
	1 - frontsight
	*/
	self.Owner:GetViewModel():SetBodygroup(3,0) 

	// AK Rail
	/*
	0 - none
	1 - rail
	*/
	self.Owner:GetViewModel():SetBodygroup(4,0) 

	// ACOG Config
	if self.Owner:GetViewModel():GetBodygroup(2) >= 8 then
		// Acog pos
		self.IronSightsPos 			= Vector (0, 0, 0.6)
		self.IronSightsAng 			= Vector (-0.8, 0, 0)
		
		// Zoom
		self.Secondary.Zoom			= 0.3

		// Viewmodel zoom 
		self:SetViewmodelFOV(90, 0.1)
	elseif self.Owner:GetViewModel():GetBodygroup(2) > 1 then
		// Ironsight pos
		self.IronSightsPos 			= Vector (0, 0, 0.25)
		self.IronSightsAng 			= Vector (0, 0, 0)
		self.Secondary.Zoom			= 0.85
	end
end

