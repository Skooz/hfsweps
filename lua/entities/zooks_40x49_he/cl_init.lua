 include('shared.lua')     
 //[[---------------------------------------------------------     
 //Name: Draw     Purpose: Draw the model in-game.     
 //Remember, the things you render first will be underneath!  
 //-------------------------------------------------------]]  
 function ENT:Draw()      
 // self.BaseClass.Draw(self)  
 -- We want to override rendering, so don't call baseclass.                                   
 // Use this when you need to add to the rendering.        
 self.Entity:DrawModel()       // Draw the model.   
 end
 
   function ENT:Initialize()
	pos = self:GetPos()
	self.emitter = ParticleEmitter( pos )
 end
 
 function ENT:Think()
	
	pos = self:GetPos()
		for i=0, (10) do
			local particle = self.emitter:Add( "particle/smokesprites_000"..math.random(1,9), pos + (self:GetUp() * -50 * i))
			if (particle) then
				particle:SetVelocity((self:GetUp() *1600) )
				particle:SetDieTime( math.Rand( 2, 5 ) )
				particle:SetStartAlpha( math.Rand( 10, 20 ) )
				particle:SetEndAlpha( 0 )
				particle:SetStartSize( math.Rand( 4, 7 ) )
				particle:SetEndSize( math.Rand( 30, 35 ) )
				particle:SetRoll( math.Rand(0, 360) )
				particle:SetRollDelta( math.Rand(-1, 1) )
				particle:SetColor( 140 , 135 , 125 ) 
 				particle:SetAirResistance( 200 ) 

		end		
	end
end
