#Include %A_ScriptDir%\..\..\Functions.ahk

Loop
{
	reset_with_baeloth()
	
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
Stormborne Whelpling 1 2 1
Leveling Pet (any level)
Iron Starlette 1 2 x

tdBattlePetScript
---------------------
change(#3) [self(#2).active]
use(Arcane Storm:589)
use(Mana Surge:489)
use(Toxic Smoke:640) [enemy.hp<=390]
use(Wind-Up:459)
change(next)