SWEP.Base = "madfox3"


// Settings
SWEP.Category				= "Homefront"
SWEP.ViewModel				= Model("models/weapons/homefront/v_sniper_m200.mdl")
SWEP.WorldModel				= Model("models/weapons/homefront/w_sniper_m200.mdl")
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

// Primary
SWEP.Primary.Sound 			= Sound("Weapon_HFM200.Single")
SWEP.Primary.SoundEnd 		= Sound("")					
SWEP.Primary.Damage			= 100							
SWEP.Primary.RPM			= 20					// This is in Rounds Per Minute
SWEP.Primary.ClipSize		= 7				// Size of a clip
SWEP.Primary.DefaultClip	= 28				// Default number of bullets in a clip

SWEP.Primary.KickUp			= 4					// Maximum up recoil (rise)
SWEP.Primary.KickDown		= -3					// Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 2					// Maximum side recoil (koolaid)

SWEP.Primary.Automatic		= false				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "ar2"			// What kind of ammo
SWEP.HoldType 				= "ar2"

SWEP.Secondary.DefaultClip	= 0					// Default number of bullets in a clip
SWEP.Secondary.Ammo			= ""

SWEP.Secondary.Zoom			= 0.1	

// Adjust sight position
SWEP.IronSightsPos 			= Vector (-5, -100, 0)
SWEP.IronSightsAng 			= Vector (0, 0, 0)

// Run Position
SWEP.RunSightsPos 			= Vector (0, 0, 0)
SWEP.RunSightsAng 			= Vector (0, 0, 0)

// Shells
SWEP.EjectsShells 		= true
SWEP.ShellDelay 		= 1.75
SWEP.ShellEffect 		= "sim_shelleject_fas_50cal"

// Snipers
SWEP.Secondary.UseACOG			= false	
SWEP.Secondary.UseMilDot		= false		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseParabolic		= true	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	
SWEP.Secondary.UseRangefinder	= false	

SWEP.data 						= {}
SWEP.data.ironsights			= 1

SWEP.ScopeScale 				= 1
SWEP.ReticleScale 				= 1
SWEP.Velocity					= 850

// M200
SWEP.Sniper				= true
SWEP.Shotgun 			= false 
SWEP.Burst				= false
SWEP.BranchReload 		= false
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