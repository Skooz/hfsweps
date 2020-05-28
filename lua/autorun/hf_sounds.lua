/*

"Homefront_Breathing.Breathin"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1.0"
	"CompatibilityAttenuation"	"0.9"
	"pitch"		"PITCH_NORM"

	"wave"			"breathing/breath_in2.wav"
	
}

"Homefront_Breathing.Breathout"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1.0"
	"CompatibilityAttenuation"	"0.9"
	"pitch"		"PITCH_NORM"

	"wave"			"breathing/breath_out2.wav"
	
}

*/

//
// M9
//
sound.Add({
	name 	= "Weapon_HFM9.Single",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 100,
    pitch = { 95, 105 },
	sound 	=  "weapons/homefront/m9/m9_fire.wav" 
})
util.PrecacheSound("Weapon_HFM9.Single")

sound.Add({
	name 	= "Weapon_HFM9.MagOut",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m9/m9_magout.wav" 
})
util.PrecacheSound("Weapon_HFM9.MagOut")

sound.Add({
	name 	= "Weapon_HFM9.MagIn",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m9/m9_magin.wav" 
})
util.PrecacheSound("Weapon_HFM9.MagIn")

sound.Add({
	name 	= "Weapon_HFM9.SlideBack",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m9/m9_slideclink.wav" 
})
util.PrecacheSound("Weapon_HFM9.SlideBack")

sound.Add({
	name 	= "Weapon_HFM9.SlideShunk",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m9/m9_slideclink.wav" 
})
util.PrecacheSound("Weapon_HFM9.SlideShunk")

//
// M4
//

sound.Add({
	name 	= "Weapon_HFM4.Single",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/m4/m4_fireloop.wav" 
})
util.PrecacheSound("Weapon_HFM4.Single")

sound.Add({
	name 	= "Weapon_HFM4.SingleEnd",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/m4/m4_fireloop_end.wav" 
})
util.PrecacheSound("Weapon_HFM4.SingleEnd")

sound.Add({
	name 	= "Weapon_HFM4.HandOnWeapon",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  {"weapons/homefront/m4/m4_handtowpn.wav","weapons/homefront/m4/m4_handtowpn2.wav"}
})
util.PrecacheSound("Weapon_HFM4.HandOnWeapon")

sound.Add({
	name 	= "Weapon_HFM4.MagLock",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m4/m4_maglock.wav" 
})
util.PrecacheSound("Weapon_HFM4.MagLock")

sound.Add({
	name 	= "Weapon_HFM4.MagOut",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m4/m4_magout.wav" 
})
util.PrecacheSound("Weapon_HFM4.MagOut")

sound.Add({
	name 	= "Weapon_HFM4.MagIn",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  {"weapons/homefront/m4/m4_magin.wav",
    "weapons/homefront/m4/m4_magin2.wav",
    "weapons/homefront/m4/m4_magin3.wav",
    }
})
util.PrecacheSound("Weapon_HFM4.MagIn")