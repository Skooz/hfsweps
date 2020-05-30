include('shared.lua')

SWEP.PrintName				= "M4A1"				// 'Nice' Weapon name (Shown on HUD)	
SWEP.Slot				    = 2				        // Slot in the weapon selection menu
SWEP.SlotPos				= 1				        // Position in the slot
SWEP.Weight				    = 1		                // Decides whether we should switch from/to this
SWEP.DrawAmmo				= true			        // Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= true				    // Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false				    // Should the weapon icon bounce?

SWEP.CSMuzzleFlashes		= true

if (file.Exists("materials/vgui/entities/hf_m4.vmt","GAME")) then
	SWEP.WepSelectIcon	= surface.GetTextureID("vgui/entities/hf_m4.vmt")
end