#Include Functions.ahk

Loop
{
	reset_with_amalia()
	
	target(7)
	
	interact()
	
	auto_pet_fight(30,5000)
	
	revive_pets(100000)
}

/*
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
*/