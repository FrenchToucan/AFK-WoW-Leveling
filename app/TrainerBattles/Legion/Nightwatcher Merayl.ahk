#Include %A_ScriptDir%\..\..\Functions.ahk

Loop
{
	target(2)
	
	approach()
	
	target(3)
	
	interact()
	
	gossip()
		
	auto_pet_fight(31,4400)
	
	revive_pets(21000)
}

/*
Pets
---------------------
Zandalari Kneebiter 2 2 1
Chromius 2 1 2
Court Scribe 1 x 1

tdBattlePetScript
---------------------
ability(Black Claw:919) [ !enemy.aura(Black Claw).exists & self(#1).active ]
ability(Hunting Party:921)
ability(Leap:364)
change(#2)
ability(Surge of Power:593) [enemy(#3).active]
ability(Arcane Explosion:299)
change(#3)
ability(#3)
ability(#1)
*/