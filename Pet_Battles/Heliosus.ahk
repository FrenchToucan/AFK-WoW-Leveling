﻿#Include Functions.ahk

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
Pets
---------------------
Unborn Val'kyr 2 2 1
Ikky 1 1 1
Any Pet (no leveling - Will never come into play)

tdBattlePetScript
---------------------
ability(#2) [ !enemy.aura(Black Claw).exists ]
ability(#3)
change(#2)
*/