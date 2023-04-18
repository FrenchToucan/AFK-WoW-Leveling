#Include Functions.ahk

Loop
{
	reset_with_amalia()
	
	approach()
	
	target(3)
	
	interact()

	Sleep 2000 ; This encounter requires an extra long sleep after interact() or my character will just jump (gossip is done via spacebar).
	
	gossip()
	
	auto_pet_fight(30,5000)
	
	revive_pets(10000)
}

/*
Pets
---------------------
Crispin 1 1 2
Ancona Chicken 212
Leveling Pet (any level)

tdBattlePetScript
---------------------
quit [ self(#3).dead ]
change(#3) [ enemy(#3).active & !self(#3).played ]
change(#2) [ self(#1).dead ]
ability(Crouch:165) [ round = 1 ]
ability(Burn:113) [ round > 2 & enemy(#1).active ]
ability(Flamethrower:503)
ability(Squawk:524)
ability(Slicing Wind:420) [ enemy.aura(Shattered Defenses:542).exists ]
ability(Flock:581)
standby
*/