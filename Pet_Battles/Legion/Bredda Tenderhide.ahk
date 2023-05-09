#Include ..\Functions.ahk

Loop
{
	target(6)
	
	approach()
	
	target(7)
	
	interact()
	
	gossip()
	
	auto_pet_fight(40,6000)
	
	revive_pets(10000)
}

/*
Pets
---------------------
Dust Bunny 2 2 1
Snowshoe Rabbit 2 2 1
Emerald Proto-Whelp 2 2 2

tdBattlePetScript
---------------------
use(Dodge:312) [enemy.aura(Undead:242).exists]
use(Dodge:312) [round=1]
use(Burrow:159) [round=4]
use(Flurry:360)
use(Emerald Presence:597) [!self.aura(Emerald Presence:823).exists]
use(Emerald Dream:598)
use(Emerald Bite:525)
change(#2)
*/