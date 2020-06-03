SWEP.Base = "madfox3"


// Settings
SWEP.Category				= "Homefront"
SWEP.ViewModel				= Model("models/weapons/homefront/v_lmg_scarl.mdl")
SWEP.WorldModel				= Model("models/weapons/homefront/w_lmg_scarl.mdl")
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

// Primary
SWEP.Primary.Sound 			= Sound("Weapon_HFSCARL.Single")
SWEP.Primary.SoundEnd 		= Sound("Weapon_HFSCARL.SingleEnd")					
SWEP.Primary.Damage			= 12							
SWEP.Primary.RPM			= 600					// This is in Rounds Per Minute
SWEP.Primary.ClipSize		= 100				// Size of a clip
SWEP.Primary.DefaultClip	= 300				// Default number of bullets in a clip

SWEP.Primary.KickUp			= 0.5					// Maximum up recoil (rise)
SWEP.Primary.KickDown		= -0.5					// Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 1					// Maximum side recoil (koolaid)

SWEP.Primary.Automatic		= true				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "ar2"			// What kind of ammo
SWEP.HoldType 				= "ar2"

SWEP.Secondary.DefaultClip	= 0					// Default number of bullets in a clip
SWEP.Secondary.Ammo			= ""

SWEP.Secondary.Zoom			= 0.80	

// Adjust sight position
SWEP.IronSightsPos 			= Vector (0, 0, 0)
SWEP.IronSightsAng 			= Vector (0, 0, 0)

// Run Position
SWEP.RunSightsPos 			= Vector (0, 0, 0)
SWEP.RunSightsAng 			= Vector (0, 0, 0)

// Shells
SWEP.EjectsShells 		= true
SWEP.ShellDelay 		= 0
SWEP.ShellEffect 		= "sim_shelleject_fas_556"

// Scar LMG
SWEP.Shotgun 			= false 
SWEP.Burst				= false
SWEP.BranchReload 		= true
SWEP.UnderLauncher 		= false
SWEP.UnderKey			= false
SWEP.AnimDraw 			= ACT_VM_DRAW
SWEP.AnimDrawEmpty 		= ACT_VM_DRAW
SWEP.AnimReload			= ACT_VM_RELOAD
SWEP.AnimReloadEmpty		= ACT_VM_RELOAD

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