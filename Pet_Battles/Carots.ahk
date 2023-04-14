#Include %A_ScriptDir%/Functions.ahk

Loop
{
	target(6)

	ApproachPlus()

	target(8)
	
	challenge_pole_interact()
	
	auto_pet_fight(30,5000)
	
	revive_pets(90000)
}

/*
Pets
---------------------
Strand Crawler 2 2 2
Emerald Proto-Whelp 1 2 2
Any - Will not come into play

tdBattlePetScript
---------------------
change(#2) [enemy(#3).active]
use(Surge:509) [enemy(#2).active & enemy.round=1]
use(Whirlpool:513)
use(Healing Wave:123)
use(Surge:509)
use(Emerald Presence:597) [self.round=1]
use(Breath:115)
change(#2)
*/