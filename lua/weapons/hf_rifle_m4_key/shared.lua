SWEP.Base = "madfox3"


// Settings
SWEP.Category				= "Homefront"
SWEP.ViewModel				= Model("models/weapons/homefront/v_rifle_m4.mdl")
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

SWEP.Primary.KickUp			= 1					// Maximum up recoil (rise)
SWEP.Primary.KickDown		= 1					// Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 1					// Maximum side recoil (koolaid)

SWEP.Primary.Automatic		= true				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "ar2"			// What kind of ammo
SWEP.HoldType 				= "ar2"

SWEP.Secondary.DefaultClip	= 9					// Default number of bullets in a clip
SWEP.Secondary.Ammo			= "Buckshot"

// Run Position
SWEP.RunSightsPos 			= Vector (0, 0, 0)
SWEP.RunSightsAng 			= Vector (0, 0, 0)

// Shells
SWEP.EjectsShells 		= true
SWEP.ShellDelay 		= 0
SWEP.ShellEffect 		= "sim_shelleject_fas_556"

// M4 Key
SWEP.Burst			= false
SWEP.BranchReload 	= true
SWEP.UnderLauncher 	= false
SWEP.UnderKey		= true
SWEP.AnimDraw 		= ACT_VM_DEPLOY
SWEP.AnimDrawEmpty 	= ACT_VM_DEPLOY


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