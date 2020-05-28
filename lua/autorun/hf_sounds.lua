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








{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"CompatibilityAttenuation"	"1.0"
	"pitch"		"PITCH_NORM"

	"wave"			"weapons/homefront/m9/m9_magin.wav"
}


{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"CompatibilityAttenuation"	"1.0"
	"pitch"		"PITCH_NORM"

	"wave"			"weapons/homefront/m9/m9_slideclink.wav"
}

"Weapon_HFM9.SlideShunk"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"CompatibilityAttenuation"	"1.0"
	"pitch"		"PITCH_NORM"

	"wave"			"weapons/homefront/m9/m9_slideclink.wav"
}

*/

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