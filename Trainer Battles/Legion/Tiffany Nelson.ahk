#Include %A_ScriptDir%\..\..\Functions.ahk

Loop
{
	reset_with_amalia()
	
	approach()
	
	target(5)
	
	interact()
	
	gossip()
	
	auto_pet_fight(45,4000)
	
	revive_pets(1000)
}

/*
Pets
---------------------
Wretched Servant 2 2 2
Iron Starlette * 1 2
Leveling Pet

tdBattlePetScript
---------------------
standby [enemy.hp<556 & enemy(#3).active & self(#1).active]
ability(Explode:282) [enemy.hp.can_explode]
ability(Consume Magic:1231) [round=2]
ability(Consume Magic:1231) [enemy.ability(Cyclone:190).usable]
ability(Weakness:471) [enemy.aura(Prowl:543).exists]
ability(Powerball:566)
ability(#1)
change(next)
*/