SWEP.Base = "madfox3"

// Settings
SWEP.Category				= "Homefront"
SWEP.ViewModel				= Model("models/weapons/homefront/v_smg_kriss.mdl")
SWEP.WorldModel				= Model("models/weapons/homefront/w_smg_kriss.mdl")
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

// Primary
SWEP.Primary.Sound 			= Sound("Weapon_HFKriss.Single")	
SWEP.Primary.SoundEnd 		= Sound("Weapon_HFKriss.SingleEnd")				
SWEP.Primary.Round 			= ("")		
SWEP.Primary.Damage			= 10							
SWEP.Primary.RPM			= 1100					// This is in Rounds Per Minute
SWEP.Primary.ClipSize		= 30				// Size of a clip
SWEP.Primary.DefaultClip	= 120				// Default number of bullets in a clip
SWEP.Primary.KickUp			= 1.5					// Maximum up recoil (rise)
SWEP.Primary.KickDown		= 1.5					// Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 0.5					// Maximum side recoil (koolaid)
SWEP.Primary.Automatic		= true				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "smg1"			// What kind of ammo
SWEP.HoldType 				= "smg"

SWEP.Secondary.DefaultClip	= 0					// Default number of bullets in a clip
SWEP.Secondary.Ammo			= ""

SWEP.Secondary.Zoom			= 0.9

// Adjust sight position
SWEP.IronSightsPos 			= Vector (0, 0, 0)
SWEP.IronSightsAng 			= Vector (-0.1, 0.06, 0)


// Run Position
SWEP.RunSightsPos 			= Vector (0, 0, 0)
SWEP.RunSightsAng 			= Vector (0, 0, 0)

// Shells
SWEP.EjectsShells 		= true
SWEP.ShellDelay 		= 0
SWEP.ShellEffect 		= "sim_shelleject_fas_45acp"


// Kriss
SWEP.Shotgun 			= false 
SWEP.Burst				= false
SWEP.BranchReload 		= true
SWEP.UnderLauncher 		= false
SWEP.UnderKey			= false
SWEP.AnimDraw 			= ACT_VM_DRAW
SWEP.AnimDrawEmpty 		= ACT_VM_DRAW
SWEP.AnimReload			= ACT_VM_RELOAD
SWEP.AnimReloadEmpty	= ACT_VM_RELOAD

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
