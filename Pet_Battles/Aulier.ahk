#Include Functions.ahk

Loop
{
	target(6)
	
	approachPlus()
	
	target(7)
	
	interact()
	
	gossip()
	
	auto_pet_fight(17,7000)
	
	revive_pets(70000)
}

/*
Pets
---------------------
Mechanical Axebeak
Level Pet (any level)
Nether Faerie Dragon 221

tdBattlePetScript
---------------------
quit [ self(#2).dead ] 
quit [self(#3).dead & round < 12] 
if [ self(#1).active ] 
ability(#3) 
change(#3) [ enemy(#1).active ] 
ability(#2) [ enemy(#2).active & !self.aura(520).exists ] 
ability(#1) [ enemy(#2).active ] 
ability(#1) 
endif 
change(#3) [ self(#2).active & self(#2).active & enemy(#2).active ] 
if [ self(#3).active ] 
ability(#2) [ enemy(#1).active ] 
ability(#3) [ enemy(#1).active & enemy.hpp > 50 ] 
ability(#1) [ enemy(#1).active ] 
change(#1) [ self(#3).dead & enemy(#2).active ] 
change(#2) [ enemy(#2).active & enemy.hp < 400 ] 
ability(#1) 
endif
*/