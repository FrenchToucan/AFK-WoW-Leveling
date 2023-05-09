#Include ..\Functions.ahk

Loop
{
	target(6)

	ApproachPlus()

	target(8)
	
	challenge_pole_interact()
	
	auto_pet_fight(15,5000)
	
	revive_pets(90000)
}

/*
Pets
---------------------
Zandalari Kneebiter 2 2 2
Zandalari Anklerender 2 1 1
Any - Will not come into play

tdBattlePetScript
---------------------
use(Black Claw:919) [!enemy.aura(Black Claw:918).exists]
use(Hunting Party:921)
use(Bloodfang:917)
use(Devour:538)
use(Black Claw:919)
use(Leap:364)
change(#2)
*/