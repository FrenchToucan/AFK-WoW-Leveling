#Include %A_ScriptDir%\..\..\Functions.ahk

F12::Pause

Loop
{
	reset_with_sir_galveston() ; 3
	
	approach()
	
	target(4)
	
	interact()
	1
	gossip()
	
	auto_pet_fight(32,5000)
	
	revive_pets(1000)
}
/*
Pets
---------------------
Teroclaw Hatching 2 1 *
Anubisath Idol 1 1 *
Level Pet (any level)

tdBattlePetScript
---------------------
change(#2) [ self(#3).played ]
change(#3) [ enemy(#2).dead & ! self(#3).played ]
change(#2) [ enemy(#2).active ]
ability(Dodge:312) [ self.aura(Whirlpool:512).duration = 1 ]
ability(Sandstorm:453)
ability(#1) 
*/