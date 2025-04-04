#Include %A_ScriptDir%\..\..\Functions.ahk

Loop
{
	
	stop_at_8AM_PT() ; Realm reset check	
	
	target(4) ; Target Vinyard Laborer for the reset45
	
	approachPlus()
	
	target(5)
	
	interact()

	Sleep 2000 ; This encounter requires an extra long sleep after interact() or my character will just jump
	
	gossip()
	
	auto_pet_fight(35,5000)
	
	revive_pets(500)
}

/*
Pets
---------------------
Crispin 1 1 2
Ancona Chicken 2 1 2
Fel-Afflicated Skyfin 1 1 1

tdBattlePetScript
---------------------
use(Crouch:165)
use(Burn:113) [ round > 1 & enemy(#1).active ]
use(Flamethrower:503)
use(Squawk:524) [ !enemy.aura(Attack Reduction:494).exists ]
use(Flock:581)
use(Predatory Strike:518) [ enemy(#3).active ]
use(Slicing Wind:420)
change(#2)
change(#3)
*/