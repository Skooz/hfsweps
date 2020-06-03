/*---------------------------------------------------------
	EFFECT:Init(data)
---------------------------------------------------------*/
function EFFECT:Init(data)

	self.WeaponEnt 		= data:GetEntity()
	self.Attachment 	= data:GetAttachment()
	
	self.Position 		= self:GetTracerShootPos(data:GetOrigin(), self.WeaponEnt, self.Attachment)
	self.Forward 		= data:GetNormal()
	self.Angle 			= self.Forward:Angle()
	self.Right 			= self.Angle:Right()
	self.Up 			= self.Angle:Up()
	
	local emitter 		= ParticleEmitter(self.Position)
	
	// Only do flash and sparks sometimes
	if math.random(1, 4) == 1 then
		local particle = emitter:Add("effects/muzzleflash"..math.random(1, 4), self.Position + 8 * self.Forward)
			if not IsValid(data:GetEntity()) or not IsValid(self.WeaponEnt:GetOwner()) then return end
			particle:SetVelocity(350 * self.Forward + 1.1 * self.WeaponEnt:GetOwner():GetVelocity())
			particle:SetAirResistance(160)
			particle:SetDieTime(math.Rand(0.06, 0.08))
			particle:SetStartAlpha(255)
			particle:SetEndAlpha(0)
			particle:SetStartSize(0)
			particle:SetEndSize(math.Rand(30, 50))
			particle:SetRoll(math.Rand(180, 480))
			particle:SetRollDelta(math.Rand(-1, 1))
			particle:SetColor(220, 200, 0)
			particle:SetCollide(false)				

				
		for i=0, 2 do
			local particle = emitter:Add("Effects/spark", self.Position + 8 * self.Forward)
			if not IsValid(data:GetEntity()) or not IsValid(self.WeaponEnt:GetOwner()) then return end
			particle:SetVelocity(math.Rand( 150, 180 ) * self.Forward + VectorRand() * 30 )
			particle:SetDieTime(math.Rand(0.05, 0.08))
			particle:SetStartAlpha(255)
			particle:SetStartSize(2)
			particle:SetEndSize(0)
			particle:SetRoll(0)
			particle:SetGravity(Vector(0, 0, 0))
			particle:SetCollide(false)
			particle:SetBounce(0)
			particle:SetAirResistance(50)
			particle:SetStartLength(0)
			particle:SetEndLength(math.Rand(0.1, 0.3))
			particle:SetColor(220, 160, 100)	
			particle:SetVelocityScale(true)
		end	
	end

	local particle = emitter:Add("sprites/heatwave", self.Position + 8 * self.Forward)
		if not IsValid(data:GetEntity()) or not IsValid(self.WeaponEnt:GetOwner()) then return end
		particle:SetVelocity(350 * self.Forward + 1.1 * self.WeaponEnt:GetOwner():GetVelocity())
		particle:SetAirResistance(160)
		particle:SetDieTime(0.05)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(0)
		particle:SetStartSize(10)
		particle:SetEndSize(20)
		particle:SetRoll(math.Rand(180, 480))
		particle:SetRollDelta(math.Rand(-1, 1))
		particle:SetColor(255, 255, 255)	
		particle:SetCollide(false)
		
		
	for i=0, 15 do
		local particle = emitter:Add("particle/smokesprites_000"..math.random(1,9), self.Position)
		if not IsValid(data:GetEntity()) or not IsValid(self.WeaponEnt:GetOwner()) then return end
		particle:SetVelocity(100 * self.Forward + 8 * VectorRand())
		particle:SetAirResistance( 75 ) 
		particle:SetGravity( Vector( math.Rand(-70, 70), math.Rand(-70, 70), math.Rand(0, -100) ) * 1.5 )
		particle:SetDieTime(math.Rand( 1 , 3 ))
		particle:SetStartAlpha(1)
		particle:SetEndAlpha(0)
		particle:SetStartSize(10)
		particle:SetEndSize(math.Rand(45,75))
		particle:SetRoll( math.Rand(150, 360) )	
		particle:SetRollDelta( math.Rand(-2, 2) )	
		particle:SetColor(math.Rand(200,255), math.Rand(200,255), math.Rand(200,255))
		particle:SetCollide(true)
	end

	emitter:Finish()
end

/*---------------------------------------------------------
	EFFECT:Think()
---------------------------------------------------------*/
function EFFECT:Think()
	return false
end

/*---------------------------------------------------------
	EFFECT:Render()
---------------------------------------------------------*/
function EFFECT:Render()
end