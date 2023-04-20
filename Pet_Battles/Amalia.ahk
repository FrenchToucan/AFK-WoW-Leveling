#Include Functions.ahk

Loop
{
	reset_with_sir_galveston()
	
	approach()
	
	target(2)
	
	interact()
	
	gossip()
	
	auto_pet_fight(35,4000)
	
	revive_pets(1000)
}

/*
Pets
---------------------
Iron Starlette 1 1 1
Benax X X 2
Leveling Pet

tdBattlePetScript
---------------------
quit [self(#3).dead]
quit [self(#1).dead & !enemy(#2).dead]

if [enemy(#1).active]
ability(Supercharge:208) [self.aura(Wind-Up:458).exists]
ability(Wind-Up:459)
endif

if [enemy(#2).active]
ability(Powerball:566) [enemy.round=1]
change(#3) [!self(#3).played]
change(#1) 
ability(Wind-Up:459) [!self.aura(Wind-Up:458).exists]
ability(Supercharge:208) [enemy.aura(Cute Face:904).duration=1]
ability(Wind-Up:459) [!enemy.aura(Cute Face:904).exists]
standby
endif

ability(Powerball:566) [enemy.round=1]
change(#2) [enemy.aura(Puppies of the Flame:1355).duration=2]
ability(Pump:297) [!self.aura(Pumped Up:296).exists]
standby [enemy.aura(Puppies of the Flame:1355).exists]
ability(Pump:297)
*/