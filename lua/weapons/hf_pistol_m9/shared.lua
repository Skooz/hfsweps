SWEP.Base = "madfox3"

// Settings
SWEP.Category				= "Homefront"
SWEP.ViewModel				= Model("models/weapons/homefront/v_pistol_m9.mdl")
SWEP.WorldModel				= Model("models/weapons/homefront/w_pistol_m9.mdl")
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

// Primary
SWEP.Primary.Sound 			= Sound("Weapon_HFM9.Single")				
SWEP.Primary.Round 			= ("")		
SWEP.Primary.Damage			= 15							
SWEP.Primary.RPM			= 1100					// This is in Rounds Per Minute
SWEP.Primary.ClipSize		= 12				// Size of a clip
SWEP.Primary.DefaultClip	= 120				// Default number of bullets in a clip
SWEP.Primary.KickUp			= 1					// Maximum up recoil (rise)
SWEP.Primary.KickDown		= 1					// Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 1					// Maximum side recoil (koolaid)
SWEP.Primary.Automatic		= false				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "pistol"			// What kind of ammo
SWEP.HoldType 				= "pistol"

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
SWEP.ShellEffect 		= "sim_shelleject_fas_9x19mm"

// M9
SWEP.Burst			= false
SWEP.BranchReload 	= false
SWEP.UnderLauncher 	= false
SWEP.UnderKey		= false

SWEP.AnimDraw 		= ACT_VM_DRAW
SWEP.AnimDrawEmpty 	= ACT_VM_DRAW_EMPTY
SWEP.AnimReload			= ACT_VM_RELOAD
SWEP.AnimReloadEmpty	= ACT_VM_RELOAD_EMPTY

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

/*
ANIM LIST:

~M9~
Draw: 			ACT_VM_DRAW
First-Draw: 	ACT_VM_DRAW_EMPTY

Holster: 		ACT_VM_HOLSTER
Quick-Holster: 	ACT_VM_HOLSTER_EMPTY

Idle: 			ACT_VM_IDLE
ADS Idle: 		ACT_VM_IDLE_2

Fire1: 			ACT_VM_PRIMARYATTACK
ADS Fire: 		ACT_VM_PRIMARYATTACK_2

Reload: 		ACT_VM_RELOAD
Reload Empty: 	ACT_VM_RELOAD_EMPTY

*/