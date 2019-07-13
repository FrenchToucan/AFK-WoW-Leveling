#Include Functions.ahk

Loop
{
	reset_with_amalia()
	
	approach()
	
	target(5)
	
	interact()
	
	gossip()
	
	auto_pet_fight(60,5000)
	
	revive_pets(400000)
}

/*
Pets
---------------------
Emerald Proto-Whelp 2 2 2
Level Pet 12+
Darkmoon Tonk 1 1 2

tdBattlePetScript
---------------------
change(#2) [self(#1).dead & !self(#2).played]
change(#3) [self(#2).active]
if [enemy(#3).active & self(#1).active]
standby [enemy.hp <700]
endif
ability(Emerald Dream:598) [self(#1).hp < 900 & !enemy(#3).active]
ability(Emerald Presence:597) [self(#1).aura(Emerald Presence:823).duration <=1 & !enemy(#3).active]
ability(Emerald Bite:525)
ability(Ion Cannon:209) [enemy(#3).hp > 659 & enemy.hp <1098]
ability(Shock and Awe:646)
ability(Missile:777)
*/