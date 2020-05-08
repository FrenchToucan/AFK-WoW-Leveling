#Include Functions.ahk

Loop
{
	target(2)
	
	approach()
	
	target(3)
	
	interact()
	
	gossip()
	
	auto_pet_fight(21,7000)
	
	revive_pets(100000)
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
ability(Surge of Power:593)
ability(Bite:110)
change(#3) [self(#2).dead]
ability(Arcane Storm:589)
ability(Arcane Blast:421)
standby
*/