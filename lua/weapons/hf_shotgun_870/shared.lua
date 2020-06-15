SWEP.Base = "madfox3"

// Settings
SWEP.Category				= "Homefront"
SWEP.ViewModel				= Model("models/weapons/homefront/v_shotgun_870.mdl")
SWEP.WorldModel				= Model("models/weapons/homefront/w_shotgun_870.mdl")
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

// Primary
SWEP.Primary.Sound 			= Sound("Weapon_HFMasterkey.Single")				
SWEP.Primary.Round 			= ("")		
SWEP.Primary.Damage			= 6							
SWEP.Primary.RPM			= 105					// This is in Rounds Per Minute
SWEP.Primary.ClipSize		= 5				// Size of a clip
SWEP.Primary.DefaultClip	= 15				// Default number of bullets in a clip
SWEP.Primary.KickUp			= 1					// Maximum up recoil (rise)
SWEP.Primary.KickDown		= 1					// Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 1					// Maximum side recoil (koolaid)
SWEP.Primary.Automatic		= false				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "Buckshot"			// What kind of ammo
SWEP.HoldType 				= "shotgun"

SWEP.Secondary.DefaultClip	= 0					// Default number of bullets in a clip
SWEP.Secondary.Ammo			= ""


// Run Position
SWEP.RunSightsPos 			= Vector (0, 0, 0)
SWEP.RunSightsAng 			= Vector (0, 0, 0)

// Shells
SWEP.EjectsShells 		= true
SWEP.ShellDelay 		= 0.2
SWEP.ShellEffect 		= "sim_shelleject_fas_12gabuck"

// 870
SWEP.Shotgun 			= true
SWEP.Burst				= false
SWEP.BranchReload 		= false
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

// Set filename here 
local fileName = "_870.txt"

/*---------------------------------------------------------
ConfigLoad

- Load configs unique to the weapon here.
- This is called in Deploy
---------------------------------------------------------*/
function SWEP:ConfigLoad()

	// New file
	if !file.Exists("hf_config/"..self.Owner:UniqueID()..fileName,"DATA") then
		file.Write( "hf_config/"..self.Owner:UniqueID()..fileName , 1 )
	end
	// Load file
	if file.Exists("hf_config/"..self.Owner:UniqueID()..fileName,"DATA") then
		GetConVar("hfSight"):SetInt(file.Read("hf_config/"..self.Owner:UniqueID()..fileName ))
	end
	
end

/*---------------------------------------------------------
Config

- Set & update bodygroups here
---------------------------------------------------------*/
function SWEP:Config()

	// Hands
	// 0: homeless; 1: gaming addiction; 2: murican
	self.Owner:GetViewModel():SetBodygroup(1,GetConVarNumber("hfHands"))

	// Sight
	// 0: none; 1: ironsight; 2-7: dot; 8-10: acog
	self.Owner:GetViewModel():SetBodygroup(2,GetConVarNumber("hfSight")) 
	
	// Frontsight
	if self.Owner:GetViewModel():GetBodygroup(2) > 1 then
		self.Owner:GetViewModel():SetBodygroup(3,0)
	else
		self.Owner:GetViewModel():SetBodygroup(3,1)
	end

	// AK Rail
	if self.Owner:GetViewModel():GetBodygroup(2) > 1 then
		self.Owner:GetViewModel():SetBodygroup(4,1)
	else
		self.Owner:GetViewModel():SetBodygroup(4,0)
	end

	// ADS positions
	if self.Owner:GetViewModel():GetBodygroup(2) >= 8 then // Acog pos
		self.IronSightsPos 	= Vector (0, 0, -1)
		self.IronSightsAng 	= Vector (-1.95, 0, 0)
		self.Secondary.Zoom	= 0.3
		self:SetViewmodelFOV(90, 0.1)
	elseif self.Owner:GetViewModel():GetBodygroup(2) > 1 then // Red-dot pos
		self.IronSightsPos 	= Vector (0, 0, -1.7)
		self.IronSightsAng 	= Vector (0, 0, 0)
		self.Secondary.Zoom	= 0.70
		//self:SetViewmodelFOV(60, 0.1)
	else // Iron pos
		self.IronSightsPos 	= Vector (0, 0, 0)
		self.IronSightsAng 	= Vector (-0.1, 0.06, 0)
		self.Secondary.Zoom	= 0.9
	end

	// Save (write to disk) config for this weapon
	if tonumber(GetConVarNumber("hfSight")) != tonumber(file.Read("hf_config/"..self.Owner:UniqueID()..fileName)) then
		file.Write( "hf_config/"..self.Owner:UniqueID()..fileName , GetConVarNumber("hfSight"))
	end
end