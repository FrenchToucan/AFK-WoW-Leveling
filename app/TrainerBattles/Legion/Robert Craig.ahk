#Include %A_ScriptDir%\..\..\Functions.ahk

Loop
{
	stop_at_8AM_PT()	

	reset_with_baeloth() ; hotkey 5
	
	approach()
	
	target(4)
	
	interact()
	
	gossip()
	
	auto_pet_fight(20,5000)
	
	revive_pets(57000)
}

/*
Pets
---------------------
Stormborne Whelpling * 2 1
Iron Starlette 1 2 x
Leveling Pet (any level)

tdBattlePetScript
---------------------
use(Arcane Storm:589)
use(Wind-Up:459) [ enemy(#2).active & enemy.aura(Toxic Smoke:639).exists ]
use(Explode:282) [ enemy(#3).hp<419 ]
use(#2)
change(#2)
*/