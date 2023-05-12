#Include %A_ScriptDir%\..\..\Functions.ahk

Loop
{
	reset_with_sir_galveston()
	
	approach()
	
	target(2)
	
	interact()
	
	gossip()
	
	auto_pet_fight(35,4000)
	
	revive_pets(16000)
}

/*
Pets
---------------------
Unbonn Val'kyr 2 2 1
Ikky 1 1 1
Any Pet

tdBattlePetScript
---------------------
ability(218)
ability(652)
change(#2) [self(#1).dead]
ability(919) [!enemy.aura(918).exists]
ability(581)
*/