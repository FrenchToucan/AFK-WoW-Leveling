#Include %A_ScriptDir%\..\..\Functions.ahk
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
Unborn Val'kyr 2 2 2
Ikky 1 1 1
Zandalari Anklerender 2 1 2

tdBattlePetScript
---------------------
use(Curse of Doom:218)
use(Black Claw:919) [!enemy.aura(Black Claw:918).exists]
use(Flock:581)
use(Hunting Party:921)
change(Unborn Val'kyr:1238) [!self(#3).played & self(#2).active]
change(#2)
change(#3) 
*/