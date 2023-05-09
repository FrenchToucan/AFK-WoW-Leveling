#Include ..\Functions.ahk

Loop
{
	target(6)
	
	approachPlus()

	target(7)
	
	challenge_pole_interact()
	
	auto_pet_fight(12,6000)
	
	revive_pets(180000)
}

/*
Pets
---------------------
Iron Starlette 1 x 1
Iron Starlette 1 x 1
Any - Will not come into play

tdBattlePetScript
---------------------
change(#2) [enemy(#2).active]
use(Supercharge:208) [self.aura(Wind-Up:458).exists]
use(Wind-Up:459)
*/