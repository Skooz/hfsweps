SWEP.Base = "madfox3"


// Settings
SWEP.Category				= "Homefront"
SWEP.ViewModel				= Model("models/weapons/homefront/v_rifle_t3ak_gl.mdl")
SWEP.WorldModel				= Model("models/weapons/homefront/w_rifle_t3ak.mdl")
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

// Primary
SWEP.Primary.Sound 			= Sound("Weapon_HFT3AK.Single")
SWEP.Primary.SoundEnd 		= Sound("Weapon_HFT3AK.SingleEnd")					
SWEP.Primary.Damage			= 20							
SWEP.Primary.RPM			= 600					// This is in Rounds Per Minute
SWEP.Primary.ClipSize		= 30				// Size of a clip
SWEP.Primary.DefaultClip	= 90				// Default number of bullets in a clip

SWEP.Primary.KickUp			= 1.25					// Maximum up recoil (rise)
SWEP.Primary.KickDown		= -0.5					// Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 0.4					// Maximum side recoil (koolaid)

SWEP.Primary.Automatic		= true				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "ar2"			// What kind of ammo
SWEP.HoldType 				= "ar2"

SWEP.Secondary.DefaultClip	= 3					// Default number of bullets in a clip
SWEP.Secondary.Ammo			= "SMG1_Grenade"

SWEP.Secondary.Zoom			= 0.85	

// Adjust sight position
SWEP.IronSightsPos 			= Vector (0, 0, 0)
SWEP.IronSightsAng 			= Vector (0.15, 0.01, 0)

// Run Position
SWEP.RunSightsPos 			= Vector (0, 0, 0)
SWEP.RunSightsAng 			= Vector (0, 0, 0)

// Shells
SWEP.EjectsShells 		= true
SWEP.ShellDelay 		= 0
SWEP.ShellEffect 		= "sim_shelleject_fas_556"

// T3AK - use acr stop sound
SWEP.Burst				= false
SWEP.BranchReload 		= false
SWEP.UnderLauncher 		= true
SWEP.UnderKey			= false
SWEP.AnimDraw 			= ACT_VM_DRAW
SWEP.AnimDrawEmpty 		= ACT_VM_DRAW // no empty on gl or key
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