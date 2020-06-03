SWEP.Base = "madfox3"


// Settings
SWEP.Category				= "Homefront"
SWEP.ViewModel				= Model("models/weapons/homefront/v_rifle_m16_nokey.mdl")
SWEP.WorldModel				= Model("models/weapons/homefront/w_rifle_m16.mdl")
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

// Primary
SWEP.Primary.Sound 			= Sound("Weapon_HFM16.Single")
SWEP.Primary.SoundEnd 		= Sound("")					
SWEP.Primary.Damage			= 20							
SWEP.Primary.RPM			= 700					// This is in Rounds Per Minute
SWEP.Primary.ClipSize		= 30				// Size of a clip
SWEP.Primary.DefaultClip	= 90				// Default number of bullets in a clip

SWEP.Primary.KickUp			= 1					// Maximum up recoil (rise)
SWEP.Primary.KickDown		= -.5					// Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 0.2					// Maximum side recoil (koolaid)

SWEP.Primary.Automatic		= false				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "ar2"			// What kind of ammo
SWEP.HoldType 				= "ar2"

SWEP.Secondary.DefaultClip	= 0					// Default number of bullets in a clip
SWEP.Secondary.Ammo			= ""

SWEP.Secondary.Zoom			= 0.66	

// Adjust sight position
SWEP.IronSightsPos 			= Vector (0, 5, 0)
SWEP.IronSightsAng 			= Vector (-0.12, 0.02, 0)

// Run Position
SWEP.RunSightsPos 			= Vector (0, 0, 0)
SWEP.RunSightsAng 			= Vector (0, 0, 0)

// Shells
SWEP.EjectsShells 		= true
SWEP.ShellDelay 		= 0
SWEP.ShellEffect 		= "sim_shelleject_fas_556"

// M16
SWEP.Burst			= false
SWEP.BranchReload 	= true
SWEP.UnderLauncher 	= false
SWEP.UnderKey		= false
SWEP.AnimDraw 		= ACT_VM_DRAW
SWEP.AnimDrawEmpty 	= ACT_VM_DRAW

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