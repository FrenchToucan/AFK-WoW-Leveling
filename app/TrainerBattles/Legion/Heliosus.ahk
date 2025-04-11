#Include %A_ScriptDir%\..\..\Functions.ahk

Stand_Close_Message()

Loop
{
	reset_with_sir_galveston()
	
	target(8)
	
	interact()
	
	auto_pet_fight(15,5000)
	
	revive_pets(86000)
}

/*
Pets
---------------------
Unborn Val'lyr * 2 1
Ikky * 1 1
Any Pet

tdBattlePetScript
---------------------
ability(218)
ability(652)
change(#2) 
ability(919) [self.round=1]
ability(581)
*/