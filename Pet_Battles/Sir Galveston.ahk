#Include Functions.ahk

Loop
{
	reset_with_amalia()
	
	approach()
	
	target(3)
	
	interact()

	Sleep 1000 ; Without a sleep, tries to choose the gossip option too quickly and just jumps instead (gossip is done via spacebar). Didn't see this with Grixis or Aulier. If it happens with others, move this to gossip() or interact() function.
	
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