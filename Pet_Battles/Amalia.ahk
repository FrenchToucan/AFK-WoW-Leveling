#Include Functions.ahk

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
Iron Starlette 1 1 1
Fishy 1 1 2
Benax 1 1 2

tdBattlePetScript
---------------------
ability(Powerball:566) [enemy(#3).active]
ability(Powerball:566) [enemy.hp < 240]
ability(Supercharge:208) [round=2]
ability(Wind-Up:459) 
ability(Cleansing Rain:230) [enemy.aura(Puppies of the Flame:1355).exists]
ability(Water Jet:118) [enemy.hp < 290]
ability(Pump:297)
change(#2) [!self(#3).played]
change(#3)
*/