/*---------------------------------------------------------
~ BTB Sweps
~
~ These are mainly meant to be used in SP. MP polish is WIP.
~
~ Generic Default 	- The only guy who really did anything cool tbh
~ Zookie 			- lmao fuck this guy
~ Marlwolf 			- bro
~ Magenta 			- Dude she's so angry at me like why
~ Siminov 			- I'd suck his dick but he'd probably get to mine first
---------------------------------------------------------*/

local ToggleSights	= CreateClientConVar("ToggleSights", 0, true, false, "Makes it so ironsights are toggled, and not held")		// Enable/Disable
local UseGDCBullets = CreateClientConVar("UseGDCBullets", 1, true, false, "Use GDC bullet entities")
local RecoilMult 	= CreateClientConVar("RecoilMult", 1.00, true, false, "Recoil multiplier. Do you want more, or less?")

// Weapon Descriptions
SWEP.Category				= "Homefront"
SWEP.Author					= "\nZookie, Marlwolf, Magenta, Generic Default"
SWEP.Contact				= "\nDiscord: Zookie#0210"
SWEP.Purpose				= "BTB SWeps"
SWEP.Instructions			= "E + R = Holster\nE + Left Mouse = Select Fire\nE + Right Mouse = Melee"

// Settings
SWEP.ViewModel				= Model("models/weapons/homefront/v_pistol_m9.mdl")
SWEP.WorldModel				= Model("models/weapons/homefront/w_pistol_m9.mdl")
SWEP.ViewModelFOV			= 50		
SWEP.ViewModelFlip			= false		
SWEP.DrawCrosshair			= false	
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

// Primary
SWEP.Primary.Sound 			= Sound("Weapon_HFM9.Single")				
SWEP.Primary.Round 			= ("")									
SWEP.Primary.RPM			= 600					// This is in Rounds Per Minute
SWEP.Primary.ClipSize		= 12				// Size of a clip
SWEP.Primary.DefaultClip	= 120				// Default number of bullets in a clip
SWEP.Primary.KickUp			= 1					// Maximum up recoil (rise)
SWEP.Primary.KickDown		= 1					// Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 1					// Maximum side recoil (koolaid)
SWEP.Primary.Automatic		= false				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "pistol"			// What kind of ammo

// Secondary
SWEP.Secondary.ClipSize		= 0					// Size of a clip
SWEP.Secondary.DefaultClip	= 0					// Default number of bullets in a clip
SWEP.Secondary.Automatic	= false				// Automatic/Semi Auto
SWEP.Secondary.Ammo			= "none"
SWEP.Secondary.IronFOV		= 65	// UNUSED

// Deprecated - Just a helper (for now) for this addon
SWEP.IronSightsPos 			= Vector (0, 0, 0)
SWEP.IronSightsAng 			= Vector (0, 0, 0)

// Run Position
SWEP.RunSightsPos 			= Vector (0, 0, 0)
SWEP.RunSightsAng 			= Vector (0, 0, 0)

// Shells
SWEP.EjectsShells 			= false
SWEP.ShellDelay 			= 0
SWEP.ShellEffect 			= ""

SWEP.HoldType = "pistol"

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
	return
end


/*---------------------------------------------------------
Deploy

- Deploy\draw the weapon. 
- Do deploy animation and some variable setup here.
---------------------------------------------------------*/
function SWEP:Deploy()

	self:SetNWBool("InIron", false)

	// Draw animations
	self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
	return true
	
end


/*---------------------------------------------------------
PrimaryAttack

- Shooting things handled here; anim, sound, ammo, etc.
---------------------------------------------------------*/
function SWEP:PrimaryAttack()

	// Return Conditions
	if self.Weapon:Clip1() <= 0 then
		self:Reload()
		return
	end
	
	// Animate!
	if self:GetNWBool("InIron") then
		self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK_2)
	else
		self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	end
	
	// Shoot!
	self:ShootBullet(math.Rand(20,30), 1, 0) 	-- damage, numbullets, cone
	self.Weapon:TakePrimaryAmmo(1)
	self.Weapon:EmitSound(self.Primary.Sound)
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

	// Recoil
	-- Calculate angles
	local anglo
	if self.Owner:KeyDown(IN_DUCK) then
		anglo = Angle(math.Rand(-(self.Primary.KickDown/2)*RecoilMult:GetFloat(),(self.Primary.KickUp/2)*RecoilMult:GetFloat()), math.Rand(-(self.Primary.KickHorizontal/4)*RecoilMult:GetFloat(),(self.Primary.KickHorizontal/4)*RecoilMult:GetFloat()), 0)
	elseif self:GetNWBool("InIron") then
		anglo = Angle(math.Rand(-(self.Primary.KickDown/1.5)*RecoilMult:GetFloat(),(self.Primary.KickUp/1.5)*RecoilMult:GetFloat()), math.Rand(-(self.Primary.KickHorizontal/1.5)*RecoilMult:GetFloat(),(self.Primary.KickHorizontal/1.5)*RecoilMult:GetFloat()), 0)
	else
		anglo = Angle(math.Rand(-(self.Primary.KickDown)*RecoilMult:GetFloat(),(self.Primary.KickUp)*RecoilMult:GetFloat()), math.Rand(-(self.Primary.KickHorizontal)*RecoilMult:GetFloat(),(self.Primary.KickHorizontal)*RecoilMult:GetFloat()), 0)
	end
	-- Do recoil with angles
	self.Owner:ViewPunch(anglo)
	if (game.SinglePlayer() and SERVER) or (not game.SinglePlayer() and CLIENT) then
		self.Owner:SetEyeAngles(self.Owner:EyeAngles() - anglo)
	end

	local fx = EffectData()
	
	/*
	// Shell ejection
	if self.EjectsShells then
		timer.Simple(self.ShellDelay, function()
			if IsValid(self.Owner) and IsValid(self.Weapon) and IsFirstTimePredicted() then
				fx:SetEntity(self.Weapon)
				fx:SetNormal(self.Owner:GetAimVector())
				fx:SetAttachment("2")
				if CLIENT then util.Effect(self.ShellEffect,fx) end
			end
		end)
	end
	*/

	// Muzzle flash
	fx:SetEntity(self.Weapon)
	fx:SetOrigin(self.Owner:GetShootPos())
	fx:SetNormal(self.Owner:GetAimVector())
	fx:SetAttachment("1")
	util.Effect("effect_fok_flashsmoke",fx)
	
	// Third Person effects
	self.Owner:SetAnimation( PLAYER_ATTACK1 )	-- This is the third person animation
	self.Owner:MuzzleFlash()					-- Muzzle light from shooting
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
	bullet.Tracer	= 1 -- Show a tracer on every x bullets
	bullet.Force	= (0.1*damage) -- Amount of force to give to phys objects
	bullet.Damage	= damage
	bullet.AmmoType = "Pistol"

	self.Owner:FireBullets( bullet )

end


/*---------------------------------------------------------
SecondaryAttack

- Ironsights stuff is handled here because it's neatly
predicted and other junk. 
---------------------------------------------------------*/
function SWEP:SecondaryAttack()

	if !self:GetNWBool("InIron") then
		self:SetNWBool("InIron", true)
		print("true")
		self.Weapon:SendWeaponAnim(ACT_VM_IDLE_2)
	elseif self:GetNWBool("InIron") then
		self:SetNWBool("InIron", false)
		print("false")
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
	
	if self:GetNWBool("InIron") then
		self:SetNWBool("InIron", false)
	end

	if self.Weapon:Clip1() <= 0 then
		self.Weapon:DefaultReload(ACT_VM_RELOAD_EMPTY)
	else
		self.Weapon:DefaultReload(ACT_VM_RELOAD)
	end
	
end



/*---------------------------------------------------------
Sway

- Called in Think.
- Sets Bob and Sway scales. Can be handy to adjust these for 
different situations, such as more bob\sway when running, 
etc.
---------------------------------------------------------*/
function SWEP:Sway()
	if self:GetNWBool("InIron") then
		self.SwayScale = 0.2
		self.BobScale = 0.2
	else
		self.SwayScale 	= 1
		self.BobScale 	= 1
	end
end



/*---------------------------------------------------------
Think

- Think is called every frame / tick
---------------------------------------------------------*/
function SWEP:Think()
	
	self:Sway()

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
