AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include('shared.lua')

SWEP.AutoSwitchTo			= true		// Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= false		// Auto switch from if you pick up a better weapon

function SWEP:OnRemove()
end