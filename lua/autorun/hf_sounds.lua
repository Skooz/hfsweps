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
    pitch = { 85, 115 },
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

//
// M16
//
sound.Add({
	name 	= "Weapon_HFM16.Single",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
    pitch = { 97, 103 },
	sound 	=  "weapons/homefront/m16/m16_fire.wav",
})
util.PrecacheSound("Weapon_HF16.Single")

sound.Add({
	name 	= "Weapon_HFM16.MagIn",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m16/m16_magin.wav",
})
util.PrecacheSound("Weapon_HF16.MagIn")

//
// GL
//
sound.Add({
	name 	= "Weapon_HFGL.Single",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/launcher/launcher_fire.wav",
})
util.PrecacheSound("Weapon_HFM4.Single")

sound.Add({
	name 	= "Weapon_HFGL.Open",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/launcher/m203_open.wav",
})
util.PrecacheSound("Weapon_HFGL.Open")

sound.Add({
	name 	= "Weapon_HFGL.Insert",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/launcher/m203_insert.wav",
})
util.PrecacheSound("Weapon_HFGL.Insert")

sound.Add({
	name 	= "Weapon_HFGL.Close",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/launcher/m203_close.wav",
})
util.PrecacheSound("Weapon_HFGL.Close")

//
// Key
//
sound.Add({
	name 	= "Weapon_HFMasterKey.Single",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/masterkey/masterkey_fire.wav",
})

util.PrecacheSound("Weapon_HFMasterKey.Single")

sound.Add({
	name 	= "Weapon_HFMasterKey.Cock",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/masterkey/masterkey_cock.wav",
})
util.PrecacheSound("Weapon_HFMasterKey.Cock")

sound.Add({
	name 	= "Weapon_HFMasterKey.Insert",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  {"weapons/homefront/masterkey/masterkey_insert1.wav",
    "weapons/homefront/masterkey/masterkey_insert2.wav",
    }
})
util.PrecacheSound("Weapon_HFMasterKey.Insert")

//
// ACR
//
sound.Add({
	name 	= "Weapon_HFACR.Single",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/acr/acr_fireloop.wav" 
})
util.PrecacheSound("Weapon_HFACR.Single")

sound.Add({
	name 	= "Weapon_HFACR.SingleEnd",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/acr/acr_firestart.wav" 
})
util.PrecacheSound("Weapon_HFMACR.SingleEnd")

sound.Add({
	name 	= "Weapon_HFACR.BoltBack",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  {"weapons/homefront/m200/m200_bolt_1.wav",
    "weapons/homefront/m200/m200_bolt_2.wav",
    "weapons/homefront/m200/m200_bolt_3.wav",
    "weapons/homefront/m200/m200_bolt_4.wav",
    }
})
util.PrecacheSound("Weapon_HFACR.BoltBack")

sound.Add({
	name 	= "Weapon_HFACR.MagOut",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/acr/acr_magout.wav"
})
util.PrecacheSound("Weapon_HFACR.MagOut")

sound.Add({
	name 	= "Weapon_HFACR.MagIn",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/acr/acr_magin.wav"
})
util.PrecacheSound("Weapon_HFACR.MagIn")


//
// SCAR
//
sound.Add({
	name 	= "Weapon_HFScar.Single",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
    pitch = { 95, 105 },
	sound 	=  "weapons/homefront/scar/scar_fire.wav" 
})
util.PrecacheSound("Weapon_HFScar.Single")

sound.Add({
	name 	= "Weapon_HFScar.MagOut",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/scar/scar_magout.wav"
})
util.PrecacheSound("Weapon_HFScar.MagOut")

sound.Add({
	name 	= "Weapon_HFScar.MagIn",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/scar/scar_magin.wav"
})
util.PrecacheSound("Weapon_HFScar.MagIn")

//
// ACR
//
sound.Add({
	name 	= "Weapon_HFT3AK.Single",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/t3ak/t3ak_fireloop.wav" 
})
util.PrecacheSound("Weapon_HFACR.Single")

sound.Add({
	name 	= "Weapon_HFT3AK.SingleEnd",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/acr/acr_firestart.wav" 
})
util.PrecacheSound("Weapon_HFT3AK.SingleEnd")

sound.Add({
	name 	= "Weapon_HFT3AK.MagIn",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/t3ak/t3ak_magin.wav"
})
util.PrecacheSound("Weapon_HFT3AK.MagIn")

sound.Add({
	name 	= "Weapon_HFT3AK.MagOut",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/t3ak/t3ak_magout.wav"
})
util.PrecacheSound("Weapon_HFT3AK.MagOut")

sound.Add({
	name 	= "Weapon_HFT3AK.BoltDoubleBack",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/t3ak/t3ak_boltdback.wav"
})
util.PrecacheSound("Weapon_HFT3AK.BoltDoubleBack")


//
// XM10
//
sound.Add({
	name 	= "Weapon_HFXM10.Single",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/xm10/xm10_fireloop.wav" 
})
util.PrecacheSound("Weapon_HFACR.Single")

sound.Add({
	name 	= "Weapon_HFXM10.SingleEnd",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/acr/acr_firestart.wav" 
})
util.PrecacheSound("Weapon_HFXM10.SingleEnd")

sound.Add({
	name 	= "Weapon_HFXM10.MagOut",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/xm10/xm10_magout.wav"
})
util.PrecacheSound("Weapon_HFXM10.MagOut")

sound.Add({
	name 	= "Weapon_HFXM10.MagIn",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/xm10/xm10_magin.wav"
})
util.PrecacheSound("Weapon_HFXM10.MagIn")

// 
// Diablo
// 
sound.Add({
	name 	= "Weapon_HFDiablo.Single",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/diablo/diablo_fireloop.wav" 
})
util.PrecacheSound("Weapon_HFACR.Single")

sound.Add({
	name 	= "Weapon_HFDiablo.SingleEnd",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/acr/acr_firestart.wav" 
})
util.PrecacheSound("Weapon_HFACR.Single")

sound.Add({
	name 	= "Weapon_HFDiablo.MagIn",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/diablo/diablo_magin.wav"
})
util.PrecacheSound("Weapon_HFDiablo.MagIn")

sound.Add({
	name 	= "Weapon_HFDiablo.MagOut",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/diablo/diablo_magout.wav"
})
util.PrecacheSound("Weapon_HFDiablo.MagOut")

//
// Kriss
//
sound.Add({
	name 	= "Weapon_HFKriss.Single",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/kriss/kriss_fireloop.wav" 
})
util.PrecacheSound("Weapon_HFKriss.Single")

sound.Add({
	name 	= "Weapon_HFKriss.SingleEnd",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/acr/acr_firestart.wav" 
})
util.PrecacheSound("Weapon_HFKriss.Single")

sound.Add({
	name 	= "Weapon_HFKriss.MagOut",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/kriss/kriss_magout.wav"
})
util.PrecacheSound("Weapon_HFKriss.MagOut")

sound.Add({
	name 	= "Weapon_HFKriss.MagIn",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/kriss/kriss_magin.wav"
})
util.PrecacheSound("Weapon_HFKriss.MagIn")

sound.Add({
	name 	= "Weapon_HFKriss.MagLock",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/kriss/kriss_maglock.wav"
})
util.PrecacheSound("Weapon_HFKriss.MagLock")

//
// Scar LMG
//
sound.Add({
	name 	= "Weapon_HFScarL.Single",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/scarl/scarl_fireloop.wav" 
})
util.PrecacheSound("Weapon_HFScarL.Single")

sound.Add({
	name 	= "Weapon_HFScarL.SingleEnd",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/acr/acr_firestart.wav" 
})
util.PrecacheSound("Weapon_HFScarL.SingleEnd")

sound.Add({
	name 	= "Weapon_HFScarL.MagOut",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/scarl/scarl_magout.wav"
})
util.PrecacheSound("Weapon_HFScarL.MagOut")

sound.Add({
	name 	= "Weapon_HFScarL.MagIn",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/scarl/scarl_magin.wav"
})
util.PrecacheSound("Weapon_HFScarL.MagIn")

//
// M249
//
sound.Add({
	name 	= "Weapon_HFM249.Single",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/m249/m249_fireloop.wav" 
})
util.PrecacheSound("Weapon_HFM249.Single")

sound.Add({
	name 	= "Weapon_HFM249.SingleEnd",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
	sound 	=  "weapons/homefront/acr/acr_firestart.wav" 
})
util.PrecacheSound("Weapon_HFM249.SingleEnd")

sound.Add({
	name 	= "Weapon_HFM249.Reload1",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m249/m249_reload_1.wav" 
})
util.PrecacheSound("Weapon_HFM249.Reload1")

sound.Add({
	name 	= "Weapon_HFM249.Reload2",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m249/m249_reload_2.wav" 
})
util.PrecacheSound("Weapon_HFM249.Reload2")

sound.Add({
	name 	= "Weapon_HFM249.Reload3",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m249/m249_reload_3.wav" 
})
util.PrecacheSound("Weapon_HFM249.Reload3")

sound.Add({
	name 	= "Weapon_HFM249.Reload4",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m249/m249_reload_4.wav" 
})
util.PrecacheSound("Weapon_HFM249.Reload4")

sound.Add({
	name 	= "Weapon_HFM249.Reload5",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m249/m249_reload_5.wav" 
})
util.PrecacheSound("Weapon_HFM249.Reload5")

sound.Add({
	name 	= "Weapon_HFM249.Reload6",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m249/m249_reload_6.wav" 
})
util.PrecacheSound("Weapon_HFM249.Reload6")

sound.Add({
	name 	= "Weapon_HFM249.Reload7",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m249/m249_reload_7.wav" 
})
util.PrecacheSound("Weapon_HFM249.Reload7")

//
// M110
//
sound.Add({
	name 	= "Weapon_HFM110.Single",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
    pitch = { 95, 105 },
	sound 	=  "weapons/homefront/m110/m110_fire.wav" 
})
util.PrecacheSound("Weapon_HFM110.Single")

sound.Add({
	name 	= "Weapon_HFM110.MagOut",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m110/m110_magout.wav" 
})
util.PrecacheSound("Weapon_HFM110.Single")

sound.Add({
	name 	= "Weapon_HFM110.MagIn",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m110/m110_magin.wav" 
})
util.PrecacheSound("Weapon_HFM110.MagIn")

//
// M200
//

sound.Add({
	name 	= "Weapon_HFM200.Single",
	channel = CHAN_WEAPON,
	volume 	= 1.0,
	level = 140,
    pitch = { 95, 105 },
	sound 	=  "weapons/homefront/m200/m200_fire.wav" 
})
util.PrecacheSound("Weapon_HFM200.Single")

sound.Add({
	name 	= "Weapon_HFM200.Bolt1",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m200/m200_bolt_1.wav" 
})
util.PrecacheSound("Weapon_HFM200.Bolt1")

sound.Add({
	name 	= "Weapon_HFM200.Bolt2",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m200/m200_bolt_2.wav" 
})
util.PrecacheSound("Weapon_HFM200.Bolt2")

sound.Add({
	name 	= "Weapon_HFM200.Bolt3",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m200/m200_bolt_3.wav" 
})
util.PrecacheSound("Weapon_HFM200.Bolt3")

sound.Add({
	name 	= "Weapon_HFM200.Bolt4",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m200/m200_bolt_4.wav" 
})
util.PrecacheSound("Weapon_HFM200.Bolt4")

sound.Add({
	name 	= "Weapon_HFM200.MagOut",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m200/m200_magout.wav" 
})
util.PrecacheSound("Weapon_HFM200.MagOut")

sound.Add({
	name 	= "Weapon_HFM200.MagIn",
	channel = CHAN_STATIC,
	volume 	= 1.0,
	level = 90,
	sound 	=  "weapons/homefront/m200/m200_magin.wav" 
})
util.PrecacheSound("Weapon_HFM200.MagIn")