#Include %A_ScriptDir%\..\..\Functions.ahk

; Don't use. Don't have a good way to force a clear and reload of pets.

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
Wicked Soul ? ? ? 
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