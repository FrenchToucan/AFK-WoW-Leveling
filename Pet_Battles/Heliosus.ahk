#Include Functions.ahk

Stand_Close_Message()

Loop
{
	reset_with_amalia()
	
	target(8)
	
	interact()
	
	gossip()
	
	auto_pet_fight(40,5000)
	
	revive_pets(120000)
}

/*
Pets
---------------------
Unborn Val'kyr 2 2 1
Ikky 1 1 1
Any Pet (no leveling - Will never come into play)

This doesn't match with ped script below. Relaly do this with all Zandalaris and a longer script. Check Xu.

tdBattlePetScript
---------------------
ability(#2) [ !enemy.aura(Black Claw).exists ]
ability(#3)
change(#2) [ enemy(#1).dead & ! self(#3).dead ]
ability(#1)




use(Black Claw:919) [!enemy.aura(Black Claw:918).exists]
use(Hunting Party:921)
use(Leap:364)
change(#3)
use(Black Claw:919) [!enemy.aura(Black Claw:918).exists]
use(Hunting Party:921)
use(Leap:364)
change(#2) [ enemy(#1).dead & ! self(#3).dead ]
ability(#1)
*/