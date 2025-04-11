#Include %A_ScriptDir%\..\..\Functions.ahk

Loop
{
	target(6) ; Targets Lil' Spirit Guide
	
	approach()
	
	target(7)
	
	interact()
	
	gossip()
	
	auto_pet_fight(30,5000)
	
	revive_pets(10000)
}

/*
Pets
---------------------
Snowshoe Rabbit 1 2 2
Corrupted Blood * 1 1
Nexus Whelpling * 2 2

tdBattlePetScript
---------------------
change(#1) [enemy.aura(Elementium Bolt:605).duration=2]
change(#3) [enemy.aura(Elementium Bolt:605).duration=1]
change(#2) [self(#1).active & enemy(#2).hpp<100]
ability(Stampede:163) [round=2]
ability(Dodge:312)
ability(Scratch:119)
ability(Scorched Earth:172)
ability(Elementium Bolt:606)
ability(Arcane Storm:589)
ability(Mana Surge:489)
change(next)
*/