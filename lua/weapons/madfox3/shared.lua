/*---------------------------------------------------------
~ BTB Sweps
~
~ These are mainly meant to be used in SP. MP polish is WIP.
~
~ Zookie 			- dude, that's me
~ Marlwolf 			- dude, he's kinda cute
~ Magenta 			- dude, she hates my soul
~ Generic Default 	- dude, that's a dude
---------------------------------------------------------*/

// Weapon Descriptions
SWEP.Category				= "Homefront"
SWEP.Author					= "\nZookie, Marlwolf, Magenta, Generic Default"
SWEP.Contact				= "\nDiscord: Zookie#0210"
SWEP.Purpose				= "BTB SWeps"
SWEP.Instructions			= "E + R = Holster\nE + Left Mouse = Select Fire\nE + Right Mouse = Melee"

// Settings
SWEP.ViewModel				= Model("models/weapons/homefront/v_rifle_m4.mdl")
SWEP.WorldModel				= Model("models/weapons/homefront/w_pistol_m9.mdl")
SWEP.ViewModelFOV			= 50		
SWEP.ViewModelFlip			= false		
SWEP.DrawCrosshair			= true	
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

// Primary
SWEP.Primary.Sound 			= Sound("Weapon_HFM4.Single")			
SWEP.Primary.SoundEnd 			= Sound("Weapon_HFM4.SingleEnd")		
SWEP.Primary.Round 			= ("")									
SWEP.Primary.RPM			= 700					// This is in Rounds Per Minute
SWEP.Primary.ClipSize		= 30				// Size of a clip
SWEP.Primary.DefaultClip	= 240				// Amount of ammo you spawn with
SWEP.Primary.KickUp			= 1					// Maximum up recoil (rise)
SWEP.Primary.KickDown		= -0.5					// Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 0.8					// Maximum side recoil (koolaid)
SWEP.Primary.Automatic		= true				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "pistol"			// What kind of ammo
SWEP.HoldType 				= "pistol"

// Secondary
SWEP.Secondary.ClipSize		= 0						// Size of a clip - We don't want a secondary clip size since this isn't actually handled
SWEP.Secondary.DefaultClip	= 10					// Amount of ammo you spawn with
SWEP.Secondary.Ammo			= "SMG1_Grenade"
SWEP.Secondary.Automatic	= false				// Automatic/Semi Auto
SWEP.Secondary.IronFOV		= 65	// UNUSED

// Deprecated - Just a helper (for now) for this addon
SWEP.IronSightsPos 			= Vector (0, 0, 0)
SWEP.IronSightsAng 			= Vector (0, 0, 0)

// Run Position
SWEP.RunSightsPos 			= Vector (0, 0, 0)
SWEP.RunSightsAng 			= Vector (0, 0, 0)

// Shells
SWEP.EjectsShells 		= true
SWEP.ShellDelay 		= 0
SWEP.ShellEffect 		= "sim_shelleject_fas_556"

// M4
-- SWEP.Rifle = true
-- SWEP.UnderLauncher = false
-- SWEP.UnderKey		= true
-- SWEP.AnimDraw = ACT_VM_DRAW
-- SWEP.AnimDrawEmpty = ACT_VM_DRAW_EMPTY

// M4 GL
-- SWEP.Rifle = true
-- SWEP.UnderLauncher = true
-- SWEP.UnderKey		= true
-- SWEP.AnimDraw 		= ACT_VM_DEPLOY
-- SWEP.AnimDrawEmpty 	= ACT_VM_DEPLOY

SWEP.Rifle = true
SWEP.UnderLauncher = false
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
- Setup variables and other junk here.
---------------------------------------------------------*/
function SWEP:Initialize()

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
		self.Owner:GetViewModel():SetBodygroup(1,1) // Hands
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

function SWEP:Holster(wep)

	if !IsValid(self.Owner) or !IsValid(wep) or !IsValid(self.Weapon) then return end

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

function SWEP:CanPrimaryAttack()
	if self:GetNWBool("UnderBarrel") then
		self:SpecialAttack()
	elseif (self.Weapon:Clip1() <= 0) or CurTime() < self:GetNWFloat("InReload") or CurTime() < self:GetNWFloat("InHolster") or CurTime() < self:GetNWFloat("InDeploy") then
		self.Weapon:StopSound(self.Primary.Sound)
		return false
	else
		return true
	end
end

// Underbarrel attacks
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
			self.Weapon:TakeSecondaryAmmo(1)
			self:ShootBullet(10, 12, 0.05)
			self:SetNextPrimaryFire( CurTime() + 1 )
			self:SetNWInt("UnderMag", self:GetNWInt("UnderMag") - 1)
		else
			print(self:GetNWInt("UnderMag"))
			self:EmitSound( "Weapon_Pistol.Empty" )
			self:SetNextPrimaryFire( CurTime() + 1 )
			return
		end
	end
end

/*---------------------------------------------------------
PrimaryAttack

- Shooting things handled here; anim, sound, ammo, etc.
---------------------------------------------------------*/
function SWEP:PrimaryAttack()

	if !self:CanPrimaryAttack() then return end

	// Animate!
	if self:GetNWBool("InIron") then
		self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK_2)
	else
		self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	end
	
	// Shoot!
	self:ShootBullet(math.Rand(20,30), 1, 0) 	-- damage, numbullets, cone
	self.Weapon:TakePrimaryAmmo(1)
	
	if !self.Rifle then
		self.Weapon:EmitSound(self.Primary.Sound)
	else
		if self.Weapon:Clip1() <= 0 then
			self.Weapon:StopSound(self.Primary.Sound)
			self.Weapon:EmitSound(self.Primary.SoundEnd)
		end
	end
	
	self:ShootFX()
	self.Weapon:SetNextPrimaryFire(CurTime() + (1/(self.Primary.RPM/60)))

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
	// Shell ejection
	if self.EjectsShells then
		timer.Simple(self.ShellDelay, function()
			if IsValid(self.Owner) and IsValid(self.Weapon) and IsFirstTimePredicted() then
				fx:SetEntity(self.Weapon)
				fx:SetNormal(self.Owner:GetAimVector())
				fx:SetAttachment("2")
				util.Effect(self.ShellEffect,fx)
			end
		end)
	end
	// Muzzle flash
	fx:SetEntity(self.Weapon)
	fx:SetOrigin(self.Owner:GetShootPos())
	fx:SetNormal(self.Owner:GetAimVector())
	fx:SetAttachment("1")
	util.Effect("effect_fok_flashsmoke",fx)
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

function SWEP:DoImpactEffect( tr, nDamageType )
	if ( tr.HitSky ) then return end
	local fx = EffectData()
	fx:SetOrigin( tr.HitPos + tr.HitNormal )
	fx:SetNormal( tr.HitNormal )
	fx:SetScale(1)			// Size of explosion
	fx:SetRadius(tr.MatType)			// Texture of Impact
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

	local zoom = self:GetNWFloat("PlayerFOV") - 10

	if !self:GetNWBool("InIron") then
		self:SetNWBool("UnderBarrel", false)
		self:SetNWBool("InIron", true)
		self.Owner:SetFOV(zoom, 0.2)
		self.Weapon:SendWeaponAnim(ACT_VM_IDLE_2)
	elseif self:GetNWBool("InIron") then
		self:SetNWBool("InIron", false)
		self.Owner:SetFOV(0, 0.2)
		self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
	end

end


/*---------------------------------------------------------
Reload

- Called when the reload button is pressed
- Might want a custom reload function; this is janky,
but hey, it works.
---------------------------------------------------------*/
function SWEP:Reload()
	
	/*
	//
	// m4 key
	//

	Under Draw:  ACT_VM_DEPLOY_3
	under fire: ACT_VM_PRIMARYATTACK_3

	insert shell: ACT_SHOTGUN_PUMP
	under reload tact: ACT_SHOTGUN_RELOAD_FINISH
	reload start: ACT_SHOTGUN_RELOAD_START

	*/

	// Returns
	if self.Owner:KeyDown(IN_USE) or CurTime() < self:GetNWFloat("InReload")  then return end

	//Underbarrel reloads
	if self:GetNWBool("UnderBarrel") then // Launcher reload
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
			// TODO: Reload based remaining secondary ammo
			if self:GetNWInt("UnderMag") < 3 and self.Weapon:Ammo2() > 0 then
				self.Weapon:SendWeaponAnim(ACT_SHOTGUN_RELOAD_START) 
				self:SetNWInt("UnderMag", self:GetNWInt("UnderMag") + 1) // Load first shell
				self.Weapon:SetNextPrimaryFire(CurTime() + 3)
				self.Weapon:SetNextSecondaryFire(CurTime() + 3)
				self:SetNWFloat("InReload", CurTime() + 3)
				local numToReload
				if self.Weapon:Ammo2() < 3 then 
					numToReload = self.Weapon:Ammo2()-1
				else
					numToReload = 3 - self:GetNWInt("UnderMag") // How many extra times do we need to reload?
				end
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
	else // Regular Reload
		if self.Weapon:Ammo1() <= 0 or self.Weapon:Clip1() >= self.Primary.ClipSize then return end
		// Exit ironsights
		if self:GetNWBool("InIron") then
			self:SecondaryAttack()
		end

		// Animation
		if self.Rifle then // Rifle reloads
			self.Weapon:DefaultReload(ACT_VM_RELOAD)
			self:SetNWFloat("InReload", CurTime() + self.Owner:GetViewModel():SequenceDuration() + 0.1)
			timer.Simple(self.Owner:GetViewModel():SequenceDuration(),
			function()
				if IsValid(self.Weapon) and IsValid(self.Owner) then
					if self.Weapon:Clip1() > 0 then
						self.Weapon:SendWeaponAnim(ACT_VM_DEPLOY_1)
					else
						self.Weapon:SendWeaponAnim(ACT_VM_DEPLOY_2)
					end
					self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
					self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
					self:SetNWFloat("InReload", CurTime() + self.Owner:GetViewModel():SequenceDuration())
				end
			end)
		else // Other reloads
			if self.Weapon:Clip1() <= 0 then
				self.Weapon:DefaultReload(ACT_VM_RELOAD_EMPTY)
			else
				self.Weapon:DefaultReload(ACT_VM_RELOAD)
			end
		end
		
	end
	
end


/*---------------------------------------------------------
Think

- Think is called every frame / tick
---------------------------------------------------------*/
function SWEP:Think()

	// M4 GL
	/*
	Idle Snap: ACT_VM_IDLE_4

	Under Draw:  ACT_VM_DEPLOY_3
	Under Holster: ACT_VM_UNDEPLOY_1
	Under Quick Holster: ACT_VM_UNDEPLOY_@

	Under Idle: ACT_VM_IDLE_3

	Under Fire: ACT_VM_PRIMARYATTACK_3

	Under Reload: ACT_VM_RELOAD_DEPLOYED
	*/

	// Underbarrel
	if self.Owner:KeyDown(IN_USE) and self.Owner:KeyPressed(IN_RELOAD) and IsFirstTimePredicted() then
		if CurTime() < self:GetNWFloat("InReload") then return end
		if !self:GetNWBool("UnderBarrel") then
			self:SetNWBool("UnderBarrel", true)
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

	// Handle sound loops
	if self.Rifle and !self:GetNWBool("UnderBarrel") then
		if self:CanPrimaryAttack() and IsFirstTimePredicted() then
			if self.Owner:KeyDown(IN_ATTACK) then
				self.Weapon:EmitSound(self.Primary.Sound)
			elseif self.Owner:KeyReleased(IN_ATTACK) then
				self.Weapon:StopSound(self.Primary.Sound)
				self.Weapon:EmitSound(self.Primary.SoundEnd)
			end
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
