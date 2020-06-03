AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include('shared.lua')

SWEP.Weight				    = 1		    // Decides whether we should switch from/to this
SWEP.AutoSwitchTo			= true		// Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= false		// Auto switch from if you pick up a better weapon

function SWEP:Initialize()
end

function SWEP:OnRemove()
self.Weapon:StopSound(self.Primary.Sound)
end



