#Include Functions.ahk

Stand_Close_Message()

Loop
{
	reset_with_amalia()
	
	target(8)
	
	interact()
	
	gossip()
	
	auto_pet_fight(40,5000)
	
	revive_pets(280000)
}

/*
Unborn Val'kyr 221
Ikky 111
Any (no leveling)

ability(#2) [ !enemy.aura(Black Claw).exists ]
ability(#3)
change(#2)
*/