#Include Functions.ahk

Loop
{
	target(2)
	
	approach()
	
	target(3)
	
	interact()
	
	gossip()
	
	auto_pet_fight(19,7000)
	
	revive_pets(100000)
}

/*
Pets
---------------------
Zandalari Kneebiter 2 2 1
Chromius 1 1 2
Court Scribe 1 x x

tdBattlePetScript
---------------------
ability(Black Claw:919) [ !enemy.aura(Black Claw).exists & self(#1).active ]
ability(Hunting Party:921)
ability(Leap:364)
change(#2)
ability(Surge of Power:593) [ enemy.aura(Howl).exists ]
ability(Howl:362)
ability(Bite:110)
change(#3) [self(#2).dead]
ability(Howl:362)
ability(Arcane Blast:421)
*/