#Include %A_ScriptDir%\..\..\Functions.ahk

; Reviewing timing on this to determine whether it can be tightened up

Loop
{
	target(3) ; clear with Felsoul Trickster
	
	approachPlus()
	
	target(2)
	
	interact()
	
	gossip()
	
	auto_pet_fight(15,5000)
	
	revive_pets(86000)
}

/*
Pets
---------------------
Unborn Val'kyr 2 2 1
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