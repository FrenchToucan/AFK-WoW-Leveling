#Include %A_ScriptDir%\..\..\Functions.ahk
Loop
{
	
	target(7)
	
	interact()

	challenge_pole_interact()
	
	auto_pet_fight(5,5000)
	
	revive_pets(2000)
}

/*
Pets
---------------------
Nexus Whelpling 1 2 2
Any - Will not come into play (repeat Nexus Whelpling to repeat battle very rapidly)
Any - Will not come into play (repeat Nexus Whelpling to repeat battle very rapidly)

tdBattlePetScript
---------------------
use(Arcane Storm:589)
use(Mana Surge:489)
change(#2)
change(#3)
*/