/*---------------------------------------------------------------------------------------
~ Homefront SWEPs
~
~ These are mainly meant to be used in SP. MP polish is WIP.
~
~ Zookie 			- dude, that's me
~ Marlwolf 			- dude, he's kinda cute
~ Magenta 			- dude, she hates my soul
~ Generic Default 	- dude, that's a dude
---------------------------------------------------------------------------------------*/

// Weapon Descriptions
SWEP.Category				= "Homefront"
SWEP.Author					= "\nZookie, Marlwolf, Magenta, Generic Default"
SWEP.Contact				= "\nDiscord: Zookie#0210"
SWEP.Purpose				= "Homefront SWEPs"
SWEP.Instructions			= "E + R = Swap Modes.\n"

// Settings
SWEP.ViewModel				= Model("models/weapons/homefront/v_sniper_m110.mdl")
SWEP.WorldModel				= Model("models/weapons/homefront/w_sniper_m110.mdl")
SWEP.ViewModelFOV			= 50		
SWEP.ViewModelFlip			= false		
SWEP.DrawCrosshair			= true	
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

// Primary
SWEP.Primary.Sound 			= Sound("Weapon_HFM110.Single")			
SWEP.Primary.SoundEnd 		= Sound("Weapon_HFKriss.SingleEnd")		
SWEP.Primary.Round 			= ("")								
SWEP.Primary.Damage			= 12
SWEP.Primary.RPM			= 1100					// This is in Rounds Per Minute
SWEP.Primary.ClipSize		= 30				// Size of a clip
SWEP.Primary.DefaultClip	= 120				// Amount of ammo you spawn with
SWEP.Primary.KickUp			= 1					// Maximum up recoil (rise)
SWEP.Primary.KickDown		= 1					// Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 1					// Maximum side recoil (koolaid)
SWEP.Primary.Automatic		= false				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "pistol"			// What kind of ammo
SWEP.HoldType 				= "ar2"

// Secondary
SWEP.Secondary.ClipSize		= 0						// Size of a clip - We don't want a secondary clip size since this isn't actually handled
SWEP.Secondary.DefaultClip	= 10					// Amount of ammo you spawn with
SWEP.Secondary.Ammo			= "SMG1_Grenade"
SWEP.Secondary.Automatic	= false				// Automatic/Semi Auto

// Deprecated(?)
SWEP.IronSightsPos 			= Vector (4, -80, 0)
SWEP.IronSightsAng 			= Vector (0, 0, 0)

// Run Position
SWEP.RunSightsPos 			= Vector (0, 0, 0)
SWEP.RunSightsAng 			= Vector (0, 0, 0)

// Shells
SWEP.EjectsShells 		= true
SWEP.ShellDelay 		= 0
SWEP.ShellEffect 		= "sim_shelleject_fas_556"

// Snipers
SWEP.Secondary.Zoom				= 80 // This needs to become a percentage based value
SWEP.Secondary.UseACOG			= false	
SWEP.Secondary.UseMilDot		= false		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseParabolic		= true	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	
SWEP.Secondary.UseRangefinder	= true	

SWEP.data 						= {}
SWEP.data.ironsights			= 1

SWEP.ScopeScale 				= 0.5
SWEP.ReticleScale 				= 0.5
SWEP.Velocity					= 850


// M16
-- SWEP.Burst			= false
-- SWEP.BranchReload 	= true
-- SWEP.UnderLauncher 	= false
-- SWEP.UnderKey		= false
-- SWEP.AnimDraw 		= ACT_VM_DRAW
-- SWEP.AnimDrawEmpty 	= ACT_VM_DRAW

// M16 GL
-- SWEP.Burst			= false
-- SWEP.BranchReload 	= true
-- SWEP.UnderLauncher 	= true
-- SWEP.UnderKey		= false
-- SWEP.AnimDraw 		= ACT_VM_DRAW
-- SWEP.AnimDrawEmpty 	= ACT_VM_DRAW

// M16 Key
-- SWEP.Burst			= false
-- SWEP.BranchReload 	= true
-- SWEP.UnderLauncher 	= false
-- SWEP.UnderKey		= true
-- SWEP.AnimDraw 		= ACT_VM_DRAW
-- SWEP.AnimDrawEmpty 	= ACT_VM_DRAW

// ACR
-- SWEP.Burst			= false
-- SWEP.BranchReload 	= false
-- SWEP.UnderLauncher 	= false
-- SWEP.UnderKey		= false
-- SWEP.AnimDraw 		= ACT_VM_DRAW
-- SWEP.AnimDrawEmpty 	= ACT_VM_DRAW_EMPTY
-- SWEP.AnimReload			= ACT_VM_RELOAD
-- SWEP.AnimReloadEmpty	= ACT_VM_RELOAD

// ACR GL
-- SWEP.Burst			= false
-- SWEP.BranchReload 	= false
-- SWEP.UnderLauncher 	= true
-- SWEP.UnderKey		= false
-- SWEP.AnimDraw 		= ACT_VM_DRAW
-- SWEP.AnimDrawEmpty 	= ACT_VM_DRAW_EMPTY
-- SWEP.AnimReload			= ACT_VM_RELOAD
-- SWEP.AnimReloadEmpty	= ACT_VM_RELOAD

// SCAR
-- SWEP.Burst			= true
-- SWEP.BranchReload 	= true
-- SWEP.UnderLauncher 	= false
-- SWEP.UnderKey		= false
-- SWEP.AnimDraw 		= ACT_VM_DRAW
-- SWEP.AnimDrawEmpty 	= ACT_VM_DRAW_EMPTY // no empty on gl or key

// T3AK - use acr stop sound
-- SWEP.Burst				= false
-- SWEP.BranchReload 		= false
-- SWEP.UnderLauncher 		= false
-- SWEP.UnderKey			= false
-- SWEP.AnimDraw 			= ACT_VM_DRAW
-- SWEP.AnimDrawEmpty 		= ACT_VM_DRAW // no empty on gl or key
-- SWEP.AnimReload			= ACT_VM_RELOAD
-- SWEP.AnimReloadEmpty	= ACT_VM_RELOAD

// XM10
-- SWEP.Burst				= false
-- SWEP.BranchReload 		= false
-- SWEP.UnderLauncher 		= false
-- SWEP.UnderKey			= false
-- SWEP.AnimDraw 			= ACT_VM_DRAW
-- SWEP.AnimDrawEmpty 		= ACT_VM_DRAW
-- SWEP.AnimReload			= ACT_VM_RELOAD
-- SWEP.AnimReloadEmpty	= ACT_VM_RELOAD

// 870
-- SWEP.Shotgun = true
-- SWEP.Burst				= false
-- SWEP.BranchReload 		= false
-- SWEP.UnderLauncher 		= false
-- SWEP.UnderKey			= false
-- SWEP.AnimDraw 			= ACT_VM_DRAW
-- SWEP.AnimDrawEmpty 		= ACT_VM_DRAW
-- SWEP.AnimReload			= ACT_VM_RELOAD
-- SWEP.AnimReloadEmpty	= ACT_VM_RELOAD

// Diablo
-- SWEP.Shotgun 			= false 
-- SWEP.Burst				= false
-- SWEP.BranchReload 		= false
-- SWEP.UnderLauncher 		= false
-- SWEP.UnderKey			= false
-- SWEP.AnimDraw 			= ACT_VM_DRAW
-- SWEP.AnimDrawEmpty 		= ACT_VM_DRAW_EMPTY
-- SWEP.AnimReload			= ACT_VM_RELOAD
-- SWEP.AnimReloadEmpty	= ACT_VM_RELOAD

// Kriss
-- SWEP.Shotgun 			= false 
-- SWEP.Burst				= false
-- SWEP.BranchReload 		= true
-- SWEP.UnderLauncher 		= false
-- SWEP.UnderKey			= false
-- SWEP.AnimDraw 			= ACT_VM_DRAW
-- SWEP.AnimDrawEmpty 		= ACT_VM_DRAW
-- SWEP.AnimReload			= ACT_VM_RELOAD
-- SWEP.AnimReloadEmpty	= ACT_VM_RELOAD

// Scar LMG
-- SWEP.Shotgun 			= false 
-- SWEP.Burst				= false
-- SWEP.BranchReload 		= true
-- SWEP.UnderLauncher 		= false
-- SWEP.UnderKey			= false
-- SWEP.AnimDraw 			= ACT_VM_DRAW
-- SWEP.AnimDrawEmpty 		= ACT_VM_DRAW
-- SWEP.AnimReload			= ACT_VM_RELOAD
-- SWEP.AnimReloadEmpty	= ACT_VM_RELOAD

// M249 LMG
-- SWEP.Shotgun 			= false 
-- SWEP.Burst				= false
-- SWEP.BranchReload 		= false
-- SWEP.UnderLauncher 		= false
-- SWEP.UnderKey			= false
-- SWEP.AnimDraw 			= ACT_VM_DRAW
-- SWEP.AnimDrawEmpty 		= ACT_VM_DRAW
-- SWEP.AnimReload			= ACT_VM_RELOAD
-- SWEP.AnimReloadEmpty	= ACT_VM_RELOAD

// M110
SWEP.Sniper = true
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
	Up = 0,  		-- Z Axis	(Up/Down)
	Right = 0, 		-- X Axis	(Left/Right)
	Forward = 0, 	-- Y Axis	(Back/Forward)
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

//
// M9
//
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

//
// M4
//
Draw: 			ACT_VM_DRAW
First-Draw: 	ACT_VM_DRAW_EMPTY

Holster: 		ACT_VM_HOLSTER
Quick-Holster: 	ACT_VM_HOLSTER_EMPTY

Idle: 			ACT_VM_IDLE
ADS Idle: 		ACT_VM_IDLE_2

Fire1: 			ACT_VM_PRIMARYATTACK
ADS Fire: 		ACT_VM_PRIMARYATTACK_2

Reload: ACT_VM_RELOAD
Reload Branch Dry: ACT_VM_DEPLOY_1
Reload Branch Tact: ACT_VM_DEPLOY_2

//
// M4 GL
//

Idle Snap: ACT_VM_IDLE_4

Under Draw:  ACT_VM_DEPLOY_3
Under Holster: ACT_VM_UNDEPLOY_1
Under Quick Holster: ACT_VM_UNDEPLOY_2

Under Idle: ACT_VM_IDLE_3

Under Fire: ACT_VM_PRIMARYATTACK_3

Under Reload: ACT_VM_RELOAD_DEPLOYED

//
// m4 key
//

under fire: ACT_VM_PRIMARYATTACK_3

under reload dry: ACT_SHOTGUN_PUMP
under reload tact: ACT_SHOTGUN_RELOAD_FINISH
reload root: ACT_VM_RELOAD
reload start: ACT_SHOTGUN_RELOAD_START

*/

/*---------------------------------------------------------
Initialize

- Called before deploy
---------------------------------------------------------*/
function SWEP:Initialize()

	if CLIENT then
		-- We need to get these so we can scale everything to the player's current resolution.
		local iScreenWidth = surface.ScreenWidth()
		local iScreenHeight = surface.ScreenHeight()
	
		-- The following code is only slightly riped off from Night Eagle
		-- These tables are used to draw things like scopes and crosshairs to the HUD
		self.ScopeTable = {}
		self.ScopeTable.l = iScreenHeight*self.ScopeScale
		self.ScopeTable.x1 = 0.5*(iScreenWidth + self.ScopeTable.l)
		self.ScopeTable.y1 = 0.5*(iScreenHeight - self.ScopeTable.l)
		self.ScopeTable.x2 = self.ScopeTable.x1
		self.ScopeTable.y2 = 0.5*(iScreenHeight + self.ScopeTable.l)
		self.ScopeTable.x3 = 0.5*(iScreenWidth - self.ScopeTable.l)
		self.ScopeTable.y3 = self.ScopeTable.y2
		self.ScopeTable.x4 = self.ScopeTable.x3
		self.ScopeTable.y4 = self.ScopeTable.y1
		self.ScopeTable.l = (iScreenHeight + 1)*self.ScopeScale -- I don't know why this works, but it does.

		self.QuadTable = {}
		self.QuadTable.x1 = 0
		self.QuadTable.y1 = 0
		self.QuadTable.w1 = iScreenWidth
		self.QuadTable.h1 = 0.5*iScreenHeight - self.ScopeTable.l
		self.QuadTable.x2 = 0
		self.QuadTable.y2 = 0.5*iScreenHeight + self.ScopeTable.l
		self.QuadTable.w2 = self.QuadTable.w1
		self.QuadTable.h2 = self.QuadTable.h1
		self.QuadTable.x3 = 0
		self.QuadTable.y3 = 0
		self.QuadTable.w3 = 0.5*iScreenWidth - self.ScopeTable.l
		self.QuadTable.h3 = iScreenHeight
		self.QuadTable.x4 = 0.5*iScreenWidth + self.ScopeTable.l
		self.QuadTable.y4 = 0
		self.QuadTable.w4 = self.QuadTable.w3
		self.QuadTable.h4 = self.QuadTable.h3

		self.LensTable = {}
		self.LensTable.x = self.QuadTable.w3
		self.LensTable.y = self.QuadTable.h1
		self.LensTable.w = 2*self.ScopeTable.l
		self.LensTable.h = 2*self.ScopeTable.l

		self.ReticleTable = {}
		self.ReticleTable.wdivider = 3.125
		self.ReticleTable.hdivider = 1.7579/self.ReticleScale		// Draws the texture at 512 when the resolution is 1600x900
		self.ReticleTable.x = (iScreenWidth/2)-((iScreenHeight/self.ReticleTable.hdivider)/2)
		self.ReticleTable.y = (iScreenHeight/2)-((iScreenHeight/self.ReticleTable.hdivider)/2)
		self.ReticleTable.w = iScreenHeight/self.ReticleTable.hdivider
		self.ReticleTable.h = iScreenHeight/self.ReticleTable.hdivider

		self.FilterTable = {}
		self.FilterTable.wdivider = 3.125
		self.FilterTable.hdivider = 1.7579/1.35	
		self.FilterTable.x = (iScreenWidth/2)-((iScreenHeight/self.FilterTable.hdivider)/2)
		self.FilterTable.y = (iScreenHeight/2)-((iScreenHeight/self.FilterTable.hdivider)/2)
		self.FilterTable.w = iScreenHeight/self.FilterTable.hdivider
		self.FilterTable.h = iScreenHeight/self.FilterTable.hdivider
	end

	// Set the hold-type
	self:SetWeaponHoldType(self.HoldType)

end


/*---------------------------------------------------------
Equip(ply)

- (ply) is the player getting equipped, but this is just self anyways
- Mainly using this so whenever the weapon is equipped,
or picked up, the first draw animation is played.
---------------------------------------------------------*/
function SWEP:Equip(ply)
	
	self:SetNWBool("FirstDeploy", true)
	
	if self.UnderKey and !self:GetNWBool("UnderMagLoaded") then
		self:SetNWInt("UnderMag", 3)
		self:SetNWBool("UnderMagLoaded", true)
	end

end


/*---------------------------------------------------------
Deploy

- Deploy\draw the weapon. 
- Do deploy animation and some variable setup here.
---------------------------------------------------------*/
function SWEP:Deploy()

	// Setup Bodygroups
	if self.Owner:IsPlayer() then
		self.Owner:GetViewModel():SetBodygroup(1,2) // Hands
		self.Owner:GetViewModel():SetBodygroup(2,1) // Sight
		self.Owner:GetViewModel():SetBodygroup(3,1) // Frontsight
	end

	// Set the hold-type
	self:SetWeaponHoldType(self.HoldType)

	// Draw animations
	if self:GetNWBool("FirstDeploy") then
		self:SetNWBool("FirstDeploy", false)
		self.Weapon:SendWeaponAnim(self.AnimDrawEmpty)
	else
		self.Weapon:SendWeaponAnim(self.AnimDraw)
	end
	
	// Setup Variables
	self:SetNWFloat("InDeploy", CurTime() + self.Owner:GetViewModel():SequenceDuration())
	self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
	self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
	self:SetNWBool("UnderBarrel", false)
	self:SetNWBool("FirstHolster", true)
	self:SetNWBool("InIron", false)
	self:SetNWFloat("PlayerFOV", self.Owner:GetFOV())

	return true
	
end


/*---------------------------------------------------------
Holster(wep)

- Undeploy. Play an animation because fancy.
---------------------------------------------------------*/
function SWEP:Holster(wep)

	if !IsValid(self.Owner) or !IsValid(wep) or !IsValid(self.Weapon) then return end

	if self:GetNWFloat("InReload") > CurTime() or self:GetNWFloat("InHolster")-0.2 > CurTime() then return end

	if self.Primary.Automatic then self.Weapon:StopSound(self.Primary.Sound) end

	if self:GetNWBool("FirstHolster") then
		self:SetNWBool("FirstHolster", false)
		self.Weapon:SendWeaponAnim(ACT_VM_HOLSTER)
		self:SetNWFloat("InHolster", CurTime() + self.Owner:GetViewModel():SequenceDuration())
		self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		timer.Simple(self.Owner:GetViewModel():SequenceDuration(), 
		function() 
			if IsValid(self.Owner) and IsValid(wep) and IsValid(self.Weapon) then
				if SERVER then self.Owner:SelectWeapon(wep) end
			end
		end)
		return false
	else
		return true
	end

end


/*---------------------------------------------------------
CanPrimaryAttack

- Can we attack? Return true if yes. False if no.
---------------------------------------------------------*/
function SWEP:CanPrimaryAttack()
	
	if self:GetNWBool("UnderBarrel") then
		self:SpecialAttack() // Do underbarrel attack
	elseif CurTime() <= self:GetNWFloat("InReload") or CurTime() <= self:GetNWFloat("InHolster") or CurTime() <= self:GetNWFloat("InDeploy") then
		return false
	elseif self.Burst then
		self:BurstAttack()
	elseif self.Weapon:Clip1() <= 0 then
		if self.Primary.Automatic then self.Weapon:StopSound(self.Primary.Sound) end
		//self.Weapon:SetNextPrimaryFire( CurTime() + 1 )
		return false
	else
		return true
	end

end


/*---------------------------------------------------------
PrimaryAttack

- Shooting things handled here; anim, sound, ammo, etc.
---------------------------------------------------------*/
function SWEP:PrimaryAttack()

	if not self:CanPrimaryAttack() then return end

	// Animate!
	if self:GetNWBool("InIron") then
		self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK_2)
	else
		self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	end
	
	// Shoot!
	if self.Shotgun then 
		self:ShootBullet(self.Primary.Damage, 12, 0.05) 	-- damage, numbullets, cone
	else
		self:ShootBullet(self.Primary.Damage, 1, 0)
	end

	if !self.Primary.Automatic then
		self.Weapon:EmitSound(self.Primary.Sound)
	else
		if self.Weapon:Clip1() <= 1 then
			self.Weapon:EmitSound(self.Primary.SoundEnd)
		end
	end

	self.Weapon:TakePrimaryAmmo(1)
	self:ShootFX()
	self.Weapon:SetNextPrimaryFire(CurTime() + (1/(self.Primary.RPM/60)))

end


function SWEP:BurstAttack()

	// Returns
	if self.Weapon:Clip1() <= 0 or !IsFirstTimePredicted() then return end

	// Animate!
	if self:GetNWBool("InIron") then
		self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK_2)
	else
		self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	end

	// Shoot!
	self.Weapon:EmitSound(self.Primary.Sound)
	
	self:ShootBullet(self.Primary.Damage, 1, 0) 	-- damage, numbullets, cone
	self.Weapon:TakePrimaryAmmo(1)
	self:ShootFX()
	self.Weapon:SetNextPrimaryFire(CurTime() + (1/(self.Primary.RPM/60)))
	timer.Simple(self.Weapon:GetNextPrimaryFire()-CurTime(),
	function()
		if IsFirstTimePredicted() and IsValid(self.Weapon) and IsValid(self.Owner) then
			self:ShootBullet(self.Primary.Damage, 1, 0) 	-- damage, numbullets, cone
			self.Weapon:TakePrimaryAmmo(1)
			self:ShootFX()
			self.Weapon:SetNextPrimaryFire(CurTime() + (1/(self.Primary.RPM/60)))
			timer.Simple(self.Weapon:GetNextPrimaryFire()-CurTime(),
			function()
				if IsFirstTimePredicted() and IsValid(self.Weapon) and IsValid(self.Owner) then
					self:ShootBullet(self.Primary.Damage, 1, 0) 	-- damage, numbullets, cone
					self.Weapon:TakePrimaryAmmo(1)
					self:ShootFX()
					self.Weapon:SetNextPrimaryFire(CurTime() + (1/(self.Primary.RPM/60)))
				end
			end)
		end
	end)
end


/*---------------------------------------------------------
SpecialAttack

- Called in PrimaryAttack
- Handles various effects; muzzle flash and bullet shells
---------------------------------------------------------*/
function SWEP:SpecialAttack()
	if self.UnderLauncher then
		if !self:GetNWBool("UnderReload") and self.Weapon:Ammo2() > 0 and IsFirstTimePredicted() then // If we don't need a reload
			self:SetNWBool("UnderReload", true) // We need a reload
			self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK_3)
			self.Weapon:TakeSecondaryAmmo(1)
			self:FireRocket("zooks_40x49_he")
			self.Weapon:EmitSound("Weapon_HFGL.Single")
			self:SetNextPrimaryFire( CurTime() + 1 )
		else
			self:EmitSound( "Weapon_Pistol.Empty" )
			self:SetNextPrimaryFire( CurTime() + 1 )
			return
		end
	elseif self.UnderKey then
		if CurTime() < self:GetNWFloat("InReload") then return end
		if self:GetNWInt("UnderMag") > 0 then
			self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK_3)
			self.Weapon:EmitSound("Weapon_HFMasterKey.Single")
			self:ShootBullet(18, 12, 0.1)
			self:ShootFX()
			self:SetNextPrimaryFire( CurTime() + 0.6 )
			self:SetNWInt("UnderMag", self:GetNWInt("UnderMag") - 1)
		else
			print(self:GetNWInt("UnderMag"))
			self:EmitSound( "Weapon_Pistol.Empty" )
			self.Weapon:SetNextPrimaryFire( CurTime() + 1 )
			return
		end
	end
end


/*---------------------------------------------------------
ShootFX

- Called in PrimaryAttack
- Handles various effects; muzzle flash and bullet shells
---------------------------------------------------------*/
function SWEP:ShootFX()
	
	if !IsFirstTimePredicted() then return end

	// Third Person effects
	self.Owner:SetAnimation( PLAYER_ATTACK1 )	-- This is the third person animation
	self.Owner:MuzzleFlash()					-- Muzzle light from shooting

	// Recoil
	-- Calculate angles
	local anglo
	if self.Owner:KeyDown(IN_DUCK) then
		anglo = Angle(math.Rand(-(self.Primary.KickDown/2),(self.Primary.KickUp/2)), math.Rand(-(self.Primary.KickHorizontal/4),(self.Primary.KickHorizontal/4)), 0)
	elseif self:GetNWBool("InIron") then
		anglo = Angle(math.Rand(-(self.Primary.KickDown/1.5),(self.Primary.KickUp/1.5)), math.Rand(-(self.Primary.KickHorizontal/1.5),(self.Primary.KickHorizontal/1.5)), 0)
	else
		anglo = Angle(math.Rand(-(self.Primary.KickDown),(self.Primary.KickUp)), math.Rand(-(self.Primary.KickHorizontal),(self.Primary.KickHorizontal)), 0)
	end
	-- Do recoil with angles
	self.Owner:ViewPunch(anglo/2)
	if (game.SinglePlayer() and SERVER) or (not game.SinglePlayer() and CLIENT) then
		self.Owner:SetEyeAngles(self.Owner:EyeAngles() - anglo)
	end

	// FX  Data


	local fx = EffectData()

	// Muzzle flash
	fx:SetEntity(self.Weapon)
	fx:SetOrigin(self.Owner:GetShootPos())
	fx:SetNormal(self.Owner:GetAimVector())
	fx:SetAttachment("1")
	util.Effect("effect_fok_flashsmoke",fx)

	// Shell ejection
	if self.EjectsShells then
		if self:GetNWBool("UnderBarrel") then
			if self.UnderLauncher then return end
			if self.UnderKey then
				timer.Simple(0.15, 
				function()
					if IsValid(self.Owner) and IsValid(self.Weapon) and IsFirstTimePredicted() then
						fx:SetEntity(self.Weapon)
						fx:SetNormal(self.Owner:GetAimVector())
						fx:SetAttachment("2")
						util.Effect("sim_shelleject_fas_12gabuck",fx)
					end
				end)
			end
		else
		timer.Simple(self.ShellDelay, 
		function()
			if IsValid(self.Owner) and IsValid(self.Weapon) and IsFirstTimePredicted() then
				fx:SetEntity(self.Weapon)
				fx:SetNormal(self.Owner:GetAimVector())
				fx:SetAttachment("2")
				util.Effect(self.ShellEffect,fx)
			end
		end)
		end
	end
	
end


/*---------------------------------------------------------
ShootBullet

- Called in PrimaryAttack
- Shoot regular bullets.
- TODO: Actual damage value (handled in primaryattack)
---------------------------------------------------------*/
function SWEP:ShootBullet( damage, num_bullets, aimcone )

	local bullet = {}

	bullet.Num 		= num_bullets
	bullet.Src 		= self.Owner:GetShootPos() -- Source
	bullet.Dir 		= self.Owner:GetAimVector() -- Dir of bullet
	bullet.Spread 	= Vector( aimcone, aimcone, 0 )	-- Aim Cone
	bullet.Tracer	= 0 -- Show a tracer on every x bullets
	bullet.Force	= (0.1*damage) -- Amount of force to give to phys objects
	bullet.Damage	= damage
	bullet.AmmoType = "Pistol"

	self.Owner:FireBullets( bullet )

end


/*---------------------------------------------------------
DoImpactEffect

- Mod the impact effect of bullets
---------------------------------------------------------*/
function SWEP:DoImpactEffect( tr, nDamageType )
	if ( tr.HitSky ) then return end
	local fx = EffectData()
	fx:SetOrigin( tr.HitPos + tr.HitNormal )
	fx:SetNormal( tr.HitNormal )
	fx:SetScale(1)				// Size of explosion
	fx:SetRadius(tr.MatType)	// Texture of Impact
	util.Effect( "gdcw_universal_impact", fx )
end


/*---------------------------------------------------------
FireRocket

- Called in PrimaryAttack
- Rockets are entities, as are Generic Default's bullets
- Think of GD's bullets as mini rockets
---------------------------------------------------------*/
function SWEP:FireRocket(round) 

	if SERVER then
		local bullet = ents.Create(round)
		if !bullet:IsValid() then return false end
		bullet:SetAngles(self.Owner:GetAimVector():Angle()+Angle(90,0,0))
		bullet:SetPos(self.Owner:GetShootPos())
		bullet:SetOwner(self.Owner)
		bullet:Spawn()
		bullet:Activate()
	end

end


/*---------------------------------------------------------
SecondaryAttack

- Ironsights stuff is handled here because it's neatly
predicted and other junk. 
---------------------------------------------------------*/
function SWEP:SecondaryAttack()

	if CurTime() < self:GetNWFloat("InReload") then return end

	local zoom = self:GetNWFloat("PlayerFOV") - self.Secondary.Zoom

	if !self:GetNWBool("InIron") then
		self:SetNWBool("UnderBarrel", false)
		self:SetNWBool("InIron", true)
		self.Owner:CrosshairDisable()
		self.Owner:SetFOV(zoom, 0.2)
		self.Weapon:SendWeaponAnim(ACT_VM_IDLE_2)
		if self.Sniper then
			self:SetIronsights(true, self.Owner)
		end
	elseif self:GetNWBool("InIron") then
		self:SetNWBool("InIron", false)
		self.Owner:CrosshairEnable()
		self.Owner:SetFOV(0, 0.2)
		self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
		if self.Sniper then
			self:SetIronsights(false, self.Owner)
		end
	end

end


/*---------------------------------------------------------
DrawHud

- Display our scope texture
---------------------------------------------------------*/
function SWEP:DrawHUD()

	if self:GetNWBool("InIron") and self.Sniper then
	
		if self.Secondary.UseACOG then
			-- Draw the FAKE SCOPE THANG
			surface.SetDrawColor(0, 0, 0, 255)
			surface.SetTexture(surface.GetTextureID("scope/gdcw_closedsight"))
			surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)

			-- Draw the CHEVRON
			surface.SetDrawColor(0, 0, 0, 255)
			surface.SetTexture(surface.GetTextureID("scope/gdcw_acogchevron"))
			surface.DrawTexturedRect(self.ReticleTable.x, self.ReticleTable.y, self.ReticleTable.w, self.ReticleTable.h)

			-- Draw the ACOG REFERENCE LINES
			surface.SetDrawColor(0, 0, 0, 255)
			surface.SetTexture(surface.GetTextureID("scope/gdcw_acogcross"))
			surface.DrawTexturedRect(self.ReticleTable.x, self.ReticleTable.y, self.ReticleTable.w, self.ReticleTable.h)
		end

		if self.Secondary.UseMilDot then
			-- Draw the MIL DOT SCOPE
			surface.SetDrawColor(0, 0, 0, 255)
			surface.SetTexture(surface.GetTextureID("scope/gdcw_scopesight"))
			surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)
		end

		if self.Secondary.UseSVD then
			-- Draw the SVD SCOPE
			surface.SetDrawColor(0, 0, 0, 255)
			surface.SetTexture(surface.GetTextureID("scope/gdcw_svdsight"))
			surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)
		end

		if self.Secondary.UseParabolic then
			-- Draw the PARABOLIC SCOPE
			surface.SetDrawColor(0, 0, 0, 255)
			surface.SetTexture(surface.GetTextureID("scope/gdcw_parabolicsight"))
			surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)
		end

		if self.Secondary.UseElcan then
			-- Draw the RETICLE
			surface.SetDrawColor(0, 0, 0, 255)
			surface.SetTexture(surface.GetTextureID("scope/gdcw_elcanreticle"))
			surface.DrawTexturedRect(self.ReticleTable.x, self.ReticleTable.y, self.ReticleTable.w, self.ReticleTable.h)
			
			-- Draw the ELCAN SCOPE
			surface.SetDrawColor(0, 0, 0, 255)
			surface.SetTexture(surface.GetTextureID("scope/gdcw_elcansight"))
			surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)
		end

		if self.Secondary.UseGreenDuplex then
			-- Draw the RETICLE
			surface.SetDrawColor(0, 0, 0, 255)
			surface.SetTexture(surface.GetTextureID("scope/gdcw_nvgilluminatedduplex"))
			surface.DrawTexturedRect(self.ReticleTable.x, self.ReticleTable.y, self.ReticleTable.w, self.ReticleTable.h)

			-- Draw the SCOPE
			surface.SetDrawColor(0, 0, 0, 255)
			surface.SetTexture(surface.GetTextureID("scope/gdcw_closedsight"))
			surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)
		end

		if self.Secondary.UseRangefinder then
			local trace = {}
			trace.start = self.Owner:GetShootPos()
			trace.endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector()*60000		// Laser Rangefinder
			trace.filter = self.Owner
			local tr = util.TraceLine( trace )

			self.Range = self.Owner:GetShootPos():Distance(tr.HitPos)/52.5
			self.Time = math.Round(((self.Range)/self.Velocity)*100)/100
			self.Drop = math.Round((4.9*(self.Time^2))*100)/100

			draw.SimpleText( "RANGE " ..tostring(math.Round(self.Range)) .. "m","Default",ScrW() / 3, ScrH() * (44/60),Color(130,170,70,255))			//Range in meters
			draw.SimpleText( "TIME " ..tostring(self.Time) .. "s","Default",ScrW() / 3, ScrH() * (45/60),Color(170,130,70,255))					//Flight time in seconds
			draw.SimpleText( "DROP " ..tostring(self.Drop) .. "m","Default",ScrW() / 3, ScrH() * (46/60),Color(230,70,70,255))					//Drop in meters
		end
		
	end
end


/*---------------------------------------------------------
AdjustMouseSensitivity

- Adjust mouse sensitivity while scoped
---------------------------------------------------------*/
function SWEP:AdjustMouseSensitivity()
	if self:GetNWBool("InIron") and self.Sniper then
		return ( (self:GetNWFloat("PlayerFOV")-self.Secondary.Zoom) / self:GetNWFloat("PlayerFOV") )
	else 
		return 1
	end
end


/*---------------------------------------------------------
Reload

- Called when the reload button is pressed
- Might want a custom reload function; this is janky,
but hey, it works.
---------------------------------------------------------*/
function SWEP:Reload()

	// Returns
	if self.Owner:KeyDown(IN_USE) or CurTime() <= self:GetNWFloat("InReload")  then return end

	// Stop sound just in case
	if self.Primary.Automatic then self.Weapon:StopSound(self.Primary.Sound) end

	//Underbarrel reloads
	if self:GetNWBool("UnderBarrel") then // Launcher reload
		self:ReloadUnderBarrel()
	elseif self.Shotgun then
		local numToReload = self.Primary.ClipSize - self.Weapon:Clip1()
		self.Weapon:SendWeaponAnim(ACT_SHOTGUN_RELOAD_START)
		self.Weapon:SetClip1(self.Weapon:Clip1()+1)
		self.Owner:RemoveAmmo( 1, self:GetPrimaryAmmoType() )
		numToReload = numToReload - 1
		if numToReload > self.Weapon:Ammo1() then
			numToReload = self.Weapon:Ammo1()
		end
		self:SetClip1(self:Clip1() + numToReload)
		self.Owner:RemoveAmmo( numToReload, self:GetPrimaryAmmoType() )
		self:SetNWFloat("InReload", CurTime() + 3)
		timer.Simple(self.Owner:GetViewModel():SequenceDuration(),
		function()
			self.Weapon:SendWeaponAnim(ACT_VM_RELOAD)
			self:SetNWFloat("InReload", CurTime() + self.Owner:GetViewModel():SequenceDuration()*numToReload)
			timer.Simple(self.Owner:GetViewModel():SequenceDuration()*numToReload,
			function()
				self.Weapon:SendWeaponAnim(ACT_SHOTGUN_RELOAD_FINISH)
				self:SetNWFloat("InReload", CurTime() + self.Owner:GetViewModel():SequenceDuration())
			end)
		end)
	else 
		// Regular Reload
		if self.Weapon:Ammo1() <= 0 or self.Weapon:Clip1() >= self.Primary.ClipSize then return end
		// Exit ironsights
		if self:GetNWBool("InIron") then
			self:SecondaryAttack()
		end
		// Animation
		if self.BranchReload then // Branch reloads
			self.Weapon:DefaultReload(ACT_VM_RELOAD)
			self:SetNWFloat("InReload", self.Owner:GetViewModel():SequenceDuration() + 0.1)
			timer.Simple(self.Owner:GetViewModel():SequenceDuration(),
			function()
				if IsValid(self.Weapon) and IsValid(self.Owner) then
					if self.Weapon:Clip1() > 0 then
						self.Weapon:SendWeaponAnim(ACT_VM_DEPLOY_1)
					else
						self.Weapon:SendWeaponAnim(ACT_VM_DEPLOY_2)
					end
					self:SetNWFloat("InReload", CurTime() + self.Owner:GetViewModel():SequenceDuration()-0.2)
				end
			end)
		else // Other reloads
			if self.Weapon:Clip1() <= 0 then
				self.Weapon:DefaultReload(self.AnimReloadEmpty)
			else
				self.Weapon:DefaultReload(self.AnimReload)
			end
			self:SetNWFloat("InReload", self.Owner:GetViewModel():SequenceDuration())
		end
		
	end
	
end


/*---------------------------------------------------------
ReloadUnderBarrel

- Called when the reload button is pressed
---------------------------------------------------------*/
function SWEP:ReloadUnderBarrel()

	if self.UnderLauncher then // Launcher reload
		if self:GetNWBool("UnderReload") and self.Weapon:Ammo2() > 0 then // If we need a reload and have ammo
			self.Weapon:SendWeaponAnim(ACT_VM_RELOAD_DEPLOYED)
			self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
			self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
			self:SetNWFloat("InReload", CurTime() + self.Owner:GetViewModel():SequenceDuration())
			timer.Simple(self.Owner:GetViewModel():SequenceDuration(), 
			function() // We don't have to reload anymore ~once we're done reloading~. Duh.
				if IsValid(self.Owner) and IsValid(self.Weapon) and IsFirstTimePredicted() then
					self:SetNWBool("UnderReload", false)
				end
			end)	
		end
	elseif self.UnderKey then // Masterkey reload
		if self:GetNWInt("UnderMag") < 3 and self.Weapon:Ammo2() > 0 then
			local numToReload = 3 - self:GetNWInt("UnderMag")
			self.Weapon:SendWeaponAnim(ACT_SHOTGUN_RELOAD_START) 
			self:SetNWInt("UnderMag", self:GetNWInt("UnderMag") + 1) // Load first shell
			self.Weapon:TakeSecondaryAmmo(1)
			numToReload = numToReload - 1
			self.Weapon:SetNextPrimaryFire(CurTime() + 3)
			self.Weapon:SetNextSecondaryFire(CurTime() + 3)
			self:SetNWFloat("InReload", CurTime() + 3)
			if numToReload > self.Weapon:Ammo2() then
				numToReload = self.Weapon:Ammo2()
			end
			self.Weapon:TakeSecondaryAmmo(numToReload)
			timer.Simple(self.Owner:GetViewModel():SequenceDuration(),
			function()
				self.Weapon:SendWeaponAnim(ACT_SHOTGUN_PUMP)
				self:SetNWInt("UnderMag", self:GetNWInt("UnderMag") + numToReload) // Load more shells
				self.Weapon:SetNextPrimaryFire(CurTime() + 3)
				self.Weapon:SetNextSecondaryFire(CurTime() + 3)
				self:SetNWFloat("InReload", CurTime() + 3)
				timer.Simple(self.Owner:GetViewModel():SequenceDuration() * numToReload, // Repeat as many times as necessary
				function()
					self.Weapon:SendWeaponAnim(ACT_SHOTGUN_RELOAD_FINISH)
					self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
					self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
					self:SetNWFloat("InReload", CurTime() + self.Owner:GetViewModel():SequenceDuration())
				end)
			end)
		end
	end

end


/*---------------------------------------------------------
Think

- Think is called every frame / tick
---------------------------------------------------------*/
function SWEP:Think()

	// Underbarrel
	if self.UnderLauncher or self.UnderKey then
		if self.Owner:KeyDown(IN_USE) and self.Owner:KeyPressed(IN_RELOAD) and IsFirstTimePredicted() then
			if CurTime() <= self:GetNWFloat("InReload") then return end
			if !self:GetNWBool("UnderBarrel") then
				self:SetNWBool("UnderBarrel", true)
				self.Weapon:StopSound(self.Primary.Sound)
				self.Weapon:SendWeaponAnim(ACT_VM_DEPLOY_3)
				self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
				self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
				self:SetNWFloat("InReload", CurTime() + self.Owner:GetViewModel():SequenceDuration())
			elseif self:GetNWBool("UnderBarrel") then
				self:SetNWBool("UnderBarrel", false)
				self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
				self:SetNWFloat("InReload", CurTime() + 0.3)
			end
		end
	end

	// Handle sound loops
	if self.Primary.Automatic and !self:GetNWBool("UnderBarrel") then
		if self.Owner:KeyDown(IN_ATTACK) and self:GetNextPrimaryFire() < CurTime() and self:CanPrimaryAttack() and IsFirstTimePredicted() then
			self.Weapon:EmitSound(self.Primary.Sound)
		elseif self.Owner:KeyReleased(IN_ATTACK) and self:CanPrimaryAttack() and IsFirstTimePredicted() then
			self.Weapon:EmitSound(self.Primary.SoundEnd)
		//elseif !self.Owner:KeyDown(IN_ATTACK) then 
			//self.Weapon:StopSound(self.Primary.Sound)
		end
	end

	// Hold for ADS
	if self.Owner:KeyReleased(IN_ATTACK2) and self:GetNWBool("InIron") and IsFirstTimePredicted() then
		self:SecondaryAttack()
	end

	// Sway values
	if self:GetNWBool("InIron") then
		self.SwayScale = 0.2
		self.BobScale = 0.1
	else
		self.SwayScale 	= 1
		self.BobScale 	= 1
	end

end


/*---------------------------------------------------------
GetViewModelPosition

- Manipulate viewmodel position
---------------------------------------------------------*/
local IRONSIGHT_TIME = 0.3

function SWEP:GetViewModelPosition(pos, ang)

	if (self.IronSightsPos) then
		local bIron = self.Weapon:GetNWBool("Ironsights")

		if (bIron != self.bLastIron) then
			self.bLastIron = bIron
			self.fIronTime = CurTime()
		end

		local fIronTime = self.fIronTime or 0

		if (not bIron and fIronTime < CurTime() - IRONSIGHT_TIME) then
			return pos, ang
		end

		local Mul = 1.0

		if (fIronTime > CurTime() - IRONSIGHT_TIME) then
			Mul = math.Clamp((CurTime() - fIronTime) / IRONSIGHT_TIME, 0, 1)
			if not bIron then Mul = 1 - Mul end
		end

		local Offset	= self.IronSightsPos

		if (self.IronSightsAng) then
			ang = ang * 1
			ang:RotateAroundAxis(ang:Right(), self.IronSightsAng.x * Mul)
			ang:RotateAroundAxis(ang:Up(), self.IronSightsAng.y * Mul)
			ang:RotateAroundAxis(ang:Forward(), self.IronSightsAng.z * Mul)
		end

		local Right 	= ang:Right()
		local Up 		= ang:Up()
		local Forward 	= ang:Forward()

		pos = pos + Offset.x * Right * Mul
		pos = pos + Offset.y * Forward * Mul
		pos = pos + Offset.z * Up * Mul
	end

	return pos, ang
	
end


/*---------------------------------------------------------
DrawWorldModel

- Allows manipulation of the world model
- Very helpful for positioning world models via lua
---------------------------------------------------------*/
function SWEP:DrawWorldModel( )

	if self.Offset then

		local hand, offset, rotate

		if not IsValid( self.Owner ) then
			self:DrawModel( )
			return
		end

		if not self.Hand then
			self.Hand = self.Owner:LookupAttachment( "anim_attachment_rh" )
		end

		hand = self.Owner:GetAttachment( self.Hand )

		if not hand then
			self:DrawModel( )
			return
		end

		offset = hand.Ang:Right( ) * self.Offset.Pos.Right + hand.Ang:Forward( ) * self.Offset.Pos.Forward + hand.Ang:Up( ) * self.Offset.Pos.Up
		hand.Ang:RotateAroundAxis( hand.Ang:Right( ), self.Offset.Ang.Right )
		hand.Ang:RotateAroundAxis( hand.Ang:Forward( ), self.Offset.Ang.Forward )
		hand.Ang:RotateAroundAxis( hand.Ang:Up( ), self.Offset.Ang.Up )
		self:SetRenderOrigin( hand.Pos + offset )
		self:SetRenderAngles( hand.Ang )
		self:DrawModel( )

	end
	
end


/*---------------------------------------------------------
SetIronsights

- Mainly used for ironsights\sprint junk
- Kinda old and not mine. Should probably rework this.
---------------------------------------------------------*/
function SWEP:SetIronsights(b)
	self.Weapon:SetNWBool("Ironsights", b)
end

function SWEP:GetIronsights()
	return self.Weapon:GetNWBool("Ironsights")
end
