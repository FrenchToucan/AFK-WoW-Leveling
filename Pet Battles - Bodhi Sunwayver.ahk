#Include Functions.ahk

LCtrl & Esc::
	ExitApp
	return
Esc & LCtrl::
ExitApp
return

Loop
{
	reset_with_amalia()
	
	approach()
	
	target(4)
	
	interact()
	
	gossip()
	
	auto_pet_fight(33,7000)
	
	revive_pets(30000)
}

Teroclaw Hatching 21*
Anubisath Idol 11*
Level 3+

change(#2) [ self(#3).played ]
change(#3) [ enemy(#2).dead & ! self(#3).played ]
change(#2) [ enemy(#2).active ]
ability(Dodge:312) [ self.aura(Whirlpool:512).duration = 1 ]
ability(Sandstorm:453)
ability(#1) 
*/