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
Nexus Whelpling 1 2 2
Any - Will not come into play
Any - Will not come into play

tdBattlePetScript
---------------------
use(Arcane Storm:589)
use(Mana Surge:489)
use(Tail Sweep:122)
*/