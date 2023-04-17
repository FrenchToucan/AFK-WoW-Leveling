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
Court Scribe 1 2 2
Barnaby 1 1 2
Leveling Pet (any level)

tdBattlePetScript
---------------------
change(#2) [ self(#3).active ]
use(#2) [ !enemy(#1).active ]
use(#3)
use(#1)
change(#3)
*/