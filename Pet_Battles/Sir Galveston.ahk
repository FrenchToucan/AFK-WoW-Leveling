#Include Functions.ahk

Loop
{
	reset_with_amalia()
	
	approach()
	
	target(3)
	
	interact()
	
	gossip()
	
	auto_pet_fight(30,5000)
	
	revive_pets(100000)
}

/*
Pets
---------------------
Court Scribe 1 2 2
Barnaby 1 1 2
Leveling Pet (any level)

tdBattlePetScript
---------------------
change(#2) [self(#3).active]
if [enemy(#1).active]
use(Fluch der Verdammnis:218)
use(Arkanschlag:421)
endif

if [enemy(#2).active]
use(Magie verstärken:488) [enemy.round = 1]
use(Arkanschlag:421)
endif

if [enemy(#3).active]
use(Fluch der Verdammnis:218)
use(Arkanschlag:421)
endif

ability(Jab:219) [self.round=1]
ability(Roar of the Dead:2071) [enemy(#3).active]
ability(Tornado Punch:1052) [enemy(#3).active]
change(#3) [!self(#3).played]
use(#1)

or (maybe?)

change(#2) [ self(#3).active ]
use(#2) [ !enemy(#1).active ]
use(#3)
use(#1)
change(#3)
*/